# Extreme Programming

**O Extreme Programming (XP) é o método ágil mais específico quanto à prática de engenharia, e seus hábitos de testar primeiro, integrar continuamente e compartilhar a propriedade do código são o que torna segura a mudança frequente num serviço em produção.**

## Por que isso importa

A mudança frequente é o objetivo da entrega contínua e a preocupação da gestão de serviços. A maneira de conciliá-las não é com mais reuniões de aprovação, mas com uma capacidade maior de saber que uma mudança funciona antes de chegar aos usuários. O Extreme Programming é o método ágil que mais diz sobre como construir essa capacidade: escrever os testes primeiro, integrar várias vezes por dia, manter o design simples e compartilhar a responsabilidade pelo código.

Muitas equipes adotam os eventos e quadros do Scrum e deixam de lado as práticas de engenharia. O resultado é uma equipe que planeja em sprints, mas lança com medo. As práticas do XP são a metade que falta. Importam para quem tem de operar o resultado, porque um serviço construído com testes automatizados, releases pequenos e conhecimento compartilhado é mais fácil de suportar que um construído por poucas pessoas em lotes grandes e sem testes.

O XP também pede à organização algo fácil de ignorar: um ritmo sustentável, uma equipe inteira com todas as habilidades necessárias e um cliente realmente disponível. Essas são condições do ambiente de trabalho, não apenas hábitos de programadores. Este tópico explica o método, as evidências sobre seus limites e como suas práticas se ligam a práticas do ITIL como habilitação de mudanças, gestão de releases e gestão do conhecimento.

## Conceitos centrais

### De onde veio o XP

Kent Beck desenvolveu o XP enquanto trabalhava no Chrysler Comprehensive Compensation System (C3), um projeto de folha de pagamento. Segundo o [artigo da Wikipédia sobre Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming), Beck tornou-se líder do projeto em março de 1996 e refinou o método ali, com Ward Cunningham como influência importante e Ron Jeffries juntando-se para treinar a equipe. Seu livro *Extreme Programming Explained* apareceu em outubro de 1999. A Chrysler cancelou o projeto C3 em fevereiro de 2000, depois que a Daimler-Benz adquiriu a empresa.

O artigo destaca que muitas práticas do XP não eram novas. Menciona o desenvolvimento com testes primeiro no Projeto Mercury da NASA, no início da década de 1960. O passo do XP foi levar boas práticas a níveis "extremos": se testar é bom, teste o tempo todo; se revisar é bom, revise constantemente trabalhando em pares. Beck e Cunningham estavam entre as 17 pessoas que escreveram o Manifesto Ágil (veja Tópico 1.1 — O Manifesto Ágil).

### Os cinco valores

O XP enuncia cinco valores:

| Valor | O que significa | No trabalho com serviços |
|---|---|---|
| **Comunicação** | Construir entendimento compartilhado entre desenvolvedores, usuários e clientes, principalmente conversando e mantendo os designs simples | Desenvolvedores e pessoal de operações conversam sobre como um release se comportará antes de ele ser entregue |
| **Simplicidade** | Fazer a coisa mais simples que funciona e não construir para necessidades futuras especulativas | Menos peças móveis para monitorar, proteger e explicar |
| **Feedback** | Aprender depressa com testes, com clientes e com as próprias estimativas da equipe | Resultados rápidos de testes e monitoramento em produção encurtam o tempo de aprender |
| **Coragem** | Refatorar, descartar código obsoleto e persistir em problemas difíceis | Aposentar um componente antigo em que ninguém ousa mexer |
| **Respeito** | Respeito pelos colegas e pelo próprio trabalho | Revisão sem atribuição de culpa após falhas e carga de plantão justa |

O artigo observa que o respeito foi acrescentado na segunda edição de *Extreme Programming Explained*, depois dos quatro originais.

### As práticas

O artigo sobre as práticas do XP agrupa doze práticas em quatro conjuntos. Elas se entendem melhor como um sistema que se sustenta a si mesmo.

| Grupo | Práticas | Finalidade |
|---|---|---|
| **Feedback em pequena escala** | Programação em par, jogo do planejamento, desenvolvimento orientado a testes, equipe inteira | Obter feedback em minutos ou dias, não em meses |
| **Processo contínuo** | Integração contínua, melhoria do design (refatoração), releases pequenos | Manter o software sempre em estado de ser lançado |
| **Entendimento compartilhado** | Padrão de codificação, propriedade coletiva do código, design simples, metáfora do sistema | Permitir que qualquer pessoa da equipe altere qualquer parte com segurança |
| **Bem-estar do programador** | Ritmo sustentável | Manter as pessoas descansadas e eficazes ao longo de anos |

