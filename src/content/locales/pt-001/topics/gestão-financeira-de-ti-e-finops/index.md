# Gestão Financeira de TI e FinOps

**A gestão financeira de TI mostra o que os serviços custam e que valor devolvem, e o FinOps é a prática cultural de reunir engenheiros, finanças e equipes de negócio para que o gasto com tecnologia, especialmente na nuvem, seja entendido e gerido enquanto acontece.**

## Por que isso importa

O dinheiro decide que serviços existem, quão bem têm pessoal e quanto duram. Por anos, as finanças de TI significaram um orçamento anual, uma planilha de alocação de custos e a discussão ocasional sobre quem paga pela rede. A computação em nuvem mudou isso. Recursos podem ser criados em segundos por qualquer pessoa com as permissões certas, e a cobrança segue o uso. Um único job mal configurado pode acrescentar milhares à fatura mensal antes que alguém note, e uma mudança bem pensada pode economizar outro tanto.

Para as equipes ágeis, a mudança tem dois gumes. Elas ganham a liberdade de experimentar e escalar sem esperar por hardware. Assumem também uma responsabilidade que antes ficava com as finanças e as compras: saber o que suas escolhas custam. Enquanto isso, o pessoal de finanças, que planeja em ciclos anuais, enfrenta um uso que varia diariamente. Nenhum dos lados consegue gerir bem o custo sozinho.

A Wikipédia em inglês não tem artigo intitulado "FinOps" no endereço conferido. O próprio site da FinOps Foundation define o FinOps como um framework operacional e uma prática cultural que maximiza o valor de negócio da tecnologia e cria responsabilidade financeira por meio da colaboração entre as equipes de engenharia, finanças e negócio. O artigo da Wikipédia sobre computação em nuvem descreve modelos de preços e controle de custos e traz um aviso de manutenção de que partes dele podem não estar verificadas. O vocabulário financeiro do ITIL aqui, como orçamento, contabilidade e cobrança, vem de descrições amplamente publicadas que este guia não pôde conferir no texto do titular do framework.

## Conceitos centrais

### Gestão financeira de TI

A gestão financeira de TI (no ITIL, "financial management for IT services") é amplamente descrita como a prática de gerir o dinheiro de um provedor de serviços de TI: planejar orçamentos, contabilizar custos e, onde relevante, cobrar pelos serviços. Seu objetivo é dar a quem decide a informação para equilibrar custo e valor. As fontes lidas para este guia não definem a prática, então estas descrições são de uso comum, oferecidas como tal.

| Atividade | Pergunta a que responde |
|---|---|
| **Orçamento e planejamento** | Quanto gastaremos, e em quê, no próximo período? |
| **Contabilidade de custos** | Quanto custa fornecer cada serviço? |
| **Cobrança ou alocação** | Quem paga e como? |
| **Análise de valor e de investimento** | Um serviço ou mudança vale o seu custo? |

### Showback e chargeback

Dois arranjos para compartilhar custos são amplamente usados. No **showback**, mostra-se aos consumidores o que usam e o que custa, mas não se cobra. No **chargeback**, eles são cobrados ou o custo é movido para o seu orçamento. O showback cria consciência com pouco atrito; o chargeback cria responsabilização e pode criar disputas sobre as regras de alocação. Escolha um perguntando que comportamento você quer e se os dados são bons o bastante para defendê-lo.

### Nuvem e o modelo de pagamento por uso

A Wikipédia diz que a computação em nuvem pode reduzir o gasto de capital inicial ao passar para um modelo de despesa operacional em que os custos escalam com o uso, e que a infraestrutura como serviço é cobrada em base de utilidade pública. Descreve o software como serviço como tipicamente uma taxa fixa mensal ou anual por usuário, ou pagamento por uso. Sua lista de preocupações de controle de custos inclui recursos não usados, configurações ineficientes e custos ocultos. Observa que os provedores oferecem ferramentas de custos e cita o FinOps como um framework para padronizar as operações financeiras de nuvem.

O artigo relata achados de pesquisas: uma pesquisa do Gartner com 200 líderes de TI achou que 69% tiveram estouros de orçamento de nuvem em 2023, com os demais creditando previsão, monitoramento de gastos e otimização; e o relatório de 2024 da Flexera nomeou a gestão do gasto em nuvem como o principal desafio, relatando que o gasto em nuvem pública excedeu os orçamentos em média 15%. O artigo traz um aviso sobre texto não verificado, então confira essas cifras nos relatórios originais antes de citá-las.

