# DevOps

**DevOps é o esforço de reunir desenvolvimento e operações num só fluxo de trabalho, com responsabilidade compartilhada, automação e feedback rápido, e complementa a gestão de serviços ao pôr no pipeline os controles que importam ao ITIL.**

## Por que isso importa

DevOps é o nome que a maioria das organizações dá ao ponto de encontro entre a entrega contínua e as operações de TI. Nasceu de uma frustração: os desenvolvedores eram premiados pela mudança e o pessoal de operações pela estabilidade, então os dois grupos puxavam em direções opostas, e a passagem de bastão entre eles era onde se perdiam rapidez e qualidade. O DevOps pede aos dois que compartilhem a responsabilidade por todo o caminho da ideia ao serviço em funcionamento.

Para quem trabalha em ITSM, o DevOps pode parecer ameaçador ou redundante. Ameaçador, porque parece desprezar os processos que as operações construíram depois de duras experiências. Redundante, porque boa parte do que recomenda, como revisões de incidentes, automação e melhoria contínua, já está no ITIL. Nenhuma das visões está bem certa. O artigo da Wikipédia sobre DevOps contrasta o DevOps com o que chama de framework "de cima para baixo" e rígido do ITIL da década de 1990, o que é verdade para versões mais antigas; o ITIL 4 foi escrito para se alinhar com o ágil, o DevOps e o lean (veja Tópico 2.2 — ITIL).

A definição de DevOps é contestada, e o artigo da Wikipédia o diz. Este tópico usa o artigo, as páginas de pesquisa do DORA e o relato de Gene Kim sobre as "Três Maneiras" (Three Ways) e nomeia o que está estabelecido, o que é debatido e o que este guia não pôde verificar.

## Conceitos centrais

### O que é o DevOps