Uma breve descrição das principais:

- **Programação em par:** duas pessoas trabalham numa tarefa em uma estação de trabalho, uma escrevendo e outra revisando, e trocam de parceiro com frequência.
- **Desenvolvimento orientado a testes (TDD):** o programador escreve primeiro um teste que falha e depois escreve apenas o código suficiente para fazê-lo passar.
- **Integração contínua (CI):** os desenvolvedores mesclam seu trabalho no repositório compartilhado a cada poucas horas, para que os problemas de integração apareçam cedo.
- **Releases pequenos:** entregar software funcionando em passos pequenos e frequentes, para que os clientes vejam o progresso e respondam.
- **Propriedade coletiva do código:** qualquer pessoa da equipe pode alterar qualquer parte do código.
- **Ritmo sustentável:** evitar horas extras regulares e nunca permitir horas extras em duas semanas seguidas.

### Controvérsias e limites

O artigo registra várias críticas. Matt Stephens e Doug Rosenberg, num livro de 2003, argumentaram que as práticas do XP dependem umas das outras, de modo que adotar só algumas mina o processo. Críticos também questionaram a programação em par como modo normal de trabalhar, a ausência de grande design antecipado, o cliente no local como ponto único de falha e pedidos de mudança informais levando a retrabalho e crescimento descontrolado do escopo. P. McBreen, e Boehm e Turner, também escreveram avaliações críticas. O artigo acrescenta que os praticantes do ágil veem muitas dessas críticas como mal-entendidos.

Quanto à escala, o artigo diz que o Industrial XP, introduzido em 2004, estendeu o XP a equipes maiores e distribuídas, com 23 práticas. Relata também uma afirmação, marcada como carente de citação, de que a ThoughtWorks teve sucesso razoável em projetos de XP distribuído com até sessenta pessoas. Leia essa afirmação com cautela e veja o Tópico 1.8 — Escalando a Agilidade para a discussão mais ampla.

O artigo não discute a implantação nem o monitoramento em produção além da integração contínua e dos releases pequenos. O XP diz pouco sobre operar software. Você traz isso da gestão de serviços e usa o XP para tornar a passagem de bastão menos arriscada.

### O XP e a visão do ITIL sobre mudança

A prática de habilitação de mudanças do ITIL (veja Tópico 3.4 — Habilitação de Mudanças) preocupa-se em garantir que as mudanças sejam avaliadas, autorizadas e agendadas de modo que o risco seja controlado. O XP controla o risco em outro lugar: no código, por meio de testes, passos pequenos e conhecimento compartilhado. Uma mudança que é pequena, testada automaticamente, integrada e fácil de reverter é uma mudança de menor risco por qualquer avaliação razoável. As duas visões se encaixam quando as evidências das práticas do XP são usadas na decisão sobre a mudança.

## Boas práticas

1. **Adote as práticas como um conjunto.** A observação dos críticos de que as práticas do XP se sustentam mutuamente é um aviso útil. Testes sem integração, ou integração sem passos pequenos, rendem menos que a soma. Introduza-as juntas quando puder e aprenda de quais as outras dependem.
2. **Escreva o teste primeiro nas mudanças que importam.** Para um novo comportamento ou a correção de um defeito, escreva um teste que falha e mostra o problema, e depois corrija. O teste permanece como proteção contra a volta do problema, o que é especialmente útil para falhas que causaram incidentes.
3. **Integre várias vezes por dia.** Mantenha as branches de vida curta e construa e teste automaticamente a cada mescla. Um build quebrado é a primeira prioridade da equipe.
4. **Lance em passos pequenos.** Cada release pequeno carrega menos risco e é mais fácil de entender e reverter. Mire o menor intervalo que o seu pipeline consegue sustentar com segurança e encurte-o conforme a confiança cresce.
5. **Refatore continuamente.** Melhore um pouco o design todos os dias, em vez de guardá-lo para uma reescrita. A suíte de testes é o que torna isso seguro.
6. **Mantenha o design tão simples quanto possível.** Construa o que é necessário agora e remova o que não é usado. Um sistema menor tem menos a monitorar, a corrigir com patches e a explicar.
7. **Compartilhe a propriedade do código.** Deixe qualquer integrante da equipe alterar qualquer parte, apoiado por testes e padrões compartilhados. Isso reduz a dependência de poucos especialistas, que também é um risco de disponibilidade para o serviço.
8. **Faça par em trabalho arriscado ou desconhecido.** Use a programação em par para mudanças delicadas, para a integração de novatos e para acompanhar plantões. Trate-a como ferramenta para difundir conhecimento e pegar erros, e não a transforme em regra para toda tarefa.
9. **Mantenha um ritmo sustentável.** Planeje o trabalho de modo que as horas extras sejam raras e não se repitam semana após semana. Um engenheiro de plantão cansado é um risco para o serviço (veja Tópico 1.2 — Princípios Ágeis sobre o ritmo).
10. **Faça do cliente parte da equipe.** Encontre um usuário real ou um representante de usuários que possa responder perguntas durante o trabalho. Lembre-se da crítica de que uma só pessoa é ponto único de falha, então envolva mais de uma voz.
11. **Escreva critérios de aceitação como testes sempre que possível.** Transforme as expectativas do cliente em verificações automatizadas que rodam em cada build. Assim documentam o comportamento e o protegem ao mesmo tempo.
12. **Inclua verificações operacionais nos testes.** Acrescente ao pipeline verificações do comportamento de monitoramento, de logs e de recuperação, para que a prontidão operacional seja verificada a cada mudança (veja Tópico 3.5 — Gestão de Releases e Implantações).

