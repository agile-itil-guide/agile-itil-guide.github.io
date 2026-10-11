# Gestion financière informatique et FinOps

**La gestion financière informatique montre ce que coûtent les services et la valeur qu'ils rapportent, et le FinOps est la pratique culturelle qui rassemble ingénieurs, finance et équipes métier pour que les dépenses technologiques, surtout dans le nuage, soient comprises et gérées au fur et à mesure.**

## Pourquoi c'est important

L'argent décide des services qui existent, de leur dotation en personnel et de leur durée de vie. Pendant des années, la finance informatique a signifié un budget annuel, un tableur de répartition des coûts et l'occasion d'une dispute sur qui paie le réseau. Le nuage a changé cela. Les ressources peuvent être créées en quelques secondes par quiconque a les bonnes permissions, et la facturation suit l'usage. Une seule tâche mal configurée peut ajouter des milliers à une facture mensuelle avant que quiconque le remarque, et un changement réfléchi peut en économiser autant.

Pour les équipes agiles, le changement est à double tranchant. Elles gagnent la liberté d'expérimenter et de monter en charge sans attendre du matériel. Elles assument aussi une responsabilité qui relevait de la finance et des achats : savoir ce que coûtent leurs choix. Pendant ce temps, le personnel de la finance, qui planifie par cycles annuels, fait face à un usage qui varie chaque jour. Aucun des deux côtés ne peut bien gérer le coût seul.

La Wikipédia anglaise n'a pas d'article intitulé « FinOps » à l'adresse vérifiée. Le site de la FinOps Foundation elle-même définit le FinOps comme un cadre opérationnel et une pratique culturelle qui maximise la valeur métier de la technologie et crée une responsabilité financière par la collaboration entre les équipes d'ingénierie, de finance et métier. L'article de Wikipédia sur l'informatique en nuage décrit les modèles de tarification et la maîtrise des coûts, et porte un bandeau de maintenance indiquant que certaines parties peuvent ne pas être vérifiées. Le vocabulaire financier d'ITIL employé ici, comme la budgétisation, la comptabilité et la facturation, est tiré de descriptions largement publiées que ce guide n'a pas pu confirmer par rapport au texte du propriétaire du cadre.

## Concepts clés

### La gestion financière informatique

La gestion financière informatique (dans ITIL, « financial management for IT services ») est largement décrite comme la pratique de gestion de l'argent d'un fournisseur de services informatiques : planifier les budgets, comptabiliser les coûts et, le cas échéant, facturer les services. Son but est de donner aux décideurs l'information nécessaire pour équilibrer coût et valeur. Les sources lues pour ce guide ne définissent pas la pratique ; ces descriptions relèvent donc de l'usage courant, offertes comme telles.

| Activité | Question à laquelle elle répond |
|---|---|
| **Budgétisation et planification** | Combien dépenserons-nous, et pour quoi, au cours de la période à venir ? |
| **Comptabilité analytique** | Combien coûte la fourniture de chaque service ? |
| **Facturation ou répartition** | Qui paie, et comment ? |
| **Analyse de valeur et d'investissement** | Un service ou un changement vaut-il son coût ? |

### Showback et chargeback

Deux arrangements pour partager le coût sont largement utilisés. Dans le **showback**, on montre aux consommateurs ce qu'ils utilisent et ce que cela coûte, mais on ne les facture pas. Dans le **chargeback**, on les facture ou le coût est déplacé vers leur budget. Le showback crée une prise de conscience avec peu de frictions ; le chargeback crée de la responsabilité et peut susciter des différends sur les règles de répartition. Choisissez en demandant quel comportement vous voulez et si les données sont assez bonnes pour être défendues.

### Le nuage et le modèle de paiement à l'usage

Wikipédia dit que l'informatique en nuage peut réduire les dépenses d'investissement initiales en passant à un modèle de dépenses d'exploitation où les coûts évoluent avec l'usage, et que l'infrastructure en tant que service est facturée comme un service public. Elle décrit le logiciel en tant que service comme typiquement un forfait mensuel ou annuel par utilisateur, ou un paiement à l'usage. Sa liste de préoccupations de maîtrise des coûts inclut les ressources inutilisées, les configurations inefficaces et les coûts cachés. Elle note que les fournisseurs offrent des outils de coût et cite le FinOps comme cadre pour normaliser les opérations financières du nuage.

