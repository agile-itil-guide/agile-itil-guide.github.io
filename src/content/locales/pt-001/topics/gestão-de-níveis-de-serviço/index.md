# Gestão de Níveis de Serviço

**A gestão de níveis de serviço transforma o que os usuários precisam em metas que uma equipe pode medir e defender, e a forma mais útil para equipes ágeis é um pequeno número de objetivos voltados ao usuário, com um orçamento explícito para falhas.**

## Por que isso importa

Todo serviço tem um nível de qualidade, quer alguém o tenha medido ou não. Se ele não é declarado, os usuários presumem um e a equipe presume outro, e a distância é descoberta durante uma queda. A gestão de níveis de serviço é a prática de declarar o nível, medi-lo e agir sobre os resultados. Dá à equipe algo pelo que se orientar e aos clientes algo em que confiar.

As equipes ágeis muitas vezes resistem aos níveis de serviço porque os associam a contratos e multas. Contudo, uma equipe ágil que lança toda semana está tomando uma decisão, saiba ou não, sobre quanto risco correr com a disponibilidade. Um objetivo claro torna explícita essa decisão. O livro *Site Reliability Engineering* do Google, no capítulo sobre objetivos de nível de serviço, descreve como fazê-lo de um modo que serve a equipes que andam depressa: escolher poucos indicadores que importam aos usuários, definir metas e usar o espaço entre o perfeito e o aceitável, o orçamento de erro, para decidir quando lançar.