## Perguntas para discutir com a equipe

**Como sabemos que uma mudança funciona antes de chegar aos usuários, e quanto tempo leva para saber?**

Rastreie as verificações por que uma mudança passa entre o notebook do desenvolvedor e a produção. Conte quantas são automatizadas e quanto tempo cada uma leva. Respostas típicas incluem um teste manual, uma revisão e uma esperança. Pergunte qual verificação pegou mais problemas e qual nunca pegou nada. Em seguida, escolha uma verificação manual para automatizar.

**Quem pode alterar quais partes do nosso sistema, e o que acontece quando essas pessoas estão ausentes?**

Liste os componentes e as pessoas que entendem cada um. Componentes com uma só pessoa por trás são riscos para o serviço. A propriedade coletiva é a resposta do XP, e precisa de testes e padrões compartilhados para ser segura. Pergunte o que uma pessoa poderia ensinar a outra num mês. Quem facilita pode perguntar se férias ou doença já atrasaram uma correção.

**Onde o par nos ajudaria mais, e onde só nos retardaria?**

A programação em par é controversa, então convide a opiniões sinceras. Pergunte às pessoas sobre o melhor e o pior par que já fizeram. O par muitas vezes ajuda com sistemas desconhecidos, mudanças delicadas e integração de novatos. Ajuda menos no trabalho de rotina que uma pessoa faz bem sozinha. Acorde uma situação em que testar o par por um mês e como o julgarão.

**O que acontece com a nossa qualidade quando estamos sob pressão, e o que abandonamos primeiro?**

Peça um aperto recente e o que foi pulado: testes, revisões, documentação. Pergunte o que aconteceu depois. Muitas vezes o trabalho pulado voltou como incidentes. O ponto é notar o padrão e decidir de antemão quais práticas são protegidas. Evite culpar e ligue a resposta ao ritmo sustentável.

**Com que frequência mesclamos nosso trabalho, e o que nos faz esperar?**

Pergunte quanto vive uma branch típica e o que a segura. Branches longas costumam refletir mudanças grandes, revisões lentas ou um build pouco confiável. Cada causa pede uma correção diferente. Pergunte o que a equipe poderia fazer para tornar normal mesclar em poucas horas. Escolha um bloqueio a remover.

**Temos um cliente ou usuário à disposição da equipe, ou adivinhamos o que ele quer?**

Pergunte quem responde às perguntas sobre o que os usuários precisam e quanto demora. Se a resposta for uma longa cadeia, pergunte qual pergunta foi mais cara de errar. Lembre-se dos próprios críticos do XP: um único representante do cliente pode ser um gargalo. Discuta como alcançar vários usuários, de forma breve e frequente.

## Na prática: um exemplo de ITIL ágil

A equipe digital de uma agência de transporte público, com nove pessoas, constrói e opera seu aplicativo de planejamento de viagens e um feed de dados de chegada em tempo real usado por outros desenvolvedores da cidade. A equipe lança todo mês, depois de um ciclo de testes manuais de quatro dias. Quando um release dá errado, reverter leva meio dia, por isso a equipe reluta em lançar com mais frequência. O líder de operações, que também é o desenvolvedor mais experiente, atende a maioria das chamadas fora do expediente porque ninguém mais sabe como o feed funciona.

A equipe decide adotar juntas algumas práticas do XP. Monta uma integração contínua que constrói e roda testes unitários a cada mescla. Para cada defeito encontrado em produção, escreve um teste que falha antes de corrigi-lo. Dois desenvolvedores fazem par com o líder de operações no trabalho do feed por uma hora por dia. A equipe também acrescenta uma etapa de implantação que consegue voltar à versão anterior em minutos.