### O que é o FinOps

O site da FinOps Foundation define o FinOps como "um framework operacional e uma prática cultural" que "maximiza o valor de negócio da tecnologia" e "cria responsabilidade financeira por meio da colaboração entre as equipes de engenharia, finanças e negócio". Diz que o nome combina "Finance" e "DevOps" e que o foco se estende além da nuvem, a software como serviço, licenciamento, data centers e mais. Pontos-chave do site:

- **É um esporte de equipe.** O site nomeia estes grupos: executivos, engenheiros, praticantes de FinOps, operações e finanças e compras, e diz que o FinOps muda o modo como equipes díspares trabalham juntas. Uma única equipe não consegue fazê-lo sozinha.
- **Usa uma abordagem de maturidade** descrita como "Crawl, Walk, Run" (engatinhar, andar, correr).
- **A Foundation** é descrita como um projeto sob a LF Projects, uma série da Linux Foundation, e apoia uma especificação técnica de código aberto chamada FOCUS (FinOps Open Cost and Usage Specification). Também oferece treinamento e certificação.

A página lida para este guia não lista os princípios nem as fases, então este tópico não os declara. Veja diretamente as páginas de princípios e fases da Foundation.

### Dados de custo e etiquetagem

Seja qual for o nome da prática, ela depende de poder atribuir o custo. Isso exige duas coisas: etiquetas (tags) nos recursos que digam quem é o responsável e que serviço apoiam (veja Tópico 4.1 — Gestão de Ativos de TI) e dados de cobrança que possam ser agrupados por essas etiquetas. O FOCUS existe para padronizar o formato dos dados de custo e uso entre provedores. Custo sem etiqueta é custo sem dono.

### Custos unitários e valor

Uma fatura total diz pouco. Divida o custo por algo que signifique alguma coisa para o negócio: por transação, por usuário, por serviço, por ambiente. Custo total crescente com custo unitário decrescente pode ser crescimento saudável. Custo total decrescente com custo unitário crescente pode sinalizar um problema. O custo unitário liga as finanças aos níveis de serviço e ao valor (veja Tópico 3.7 — Gestão de Níveis de Serviço).

### Custo, confiabilidade e rapidez

O dinheiro compra confiabilidade e rapidez, e cada nível a mais tem um preço (veja Tópico 3.11 — Disponibilidade, Capacidade e Desempenho). Uma equipe que corta custo sem cuidado pode reduzir a resiliência. Uma equipe que nunca olha o custo pode superconstruir. As conversas de FinOps são um lugar para tornar explícito esse compromisso, com os engenheiros descrevendo as opções e as finanças e o negócio ponderando-as.

### Governança e risco

Os controles financeiros incluem orçamentos e alertas, aprovação para grandes compromissos, limites sobre quem pode criar recursos caros e revisões regulares. Compromissos com provedores, como acordos de compra de longo prazo, podem reduzir o custo e acrescentar risco se o uso cair. São decisões para finanças, compras e engenharia em conjunto (veja Tópico 5.7 — Governança, Risco e Conformidade e Tópico 3.14 — Gestão de Fornecedores).

### Limites das fontes

A página da FinOps Foundation é um resumo da organização que promove a prática e não dá data de fundação, cifras de membros nem evidência de resultados. O artigo sobre computação em nuvem está sinalizado por texto não verificado e não dá a mecânica de preços, taxas de saída de dados nem detalhes de uma prática de FinOps. Este tópico deve ser tratado como uma introdução; leia os materiais da Foundation e a documentação do seu provedor para os detalhes.

## Boas práticas

