# A Cadeia de Valor de Serviço

**A cadeia de valor de serviço é um conjunto de seis atividades que as equipes combinam em ordens diferentes para criar fluxos de valor, e descreve como a entrega contínua e a operação do serviço se encaixam num só fluxo em vez de dois separados.**

## Por que isso importa

Muitas organizações tratam construir e operar como duas etapas: primeiro um projeto constrói o serviço, depois um grupo de operações o assume. A passagem de bastão é onde o conhecimento se perde, a responsabilidade se turva e os clientes sentem a lacuna. A cadeia de valor de serviço do ITIL 4 foi desenhada para substituir esse quadro por outro em que as mesmas atividades podem ocorrer em qualquer ordem e tantas vezes quanto necessário, conforme a situação.

Isso se aproxima de como as equipes ágeis já trabalham. Numa semana, uma equipe pode planejar um recurso, construir parte dele, lançá-lo, responder à pergunta de um cliente sobre ele e consertar um problema encontrado em produção. Cada uma dessas coisas é uma atividade diferente da cadeia. Vê-las como partes de um só fluxo ajuda a equipe a perguntar onde o trabalho espera, quem faz cada atividade e quais atividades são negligenciadas.

Este tópico descreve as seis atividades, como se combinam em fluxos de valor e como uma equipe ágil pode usar a ideia. Os resumos vêm de um provedor de treinamento e de um fornecedor de software, porque as páginas públicas do titular do framework lidas para este guia mencionam a cadeia de valor de serviço apenas de passagem. A página do fornecedor lista as atividades sem descrevê-las, então trate as descrições abaixo como leituras amplamente usadas e confira nas publicações do ITIL 4 a redação do titular (veja Tópico 2.2 — ITIL).

## Conceitos centrais

### Onde a cadeia se situa

No sistema de valor de serviço, a cadeia é o modelo operacional no centro (veja Tópico 2.3 — O Sistema de Valor de Serviço do ITIL). Uma página de fornecedor a descreve como a parte do sistema que trata do pipeline de entrega ou do ciclo de vida de um produto ou serviço, tomando demanda como entrada e produzindo valor como saída. Observa também que, na prática, o ciclo de vida raramente é linear.

### As seis atividades

A tabela dá cada atividade, o propósito que a página de um provedor de treinamento declara para ela e como ela pode se apresentar numa equipe ágil. A coluna da direita é a leitura deste guia.

| Atividade | Propósito, como um provedor de treinamento resume | Como pode se apresentar numa equipe ágil |
|---|---|---|
| **Planejar** | Define políticas, objetivos e diretrizes para a direção da organização, de modo que todos compartilhem um entendimento da visão, da situação atual e da direção de melhoria | Metas de produto, roadmaps, planejamento trimestral e escolhas de portfólio |
| **Melhorar** | Melhora continuamente serviços, práticas e processos em todas as atividades | Retrospectivas, revisões pós-incidente e itens de melhoria no backlog |
| **Engajar** | Interage com as partes interessadas para entender necessidades, fornecer informação, captar feedback e requisitos e gerir relações | Pesquisa com usuários, reviews de sprint, o service desk e conversas com clientes |
| **Desenhar e fazer a transição** | Garante que serviços novos ou alterados atendam às expectativas das partes interessadas, do desenho ao ambiente em produção | Desenhar uma mudança, testá-la e prepará-la para release e suporte |
| **Obter/construir** | Adquire ou cria os componentes necessários para os serviços, como recursos físicos, infraestrutura, conhecimento ou software | Desenvolver software, comprar uma ferramenta, preparar infraestrutura, treinar pessoal |
| **Entregar e suportar** | Entrega serviços como acordado e dá suporte contínuo para resolver problemas e atender requisições | Operar o serviço, tratar incidentes e requisições, implantar releases |

### Atividades não são etapas

A página do provedor de treinamento diz que as atividades "não são lineares, mas estão interligadas e podem ser combinadas de vários modos para formar múltiplos fluxos de valor". Um **fluxo de valor**, nas suas palavras, é um conjunto específico de atividades que criam e entregam um serviço ou produto particular aos clientes. Essa é a ideia central. A cadeia é um cardápio de atividades, e um fluxo de valor é um caminho por ela escolhido para um propósito particular.