L'article rapporte des résultats d'enquêtes : une enquête de Gartner auprès de 200 responsables informatiques a constaté que 69 pour cent ont connu des dépassements de budget du nuage en 2023, les autres attribuant leur réussite à la prévision, au suivi des dépenses et à l'optimisation ; et le rapport 2024 de Flexera a nommé la gestion des dépenses de nuage comme premier défi, rapportant que les dépenses de nuage public ont dépassé les budgets de 15 pour cent en moyenne. L'article porte un bandeau sur le texte non vérifié ; vérifiez donc ces chiffres auprès des rapports d'origine avant de les citer.

### Ce qu'est le FinOps

Le site de la FinOps Foundation définit le FinOps comme « un cadre opérationnel et une pratique culturelle » qui « maximise la valeur métier de la technologie » et « crée une responsabilité financière par la collaboration entre les équipes d'ingénierie, de finance et métier ». Il dit que le nom combine « Finance » et « DevOps », et que l'accent s'étend au-delà du nuage au logiciel en tant que service, aux licences, aux centres de données et plus encore. Points clés du site :

- **C'est un sport d'équipe.** Le site nomme ces groupes : dirigeants, ingénieurs, praticiens du FinOps, exploitation, et finance et achats, et dit que le FinOps change la manière dont des équipes disparates travaillent ensemble. Une seule équipe ne peut pas le faire seule.
- **Il utilise une approche de maturité** décrite comme « Crawl, Walk, Run » (ramper, marcher, courir).
- **La Fondation** est décrite comme un projet sous LF Projects, une série de la Linux Foundation, et soutient une spécification technique libre appelée FOCUS (FinOps Open Cost and Usage Specification). Elle propose aussi formation et certification.

La page lue pour ce guide ne liste ni les principes ni les phases ; ce sujet ne les énonce donc pas. Consultez directement les pages de la Fondation sur les principes et les phases.

### Données de coût et étiquetage

Quel que soit le nom de la pratique, elle dépend de la capacité à attribuer le coût. Cela demande deux choses : des étiquettes sur les ressources qui disent qui en est responsable et quel service elles soutiennent (voir Sujet 4.1 — Gestion des actifs informatiques), et des données de facturation qui peuvent être regroupées par ces étiquettes. FOCUS existe pour normaliser le format des données de coût et d'usage entre fournisseurs. Un coût non étiqueté est un coût sans responsable.

### Coûts unitaires et valeur

Une facture totale dit peu. Divisez le coût par quelque chose qui signifie quelque chose pour le métier : par transaction, par utilisateur, par service, par environnement. Un coût total en hausse avec un coût unitaire en baisse peut être une croissance saine. Un coût total en baisse avec un coût unitaire en hausse peut signaler un problème. Le coût unitaire relie la finance aux niveaux de service et à la valeur (voir Sujet 3.7 — Gestion des niveaux de service).

### Coût, fiabilité et rapidité

L'argent achète fiabilité et rapidité, et chaque niveau supplémentaire a un prix (voir Sujet 3.11 — Disponibilité, capacité et performance). Une équipe qui réduit le coût sans soin peut diminuer la résilience. Une équipe qui ne regarde jamais le coût peut surdimensionner. Les conversations FinOps sont un lieu où rendre ce compromis explicite, les ingénieurs décrivant les options et la finance et le métier les pesant.

### Gouvernance et risque

Les contrôles financiers incluent budgets et alertes, approbation des gros engagements, limites sur qui peut créer des ressources coûteuses et revues régulières. Les engagements envers les fournisseurs, comme les accords d'achat à long terme, peuvent réduire le coût et ajouter du risque si l'usage baisse. Ce sont des décisions pour la finance, les achats et l'ingénierie ensemble (voir Sujet 5.7 — Gouvernance, risques et conformité et Sujet 3.14 — Gestion des fournisseurs).

### Limites des sources