Depois de quatro meses, a equipe lança toda semana. A suíte de testes pega duas regressões antes do release que o ciclo manual só teria encontrado no último dia. Três desenvolvedores agora conseguem tratar a maioria das chamadas do feed. Nem tudo funciona: a suíte de testes leva 25 minutos para rodar, de modo que os desenvolvedores mesclam menos do que o pretendido, e uma mudança defeituosa no feed de chegadas passa porque seus testes usavam dados de amostra que não correspondiam a um caso extremo real. A equipe move os testes lentos para uma segunda etapa, de modo que os primeiros resultados saiam em cinco minutos, e acrescenta uma verificação de monitoramento na saída do feed. Também concordam que o par continuará sendo uma ferramenta para problemas difíceis e integração de novatos, e não uma regra para toda tarefa.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega são donas das práticas do XP. Comece pelas que dão feedback mais rápido: testes automatizados e integração contínua. Trate a sua suíte de testes como um produto usado também pela operação. Ela descreve o que o serviço deve fazer e avisa depressa quando ele deixa de fazê-lo.

### Equipes de serviço e operações

O pessoal de operações pode usar ideias do XP no próprio trabalho: mudanças de infraestrutura e configuração testadas antes de rodar, pequenas mudanças integradas com frequência e conhecimento compartilhado na equipe por meio de par e propriedade coletiva. Peça às equipes de entrega testes que cubram as falhas que você vê em produção e ofereça o histórico de incidentes para orientar o que é testado.

### Liderança e governança

Os líderes viabilizam o XP protegendo o ritmo, pagando a infraestrutura de build e de testes e aceitando que a qualidade é embutida no trabalho e não inspecionada depois. Peça evidências de segurança que venham do pipeline, como resultados de testes e históricos de releases, e não exija evidências manuais duplicadas.

### Clientes e usuários

Os clientes têm o papel mais direto no XP: fazem parte do laço de feedback da equipe. Espere ser convidado a experimentar releases pequenos, responder depressa a perguntas e dizer o que mais importa nesta semana. Em troca, você deve ver menos surpresas e correções mais rápidas para os problemas que relatar.

## Modos de falha comuns

- **Adotar só os rituais.** As equipes pegam as reuniões em pé e os quadros e pulam testes e integração. Em vez disso, comece pelos testes automatizados e pela integração contínua, pois dão o maior retorno.
- **Tratar o par como regra.** Par forçado em todo trabalho frustra as pessoas e retarda tarefas de rotina. Em vez disso, use o par em problemas difíceis, na integração de novatos e na transferência de conhecimento e revise como está funcionando.
- **Uma suíte de testes em que ninguém confia.** Testes lentos ou instáveis são ignorados. Em vez disso, mantenha a suíte rápida e corrija ou apague logo os testes instáveis.
- **Propriedade coletiva sem padrões.** Qualquer um altera qualquer coisa, e o código apodrece. Em vez disso, combine-a com padrões de codificação compartilhados, revisão e verificações automatizadas.
- **Um único representante do cliente.** Uma pessoa vira o gargalo ou a fonte de viés. Em vez disso, espalhe o contato por vários usuários e confira as decisões com o uso real.
- **Pular o design por completo.** As equipes refatoram repetidamente sem direção. Em vez disso, mantenha um quadro leve da arquitetura e revise-o em intervalos regulares.
- **Horas extras como normal.** Jornadas longas corroem a qualidade e causam incidentes. Em vez disso, planeje para um ritmo sustentável e trate horas extras repetidas como sinal para reduzir o escopo.
- **Ignorar a operação.** O XP diz pouco sobre operar software, e as equipes supõem que isso está coberto. Em vez disso, acrescente verificações operacionais aos testes e convide o pessoal de operações ao planejamento.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Testes | Os testes são manuais e tardios | Algumas equipes têm testes unitários automatizados | As equipes escrevem testes junto com o código e os rodam a cada mudança | Resultados de testes e defeitos escapados são acompanhados e revisados | A estratégia de testes é coordenada entre serviços e compartilhada com a operação |
| Integração e release | A integração é rara e os releases são grandes | Algumas equipes usam integração contínua | Um pipeline compartilhado constrói, testa e implanta cada mudança | A frequência e a taxa de falha dos releases são medidas e melhoradas | Os pipelines são coordenados entre equipes e fornecedores |
| Propriedade compartilhada e conhecimento | O conhecimento fica com poucas pessoas | Algumas equipes fazem par ou rodiziam o trabalho | A propriedade coletiva com padrões é a norma | As lacunas de conhecimento são acompanhadas e reduzidas | O conhecimento circula livremente entre equipes e chega aos runbooks |
| Ritmo e bem-estar | Horas extras são rotina | Algumas equipes observam sua carga de trabalho | O ritmo sustentável é uma política declarada | A carga de plantão e as horas extras são medidas e revisadas | A carga de trabalho é equilibrada entre equipes com base em dados compartilhados |