### Fluxos de valor ilustrativos

As páginas lidas para este guia não dão exemplos de fluxos de valor, então os seguintes são ilustrações deste guia de como as atividades poderiam se combinar. Não vêm de publicações do ITIL, e um fluxo real será diferente.

| Fluxo de valor | Um caminho possível pelas atividades |
|---|---|
| **Tratar um incidente** | Engajar (um usuário o relata) → entregar e suportar (restabelecer o serviço) → melhorar (revisar e corrigir a causa) |
| **Lançar um recurso** | Planejar (decidir a meta) → desenhar e fazer a transição (desenhar, testar, preparar o suporte) → obter/construir (desenvolver) → entregar e suportar (lançar) → engajar (obter feedback) → melhorar |
| **Atender uma requisição de acesso** | Engajar (requisição recebida) → entregar e suportar (verificar e conceder o acesso) → engajar (confirmar com o usuário) |
| **Integrar um novo fornecedor** | Planejar (decidir a necessidade) → engajar (escolher e acordar termos) → obter/construir (integrar) → entregar e suportar (operar) → melhorar (revisar o desempenho) |

### Práticas e a cadeia

As práticas são as capacidades de que as atividades se valem. A gestão de incidentes, por exemplo, é uma prática usada em vários fluxos de valor. As fontes não concordam em todos os detalhes do mapeamento entre práticas e atividades, então evite uma tabela rígida. Um teste melhor é se uma prática contribui para o fluxo de valor que você está examinando (veja a Parte 3).

### Fluxos de valor e fluxo ágil

O pensamento ágil e lean já usa fluxos de valor (veja Tópico 1.7 — Desenvolvimento Lean de Software). Um mapa de fluxo de valor mostra os passos, os tempos e as esperas de um caminho. A ideia do ITIL acrescenta um vocabulário para classificar os passos e um lembrete de que o caminho inclui suporte e melhoria além da construção. Para o trabalho digital, isso se liga à gestão do fluxo de valor (veja Tópico 5.4 — Gestão do Fluxo de Valor).

### Limites

As páginas lidas para este guia não dão método para desenhar ou escolher fluxos de valor, e a página do fornecedor não explica como a cadeia se relaciona com a melhoria contínua além de chamar a melhoria de crucial. A cadeia é um modo de descrever o trabalho, não um modo de decidir como fazê-lo. Seu valor depende de usá-la para olhar fluxos reais.

## Boas práticas

1. **Escolha um fluxo de valor e desenhe-o.** Escolha um fluxo que importe aos clientes, como lançar uma mudança ou tratar uma requisição. Liste os passos em ordem e rotule cada um com a mais próxima das seis atividades.
2. **Inclua suporte e melhoria no quadro.** Não pare o fluxo no release. Mostre o que acontece depois: tratar incidentes e aprender com eles.
3. **Procure atividades ausentes.** Se um fluxo não tem passo de engajar, ninguém conversa com os usuários. Se não tem passo de melhorar, nada se aprende. Acrescente-os onde importam.
4. **Cronometre as esperas.** Para um fluxo, registre quanto o trabalho espera entre atividades e onde cruza uma fronteira de equipe. A espera mais longa é a primeira coisa a examinar (veja Tópico 5.4 — Gestão do Fluxo de Valor).
5. **Combine as atividades livremente.** Permita que fluxos diferentes usem caminhos diferentes. A correção de um defeito menor pode ir direto de entregar e suportar para obter/construir e voltar, sem passo de planejamento.
6. **Ponha o desenho e a transição no trabalho da equipe.** Inclua notas de suporte, monitoramento e treinamento como parte da construção, e não como passagem de bastão no fim (veja Tópico 3.5 — Gestão de Releases e Implantações).
7. **Faça de "engajar" uma atividade contínua.** Não limite o contato com os usuários ao início e ao fim de um projeto. Inclua o service desk e o feedback dos clientes no planejamento.
8. **Ligue o planejamento às evidências da operação.** Use dados de incidentes e requisições nas conversas de planejamento para que as metas reflitam o que os usuários realmente vivenciam (veja Tópico 5.1 — Gestão Ágil de Serviços).
9. **Nomeie um responsável por cada fluxo.** Uma pessoa deve saber dizer como o fluxo se comporta e conseguir reunir as equipes para melhorá-lo.
10. **Use a cadeia como lista de verificação de lacunas.** Quando algo falha, pergunte que atividade foi fraca: plano pouco claro, engajamento pobre, transição apressada, construção fraca, suporte instável ou nenhuma melhoria.
11. **Mantenha o diagrama simples.** Um esboço rústico com seis rótulos basta. Se o desenho precisa de legenda, simplifique.
12. **Revise os fluxos depois de mudanças.** Quando estruturas de equipe, fornecedores ou ferramentas mudarem, confira se os fluxos ainda funcionam como desenhados.

