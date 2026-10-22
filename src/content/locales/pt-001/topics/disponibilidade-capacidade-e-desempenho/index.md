# Disponibilidade, Capacidade e Desempenho

**Disponibilidade, capacidade e desempenho são três visões de se um serviço está lá, é grande o bastante e é rápido o bastante quando os usuários precisam, e a abordagem ágil é escolher as metas a partir das necessidades dos usuários, precificá-las com honestidade e testá-las antes que a demanda chegue.**

## Por que isso importa

Os usuários não separam as três. Um serviço que está "no ar" mas é lento demais para usar falhou com eles, e um serviço rápido num dia calmo que desaba no pico falhou com eles no momento em que mais precisavam. As equipes que olham disponibilidade, capacidade e desempenho separadamente muitas vezes perdem os modos como interagem: acrescentar capacidade muda custo e complexidade, perseguir a disponibilidade perfeita limita a rapidez com que você pode mudar, e ajustar para a velocidade pode reduzir a resiliência.

As equipes ágeis enfrentam uma versão particular do problema. Mudam o serviço com frequência, e cada mudança pode alterar o desempenho ou as necessidades de recursos de modos que ninguém testou. Também tendem a trabalhar com horizontes de tempo curtos, de modo que necessidades de capacidade que levam meses para providenciar, como hardware, contratos ou licenças, podem ser perdidas. As práticas deste tópico dão um modo de olhar adiante sem voltar ao planejamento de longo prazo por si só.