La page de la FinOps Foundation est un résumé par l'organisation qui promeut la pratique, et elle ne donne ni date de création, ni chiffres d'adhésion, ni preuve de résultats. L'article sur l'informatique en nuage est signalé pour texte non vérifié et ne donne ni mécanique de tarification, ni frais de sortie, ni détails d'une pratique FinOps. Ce sujet doit être traité comme une introduction ; lisez les documents de la Fondation et la documentation de votre fournisseur pour les détails.

## Bonnes pratiques

1. **Rendez le coût visible à ceux qui le causent.** Montrez à chaque équipe le coût des services dont elle est responsable, au moins chaque mois, sous une forme qu'elle comprend. On gère ce que l'on voit.
2. **Étiquetez tout ce qui coûte de l'argent.** Exigez des étiquettes de responsable, de service et d'environnement sur les ressources en nuage, et rendez compte des dépenses non étiquetées. Corrigez cela avant de régler quoi que ce soit d'autre.
3. **Commencez par le showback.** Montrez aux équipes leurs coûts avant de les facturer. Passez au chargeback seulement quand les données sont fiables et le bénéfice clair.
4. **Utilisez les coûts unitaires.** Exprimez le coût par transaction, utilisateur ou service, en plus du total. Revoyez la tendance en regard de la demande et de la qualité.
5. **Fixez budgets et alertes.** Convenez de budgets par service ou équipe, et réglez des alertes bien avant la limite. Revoyez les alertes avec les responsables, pas seulement avec la finance.
6. **Réunissez finance et ingénierie dans une même conversation.** Tenez une revue régulière où les ingénieurs expliquent ce qui pousse le coût et où la finance explique les contraintes. Incluez un responsable métier capable de juger la valeur.
7. **Cherchez d'abord le gaspillage.** Trouvez les ressources inutilisées ou surdimensionnées, les environnements inactifs et les abonnements oubliés. Ces économies comportent peu de risque (voir Sujet 4.2 — Gestion des actifs logiciels pour les abonnements).
8. **Pesez les économies contre la fiabilité.** Avant de couper, demandez ce que le changement fait à la disponibilité, à la performance et à la reprise. Consignez le compromis.
9. **Planifiez les engagements avec soin.** Les engagements d'achat auprès des fournisseurs peuvent réduire le coût, mais verrouillent la dépense. Fondez-les sur un usage stable et revoyez-les régulièrement.
10. **Donnez aux équipes autorité et limites.** Laissez les équipes prendre des décisions de coût dans des bornes convenues, et exigez une approbation au-delà. L'autonomie avec visibilité fonctionne mieux que le seul contrôle central.
11. **Incluez le coût dans la conception et dans la définition de « terminé ».** Demandez en revue de conception ce qu'une fonctionnalité coûtera à exploiter, et vérifiez après la mise en production.
12. **Apprenez et partagez.** Publiez de courtes notes sur ce qui a économisé de l'argent et ce qui s'est retourné contre vous. Utilisez une approche de maturité comme « ramper, marcher, courir » pour faire grandir la pratique.

## Questions à discuter avec votre équipe

**Savons-nous ce que coûte l'exploitation de notre principal service, et qui est responsable de ce chiffre ?**

Demandez le coût mensuel du plus gros service et comment il est calculé. Souvent personne ne peut répondre, ou la réponse vient de sources différentes. L'animateur peut demander ce qu'il faudrait pour produire le chiffre de façon fiable, comme des étiquettes et un rapport. Choisissez un service pour commencer.

**Quelle part de nos dépenses de nuage pouvons-nous attribuer à un responsable nommé ?**

Demandez la part non étiquetée. Une grande part signifie que le coût ne peut pas être géré. Discutez de la raison pour laquelle les ressources ne sont pas étiquetées : pas de règle, pas d'outil ou pas d'incitation. Convenez d'une règle d'étiquetage et d'une date pour un premier rapport.

**Quand avons-nous trouvé pour la dernière fois une mauvaise surprise de coût, et comment l'avons-nous appris ?**

Recueillez des exemples : un environnement oublié, une tâche qui s'emballe, un abonnement renouvelé. Demandez combien de temps cela a duré avant d'être découvert. Discutez des alertes et revues qui l'auraient attrapé. Choisissez une alerte à ajouter.