1. **Torne o custo visível a quem o causa.** Mostre a cada equipe o custo dos serviços de que é dona, ao menos mensalmente, numa forma que possa entender. As pessoas gerem o que conseguem ver.
2. **Etiquete tudo o que custa dinheiro.** Exija etiquetas de responsável, serviço e ambiente nos recursos de nuvem e relate o gasto sem etiqueta. Corrija isso antes de ajustar qualquer outra coisa.
3. **Comece com o showback.** Mostre às equipes os seus custos antes de cobrar. Passe ao chargeback só quando os dados forem confiáveis e o benefício for claro.
4. **Use custos unitários.** Expresse o custo por transação, usuário ou serviço, além do total. Revise a tendência junto com a demanda e a qualidade.
5. **Defina orçamentos e alertas.** Acorde orçamentos por serviço ou equipe e defina alertas bem antes do limite. Revise os alertas com os responsáveis, e não só com as finanças.
6. **Leve finanças e engenharia a uma só conversa.** Faça uma revisão regular em que os engenheiros expliquem o que move o custo e as finanças expliquem as restrições. Inclua um dono do negócio que possa julgar o valor.
7. **Procure primeiro o desperdício.** Ache recursos não usados ou superdimensionados, ambientes ociosos e assinaturas esquecidas. Essas economias carregam pouco risco (veja Tópico 4.2 — Gestão de Ativos de Software para assinaturas).
8. **Pondere as economias contra a confiabilidade.** Antes de cortar, pergunte o que a mudança faz com a disponibilidade, o desempenho e a recuperação. Registre o compromisso.
9. **Planeje os compromissos com cuidado.** Compromissos de compra com provedores podem reduzir o custo, mas travam o gasto. Baseie-os em uso estável e revise-os regularmente.
10. **Dê às equipes autoridade e limites.** Deixe as equipes tomarem decisões de custo dentro de limites acordados e exija aprovação para decisões acima deles. Autonomia com visibilidade funciona melhor que o controle central sozinho.
11. **Inclua o custo no design e na definição de pronto.** Pergunte nas revisões de design quanto custará operar uma funcionalidade e confira depois do release.
12. **Aprenda e compartilhe.** Publique notas curtas sobre o que economizou dinheiro e o que saiu pela culatra. Use uma abordagem de maturidade como "engatinhar, andar, correr" para fazer a prática crescer.

## Perguntas para discutir com a equipe

**Sabemos quanto custa operar o nosso serviço principal, e quem é dono desse número?**

Peça o custo mensal do maior serviço e como é calculado. Muitas vezes ninguém sabe responder, ou a resposta vem de fontes diferentes. Quem facilita pode perguntar o que seria necessário para produzir o número de forma confiável, como etiquetas e um relatório. Escolha um serviço para começar.

**Que parcela do nosso gasto em nuvem conseguimos atribuir a um responsável nomeado?**

Peça a parcela sem etiqueta. Uma parcela grande significa que o custo não pode ser gerido. Discuta por que os recursos estão sem etiqueta: nenhuma regra, nenhuma ferramenta ou nenhum incentivo. Acorde uma regra de etiquetagem e uma data para um primeiro relatório.

**Quando foi a última vez que achamos uma surpresa de custo, e como descobrimos?**

Reúna exemplos: um ambiente esquecido, um job descontrolado, uma assinatura que renovou. Pergunte quanto tempo rodou antes da descoberta. Discuta alertas e revisões que o teriam pegado. Escolha um alerta a acrescentar.

**O que cortaríamos se o orçamento caísse 10%, e o que perderíamos?**

Peça à equipe que proponha opções e nomeie as consequências, inclusive para a confiabilidade. Esta pergunta torna explícitos os compromissos. Não trate as respostas como um plano; use-as para iniciar uma conversa com as finanças e o negócio sobre valor.

**Que decisões sobre gastos os engenheiros tomam hoje, e quais deveriam tomar?**

Liste as decisões de custo que as equipes tomam: tamanhos, ambientes, ferramentas, compras. Pergunte que informação usam. Discuta que limites seriam razoáveis. Acorde uma decisão a transferir, com limites.

**Como as finanças e a engenharia conversam entre si, e quando?**

Pergunte aos dois grupos. Respostas típicas: na hora do orçamento, ou quando algo dá errado. Discuta uma revisão conjunta regular. A página da FinOps Foundation nomeia a colaboração entre engenheiros, finanças e equipes de negócio como o coração da prática. Acorde quem organizará a primeira.

## Na prática: um exemplo de ITIL ágil

Um serviço nacional de bibliotecas migrou ao longo de três anos o seu catálogo digital, a busca e os arquivos públicos para um provedor de nuvem. O diretor de TI é questionado pelo departamento de finanças sobre por que a fatura mensal da nuvem triplicou desde a migração e por que é difícil de explicar. Uma equipe de dez pessoas opera a plataforma, e cada uma das cinco equipes de projeto tem sua própria conta de nuvem.