O livro *Site Reliability Engineering* do Google, no capítulo "Embracing Risk", é uma fonte clara sobre a economia da disponibilidade: diz que sua abordagem não visa 100% de confiabilidade, porque a partir de certo ponto maximizar a estabilidade limita a rapidez com que novas funcionalidades podem ser desenvolvidas, e os custos de confiabilidade sobem acentuadamente. O [artigo da Wikipédia sobre planejamento de capacidade](https://en.wikipedia.org/wiki/Capacity_planning) dá definições e estratégias gerais. Ambos são parciais, e o vocabulário do ITIL usado aqui vem de descrições amplamente publicadas que este guia não pôde conferir no texto do titular do framework.

## Conceitos centrais

### Disponibilidade

**Disponibilidade** é a capacidade de um serviço de fazer o que os usuários precisam quando precisam. Um modo comum de expressá-la é como porcentagem ao longo de um período. O capítulo de SRE observa dois modos de medi-la. Para um sistema único, a disponibilidade é baseada em tempo: 99,99% permite cerca de 52,56 minutos de indisponibilidade não planejada por ano. Para serviços distribuídos, que estão parcialmente no ar o tempo todo, é melhor medi-la como a taxa de êxito das requisições numa janela móvel; o exemplo do capítulo é um serviço com 2,5 milhões de requisições diárias e uma meta de 99,99%, que permite até 250 erros. O capítulo se concentra na indisponibilidade não planejada. A indisponibilidade planejada precisa de seu próprio acordo com os usuários.

### O preço de cada nove a mais

O capítulo diz que os custos de confiabilidade sobem de forma não linear: um nove a mais pode custar 100 vezes o incremento anterior, incluindo recursos redundantes e o custo de oportunidade de engenheiros que não constroem funcionalidades voltadas ao usuário. Dá uma ilustração: elevar a disponibilidade de 99,9% para 99,99% num serviço com US$ 1 milhão de receita vale cerca de US$ 900 em valor, de modo que o investimento só compensa se o nove a mais custar menos que isso. Os números são o exemplo da fonte, e os seus devem vir da sua própria receita ou valor. O princípio vale: escolha a disponibilidade de que os usuários precisam e precifique tudo que passe disso.

### Tolerância a risco

O capítulo descreve trabalhar com os product owners para transformar metas de negócio em objetivos explícitos. Os fatores incluem a disponibilidade exigida, a forma das falhas (uma taxa de erros baixa e constante contra quedas totais ocasionais, sendo a exposição de dados especialmente grave), o custo e outras medidas como latência. Observa que a infraestrutura que atende muitos clientes pode ser oferecida em níveis de serviço explicitamente definidos, de modo que cada cliente escolha o nível mais barato que atenda às suas necessidades.

### Orçamentos de erro

O capítulo explica o orçamento de erro como uma medida comum e objetiva entre as equipes de produto, medidas pela velocidade, e as equipes de confiabilidade, medidas pela confiabilidade. Enquanto resta orçamento, os releases continuam. Quando ele se esgota, os releases desaceleram e o esforço passa para a confiabilidade (veja Tópico 3.7 — Gestão de Níveis de Serviço).

### Capacidade

O artigo da Wikipédia define o planejamento de capacidade como determinar a capacidade de produção de que uma organização precisa para atender a uma demanda variável e diz que em TI é sinônimo de gestão de capacidade: estimar os recursos de armazenamento, hardware, software e conectividade necessários num período futuro. O artigo distingue a **capacidade de projeto**, a produção máxima possível, da **capacidade efetiva**, a produção depois das restrições. Na prática, planeje para a capacidade efetiva, que é sempre menor que a cifra de projeto.

### Estratégias de capacidade

O artigo descreve quatro estratégias para acrescentar capacidade:

| Estratégia | O que significa | Compromisso |
|---|---|---|
| **Antecipar (lead)** | Acrescentar capacidade antes da demanda | Bom serviço e prazos curtos, mas arriscado se a demanda é imprevisível |
| **Atrasar (lag)** | Acrescentar capacidade só depois de operar na capacidade total ou além dela | Menor risco de superconstruir, mas pode perder clientes |
| **Acompanhar (match)** | Acrescentar capacidade em pequenos incrementos conforme a demanda muda | Equilibrada, exige bom monitoramento |
| **Ajustar (adjustment)** | Acrescentar ou reduzir capacidade em quantidades pequenas ou grandes conforme a demanda ou a arquitetura mudam | Flexível, exige provisionamento rápido |

O artigo descreve o planejamento de curto, médio e longo prazo (operacional, tático e estratégico), de dias a anos. Num ambiente de nuvem, "acompanhar" e "ajustar" costumam ser mais fáceis porque os recursos podem ser acrescentados depressa, mas custo e contratos ainda precisam de planejamento (veja Tópico 4.5 — Gestão Financeira de TI e FinOps).

### Desempenho

**Desempenho** é com que rapidez e qualidade o serviço responde. O capítulo do livro de SRE sobre monitoramento sugere medir latência, tráfego, erros e saturação e adverte que as médias escondem valores atípicos lentos (veja Tópico 3.10 — Monitoramento e Gestão de Eventos). A saturação, quão "cheio" está o serviço, liga o desempenho à capacidade: o capítulo observa que o desempenho muitas vezes se degrada antes de 100% de utilização.

### Como as três interagem

- Mais capacidade pode elevar a disponibilidade e o desempenho, a um custo.
- Metas altas de disponibilidade costumam exigir redundância, que é capacidade extra.
- Ajustar para o desempenho de pico pode reduzir a folga para falhas.
- Mudanças no serviço alteram as três, razão pela qual testar importa.

Uma disciplina útil é declarar as metas em conjunto para cada serviço: quão disponível, quão rápido e quanta carga deve suportar.

### Demanda e previsão

A capacidade depende da demanda. A demanda vem dos usuários e do negócio: campanhas de marketing, picos sazonais, novos clientes. O negócio sabe mais do futuro que a TI, então pergunte. Planeje com faixas em vez de números únicos e revise a previsão regularmente (veja a skill de previsão de demanda abaixo).

### Testes

As alegações de capacidade e desempenho são hipóteses até serem testadas. Os testes de carga e de desempenho aplicam demanda realista para ver como o serviço se comporta, e o teste de caos introduz falhas para ver se a disponibilidade se mantém. Podem fazer parte do pipeline de entrega.

### Limites das fontes

O artigo da Wikipédia sobre planejamento de capacidade não menciona a gestão de capacidade do ITIL nem analisa a relação entre capacidade, desempenho e disponibilidade, e sua seção sobre ativos está marcada como carente de citações. O capítulo de SRE descreve as práticas de uma organização muito grande, com economia própria. Use-os para princípios, não para números.

## Boas práticas

1. **Declare juntas as metas de disponibilidade, desempenho e carga.** Para cada serviço, escreva quão disponível deve ser, quão rápido deve responder e quanta carga deve suportar. Baseie-as nas necessidades dos usuários e acorde-as com o responsável pelo serviço e com os clientes.
2. **Precifique as metas.** Estime o que custa um nível extra de disponibilidade ou rapidez, em dinheiro e em funcionalidades atrasadas. Compare com o que os usuários e o negócio ganhariam. Use suas próprias cifras, não o exemplo de um livro.
3. **Meça a disponibilidade de um modo que combine com o serviço.** Para serviços que estão parcialmente no ar o tempo todo, use a taxa de êxito numa janela móvel como faz o capítulo de SRE. Para sistemas simples, use medidas baseadas em tempo. Conte separadamente a indisponibilidade planejada e a não planejada.
4. **Planeje para a capacidade efetiva.** Estime o que o serviço consegue suportar depois das restrições reais, como sobrecarga, falha de componentes e manutenção. Mantenha uma margem.
5. **Escolha a estratégia de capacidade de propósito.** Decida se vai antecipar, atrasar ou acompanhar para cada recurso, com base nos prazos, no custo da escassez e no custo de superconstruir. Escreva a escolha e revise-a.
6. **Pergunte ao negócio sobre a demanda.** Reúna-se com líderes de marketing, vendas e operações num ciclo regular para saber de campanhas, lançamentos e picos sazonais. Registre a carga esperada com faixas.
7. **Observe a saturação.** Acompanhe quão cheios estão os recursos-chave e defina alertas bem antes do ponto em que o desempenho se degrada. Conheça o nível em que o seu serviço começa a desacelerar.
8. **Teste antes do pico.** Execute testes de carga e de desempenho que se pareçam com o tráfego real, antes de picos conhecidos e depois de mudanças significativas. Corrija o que achar enquanto há tempo.
9. **Teste a falha, não só a carga.** Pratique perder um componente, uma zona ou um fornecedor num ambiente seguro e veja se a disponibilidade se mantém (veja a skill de teste de caos abaixo).
10. **Inclua a capacidade no trabalho de mudanças e releases.** Pergunte no design e na revisão se uma mudança altera as necessidades de recursos. Acrescente verificações de desempenho ao pipeline para os caminhos que importam (veja Tópico 3.5 — Gestão de Releases e Implantações).
11. **Use o orçamento de erro para resolver compromissos.** Quando há orçamento, gaste-o em mudanças. Quando se esgota, gaste esforço em confiabilidade e capacidade. Revise a regra com entrega e operações juntas.
12. **Revise as previsões contra o realizado.** A cada trimestre, compare a demanda prevista e a real e ajuste o seu método. Trate as surpresas como informação.

## Perguntas para discutir com a equipe

**O que os nossos usuários realmente precisam em disponibilidade, rapidez e capacidade, e quem decidiu?**

Peça as metas atuais e de onde vieram. Muitas vezes foram definidas há muito tempo, ou pela equipe sem perguntar aos usuários. Pergunte a usuários e clientes o que mais dói. Discuta se as metas combinam. Quem facilita pode perguntar o que aconteceria se a meta fosse um degrau mais baixa e o que isso liberaria.

**Quanto nos custa o próximo nove?**

Escolha um serviço com meta alta de disponibilidade. Estime o que custaria elevá-la ou reduzi-la um degrau, em dinheiro e em trabalho atrasado. Compare com o valor para os usuários. O exemplo do capítulo de SRE mostra com que rapidez a aritmética pode se voltar contra uma meta mais alta. Faça o cálculo com seus próprios números e registre as premissas.

**Qual é o próximo pico de demanda que conhecemos, e o que fizemos para nos preparar?**

Liste os picos conhecidos: uma campanha, um prazo, uma corrida sazonal. Para cada um, pergunte quem conhece a carga esperada e se o serviço foi testado nesse nível. Muitas vezes ninguém perguntou. Acorde uma pessoa para reunir os números e uma data para o teste.

**Onde o nosso serviço está mais perto da saturação, e o que acontece quando chega lá?**

Pergunte pelo recurso mais usado. Olhe a tendência. Pergunte o que o serviço faz nesse limite: desacelera, dá erro ou falha. Se ninguém sabe, teste. Escolha um limiar em que agir e um alerta para ele.

**Quais das nossas últimas mudanças afetaram o desempenho ou a capacidade, e sabíamos de antemão?**

Revise as mudanças recentes e pergunte como o desempenho foi conferido. Se não foi, discuta o que seria uma verificação leve. Opções típicas são um teste no caminho crítico ou um release canário com monitoramento. Acorde uma para o próximo release.

**Se um componente falhasse agora, o que aconteceria com a disponibilidade?**

Tome um serviço-chave e trace uma falha de banco de dados, de zona ou de fornecedor. Pergunte o que o design presume e o que foi testado. As distâncias entre premissa e evidência são riscos. Planeje um teste controlado de falha num ambiente seguro.

## Na prática: um exemplo de ITIL ágil

Uma autoridade nacional de previdência opera um serviço online em que os cidadãos conferem seus direitos e enviam formulários. O serviço tem um ano calmo, exceto nas semanas depois da divulgação dos extratos anuais, quando o tráfego sobe a várias vezes o nível normal. No ano passado o serviço desacelerou a ponto de muitos usuários desistirem, e a central de atendimento ficou sobrecarregada. A equipe de plataforma de nove pessoas e o gerente de operações querem evitar a repetição.

A equipe começa perguntando ao setor de comunicação a carga esperada. O setor diz que os extratos serão enviados em dois lotes e dá as datas, mas nenhuma cifra. A equipe estima a faixa a partir dos dados do ano passado e define um objetivo: a página de formulários deve responder num tempo aceitável para o pico esperado, e o serviço deve permanecer disponível durante os dois lotes. Executam um teste de carga numa cópia da produção e descobrem que o banco de dados é o primeiro recurso a saturar, bem abaixo do pico previsto. Adotam uma estratégia de "antecipar" para o banco de dados, já que o prazo para acrescentar capacidade é longo, e uma de "acompanhar" para os servidores web, que podem ser acrescentados em minutos. Um teste de falha mostra que perder um nó do banco de dados reduz a capacidade à metade, o que seria inaceitável no pico, então acrescentam um reserva.

No pico, o serviço permanece no ar e os tempos de resposta se mantêm no primeiro lote. No segundo lote, um componente de confirmação de pagamento que ninguém testara desacelera sob carga, e alguns usuários veem atrasos. A equipe não conhecia o limite dessa dependência e não fora avisada de que o segundo lote seria maior. Acrescentam o componente ao próximo teste de carga, pedem ao setor de comunicação o volume de cada lote com mais antecedência e acordam revisar o processo de previsão no trimestre seguinte.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega afetam as três pelo design e pelas mudanças. Inclua desempenho e capacidade nas revisões de design e no pipeline. Avise a operação sobre mudanças que alteram a carga e pergunte ao negócio sobre a demanda esperada.

### Equipes de serviço e operações

As equipes de operações costumam carregar o monitoramento e os planos de capacidade. Acompanhe a saturação e a tendência, mantenha uma visão dos prazos dos recursos e leve evidências ao planejamento. Ajude o negócio a entender o que custa cada nível de disponibilidade.

### Liderança e governança

Os líderes definem o preço que estão dispostos a pagar por confiabilidade e rapidez. Peça metas que combinem com as necessidades dos usuários, com custos, e aceite que a disponibilidade perfeita não é um objetivo sensato. Apoie testes antes de picos conhecidos e o orçamento para resiliência onde importa.

### Clientes e usuários

Clientes e usuários sentem o resultado. Avise o provedor quando você espera carga extra, como uma campanha ou um prazo, e o que mais importa para você em rapidez e disponibilidade. Relate a lentidão além das quedas, pois ambas são falhas do seu lado.

## Modos de falha comuns

- **Metas por hábito.** Exigem-se "cinco noves" sem perguntar por quê. Em vez disso, derive as metas das necessidades dos usuários e precifique-as.
- **Picos surpresa.** O negócio conhece uma campanha e a TI não. Em vez disso, reúna-se num ciclo regular e registre a carga esperada.
- **Médias para o desempenho.** Valores atípicos lentos passam despercebidos. Em vez disso, olhe percentis altos e a saturação.
- **Capacidade acrescentada só depois do problema.** A estratégia de atrasar é usada por acidente. Em vez disso, escolha uma estratégia de propósito, com base nos prazos.
- **Resiliência não testada.** A redundância existe no papel. Em vez disso, teste a falha de componentes num ambiente seguro.
- **Mudanças sem verificações de desempenho.** Um release degrada a rapidez. Em vez disso, acrescente verificações ao pipeline para os caminhos que importam.
- **Esquecer as dependências.** Um componente de terceiros limita o serviço inteiro. Em vez disso, liste as dependências e teste-as.
- **Tratar a previsão como fixa.** Os planos ignoram o erro. Em vez disso, use faixas e compare as previsões com o realizado.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Metas e custo | As metas são informais ou copiadas | Alguns serviços têm metas declaradas | Os serviços têm metas acordadas de disponibilidade, desempenho e carga, com custos conhecidos | Metas e custos são revisados contra os resultados | As metas são definidas em conjunto com clientes e fornecedores e ajustadas por evidências |
| Planejamento de demanda e capacidade | A capacidade é acrescentada depois do problema | Algumas equipes preveem picos conhecidos | A demanda é colhida do negócio num ciclo, com uma estratégia de capacidade declarada | A exatidão das previsões é acompanhada e os métodos aprimorados | O planejamento é coordenado entre equipes, fornecedores e o negócio |
| Testes | Pouco teste de carga ou de falha | Alguns testes antes de grandes eventos | Testes de carga e de falha são rotina para os serviços-chave | Os resultados dos testes geram melhorias acompanhadas | Os testes são compartilhados e coordenados entre serviços dependentes |
| Monitoramento e resposta | Os problemas são notados tarde | Parte da saturação é acompanhada | Saturação, latência e erros são monitorados com alertas antes dos limites | Tendências e limiares são ajustados com base em dados | Sinais e respostas são coordenados entre equipes e fornecedores |

## Lista de verificação

- [ ] Cada serviço tem metas declaradas de disponibilidade, desempenho e carga, com sua fonte.
- [ ] Estimamos quanto custaria o próximo nível de disponibilidade.
- [ ] Sabemos como a disponibilidade é medida em cada serviço e o que conta como indisponibilidade.
- [ ] Escolhemos uma estratégia de capacidade para cada recurso-chave.
- [ ] Nos reunimos regularmente com o negócio para saber da demanda esperada.
- [ ] A saturação dos recursos-chave é monitorada com alertas antes dos limites.
- [ ] Testes de carga foram feitos antes do último pico conhecido.
- [ ] A falha de ao menos um componente-chave foi testada num ambiente seguro.
- [ ] Mudanças que afetam o desempenho ou a capacidade são sinalizadas na revisão.
- [ ] As previsões são comparadas com a demanda real a cada trimestre.

## Prompts de IA

**Finalidade: transformar dados medidos numa visão da folga de capacidade.**

```text
Here are the measurements for [resource, e.g. "database CPU"] for [service] over [period]: [paste real values or summary figures such as daily peak and average].
Known limit at which performance degrades, if you know it: [paste, or write "unknown"].
Expected demand change: [describe, with source].

Using only my data, describe the trend and how much headroom there appears to be at the observed peak, in plain words. Show how headroom would change if demand grew by the amounts I gave. Do not invent limits or growth rates. Say what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Finalidade: precificar uma meta de disponibilidade mais alta.**

```text
Help me compare the cost and value of raising the availability target for [service] from [current target] to [proposed target].

What the service is worth, with source (revenue, cost of an outage, or other value; use only figures I provide): [paste].
What the extra availability would require (redundancy, staff, tools), with cost estimates I have: [paste, or write "unknown"].
Current measured availability: [paste].

Calculate the allowed unplanned downtime or error count at each target using only the numbers I gave, show the difference, and compare with the value and cost figures if I provided them. State your assumptions. Do not invent costs or revenue. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: planejar um teste de carga antes de um pico conhecido.**

```text
Plan a load test for [service] before this event: [describe the peak, with date and source of the expected load].

Architecture, in brief: [describe components, dependencies, and suppliers].
Expected load range, with the source: [paste].
Test environment available: [describe].

Give a plan with: goals, what to measure (latency distribution, errors, saturation), scenarios to run, how to ramp up, what to do with results, and risks to production or to suppliers (for example agreements that need to be made before testing). Do not invent figures. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: desenhar um teste de falha.**

```text
Help me design a controlled failure test for [service].

What I want to learn: [for example whether availability holds if one database node fails].
Environment for the test: [describe, e.g. a production-like test environment].
Safeguards available: [monitoring, rollback, people on hand].

Describe a step-by-step test plan: hypothesis, what to break and how, what to observe, who is present, what stops the test, and how to record what happened. Keep it away from production unless I say it is safe. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use para estimar os recursos de que um serviço precisa ao longo do tempo e escolher uma estratégia para acrescentá-los.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): use para estimar a carga futura como uma faixa a partir de dados passados e planos do negócio.
- [load-testing](../../../../skills/load-testing/SKILL.md): use para desenhar testes que apliquem demanda realista antes de um pico.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): use para conferir rapidez e uso de recursos nos caminhos críticos como parte da entrega.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): use para testar se a disponibilidade se mantém quando componentes falham.

## Fontes principais

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): a economia da disponibilidade, a medição baseada em requisições e o orçamento de erro.
- **Capacity planning** (Wikipedia): definições e as estratégias de antecipar, atrasar, acompanhar e ajustar.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): os sinais dourados, incluindo a saturação.
- **High availability** (Wikipedia): contexto sobre projetar sistemas para operação contínua.

## Referências

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