**Que couperions-nous si le budget baissait de dix pour cent, et que perdrions-nous ?**

Demandez à l'équipe de proposer des options et de nommer les conséquences, y compris pour la fiabilité. Cette question rend les compromis explicites. Ne traitez pas les réponses comme un plan ; servez-vous-en pour lancer une conversation avec la finance et le métier sur la valeur.

**Quelles décisions de dépense les ingénieurs prennent-ils aujourd'hui, et lesquelles devraient-ils prendre ?**

Listez les décisions de coût que prennent les équipes : tailles, environnements, outils, achats. Demandez quelle information elles utilisent. Discutez des bornes raisonnables. Convenez d'une décision à déléguer avec des limites.

**Comment la finance et l'ingénierie se parlent-elles, et quand ?**

Interrogez les deux groupes. Réponses typiques : au moment du budget, ou quand quelque chose va mal. Discutez d'une revue conjointe régulière. La page de la FinOps Foundation nomme la collaboration entre ingénieurs, finance et équipes métier comme le cœur de la pratique. Convenez de qui organisera la première.

## En pratique : un exemple d'ITIL agile

Un service national de bibliothèques a migré son catalogue numérique, sa recherche et ses archives publiques vers un fournisseur de nuage sur trois ans. Le directeur informatique se voit demander par le service des finances pourquoi la facture mensuelle du nuage a triplé depuis la migration et pourquoi elle est difficile à expliquer. Une équipe de dix personnes exploite la plateforme, et chacune des cinq équipes de projet a son propre compte de nuage.

Le directeur informatique et un analyste financier commencent par demander des données de coût regroupées par service. La plupart des ressources ne sont pas étiquetées ; seul un tiers du coût peut donc être attribué. Ils conviennent d'une règle d'étiquetage avec les cinq équipes et lancent un rapport hebdomadaire listant les dépenses non étiquetées par compte. En six semaines, la part non étiquetée tombe sous un dixième. L'analyste met alors en place un rapport mensuel de showback pour chaque équipe, montrant le coût par service et le coût par millier de recherches pour le service de recherche. Lors de la première revue, les ingénieurs repèrent un environnement de développement qui tourne à la taille de la production depuis un an, et une tâche de traitement de données qui parcourt une archive plus souvent que nécessaire. Les deux sont corrigés. Une réunion mensuelle avec le responsable des collections de la bibliothèque permet aux ingénieurs d'expliquer ce qui pousse le coût, comme le grand volume d'images numérisées, et au responsable de décider quelles collections numériser en premier.

Après deux trimestres, les coûts unitaires baissent et la facture est prévisible. Tout n'est pas sans heurts. Un changement de réduction de coût sur l'index de recherche diminue la vitesse aux heures de pointe, et les utilisateurs se plaignent jusqu'à ce que l'équipe rétablisse la capacité. Le service des finances veut aussi acheter un engagement d'un an auprès du fournisseur, tandis que les ingénieurs doutent que l'usage reste stable, car une migration est prévue. Ils conviennent de s'engager seulement sur la partie stable de l'usage, et de revoir l'engagement quand le plan de migration sera clair.

## Quatre points de vue

### Équipes produit et de livraison

Les équipes de livraison prennent la plupart des décisions de coût par la conception et la configuration. Étiquetez ce que vous créez, surveillez vos coûts et demandez ce qu'une fonctionnalité coûtera à exploiter. Expliquez les facteurs de coût à la finance et au métier en termes simples.

### Équipes de service et d'exploitation

Les équipes d'exploitation voient l'utilisation et le gaspillage. Partagez les données sur les ressources inactives et surdimensionnées, aidez à régler des alertes sensées et veillez à ce que les économies ne minent pas la résilience. Gardez visible le lien entre coût, capacité et niveaux de service.

### Direction et gouvernance

Les dirigeants et la finance fixent budgets, règles et responsabilités. Demandez les coûts unitaires et les tendances, soutenez un modèle de showback ou de chargeback auquel les gens font confiance et prenez les décisions d'engagement avec les ingénieurs. Évitez les coupes qui nuisent à la fiabilité sans discuter du compromis.

### Clients et utilisateurs