Este tópico combina esse capítulo com o [artigo da Wikipédia sobre acordos de nível de serviço](https://en.wikipedia.org/wiki/Service-level_agreement) para as definições de acordos e com vocabulário do ITIL amplamente usado que este guia não pôde conferir no texto do titular do framework. O capítulo de SRE reflete a prática de uma organização e defende uma abordagem específica; leia-o como uma opção bem explicada, não como regra universal.

## Conceitos centrais

### Indicador, objetivo, acordo

O capítulo de SRE distingue três termos que costumam ser confundidos:

| Termo | Significado | Exemplo |
|---|---|---|
| **Indicador de nível de serviço (SLI)** | Uma medida quantitativa cuidadosamente definida de algum aspecto do nível de serviço | A fração de requisições bem formadas que têm êxito |
| **Objetivo de nível de serviço (SLO)** | Um valor ou intervalo-alvo para um SLI | Pelo menos 99,9% das requisições têm êxito ao longo de um mês |
| **Acordo de nível de serviço (SLA)** | Um contrato explícito ou implícito com os usuários que inclui consequências por cumprir ou perder os objetivos, na maioria das vezes financeiras | Um reembolso se a disponibilidade cair abaixo de um nível declarado |

O teste do capítulo para distinguir um SLA de um SLO é se há uma consequência explícita. Se não há, é um SLO. Os números de exemplo na tabela são ilustrações, não recomendações.

O artigo da Wikipédia descreve um SLA como um acordo, em geral um contrato vinculante, entre um provedor e um cliente que define aspectos do serviço como qualidade, disponibilidade e responsabilidades. Lista conteúdos típicos: uma descrição do serviço, níveis de desempenho, monitoramento e relatórios, como os problemas são relatados, prazos de resposta e resolução e consequências do descumprimento. Nomeia métricas comuns como tempo médio entre falhas, tempo médio de reparo, tempo de atividade (uptime), resolução na primeira chamada e tempo de atendimento. Observa que as grandes organizações costumam usar SLAs internos entre unidades. Descreve tipos por escopo: baseados em cliente, baseados em serviço e multinível.

### Escolhendo indicadores

O capítulo de SRE aconselha escolher poucos indicadores que reflitam o que importa aos usuários, e não toda métrica que se possa acompanhar. Os sistemas voltados ao usuário costumam se concentrar em disponibilidade, latência e vazão. Os sistemas de armazenamento acrescentam durabilidade, e todos os sistemas devem acompanhar a correção. Sugere que a medição do lado do cliente pode pegar problemas que as métricas do lado do servidor perdem. Uma consequência prática para equipes de serviço: comece pela experiência do usuário, como "consigo marcar uma consulta e leva alguns segundos", e depois encontre um indicador que a aproxime.

### Médias escondem a dor

O capítulo argumenta contra se apoiar em médias: "A maioria das métricas é melhor pensada como distribuições do que como médias". Percentis altos, como o 99º ou o 99,9º, mostram piores casos plausíveis, enquanto a mediana mostra o caso típico. As médias podem esconder uma longa cauda de requisições lentas. Se a sua medida é uma média, alguns usuários podem estar tendo um péssimo momento sem que o número se mova.

### Escolhendo metas

A orientação do capítulo sobre metas é direta e útil:

- **Comece pelos usuários.** "Comece pensando (ou descobrindo!) com o que os seus usuários se importam, não no que você consegue medir."
- **Não se ancore no desempenho atual.** Escolher uma meta com base no que você alcança agora pode cristalizar um esforço heroico.
- **Mantenha simples.** Agregações complicadas obscurecem as mudanças e são mais difíceis de raciocinar.
- **Evite absolutos.** Promessas de disponibilidade "sempre" são irrealistas.
- **Tenha o menor número possível de SLOs.** Cada um deve valer ser defendido numa discussão de prioridades.
- **A perfeição pode esperar.** É melhor começar com uma meta frouxa que você aperta do que com uma que depois precise ser afrouxada.

### Orçamentos de erro

O capítulo diz que exigir 100% de conformidade é irrealista e retarda a inovação. Em vez disso, as equipes admitem um **orçamento de erro**: a taxa com que um SLO pode ser perdido, acompanhada diária, semanal ou mensalmente. O orçamento informa as decisões sobre releases. Quando sobra bastante orçamento, a equipe pode correr mais risco com mudanças; quando está quase gasto, a equipe desacelera as mudanças e investe em confiabilidade. Isso dá às equipes ágeis e à operação um modo comum e numérico de discutir rapidez contra estabilidade, no lugar da discussão por autoridade.

### Definindo expectativas

O capítulo observa que publicar um SLO define as expectativas dos usuários. As equipes podem manter uma margem de segurança com uma meta interna mais apertada. Adverte também contra superar demais, pois os usuários passam a depender de qualquer desempenho que observem. Se um serviço está muito melhor que seu objetivo declarado, os usuários construirão sobre isso, e o objetivo deixa de proteger a equipe.

### O laço de controle

O capítulo descreve SLIs e SLOs como a base de um laço de controle: monitorar os SLIs, compará-los com os SLOs, decidir se é preciso agir, descobrir que ação atingirá a meta e tomá-la. Sem um SLO, a equipe não sabe dizer se ou quando agir (veja Tópico 3.10 — Monitoramento e Gestão de Eventos).

### Acordos internos e externos

Um SLA é entre um provedor e um cliente. Dentro de um provedor, as equipes dependem umas das outras e de fornecedores. O artigo da Wikipédia menciona que os SLAs podem ser apoiados por acordos de nível operacional (OLAs), mas não os explica. No vocabulário do ITIL, um OLA é um acordo entre equipes internas que apoia um SLA, e um contrato de apoio (underpinning contract) é o equivalente com um fornecedor externo. As fontes lidas aqui não confirmam essas definições, então confira-as nas publicações do ITIL. O ponto prático é que uma promessa a um cliente é tão boa quanto as promessas que a sustentam (veja Tópico 3.14 — Gestão de Fornecedores).

### Expectativas de nível de serviço no Kanban

No Kanban, uma **expectativa de nível de serviço** é uma previsão de quanto tempo um item de trabalho deve levar, com base em tempos de ciclo passados (veja Tópico 1.5 — Kanban). Não é um acordo, mas serve a um propósito semelhante para itens de trabalho e pode alimentar metas para requisições e incidentes.

## Boas práticas

1. **Comece pelo que os usuários precisam.** Pergunte a usuários e clientes o que mais importa e o que dói quando falha. Escreva nas palavras deles antes de escolher uma medida.
2. **Escolha poucos indicadores.** Para cada serviço, escolha de dois a quatro indicadores que reflitam a experiência do usuário, como taxa de êxito e rapidez. Resista a acrescentar mais até ter usado estes.
3. **Use percentis para a rapidez.** Meça a ponta lenta da distribuição, e não só a média, para que os usuários com má experiência fiquem visíveis.
4. **Defina metas frouxas primeiro, depois aperte.** Comece com uma meta que você consiga cumprir e defender e aperte-a quando tiver dados e confiança. Isso segue o conselho do capítulo de que a perfeição pode esperar.
5. **Não copie o desempenho atual.** Se o seu serviço está hoje excelente, não defina um objetivo nesse nível a menos que os usuários precisem dele. Um objetivo mais frouxo dá espaço para mudanças e evita esforço heroico.
6. **Acorde um orçamento de erro e use-o.** Defina quanta falha é aceitável num período e deixe o orçamento restante orientar as decisões de release. Revise-o numa reunião regular com entrega e operações juntas.
7. **Escreva o acordo em linguagem simples.** Um SLA deve dizer o que é fornecido, como é medido, como os problemas são relatados, o que acontece quando as metas são perdidas e quando é revisado. Evite termos que só um advogado ou engenheiro consiga ler.
8. **Separe objetivos de acordos.** Mantenha objetivos internos mais apertados que os acordos que você assina. A margem lhe dá espaço para reagir antes de dever algo.
9. **Saiba de que a sua promessa depende.** Liste as equipes e fornecedores de que o seu nível de serviço depende e confira se os compromissos deles sustentam os seus.
10. **Relate numa forma que os clientes possam usar.** Compartilhe resultados regularmente, com um breve comentário sobre o que aconteceu e o que você está fazendo. Evite painéis sem comentário.
11. **Revise as metas com os clientes.** Ao menos uma vez por ano, pergunte se os níveis ainda correspondem ao que os clientes precisam e ao que você consegue entregar. Mude-os quando a resposta for não.
12. **Não use níveis de serviço para punir pessoas.** Use-os para iniciar conversas e decisões. Uma meta usada como porrete será manipulada (veja Tópico 5.6 — Métricas e Medição).

## Perguntas para discutir com a equipe

**Como é um bom dia para os nossos usuários, e como saberíamos?**

Peça à equipe que descreva, nas palavras do usuário, o que é uma boa experiência do serviço. Depois pergunte o que medimos que corresponda a ela. Muitas vezes as medidas que temos descrevem os nossos sistemas e não a experiência do usuário. Quem facilita pode perguntar se notaríamos que um grupo de usuários teve um dia ruim. Escolha um indicador a acrescentar ou mudar.

**Temos um número que prometemos ou buscamos, e quem concordou com ele?**

Liste as metas que existem, formais ou informais. Para cada uma, pergunte quem a definiu, quando e com que base. Muitas metas se revelam definidas por hábito ou por alguém que saiu. Discuta quais devem ser confirmadas, mudadas ou abandonadas. Acorde quem é responsável por cada uma.

**Quanta falha podemos suportar, e o que faríamos com o espaço?**

Introduza a ideia de orçamento de erro. Pergunte que nível de indisponibilidade os usuários tolerariam e o que a equipe poderia fazer com o espaço, como lançar mais depressa. O objetivo é ver o compromisso em números. Não espere respostas precisas; peça um primeiro palpite para testar.

**Onde as nossas médias escondem experiências ruins?**

Olhe uma medida que relata uma média. Pergunte o que o 1% de usuários mais lentos vivencia. Se você não sabe, discuta como descobrir. Muitas vezes um pequeno grupo de usuários ou um horário do dia tem experiência muito pior. Planeje olhar um percentil por um mês.

**De que dependemos sem ter perguntado?**

Liste os serviços, fornecedores e equipes dos quais o seu serviço depende. Para cada um, pergunte o que prometeram e como você saberia se perderam. Muitas dependências não têm nível declarado. Escolha a mais importante e abra uma conversa.

**Quando uma meta mudou pela última vez, e o que a motivou?**

Peça a última mudança. Se foi há muito tempo, pergunte o que mudou desde então nas necessidades dos usuários ou na capacidade da equipe. Discuta uma revisão regular. Bons gatilhos são novas necessidades dos usuários, incidentes que expuseram uma meta irrealista ou uma mudança de arquitetura.

## Na prática: um exemplo de ITIL ágil

Uma operadora nacional de loteria opera um serviço online de compra de bilhetes. Uma equipe de doze pessoas o constrói e o opera. O negócio tem uma regra informal de que o serviço deve estar "sempre no ar", enquanto a equipe lança duas vezes por semana e teve quatro quedas curtas em um ano. Depois de um fim de semana ruim, o patrocinador executivo exige "100% de disponibilidade", e o líder da equipe teme que isso acabe com os releases frequentes.

O líder da equipe e o patrocinador fazem um workshop com a chefe do atendimento ao cliente. Perguntam o que importa aos jogadores. A resposta é que os jogadores precisam conseguir comprar um bilhete na hora anterior ao fechamento de um sorteio; fora dessa hora o serviço pode ficar fora do ar por minutos sem dano. Definem um indicador: a parcela de tentativas de compra que têm êxito nas duas horas anteriores ao fechamento de cada sorteio. Definem um objetivo que a equipe acredita conseguir cumprir, um pouco abaixo do desempenho recente, e acordam um orçamento de erro para cada mês. Acordam também que, quando o orçamento estiver quase gasto, os releases que tocam a compra param até o mês seguinte, e a equipe investe em confiabilidade.

Três meses depois, o orçamento é esgotado uma vez, num mês com uma falha do provedor de pagamentos, e a equipe pausa os releases arriscados por duas semanas sem conflito. O objetivo dá à equipe e ao patrocinador um modo comum de conversar. Algumas dificuldades permanecem. O compromisso do próprio provedor de pagamentos é mais fraco que o objetivo da equipe, então a promessa da equipe depende de um fornecedor que não concordou com ela. A medida também ignora uma página de checkout lenta de que os usuários reclamam, porque conta apenas o êxito. A equipe acrescenta um indicador de rapidez no 99º percentil e abre conversas com o provedor sobre seus níveis de serviço.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega devem ajudar a escolher os indicadores e usar o orçamento de erro no planejamento. Embuta a medição no serviço para que os números sejam confiáveis. Trate um orçamento esgotado como motivo para trabalhar em confiabilidade, não como punição.

### Equipes de serviço e operações

As equipes de operações costumam conduzir o monitoramento e relatar os níveis. Mantenha pequeno o conjunto de medidas, mostre-as com comentário e leve os dados às conversas de planejamento. Mantenha uma lista do que o seu serviço depende e confira se os compromissos se alinham.

### Liderança e governança

Líderes e patrocinadores definem as expectativas. Evite pedir perfeição; pergunte o que os usuários precisam e o que o compromisso custa. Apoie o uso de um orçamento de erro como regra comum e garanta que ele se aplique também aos seus próprios pedidos. Revise os níveis de serviço com os clientes num calendário.

### Clientes e usuários

Clientes e usuários se beneficiam quando o nível de serviço é declarado e cumprido. Diga o que importa para você, inclusive quando. Peça relatórios numa forma que você consiga entender e avise o provedor quando o nível declarado deixar de servir às suas necessidades.

## Modos de falha comuns

- **Métricas demais.** Ninguém sabe qual importa. Em vez disso, escolha poucas que reflitam a experiência do usuário.
- **Só médias.** Um grupo de usuários sofre enquanto a média parece boa. Em vez disso, inclua uma medida de percentil alto.
- **Metas copiadas do desempenho atual.** A equipe fica presa ao heroísmo. Em vez disso, defina objetivos a partir das necessidades dos usuários e aperte com dados.
- **Exigir 100%.** Os releases param e a inovação desacelera. Em vez disso, acorde um orçamento de erro e uma regra para usá-lo.
- **Promessas que você não consegue sustentar.** O nível de serviço depende de fornecedores que não concordaram. Em vez disso, confira as dependências e alinhe os compromissos.
- **Acordos que ninguém lê.** Os termos estão em linguagem jurídica. Em vez disso, escreva de forma simples e revise com os clientes.
- **Painéis sem comentário.** Números são relatados sem sentido. Em vez disso, acrescente uma breve explicação do que aconteceu e do que vai mudar.
- **Punir os descumprimentos.** As pessoas escondem problemas. Em vez disso, use os descumprimentos para suscitar decisões e aprendizado.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Definir níveis | Os níveis são presumidos ou informais | Alguns serviços têm metas declaradas | Cada serviço tem indicadores e objetivos baseados no usuário, com responsáveis | Os objetivos são revisados contra as necessidades dos usuários e os dados | Os níveis são definidos em conjunto com clientes e fornecedores |
| Medir | As medidas são ad hoc | Alguns indicadores são medidos | Os indicadores são medidos de forma confiável, inclusive percentis | A qualidade da medição é revisada e as lacunas corrigidas | A medição é compartilhada e validada entre equipes e fornecedores |
| Usar orçamentos de erro | A falha não é planejada | Algumas equipes discutem a falha aceitável | Os orçamentos orientam as decisões de release em serviços-chave | O uso do orçamento é revisado e as regras ajustadas | Os orçamentos são coordenados entre serviços dependentes |
| Acordos e dependências | As promessas são informais | Existem alguns acordos | Os acordos estão em linguagem simples, com dependências conhecidas | Acordos e compromissos de fornecedores são conferidos contra os resultados | Os acordos formam uma cadeia consistente entre equipes, fornecedores e clientes |

## Lista de verificação

- [ ] Para cada serviço, descrevemos nas palavras dos usuários como é o bom.
- [ ] Cada serviço tem de dois a quatro indicadores que refletem a experiência do usuário.
- [ ] Ao menos uma medida de rapidez usa um percentil alto, e não só uma média.
- [ ] Os objetivos são definidos a partir das necessidades dos usuários, e não só do desempenho atual.
- [ ] Existe um orçamento de erro que orienta as decisões de release de ao menos um serviço.
- [ ] Os acordos são escritos em linguagem simples e revisados com os clientes.
- [ ] As dependências de outras equipes e fornecedores estão listadas com seus compromissos.
- [ ] Os resultados são relatados regularmente com comentário.
- [ ] As metas são revisadas ao menos uma vez por ano.
- [ ] Os dados de nível de serviço são usados no planejamento e não como porrete.

## Prompts de IA

**Finalidade: transformar necessidades dos usuários em indicadores e objetivos candidatos.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: analisar se as médias estão escondendo experiências ruins.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**Finalidade: redigir um esboço de acordo de nível de serviço em linguagem simples.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: planejar uma política de orçamento de erro.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): use para redigir ou revisar um acordo em linguagem simples.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): use para escolher e interpretar medidas de entrega e de desempenho de serviço.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): use para selecionar indicadores de alerta precoce que mostrem que um nível de serviço está em risco.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use para conferir se a capacidade sustenta os níveis que você promete.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use para alinhar os compromissos de fornecedores com os níveis que você oferece.

## Fontes principais

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): a explicação pública mais clara de indicadores, objetivos, acordos, percentis e orçamentos de erro.
- **Service-level agreement** (Wikipedia): a definição, o conteúdo típico, os tipos e a história dos SLAs.
- **DORA's software delivery performance metrics** (dora.dev): medidas relacionadas de rapidez e estabilidade da entrega.
- **Quality of service** (Wikipedia): contexto sobre como a qualidade do serviço é descrita e medida.

## Referências

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