O diretor de TI e uma analista de finanças começam pedindo dados de custo agrupados por serviço. A maioria dos recursos está sem etiqueta, então só um terço do custo pode ser atribuído. Acordam uma regra de etiquetagem com as cinco equipes e executam um relatório semanal que lista o gasto sem etiqueta por conta. Em seis semanas, a parcela sem etiqueta cai para menos de um décimo. A analista então monta um relatório mensal de showback para cada equipe, mostrando o custo por serviço e o custo por mil buscas para o serviço de busca. Na primeira revisão, os engenheiros percebem um ambiente de desenvolvimento que rodou em tamanho de produção por um ano e um job de processamento de dados que varre um arquivo com mais frequência que o necessário. Ambos são corrigidos. Uma reunião mensal com a chefe de acervos da biblioteca permite que os engenheiros expliquem o que move o custo, como o grande volume de imagens digitalizadas, e que a chefe decida que coleções digitalizar primeiro.

Depois de dois trimestres, os custos unitários caem e a fatura é previsível. Nem tudo corre bem. Uma mudança de corte de custos no índice de busca reduz a rapidez nos horários de pico, e os usuários reclamam até que a equipe restaure a capacidade. O departamento de finanças também quer comprar um compromisso de um ano com o provedor, enquanto os engenheiros duvidam de que o uso se mantenha estável, já que uma migração está planejada. Acordam comprometer-se apenas com a parte estável do uso e rever o compromisso quando o plano de migração estiver claro.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega tomam a maioria das decisões de custo pelo design e pela configuração. Etiquete o que criar, acompanhe seus custos e pergunte quanto custará operar uma funcionalidade. Explique os motores de custo às finanças e ao negócio em termos simples.

### Equipes de serviço e operações

As equipes de operações veem a utilização e o desperdício. Compartilhe dados sobre recursos ociosos e superdimensionados, ajude a definir alertas sensatos e garanta que as economias não minem a resiliência. Mantenha visível a ligação entre custo, capacidade e níveis de serviço.

### Liderança e governança

Líderes e finanças definem orçamentos, regras e responsabilização. Peça custos unitários e tendências, apoie um modelo de showback ou chargeback em que as pessoas confiem e tome as decisões sobre compromissos junto com os engenheiros. Evite cortes que prejudiquem a confiabilidade sem discutir o compromisso.

### Clientes e usuários

Clientes e usuários pagam pelos serviços direta ou indiretamente. Pergunte aos provedores o que move o preço dos serviços que você usa e diga-lhes que valor importa mais. Se você é cobrado por chargeback, espere explicações claras e um modo de questionar as cifras.

## Modos de falha comuns

- **Custo sem etiqueta.** Ninguém é dono da fatura. Em vez disso, exija etiquetas e relate a lacuna.
- **Finanças e engenharia em salas separadas.** Cada lado age com informação parcial. Em vez disso, faça uma revisão conjunta regular com um dono do negócio.
- **Chargeback antes de os dados serem confiáveis.** As disputas consomem tempo. Em vez disso, comece com o showback e melhore os dados.
- **Totais sem custos unitários.** O crescimento parece desperdício, ou o contrário. Em vez disso, acompanhe o custo por transação, usuário ou serviço.
- **Cortar custo à custa da resiliência.** As economias causam quedas. Em vez disso, declare o compromisso e envolva o responsável pelo serviço.
- **Comprometer-se demais.** Compras de longo prazo travam um gasto que o uso não sustenta. Em vez disso, comprometa-se apenas com o uso estável e revise.
- **Só controle central.** As equipes esperam aprovação e contornam o processo. Em vez disso, dê às equipes autoridade dentro de limites, com visibilidade.
- **Citar cifras de pesquisas como fato.** Números de pesquisas de fornecedores conduzem decisões. Em vez disso, confira as fontes originais e use seus próprios dados.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Visibilidade e atribuição | O custo é visto apenas como uma fatura total | Algumas equipes veem o seu custo | A maior parte do gasto é etiquetada e atribuída a serviços e responsáveis | Custos unitários e tendências são revisados contra a demanda e a qualidade | Os dados de custo são compartilhados entre equipes, fornecedores e finanças num formato comum |
| Governança e orçamentos | Os orçamentos são anuais e fixos | Existem alguns orçamentos e alertas | Orçamentos, alertas e limites de aprovação são padrão | As variações são investigadas e as regras ajustadas | As regras de orçamento são alinhadas em toda a organização e com parceiros |
| Colaboração | Finanças e engenharia se reúnem na hora do orçamento | Algumas conversas conjuntas | Uma revisão conjunta regular com um dono do negócio | Decisões e resultados são acompanhados e melhorados | Finanças, engenharia, negócio e fornecedores compartilham metas e dados |
| Otimização | As economias vêm de crises | Algum desperdício é achado | Desperdício, dimensionamento e compromissos são revisados regularmente | As economias são medidas contra os riscos à confiabilidade | A otimização é rotina, compartilhada e equilibrada com as metas de serviço |