Les clients et utilisateurs paient les services directement ou indirectement. Demandez aux fournisseurs ce qui détermine le prix des services que vous utilisez, et dites-leur quelle valeur compte le plus. Si l'on vous refacture, attendez-vous à des explications claires et à un moyen de contester les chiffres.

## Modes d'échec courants

- **Coût non étiqueté.** Personne ne possède la facture. À la place, exigez des étiquettes et rendez compte de l'écart.
- **Finance et ingénierie dans des pièces séparées.** Chaque côté agit sur une information partielle. À la place, tenez une revue conjointe régulière avec un responsable métier.
- **Chargeback avant que les données soient fiables.** Les différends consomment du temps. À la place, commencez par le showback et améliorez les données.
- **Des totaux sans coûts unitaires.** La croissance ressemble à du gaspillage ou l'inverse. À la place, suivez le coût par transaction, utilisateur ou service.
- **Réduire le coût au détriment de la résilience.** Les économies causent des pannes. À la place, énoncez le compromis et impliquez le responsable du service.
- **Trop s'engager.** Les achats à long terme verrouillent une dépense que l'usage ne peut soutenir. À la place, engagez-vous seulement sur l'usage stable et revoyez.
- **Contrôle central seul.** Les équipes attendent l'approbation et contournent le processus. À la place, donnez aux équipes l'autorité dans des limites, avec visibilité.
- **Citer les chiffres d'enquêtes comme des faits.** Des chiffres d'enquêtes d'éditeurs guident les décisions. À la place, vérifiez les sources d'origine et utilisez vos propres données.

## Modèle de maturité

| Dimension | Initier | Développer | Standardiser | Piloter | Orchestrer |
|---|---|---|---|---|---|
| Visibilité et attribution | Le coût n'est vu que comme une facture totale | Certaines équipes voient leur coût | La plupart des dépenses sont étiquetées et attribuées à des services et à des responsables | Les coûts unitaires et les tendances sont revus en regard de la demande et de la qualité | Les données de coût sont partagées entre équipes, fournisseurs et finance dans un format commun |
| Gouvernance et budgets | Les budgets sont annuels et fixes | Quelques budgets et alertes existent | Budgets, alertes et limites d'approbation sont standard | Les écarts sont examinés et les règles ajustées | Les règles budgétaires sont alignées dans l'organisation et avec les partenaires |
| Collaboration | Finance et ingénierie se rencontrent au moment du budget | Quelques conversations conjointes | Une revue conjointe régulière avec un responsable métier | Décisions et résultats sont suivis et améliorés | Finance, ingénierie, métier et fournisseurs partagent buts et données |
| Optimisation | Les économies viennent des crises | Du gaspillage est trouvé | Gaspillage, dimensionnement et engagements sont revus régulièrement | Les économies sont mesurées en regard des risques pour la fiabilité | L'optimisation est routinière, partagée et équilibrée avec les objectifs de service |

## Liste de contrôle

- [ ] Nous pouvons énoncer le coût mensuel de chaque service majeur et qui en est responsable.
- [ ] Les ressources en nuage portent des étiquettes de responsable, de service et d'environnement, et les dépenses non étiquetées sont rapportées chaque semaine ou chaque mois.
- [ ] Les équipes reçoivent un rapport de coût régulier pour les services dont elles sont responsables (showback).
- [ ] Nous suivons au moins un coût unitaire pour chaque service majeur.
- [ ] Budgets et alertes existent avec des responsables, et les alertes se déclenchent bien avant les limites.
- [ ] Finance, ingénierie et un responsable métier se réunissent régulièrement sur le coût et la valeur.
- [ ] Nous revoyons les ressources et abonnements inutilisés et surdimensionnés au moins chaque trimestre.
- [ ] Les réductions de coût sont examinées pour leurs effets sur la fiabilité et la performance.
- [ ] Les engagements d'achat sont fondés sur un usage stable et revus.
- [ ] Nous avons vérifié les chiffres d'enquêtes d'éditeurs auprès des sources d'origine avant de les utiliser.

## Prompts d'IA

**Objectif : analyser un rapport de coût pour les dépenses sans responsable et inhabituelles.**