O [artigo da Wikipédia sobre DevOps](https://en.wikipedia.org/wiki/DevOps) o descreve como a integração e a automação do desenvolvimento de software e das operações de TI, o que pode encurtar o tempo de desenvolvimento e melhorar o ciclo de vida do desenvolvimento. Cita os pesquisadores acadêmicos Len Bass, Ingo Weber e Liming Zhu, que o descrevem como um conjunto de práticas que visam reduzir o tempo entre confirmar uma mudança num sistema e sua colocação normal em produção. O artigo observa que o termo é usado em vários contextos e que sua definição é debatida, e que estudos acadêmicos de 2015 a 2017 não acharam consenso sobre suas características.

O artigo relata que as propostas de combinar métodos de desenvolvimento com implantação e operações datam do fim da década de 1980 e do início da de 1990 e que a primeira conferência DevOps Days foi realizada em Gante, na Bélgica, em 2009, fundada por Patrick Debois. Ele caracteriza o DevOps em geral por três princípios, responsabilidade compartilhada, automação do fluxo de trabalho e feedback rápido, e observa que essa caracterização é ela mesma debatida.

### As Três Maneiras

Gene Kim, autor de *The Phoenix Project* e *The DevOps Handbook*, descreve três princípios dos quais, argumenta, os padrões de DevOps podem ser derivados. Como resumido no próprio post de Kim no site da IT Revolution e em resumos secundários:

| Maneira | Ideia | Exemplos |
|---|---|---|
| **A Primeira Maneira: fluxo** | Olhar o desempenho do sistema inteiro, não de um único silo; acelerar o trabalho da ideia ao valor | Não passar defeitos conhecidos adiante; não deixar a otimização local degradar o todo; buscar sempre aumentar o fluxo |
| **A Segunda Maneira: feedback** | Encurtar e amplificar os sinais que voltam das etapas posteriores para as anteriores | Telemetria, pipelines que falham depressa, feedback de clientes |
| **A Terceira Maneira: aprendizado contínuo e experimentação** | Construir uma cultura que corre pequenos riscos deliberados e aprende com eles | Reservar tempo para aprender, transformar descobertas locais em melhorias globais |

Elas combinam com os próprios temas deste guia: fluxo (veja Tópico 1.5 — Kanban e Tópico 1.7 — Desenvolvimento Lean de Software), feedback (veja Tópico 3.10 — Monitoramento e Gestão de Eventos) e aprendizado (veja Tópico 1.10 — Aprendizagem Ágil). Uma nota de terminologia: o post de Kim rotula a Segunda Maneira como "amplificar os laços de feedback" (amplify feedback loops), e o Handbook a chama de "feedback".

### Práticas

Segundo a Wikipédia, a integração contínua e a entrega contínua são críticas para o sucesso do DevOps, junto com a automação. O artigo menciona controle de versões, máquinas virtuais, conteinerização e DevOps de banco de dados, que aplica controle de versões, testes automatizados e CI/CD a mudanças de esquema e de dados. Descreve o GitOps como a gestão da configuração de implantação em controle de versões e o DevSecOps como a integração da segurança à entrega por meio de testes "shift left" (deslocados para a esquerda), incluindo análise estática e dinâmica. A lista de capacidades do DORA inclui entrega contínua, integração contínua, automação de implantação, automação de testes, desenvolvimento baseado em trunk, controle de versões, gestão de mudanças em banco de dados, monitoramento e observabilidade, segurança difusa, trabalho em pequenos lotes e limites ao trabalho em andamento (veja Tópico 3.5 — Gestão de Releases e Implantações).

### Cultura

A lista de capacidades do DORA, lida para este guia, inclui itens culturais: cultura organizacional generativa, cultura de aprendizagem, liderança transformacional, satisfação no trabalho, bem-estar e experimentação da equipe. A página que os lista não os explica nem os classifica. Outra página do DORA diz que suas métricas predizem o desempenho organizacional e o bem-estar dos integrantes da equipe e adverte contra a responsabilidade em silos, recomendando a responsabilidade compartilhada entre as equipes de desenvolvimento, operações e release. Isso concorda com a Terceira Maneira: o DevOps é tanto sobre como as pessoas trabalham juntas quanto sobre ferramentas.

O mnemônico comum **CALMS** (culture, automation, lean, measurement, sharing; cultura, automação, lean, medição, compartilhamento) é muitas vezes usado para resumir o DevOps. O artigo da Wikipédia sobre DevOps não o menciona, e este guia não verificou sua origem, então ele é nomeado aqui apenas porque os leitores o encontrarão.

### DevOps e ágil

O artigo diz que o build e o teste automatizados, a integração contínua e a entrega contínua se originaram no mundo ágil e que a omissão de práticas de engenharia pelo Scrum fez o trabalho de automação se separar no DevOps. Isso combina com o Tópico 1.4 — Previsões de Entrega e Métricas de Planejamento, que observa que o Scrum não diz como construir, testar, implantar nem operar software. O Extreme Programming já contém muitas das práticas de engenharia (veja Tópico 1.6 — Extreme Programming). O DevOps estende a preocupação ágil para além do ponto do release.

### DevOps e ITIL

O artigo contrasta o DevOps com o framework "de cima para baixo" e rígido do ITIL da década de 1990 e não discute mais a ITSM. Um retrato mais justo para hoje:

| | Tende a enfatizar | Risco se usado sozinho |
|---|---|---|
| **DevOps** | Fluxo, automação, responsabilidade compartilhada, feedback rápido | Negligenciar registros, controles e a visão mais ampla do serviço |
| **ITIL 4** | Valor, práticas, governança, uma ampla gama de práticas de serviço | Tratar práticas como processo pesado |

O próprio esquema de certificação do ITIL 4 inclui um módulo especialista chamado High Velocity IT (HVIT) na trilha Managing Professional, como lista o artigo da Wikipédia sobre o ITIL. Isso mostra o titular tratando o trabalho digital e de ritmo acelerado como assunto próprio. Uma combinação prática: use práticas de DevOps para implementar as práticas do ITIL no pipeline, como registrar as mudanças automaticamente, executar testes como controle de risco e usar o monitoramento como a prática de eventos (veja Tópico 3.4 — Habilitação de Mudanças e Tópico 5.1 — Gestão Ágil de Serviços).

### DevOps e engenharia de confiabilidade de sites

O artigo da Wikipédia diz que o Google desenvolveu a engenharia de confiabilidade de sites em 2003 e que alguns de seus autores originais veem a SRE como uma implementação do DevOps. O artigo sobre SRE a chama de implementação específica do DevOps, mais restrita porque se concentra em construir sistemas confiáveis (veja Tópico 5.3 — Engenharia de Confiabilidade de Sites).

### Medidas

As medidas de desempenho da entrega de software do DORA dão um vocabulário comum: lead time de mudanças, frequência de implantação, tempo de recuperação de implantações com falha, taxa de falha de mudanças e taxa de retrabalho de implantações (veja Tópico 3.4 — Habilitação de Mudanças e Tópico 5.6 — Métricas e Medição). O artigo da Wikipédia relata que as métricas foram publicadas em 2016, que a medida de recuperação foi renomeada no relatório de 2023, que uma medida de retrabalho foi acrescentada em 2024 e que em 2025 o DORA substituiu as faixas de desempenho por sete arquétipos de equipe. Registra também que alguns especialistas criticaram a metodologia e as métricas da pesquisa do DORA. Trate as medidas como perguntas úteis e não como pontuações.

### Críticas e limites

Além da falta de uma definição assentada, o artigo relata críticas à metodologia do DORA. Críticas práticas comuns, oferecidas aqui como experiência prática e não como achados de fontes, incluem usar "DevOps" como cargo para o antigo papel de operações, adotar ferramentas sem mudança de cultura e negligenciar a conformidade na busca de rapidez. O artigo não dá estatísticas de adoção.

## Boas práticas

1. **Acorde o que você quer dizer com DevOps.** Escreva uma declaração curta do que significa para as suas equipes, como responsabilidade compartilhada por um serviço, entrega automatizada e feedback rápido. Uma definição comum evita discussões sobre rótulos.
2. **Compartilhe a responsabilidade pelo serviço.** Faça as pessoas que constroem um serviço responderem por como ele roda e dê-lhes os meios: plantão, monitoramento e acesso. Apoie-as com a especialização de operações.
3. **Automatize o caminho até a produção.** Construa um pipeline que compile, teste e implante cada mudança. Registre o que ele fez. Trate o pipeline como um produto com usuários.
4. **Trabalhe em pequenos lotes.** Lance mudanças pequenas com frequência. Isso reduz o risco e acelera o feedback, como sugere a lista de capacidades do DORA.
5. **Encurte os laços de feedback.** Torne os resultados de testes, o monitoramento e o feedback dos usuários visíveis à equipe em minutos ou horas. Siga a Segunda Maneira: amplifique os sinais que voltam.
6. **Olhe o fluxo inteiro.** Mapeie o caminho da ideia ao serviço em funcionamento e ache as esperas mais longas, inclusive as fora da equipe de desenvolvimento. Siga a Primeira Maneira: não otimize um silo à custa do todo (veja Tópico 5.4 — Gestão do Fluxo de Valor).
7. **Embuta segurança e conformidade.** Ponha verificações automatizadas de segurança e de políticas no pipeline e registre a evidência como subproduto (veja Tópico 3.13 — Gestão da Segurança da Informação e Tópico 5.7 — Governança, Risco e Conformidade).
8. **Trate a cultura como preocupação de primeira classe.** Invista em aprendizado, revisões sem atribuição de culpa, segurança psicológica e metas comuns. A lista de capacidades do DORA inclui a cultura ao lado de itens técnicos por uma razão.
9. **Arranje tempo para aprender e experimentar.** Reserve tempo e lugares seguros para experimentos e compartilhe as lições. Siga a Terceira Maneira.
10. **Use as práticas do ITIL onde ajudarem.** Mantenha as práticas de incidentes, problemas, mudanças e conhecimento, implementadas por meio de automação e registros leves. Remova os passos que não servem à sua finalidade.
11. **Meça com cuidado.** Acompanhe medidas ao estilo do DORA por serviço, melhore contra o seu próprio desempenho passado e evite defini-las como metas (veja Tópico 5.6 — Métricas e Medição).
12. **Evite a armadilha do título.** Não crie uma "equipe de DevOps" separada que vire um novo silo entre desenvolvimento e operações. Espalhe as práticas pelas equipes e use equipes de plataforma ou de apoio para ajudar.

## Perguntas para discutir com a equipe

**O que DevOps significa aqui, e onde ouvimos a palavra pela primeira vez?**

Peça a cada pessoa uma definição de uma frase. Compare. O artigo da Wikipédia diz que a definição é debatida, então as diferenças são esperadas. Escreva uma declaração comum que seja concreta: quem é dono de quê, o que é automatizado, que feedback existe. Quem facilita pode perguntar o que mudou até agora por causa da palavra.

**Onde uma mudança espera entre "pronta" e "no ar", e quem é dono da espera?**

Rastreie uma mudança recente e liste as esperas: revisões, aprovações, ambientes, janelas de release. Marque as que ficam fora da equipe. Pergunte quais esperas protegem de riscos reais e quais são hábito. Escolha uma para encurtar, trabalhando com seu responsável.

**Quando algo quebra em produção, quem está de plantão, e tem os meios de consertar?**

Pergunte quem é chamado e o que pode fazer sozinho. Se os construtores não estão de plantão, pergunte por quê. Se o pessoal de operações não pode mudar o código, pergunte o que faz. Discuta como seria a responsabilidade compartilhada aqui e que apoio seria necessário.

**Que feedback recebemos depois de um release, e com que rapidez?**

Liste os sinais: testes, monitoramento, tickets de suporte, comentários de usuários. Pergunte quanto tempo cada um leva para chegar à equipe. Respostas típicas: testes em minutos, tickets em dias. Escolha um sinal para acelerar.

**Quão seguro é tentar algo e fracassar?**

Peça um exemplo recente de experimento que falhou e o que aconteceu com as pessoas envolvidas. A Terceira Maneira depende de aprender com pequenas falhas. Discuta o que tornaria os experimentos mais seguros, como limites, rollbacks e revisão sem atribuição de culpa.

**Como as nossas práticas do ITIL aparecem no pipeline, e onde não aparecem?**

Tome as práticas de mudanças, incidentes e conhecimento e pergunte onde cada uma aparece na automação. As lacunas apontam trabalho manual ou controles sem evidência. Acorde uma prática a mover para o pipeline.

## Na prática: um exemplo de ITIL ágil

Um serviço postal nacional tem um grupo de desenvolvimento de 40 pessoas e um grupo de operações de 25. Os desenvolvedores lançam uma versão principal a cada trimestre e entregam um pacote e um longo documento às operações, que o implantam num fim de semana. As operações reclamam que os desenvolvedores não entendem a produção, e os desenvolvedores reclamam que as operações não podem ser alcançadas quando um defeito precisa de uma correção rápida. Um release recente levou 19 horas, quebrou a página de rastreamento de encomendas e levou a um dia de troca de acusações.

Uma nova chefe de plataforma propõe um teste com uma equipe de produto, o serviço de rastreamento de encomendas. Quatro desenvolvedores e dois engenheiros de operações formam uma equipe única que é dona do serviço de ponta a ponta. Os desenvolvedores entram na escala de plantão, apoiados pelos engenheiros de operações. A equipe constrói um pipeline que compila, testa e implanta cada mudança integrada num ambiente de staging e implanta em produção com um passo de aprovação que o responsável pelo serviço dá. Os registros de mudanças são criados pelo pipeline. Acrescenta-se monitoramento, os alertas vão a toda a equipe e cada incidente em produção recebe uma breve revisão sem atribuição de culpa. A equipe acorda lançar ao menos semanalmente, e a chefe de plataforma pede que acompanhe lead time, frequência de implantação, taxa de falha de mudanças e tempo de recuperação.

Depois de quatro meses, a equipe lança duas vezes por semana, o tempo mediano da integração à produção é de menos de um dia e o último incidente foi corrigido em menos de uma hora pelo desenvolvedor que escreveu a mudança. Nem tudo funciona. Os engenheiros de operações acham que os alertas dos desenvolvedores são ruidosos, e os desenvolvedores se ressentem de ficar de plantão à noite. Uma equipe vizinha que depende do rastreamento de encomendas não foi avisada do novo ritmo e foi surpreendida por uma mudança. A chefe de plataforma reserva tempo para a equipe ajustar os alertas, acrescenta uma escala com limite de chamadas noturnas e organiza uma reunião mensal com as equipes dependentes. A auditoria interna pede para ver a evidência das aprovações, e a chefe de plataforma mostra os registros do pipeline e as revisões de incidentes.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega assumem a responsabilidade operacional: monitoramento, plantão e aprendizado com incidentes. Construa o pipeline e o feedback de que precisa e peça a especialização de operações em vez de passar o bastão. Mantenha as mudanças pequenas e visíveis.

### Equipes de serviço e operações

As equipes de operações trazem o conhecimento de como os serviços falham e de que controles importam. Ajude a construir a plataforma e as verificações, divida o plantão e ensine. Evite ser uma barreira; torne-se um facilitador que faz da rota segura a rota fácil.

### Liderança e governança

Os líderes criam as condições: metas comuns entre desenvolvimento e operações, tempo para automação, uma cultura que aprende com a falha e confiança na evidência do pipeline. Evite renomear equipes sem mudar os incentivos e peça resultados, não a adoção do DevOps.

### Clientes e usuários

Clientes e usuários veem o DevOps como melhoria mais rápida e recuperação mais rápida. Espere mudanças pequenas e frequentes e comunicação clara sobre elas. Dê feedback depressa, pois a equipe está montada para usá-lo.

## Modos de falha comuns

- **Uma equipe de DevOps como novo silo.** Desenvolvimento e operações continuam sem conversar. Em vez disso, espalhe as práticas pelas equipes e use equipes de plataforma para facilitar.
- **Ferramentas sem cultura.** Um pipeline é construído e nada mais muda. Em vez disso, mude juntos a responsabilidade, os incentivos e o feedback.
- **Rapidez sem segurança.** Os releases aceleram e as falhas aumentam. Em vez disso, invista em testes, monitoramento e rollback antes do ritmo.
- **Abandonar o ITIL por completo.** Registros e controles somem. Em vez disso, mantenha as práticas e implemente-as no pipeline.
- **Desenvolvedores de plantão sem apoio.** Segue-se o esgotamento. Em vez disso, divida a escala, ajuste os alertas e limite as chamadas noturnas.
- **Métricas como metas.** As equipes manipulam as contagens de implantações. Em vez disso, use várias medidas e compare com o seu próprio histórico.
- **Ignorar as equipes dependentes.** As mudanças surpreendem os vizinhos. Em vez disso, comunique o ritmo e as mudanças às equipes que dependem da sua.
- **Tratar a palavra como o objetivo.** Rótulos substituem resultados. Em vez disso, pergunte como são melhor fluxo, feedback e aprendizado para os seus usuários.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Responsabilidade compartilhada | Desenvolvimento e operações passam o bastão no release | Algumas equipes dividem o plantão | As equipes são donas de seus serviços de ponta a ponta, com apoio | Os efeitos da responsabilidade sobre qualidade e carga são medidos | Os modelos de responsabilidade são coordenados entre equipes, plataformas e fornecedores |
| Automação e fluxo | A entrega é manual e em lotes | Existem alguns pipelines | Um pipeline comum compila, testa, implanta e registra as mudanças | Lead time, frequência, falha e recuperação são medidos e ajustados | Pipelines e fluxo são otimizados entre equipes e fluxos de valor |
| Feedback | O feedback chega dos usuários depois dos problemas | Algumas equipes monitoram os releases | Testes, monitoramento e feedback de usuários chegam às equipes em minutos ou horas | A rapidez e a qualidade do feedback são medidas e melhoradas | Os laços de feedback abrangem equipes, fornecedores e clientes |
| Cultura e aprendizado | A culpa segue a falha | Algumas revisões sem atribuição de culpa | Revisões sem atribuição de culpa, experimentos e tempo de aprendizado são rotina | As ações de aprendizado são acompanhadas e os resultados conferidos | O aprendizado se espalha continuamente por toda a organização |

## Lista de verificação

- [ ] Temos uma definição escrita e comum do que DevOps significa para nós.
- [ ] As equipes que constroem um serviço dividem a responsabilidade de operá-lo.
- [ ] Um pipeline compila, testa e implanta as mudanças e registra o que fez.
- [ ] As mudanças são lançadas em pequenos lotes, com frequência.
- [ ] O feedback de testes, monitoramento e usuários chega rápido à equipe.
- [ ] Verificações de segurança e de políticas rodam no pipeline.
- [ ] O plantão é dividido, com limites para chamadas noturnas e alertas ajustados.
- [ ] As revisões de incidentes são sem atribuição de culpa e produzem ações com responsáveis.
- [ ] Acompanhamos lead time, frequência de implantação, taxa de falha de mudanças e tempo de recuperação de cada serviço.
- [ ] As equipes dependentes são avisadas do nosso ritmo de release e das mudanças importantes.

## Prompts de IA

**Finalidade: mapear as esperas entre "pronto" e "no ar".**

```text
Help me map the waits for a typical change in [team or service].

The steps from "ready" to "live," who does each, whether it is manual or automated, and how long work waits before it (use real data; mark estimates as estimates): [paste].

Produce a simple text diagram, highlight the three longest waits and which team owns each, and suggest, for each, a question to ask about whether the wait protects against a real risk. Do not invent durations. If the data are too thin, say what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: conferir onde as práticas do ITIL aparecem no seu pipeline.**

```text
Help me compare our pipeline with service management practices.

What our pipeline does today, step by step: [paste].
The practices we want to check: change enablement, release and deployment, incident management, problem management, knowledge management, configuration management.

For each practice, say what in the pipeline description appears to support it (quote my words), what is missing, and one question to ask. Do not claim that a standard requires anything unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: planejar um piloto de responsabilidade compartilhada com uma equipe.**

```text
Plan a four-month pilot of shared ownership for [service], bringing together [number] developers and [number] operations engineers.

Today's arrangement: [describe who builds, who runs, who is on call].
Concerns from each side: development [list]; operations [list].
Measures we have: [list].

Give a plan with: team formation, on-call arrangements with limits, pipeline and monitoring work, how the team learns from incidents, which measures to review (leave targets as [to be agreed]), what evidence to keep for audit, and how to tell dependent teams. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: desenhar uma revisão de incidente sem atribuição de culpa para uma equipe mista.**

```text
Design a 45-minute blameless review for this incident: [describe the incident factually].

People involved: [roles from development and operations].
Information available (timeline, alerts, changes): [list].

Provide an agenda that builds the timeline first, identifies contributing causes in systems and processes, notes what went well, and ends with at most three actions with owners. Include prompts that avoid blame. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use para planejar releases pequenos e frequentes e as verificações em torno deles.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): use para construir os testes automatizados de que um pipeline depende.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): use para antecipar testes e verificações de segurança no pipeline.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): use para desenhar um plantão compartilhado com limites justos.
- [postmortem](../../../../skills/postmortem/SKILL.md): use para conduzir revisões sem atribuição de culpa que alimentem a Terceira Maneira.

## Fontes principais

- **DevOps** (Wikipedia): um panorama de definições, práticas, relações com o ágil, a SRE e o DevSecOps e as métricas do DORA, com os debates registrados.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): a fonte de fluxo, feedback e aprendizado contínuo.
- **DORA capabilities and metrics** (dora.dev): a lista de capacidades do programa de pesquisa e suas medidas de entrega de software.
- **The DevOps Handbook** e **The Phoenix Project** (Gene Kim e coautores): os livros que desenvolvem em detalhe as Três Maneiras.

## Referências

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