## Lista de verificação

- [ ] A equipe acordou quais práticas do XP usa e as experimentou em conjunto.
- [ ] Testes automatizados rodam a cada mudança, e um build com falha é corrigido primeiro.
- [ ] Todo defeito de produção ganha um teste que o teria detectado.
- [ ] O trabalho é mesclado na branch compartilhada várias vezes por dia.
- [ ] Os releases são pequenos, e um rollback pode ser feito rapidamente.
- [ ] Mais de uma pessoa consegue alterar e suportar cada parte do sistema.
- [ ] O par é usado em problemas difíceis e na integração de novatos, e seu efeito é revisado.
- [ ] As horas extras são raras e não se repetem semana após semana.
- [ ] Um usuário ou representante de usuários está disponível para responder perguntas durante o trabalho.
- [ ] Os testes incluem verificações do comportamento de monitoramento e de recuperação.

## Prompts de IA

**Finalidade: transformar um incidente de produção num teste e numa lista de lições.**

```text
Help me learn from a production incident using Extreme Programming habits.

Incident description (factual, blameless, in order): [paste what happened, how it was detected, and how it was fixed].
The part of the system involved: [describe the component and what it does].
Our current tests for that part: [describe what is tested today, or write "unknown"].

Propose: (1) a test, described in plain words, that would have caught this before release; (2) two other tests worth adding nearby; (3) one change to our release process to make a similar fault less likely. Do not invent details about our system. Ask clarifying questions first if the description is too thin, mark assumptions, and list what you are unsure of.
```

**Finalidade: avaliar com que segurança a sua equipe consegue lançar pequenas mudanças.**

```text
I want to understand how safe it is for our team to release small changes often.

Our path from change to production, step by step: [paste the steps, who does each, and roughly how long each takes].
Our automated checks: [list tests, builds, and scans, or write "none"].
How we roll back: [describe].
The last two releases that went wrong: [paste short factual descriptions].

Identify the steps that rely on manual work or one person's knowledge. For each, suggest one small automation or sharing step. Do not claim any standard requires something unless I pasted its text. Separate what the text shows from what you assume, and list what you are unsure of.
```

**Finalidade: desenhar um experimento de um mês com programação em par.**

```text
Help me design a one-month experiment with pair programming for a team of [number] people working on [type of system].

Our reasons for trying it: [for example "reduce single points of failure on the feed service"].
Constraints: [for example remote working, on-call duties, mixed experience levels].

Propose which kinds of work to pair on and which to leave alone, how to rotate partners, what to observe (use observations such as questions answered and defects found, and do not invent numbers), and how the team will decide at the end whether to continue. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: verificar a prontidão operacional de uma Definição de Pronto.**

```text
Here is our current Definition of Done: [paste it].
Things the operations or support team has asked for: [paste, or write "unknown"].

Compare the two. List items operations would need that are missing, and for each one say whether it could be checked automatically in a build pipeline, and how. Do not state that any standard requires an item unless I have pasted its text. Mark assumptions and list what you are unsure of.
```

## Skills de IA

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): use para revisar ou introduzir práticas do XP, como programação em par, desenvolvimento orientado a testes e integração contínua.
- [user-story](../../../../skills/user-story/SKILL.md): use para transformar necessidades do cliente em histórias com critérios de aceitação que possam virar testes automatizados.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use para planejar releases pequenos e frequentes e as verificações que os tornam seguros.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use para revisar como as práticas estão funcionando e escolher uma mudança.
- [runbook](../../../../skills/runbook/SKILL.md): use para transformar o conhecimento guardado por uma pessoa num procedimento compartilhado e testado.

## Fontes principais

- **Extreme programming** e **Extreme programming practices** (Wikipedia): um panorama da história, dos valores, das práticas e das críticas, com citações.
- **Extreme Programming Explained** (Kent Beck): a formulação original do método; sua segunda edição acrescenta o valor do respeito.
- **Manifesto for Agile Software Development** (agilemanifesto.org): o XP é um dos métodos cujos autores escreveram o Manifesto.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens e Doug Rosenberg, 2003): a crítica mais conhecida, útil para testar as suas próprias suposições.

## Referências

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