## Lista de verificação

- [ ] Sabemos declarar o custo mensal de cada serviço importante e quem é o responsável.
- [ ] Os recursos de nuvem levam etiquetas de responsável, serviço e ambiente, e o gasto sem etiqueta é relatado semanal ou mensalmente.
- [ ] As equipes recebem um relatório regular de custos dos serviços de que são donas (showback).
- [ ] Acompanhamos ao menos um custo unitário para cada serviço importante.
- [ ] Existem orçamentos e alertas com responsáveis, e os alertas disparam bem antes dos limites.
- [ ] Finanças, engenharia e um dono do negócio se reúnem regularmente sobre custo e valor.
- [ ] Revisamos recursos e assinaturas não usados e superdimensionados ao menos trimestralmente.
- [ ] Os cortes de custo são revisados quanto a efeitos sobre confiabilidade e desempenho.
- [ ] Os compromissos de compra se baseiam em uso estável e são revisados.
- [ ] Conferimos as cifras de pesquisas de fornecedores contra as fontes originais antes de usá-las.

## Prompts de IA

**Finalidade: analisar um relatório de custos em busca de gasto sem dono e incomum.**

```text
Here is a cost report for the last [period], grouped by account, service, and tag: [paste real data; remove sensitive details].

Using only this data, calculate: total cost, the share with no owner tag, the five largest cost items and their share of total, and any item whose cost changed by more than [threshold you choose, e.g. 25%] from the previous period if I included it. For each unusual item, suggest a question for its owner. Do not guess at causes or invent numbers. List what you are unsure of.
```

**Finalidade: definir um custo unitário para um serviço.**

```text
Help me define a unit cost for [service].

What the service does: [describe].
What the business cares about (transactions, users, searches, documents): [describe].
Cost data we have: [describe sources and how they are grouped].
Demand data we have: [describe].

Propose two or three candidate unit costs, how to calculate each from the data I listed, what could distort them, and what decisions each would help. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: preparar uma revisão conjunta entre engenharia e finanças.**

```text
Plan a 45-minute monthly review between engineering, finance, and a business owner about the cost of [service or portfolio].

Inputs: [cost report, unit cost, budget status, forecast; describe what you have].
Concerns on each side: engineering [list]; finance [list]; business [list].

Provide a timed agenda, five questions for each group, a one-page summary template with only the figures I supply, and a closing step that records decisions and owners. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: ponderar uma proposta de economia contra a confiabilidade.**

```text
We are considering this cost-saving change: [describe].
Expected saving, with source: [paste, or write "not estimated"].
What the service promises to users (service levels): [paste].
Current performance against those promises: [paste].
Known dependencies: [list].

List the ways the change could affect availability, performance, recovery, and security, as questions for the service owner. Suggest a small trial, what to monitor, and what would make us reverse it. Do not invent estimates. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): use para prever o gasto de TI e de nuvem e explicar as variações.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): use para estimar a carga futura de modo que as previsões de custo reflitam a demanda.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use para ligar as necessidades de recursos ao custo e aos níveis de serviço.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use para gerir contratos e compromissos com provedores.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): use para escolher e financiar serviços e iniciativas por valor e custo.

## Fontes principais

- **What is FinOps?** (FinOps Foundation, finops.org): a definição da própria Foundation e a descrição da colaboração entre as equipes de engenharia, finanças e negócio.
- **Cloud computing** (Wikipedia): contexto sobre modelos de preços, controle de custos e responsabilidade compartilhada, com um aviso sobre texto não verificado.
- **Total cost of ownership** (Wikipedia): contexto sobre contar todos os custos de um ativo ou serviço ao longo da vida.
- **Software as a service** (Wikipedia): contexto sobre preços por assinatura.

## Referências

1. What is FinOps? — FinOps Foundation, finops.org — https://www.finops.org/introduction/what-is-finops/
2. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
3. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
4. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Operating expense — Wikipedia — https://en.wikipedia.org/wiki/Operating_expense
8. Capital expenditure — Wikipedia — https://en.wikipedia.org/wiki/Capital_expenditure
9. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