## Perguntas para discutir com a equipe

**Quais são os três fluxos de valor mais importantes para os nossos usuários, e quem é responsável por cada um?**

Peça às pessoas que nomeiem os fluxos que mais importam, como um usuário obter uma nova conta ou uma correção chegar à produção. Compare as listas. As diferenças mostram que a equipe tem quadros distintos do que importa. Quem facilita pode perguntar quem poderia responder por cada fluxo de ponta a ponta. Muitas vezes ninguém pode, o que é uma constatação.

**Para um fluxo, quais das seis atividades fazemos bem, e quais pulamos?**

Desenhe o fluxo e rotule os passos. Depois procure as atividades ausentes. As equipes costumam descobrir que planejam e constroem bem e engajam e melhoram mal. Pergunte o que a atividade ausente acrescentaria e o que custaria. Escolha uma para acrescentar em pequena escala.

**Onde o trabalho espera entre atividades, e quem é responsável pela espera?**

Marque as passagens de bastão e anote esperas típicas. Muitas esperas ficam na fronteira entre equipes. Pergunte se a espera é necessária, como para uma verificação de risco, ou acidente do modo como as equipes estão organizadas. Escolha uma para encurtar.

**Como descobrimos o que os usuários pensam do que entregamos, e com que rapidez isso muda nossos planos?**

Rastreie um feedback recente do usuário ao backlog. Conte os passos. Se levou semanas ou nunca chegou, a atividade de engajar é fraca. Pergunte o que encurtaria o caminho, como um canal compartilhado com o service desk. Acorde uma mudança.

**O que fazemos depois de um incidente ou release para melhorar o próximo?**

Olhe os últimos incidentes e releases em busca de uma melhoria registrada. Se não houver nenhuma, a atividade de melhorar é informal. Pergunte quem é responsável pelas ações de melhoria e como são acompanhadas. Acorde um lugar simples para registrá-las.

**Quais fluxos cruzam fronteiras organizacionais, e quem fala pelo todo?**

Liste os fluxos que envolvem fornecedores, outros departamentos ou clientes. Pergunte quem é responsável pelo fluxo de ponta a ponta e o que acontece nas fronteiras. Um bom resultado é nomear um coordenador e uma conversa regular entre as fronteiras.

## Na prática: um exemplo de ITIL ágil

Um grupo hospitalar regional opera um serviço de portal do paciente usado para marcar consultas e ver resultados de exames. Uma equipe de dez pessoas o constrói e o opera. A equipe entrega novos recursos a cada duas semanas, mas os pacientes reclamam que as correções de falhas relatadas levam meses e que não recebem resposta às suas mensagens de feedback.

O chefe de serviços digitais pede à equipe que desenhe o fluxo de valor de uma falha relatada, da mensagem do paciente a uma correção em produção. Rotulam os passos com as seis atividades. A mensagem chega por um formulário de contato (engajar) e fica numa caixa de entrada compartilhada por dias antes de alguém triá-la. Uma falha triada vai para o mesmo backlog dos novos recursos (planejar), onde concorre mal. Uma correção é construída (obter/construir), testada e lançada com o próximo lote de recursos (desenhar e fazer a transição, entregar e suportar). Ninguém avisa o paciente (engajar), e ninguém registra o que a falha ensinou à equipe (melhorar).