```text
Voici un rapport de coût pour la dernière [période], regroupé par compte, service et étiquette : [collez de vraies données ; retirez les détails sensibles].

En n'utilisant que ces données, calculez : le coût total, la part sans étiquette de responsable, les cinq plus gros postes de coût et leur part du total, et tout poste dont le coût a changé de plus de [seuil de votre choix, par ex. 25 %] par rapport à la période précédente si je l'ai incluse. Pour chaque poste inhabituel, suggérez une question pour son responsable. Ne devinez pas les causes et n'inventez pas de chiffres. Listez ce dont vous n'êtes pas sûr.
```

**Objectif : définir un coût unitaire pour un service.**

```text
Aidez-moi à définir un coût unitaire pour [service].

Ce que fait le service : [décrivez].
Ce qui importe au métier (transactions, utilisateurs, recherches, documents) : [décrivez].
Données de coût dont nous disposons : [décrivez les sources et comment elles sont regroupées].
Données de demande dont nous disposons : [décrivez].

Proposez deux ou trois coûts unitaires candidats, comment calculer chacun à partir des données que j'ai listées, ce qui pourrait les fausser et quelles décisions chacun aiderait à prendre. N'inventez pas de chiffres. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

**Objectif : préparer une revue conjointe entre ingénierie et finance.**

```text
Planifiez une revue mensuelle de 45 minutes entre ingénierie, finance et un responsable métier sur le coût de [service ou portefeuille].

Entrées : [rapport de coût, coût unitaire, état du budget, prévision ; décrivez ce que vous avez].
Préoccupations de chaque côté : ingénierie [listez] ; finance [listez] ; métier [listez].

Fournissez un ordre du jour minuté, cinq questions pour chaque groupe, un modèle de synthèse d'une page avec seulement les chiffres que je fournis et une étape de clôture qui consigne les décisions et les responsables. Posez d'abord des questions de clarification, signalez les hypothèses et listez ce dont vous n'êtes pas sûr.
```

**Objectif : peser une proposition d'économie contre la fiabilité.**

```text
Nous envisageons ce changement d'économie : [décrivez].
Économie attendue, avec la source : [collez, ou écrivez « non estimée »].
Ce que le service promet aux utilisateurs (niveaux de service) : [collez].
Performance actuelle par rapport à ces promesses : [collez].
Dépendances connues : [listez].

Listez les façons dont le changement pourrait affecter disponibilité, performance, reprise et sécurité, sous forme de questions pour le responsable du service. Suggérez un petit essai, ce qu'il faut surveiller et ce qui nous ferait revenir en arrière. N'inventez pas d'estimations. Posez d'abord des questions de clarification et listez ce dont vous n'êtes pas sûr.
```

## Compétences d'IA

- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md) : à utiliser pour prévoir les dépenses informatiques et de nuage et expliquer les écarts.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md) : à utiliser pour estimer la charge future afin que les prévisions de coût reflètent la demande.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md) : à utiliser pour relier les besoins en ressources au coût et aux niveaux de service.
- [vendor-management](../../../../skills/vendor-management/SKILL.md) : à utiliser pour gérer les contrats et engagements des fournisseurs.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md) : à utiliser pour choisir et financer services et initiatives selon la valeur et le coût.

## Sources principales

- **What is FinOps ?** (FinOps Foundation, finops.org) : la définition de la Fondation elle-même et sa description de la collaboration entre équipes d'ingénierie, de finance et métier.
- **Cloud computing** (Wikipedia) : contexte sur les modèles de tarification, la maîtrise des coûts et la responsabilité partagée, avec un bandeau sur le texte non vérifié.
- **Total cost of ownership** (Wikipedia) : contexte sur le fait de compter tous les coûts d'un actif ou d'un service sur sa vie.
- **Software as a service** (Wikipedia) : contexte sur la tarification par abonnement.

## Références

1. What is FinOps ? — FinOps Foundation, finops.org — https://www.finops.org/introduction/what-is-finops/
2. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
3. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
4. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Operating expense — Wikipedia — https://en.wikipedia.org/wiki/Operating_expense
8. Capital expenditure — Wikipedia — https://en.wikipedia.org/wiki/Capital_expenditure
9. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