A equipe muda o fluxo. A caixa de entrada compartilhada passa a ser conferida diariamente por uma escala, as falhas são etiquetadas e ganham uma raia própria no backlog, com meta de entrar no próximo release, o paciente recebe uma resposta ao enviar e outra quando a correção entra no ar, e cada falha com mais de um mês é discutida na revisão quinzenal. Depois de dois meses, o tempo mediano de correção cai e as reclamações dos pacientes sobre o silêncio diminuem. Problemas permanecem: as falhas que envolvem o sistema de agendamento do hospital, operado por um fornecedor, ainda esperam a fila do fornecedor, e as mensagens de resposta são escritas por desenvolvedores numa linguagem que alguns pacientes acham difícil de acompanhar. A equipe convida o fornecedor para a revisão e pede à equipe de comunicação que redija modelos em linguagem simples.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega costumam gastar a maior parte do tempo em planejar, desenhar e fazer a transição e obter/construir. Olhe as outras três: como você engaja os usuários, como dá suporte ao que entrega e como melhora. Trate pedidos de suporte e o aprendizado com incidentes como entradas do planejamento.

### Equipes de serviço e operações

As equipes de operações gastam a maior parte do tempo em entregar e suportar e em partes de engajar. Use a cadeia para mostrar como o seu trabalho depende de atividades anteriores, como desenhar e fazer a transição, e para pedir o que você precisa delas. Participe do planejamento para que o conhecimento operacional chegue ao início do fluxo.

### Liderança e governança

Os líderes podem usar a cadeia para perguntar onde o fluxo se rompe nos serviços importantes. Apoie a nomeação de responsáveis por fluxos e dê-lhes autoridade para reunir as equipes. Evite transformar as seis atividades em seis departamentos; o ponto é conectá-las.

### Clientes e usuários

Clientes e usuários participam sobretudo de engajar e se beneficiam quando o feedback viaja até os planos e as correções. Espere respostas e resultados visíveis. Diga ao provedor qual fluxo mais importa para você e que atrasos o prejudicam.

## Modos de falha comuns

- **Ler a cadeia como uma sequência.** As equipes forçam cada trabalho a passar pelas seis em ordem. Em vez disso, escolha caminhos que se ajustem ao trabalho.
- **Mapear departamentos, não fluxos.** Cada atividade é atribuída a um departamento e o fluxo se perde. Em vez disso, rastreie um trabalho entre eles.
- **Esquecer engajar e melhorar.** O fluxo termina no release. Em vez disso, inclua contato com os usuários e aprendizado em todo fluxo.
- **Passagem de bastão em vez de desenho e transição.** Notas de suporte, monitoramento e treinamento ficam para o fim. Em vez disso, embuta-os no trabalho desde o início.
- **Nenhum responsável pelo fluxo.** Ninguém sabe dizer como um fluxo se comporta. Em vez disso, nomeie um responsável com autoridade para reunir as equipes.
- **Diagramas detalhados demais.** O mapa vira um pôster que ninguém lê. Em vez disso, mantenha-o numa página e atualize-o quando algo mudar.
- **Tratar o vocabulário como objetivo.** As equipes gastam tempo rotulando e não melhorando. Em vez disso, rotule apenas o que ajuda a encontrar uma lacuna.
- **Confiar em resumos secundários.** As descrições das atividades diferem entre as fontes. Em vez disso, confira as publicações do titular quando a precisão importar.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Visibilidade dos fluxos de valor | Os fluxos são conhecidos só informalmente | Alguns fluxos são desenhados por suas equipes | Os fluxos-chave são mapeados, com responsáveis | Os fluxos são medidos quanto a esperas e resultados | Os fluxos cruzam fronteiras organizacionais e são melhorados em conjunto |
| Cobertura das atividades | Planejar e construir dominam | Algumas equipes acrescentam atividades de engajar e melhorar | As seis atividades aparecem nos fluxos-chave | As lacunas de cobertura são acompanhadas e fechadas | A cobertura é equilibrada entre equipes e fornecedores com base em evidências |
| Passagens de bastão e transição | As passagens são tardias e não geridas | Algumas equipes incluem suporte na construção | Suporte, monitoramento e treinamento fazem parte de todo release | Os problemas de transição são medidos e reduzidos | A transição é compartilhada entre entrega, operações e fornecedores |
| Feedback e melhoria | O feedback chega por reclamação | Parte do feedback chega ao backlog | O feedback e os itens de melhoria são acompanhados com responsáveis | Os efeitos das melhorias são conferidos | Feedback e aprendizado fluem continuamente entre equipes e clientes |

## Lista de verificação

- [ ] Desenhamos ao menos um fluxo de valor que importa aos usuários.
- [ ] Cada passo do desenho está rotulado com a atividade da cadeia de valor mais próxima.
- [ ] O fluxo inclui engajamento com os usuários e um passo que registra melhorias.
- [ ] Sabemos onde o trabalho espera e por quanto tempo, ao menos de forma aproximada.
- [ ] O trabalho de desenho e transição, como monitoramento e notas de suporte, faz parte da construção.
- [ ] Uma pessoa nomeada é responsável pelo fluxo de ponta a ponta.
- [ ] O feedback dos usuários chega ao backlog e recebe resposta.
- [ ] Dados de incidentes e requisições são usados no planejamento.
- [ ] O fluxo é revisado após mudanças significativas.
- [ ] Conferimos na publicação do titular a definição exata de cada atividade.

## Prompts de IA

**Finalidade: rotular os passos de um fluxo real com as seis atividades.**

```text
Help me label the steps of a value stream with the six ITIL service value chain activities: plan; improve; engage; design and transition; obtain/build; deliver and support.

The stream (what it delivers and to whom): [describe].
The steps in order, with who does each and how long it waited before it, if known: [paste].

For each step, suggest the closest activity and give one sentence of reasoning using only my text. Then list which of the six activities do not appear, and what that might mean, as questions and not conclusions. Do not invent steps or durations. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: encontrar onde o feedback se perde a caminho do backlog.**

```text
I want to trace how user feedback reaches our backlog.

Where feedback arrives (channels): [list].
What happens to a piece of feedback after it arrives, step by step, with who does each step: [paste].
One recent example, with dates: [paste].

Describe the path in order and identify steps where the feedback could be lost or delayed, using only my text. Suggest three questions for the people involved and one small change to shorten the path. Do not invent causes. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Finalidade: planejar um workshop de fluxo de valor com o pessoal de entrega e operações.**

```text
Plan a 90-minute workshop for [number] people from delivery and operations to draw one value stream: [stream name].

Preparation: they will bring [data, such as dates of recent examples].
Constraints: [for example remote, different time zones].

Give a timed agenda, instructions for drawing the stream step by step, how to label steps with the six value chain activities, a way to mark waits and handovers, and a closing step to agree one change with an owner and date. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: escrever um guia curto da cadeia de valor para novos integrantes da equipe.**

```text
Write a one-page guide to the ITIL service value chain for new team members.

Use only these notes, which I verified: [paste the six activity names and the descriptions you have checked against official sources, plus any examples from our own work].

Include: what the chain is for, one example stream from our work, and three questions a new person can ask to find which activity a task belongs to. Keep the language plain. Do not add claims about ITIL beyond my notes. Mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use para desenhar um fluxo, cronometrar suas esperas e rotular seus passos.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use para analisar como o trabalho se move entre papéis e encontrar problemas nas passagens de bastão.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use para planejar como uma equipe entrega em passos pequenos pelas atividades de construção e release.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): use para desenhar modos de colher feedback dos usuários para a atividade de engajar.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use para conduzir as revisões que tornam real a atividade de melhorar.

## Fontes principais

- **ITIL 4 Foundation** (PeopleCert): a página do titular que nomeia a cadeia de valor de serviço entre os temas estudados.
- **ITIL service value system** (Purple Griffon): um resumo das seis atividades e dos fluxos de valor por um provedor de treinamento; secundário.
- **The ITIL 4 Service Value System** (ManageEngine): um resumo de um fornecedor que nomeia as atividades; secundário.
- **Value-stream mapping** (Wikipedia): contexto sobre a técnica de mapeamento que a prática lean usa para encontrar desperdício.

## Referências

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL service value system — Purple Griffon (training provider; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
3. The ITIL 4 Service Value System — ManageEngine (software vendor; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
