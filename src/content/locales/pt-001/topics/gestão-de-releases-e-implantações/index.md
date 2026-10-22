# Gestão de Releases e Implantações

**A gestão de releases e implantações leva as mudanças à produção com segurança, e o objetivo num contexto ágil é tornar o lançamento tão rotineiro, automatizado e reversível que deixe de ser um evento.**

## Por que isso importa

Muitas organizações ainda tratam um release como uma grande ocasião tensa. Fixa-se uma data, reserva-se uma janela, as pessoas ficam até tarde e o sucesso é medido por se algo quebrou. Esse padrão produz exatamente o risco que teme: quanto mais mudanças reunidas num release, mais difícil entender o que deu errado e mais dolorosa a reversão.

O programa de pesquisa DORA descreve a alternativa. Sua página sobre entrega contínua define a prática como "a capacidade de lançar mudanças de todos os tipos sob demanda, com rapidez, segurança e sustentabilidade" e relata que fazê-la bem melhora o desempenho da entrega e a disponibilidade e está associado a menos esgotamento e maior satisfação no trabalho. A página também adverte que implantar com mais frequência sem mudar processos e arquitetura tende a aumentar as taxas de falha e esgotar as equipes. A lição não é "lance mais depressa", mas "construa a capacidade de lançar com segurança e depois lance com frequência".

O livro *Site Reliability Engineering* do Google, no capítulo sobre engenharia de releases, faz um ponto semelhante a partir da prática: releases frequentes significam menos mudanças entre versões, de modo que testar e diagnosticar fica mais fácil. Este tópico se apoia nessas duas fontes, nos demais tópicos do guia relacionados a mudanças e em vocabulário do ITIL amplamente usado que este guia não pôde conferir no texto do titular do framework. Trate as fontes como fortes, específicas e limitadas aos contextos que descrevem.

## Conceitos centrais

### Release e implantação

Os dois termos costumam ser confundidos. Uma distinção comum, amplamente usada na gestão de serviços, é:

- Um **release** é uma versão de um serviço ou componente colocada à disposição para uso. É uma decisão sobre o que os usuários receberão.
- Uma **implantação (deployment)** é o ato de mover uma versão para um ambiente, como a produção.

Separá-los é poderoso. Você pode implantar código em produção sem ligá-lo para os usuários e lançá-lo depois, de forma controlada. Técnicas como as chaves de funcionalidade (feature switches) dependem dessa separação (veja o artigo da Wikipédia sobre feature toggles).

### Entrega contínua e implantação contínua

A página do DORA define a **entrega contínua** como a capacidade de lançar mudanças de todos os tipos sob demanda, com rapidez, segurança e sustentabilidade. Distingue-a da **implantação contínua**, que significa implantar toda mudança em produção o mais cedo possível. O DORA diz que as equipes "podem e devem começar pela entrega contínua" mesmo que nunca adotem a implantação contínua. A decisão de lançar continua sendo uma decisão de negócio; a entrega contínua faz dela uma escolha e não um projeto.

### O que a pesquisa recomenda

A página do DORA lista práticas que apoiam a entrega contínua:

| Prática | O que diz o DORA |
|---|---|
| **Automação de testes** | Suítes de testes automatizados abrangentes e confiáveis, em sua maior parte criadas e mantidas pelos desenvolvedores |
| **Automação de implantação** | Implantações totalmente automatizadas, sem necessidade de intervenção manual |
| **Desenvolvimento baseado em trunk** | Menos de três branches ativas, branches de vida muito curta, raros períodos de bloqueio de código |
| **Equipes e arquitetura fracamente acopladas** | As equipes podem testar e implantar sob demanda sem orquestração com outros serviços |
| **Outras práticas** | Integração contínua, testes contínuos, controle de versões de todos os artefatos de produção, gestão de dados de teste, monitoramento e observabilidade, notificações proativas, gestão de mudanças no banco de dados, segurança difusa |

A página relata que a entrega contínua está associada a maior qualidade (menos tempo em retrabalho ou trabalho não planejado), menos esgotamento e menos dor nas implantações. Diz também que as equipes de elite que cumpriam metas de confiabilidade no relatório de 2021 tinham três vezes mais chance de ter uma arquitetura fracamente acoplada do que as de baixo desempenho. Não cita ferramentas, frequências-alvo de implantação nem cronograma de implementação, e observa que as transformações costumam seguir uma "curva em J", com uma queda de eficiência à medida que a automação aumenta as exigências de teste e a dívida técnica se acumula.

### Lições da prática de engenharia de releases

O capítulo do livro de SRE sobre engenharia de releases descreve a abordagem de uma grande organização:

- **Autosserviço.** As equipes conduzem os próprios processos de release. Os releases são "verdadeiramente automáticos" e só exigem envolvimento de engenheiros se surgirem problemas.
- **Alta velocidade.** Releases frequentes significam menos mudanças entre versões, o que torna mais fáceis o teste e o diagnóstico.
- **Builds herméticos.** Os builds dependem de versões conhecidas de ferramentas e bibliotecas, de modo que a mesma revisão dá resultados idênticos.
- **Políticas impostas.** Controles de acesso condicionam as aprovações, a criação de releases e a implantação. Quase todas as mudanças exigem revisão de código, e cada release produz um relatório das mudanças incluídas.

O capítulo também enfatiza a configuração sob controle de versões e revisão de código e sugere que desenvolvedores, engenheiros de confiabilidade de sites e engenheiros de release colaborem em vez de jogar os resultados "por cima do muro". Diz que as organizações devem definir políticas de release mesmo quando ainda não conseguem automatizá-las nem impô-las e que é mais barato pôr boas práticas em vigor cedo do que adaptá-las depois. O capítulo descreve as ferramentas do próprio Google; o seu ambiente usará outras, então extraia os princípios e não os produtos.

### Ambientes e promoção

Um release costuma passar por uma série de ambientes, como desenvolvimento, teste e produção. Cada passo fornece evidências. Uma prática comum, coerente com a pesquisa acima, é construir uma vez e promover o mesmo artefato, de modo que o que foi testado seja o que é implantado. A ênfase do capítulo de SRE em builds idênticos a partir da mesma revisão expressa a mesma ideia.

### Rollout e rollback

O modo como um release chega aos usuários pode ser gradual. O capítulo de SRE descreve rollouts ritmados pelo risco, de envios automáticos a cada hora em desenvolvimento a rollouts de vários dias para infraestrutura sensível, e menciona releases canário, em que uma pequena parcela do tráfego recebe primeiro a nova versão. Rollback significa voltar à versão anterior e deve ser tão praticado quanto o rollout. As equipes que conseguem reverter depressa podem se dar ao luxo de implantar com frequência (veja Tópico 3.4 — Habilitação de Mudanças).

### Informação de release para o suporte

O pessoal de suporte e os usuários precisam saber o que muda e o que fazer se der errado. Uma nota de release, uma lista de problemas conhecidos e um contato nomeado são o mínimo (veja Tópico 3.1 — Service Desk). O relatório de release do capítulo de SRE com as mudanças incluídas serve de fonte.

### Medidas

A página do DORA sugere medir lead times curtos para mudanças regulares e emergenciais, baixas taxas de falha de mudanças, tempo curto para restabelecer o serviço e frequências de release que entreguem as prioridades no prazo. Seu objetivo geral é que ninguém trabalhe fora do expediente para implantar. Para definições e advertências sobre as medidas, veja Tópico 3.4 — Habilitação de Mudanças e Tópico 5.6 — Métricas e Medição.

## Boas práticas

1. **Separe a implantação do release.** Implante o código em produção em estado dormente e ligue-o para os usuários quando estiver pronto, com chaves de funcionalidade ou rollouts em etapas. Isso reduz o risco de uma implantação e dá ao negócio o controle.
2. **Automatize a implantação.** Mire em nenhum passo manual. Passos manuais são lentos, variam entre pessoas e causam incidentes. Automatize em pequenos incrementos, começando pelos passos que mais dão errado.
3. **Construa uma vez, promova o artefato.** Produza um pacote e mova-o pelos ambientes, de modo que o que você testou seja o que executa. Registre qual versão está onde.
4. **Torne os builds reprodutíveis.** Fixe versões de ferramentas e bibliotecas para que a mesma revisão dê o mesmo resultado. Isso segue o princípio de builds herméticos do capítulo de SRE.
5. **Mantenha as branches de vida curta.** A orientação do DORA sobre trunk é menos de três branches ativas e branches que se fundem em cerca de um dia. Branches longas transformam releases em eventos de mesclagem.
6. **Teste automaticamente e mantenha os testes rápidos e confiáveis.** Mire em feedback em minutos. Uma suíte de testes instável ou lenta faz as pessoas contorná-la.
7. **Lance em lotes pequenos.** Releases menores são mais fáceis de revisar, testar e reverter. Se um release é grande, pergunte como dividi-lo.
8. **Faça rollouts em etapas.** Comece com uma pequena parcela de usuários ou servidores, observe os sinais e amplie. Defina de antemão o que observará e quem pode interromper o rollout.
9. **Ensaie o rollback.** Saiba como voltar à última versão boa e pratique. Um rollback que você nunca tentou é uma esperança.
10. **Dê ao suporte o que ele precisa antes do release.** Forneça notas de release, problemas conhecidos e um contato. Inclua o pessoal de suporte na aprovação de mudanças que afetam os usuários (veja Tópico 3.1 — Service Desk).
11. **Mantenha a configuração sob controle de versões.** Trate as mudanças de configuração como código, com revisão e registro. Escolha onde vive cada tipo de ajuste e por quê.
12. **Mire em implantar no horário de trabalho.** O DORA nomeia isso como objetivo geral. Se as implantações exigem noites em claro, o processo ou a arquitetura precisam de trabalho.

## Perguntas para discutir com a equipe

**Quanto tempo leva, e quantos passos envolve, levar uma mudança pronta à produção?**

Rastreie uma mudança recente de "pronta" a "no ar". Liste cada passo, quem o faz e quanto espera. Distinga os passos manuais dos automatizados. As equipes costumam se surpreender com quantos passos são manuais e com a espera entre eles. Quem facilita pode perguntar qual passo causou mais incidentes. Escolha um para automatizar.

**O que teria de ser verdade para lançarmos em horário de trabalho sem preocupação?**

Pergunte o que a equipe teme no lançamento. Respostas típicas: nenhum rollback testado, testes fracos, impacto pouco claro nos usuários. Cada uma é algo a construir. Liste-as e ordene-as. Pergunte qual seria o menor passo para a primeira. O objetivo do DORA de que ninguém trabalhe fora do expediente para implantar é uma meta útil para discutir.

**Onde juntamos mudanças porque lançar é doloroso, e o que essa junção nos custa?**

Olhe o conteúdo dos releases recentes. Conte as mudanças em cada um. Pergunte o que aconteceu quando um lote deu errado e quanto tempo levou para achar a causa. Discuta o que tornaria os releases de uma só mudança o caminho fácil. Acorde um primeiro passo, como lançar sozinha uma mudança de baixo risco.

**Como sabemos que um release está funcionando depois de no ar?**

Pergunte que sinais a equipe observa na primeira hora: erros, desempenho, relatos de usuários. Se a resposta for "esperamos as reclamações", discuta um monitoramento que mostraria depressa um problema. Pergunte quem observa e o que faria. Acorde uma breve lista de verificação para depois do release.

**O que a nossa equipe de suporte sabe de um release antes de ele sair?**

Pergunte ao service desk o que soube do último release e quando. Compare com o que precisava. Discuta uma passagem de bastão simples, como uma nota de release e um contato nomeado. Inclua no planejamento de releases arriscados as pessoas que respondem às perguntas dos usuários.

**O que nos impede de implantar sem um período de congelamento, e o que um período de congelamento nos custaria?**

Os períodos de congelamento são comuns em torno de picos de negócio. Pergunte quanto duram e o que atrasam. Discuta se mudanças pequenas e bem testadas poderiam prosseguir durante eles com salvaguardas extras. A página do DORA adverte contra aplicar a mesma aprovação a todas as mudanças independentemente do risco ou do momento, então pergunte se o congelamento é rombudo demais.

## Na prática: um exemplo de ITIL ágil

Uma universidade opera um sistema de matrícula online para 30.000 estudantes. A equipe de desenvolvimento, de oito pessoas, lança uma vez por período, numa janela de fim de semana antes da abertura das matrículas. Cada release reúne centenas de mudanças e exige quinze pessoas, uma longa lista de verificação manual e um plano de chamadas. O último release falhou às 2h de domingo, e a equipe passou catorze horas descobrindo qual das mudanças o causara.

O líder da equipe propõe uma mudança de abordagem. Primeiro, as implantações passam a ser totalmente roteirizadas, começando pelos passos que falharam da última vez. Segundo, a equipe acrescenta testes automatizados para o caminho da matrícula, que rodam em cada mudança e levam menos de dez minutos. Terceiro, os novos recursos são implantados desligados e ativados por uma chave de funcionalidade depois das verificações. Quarto, um passo de rollback é escrito e ensaiado em um ambiente de teste. A secretaria acadêmica concorda com uma regra de que nenhum release vai à produção nas três semanas de pico de matrícula, a menos que seja a correção de uma falha visível aos usuários.

Dentro de um período, a equipe implanta toda semana fora das semanas de pico, em horário de trabalho, com as notas de release enviadas ao suporte estudantil no dia anterior. Alguns releases são atrasados por testes instáveis, e uma chave de funcionalidade foi deixada ligada por engano e causou breve confusão. A transformação também enfrenta a curva em J que a página do DORA descreve: por dois meses, o trabalho em testes e scripts retarda a entrega de recursos. A equipe segue em frente, conserta os testes instáveis, acrescenta um passo de lista de verificação para remover chaves e acorda com a secretaria rever a regra de congelamento no ano seguinte. Os picos de matrícula dos períodos passam sem incidente ligado a releases.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega são donas do pipeline: testes, builds, scripts de implantação e rollback. Invista neles como num produto com usuários. Lance pequeno, lance com frequência e trate cada release como evidência sobre o pipeline. Envolva o suporte e a operação quando as mudanças os afetarem.

### Equipes de serviço e operações

As equipes de operações se beneficiam de releases menores e mais previsíveis e podem ajudar definindo o que deve ser verdade antes de um release ser aceito: monitoramento, runbooks e rollback. Passe de guardião do portão a habilitador, fornecendo a plataforma e as verificações que as equipes de entrega usam. Observe os sinais após um release.

### Liderança e governança

Os líderes decidem se as equipes podem investir no pipeline e tolerar a curva em J. Peça lead time, taxa de falha de mudanças e tempo de recuperação. Resista a congelar releases como resposta geral ao risco e peça, em vez disso, evidências de que releases arriscados recebem mais escrutínio.

### Clientes e usuários

Clientes e usuários veem melhorias pequenas e frequentes e menos interrupções de uma vez só. Espere aviso prévio das mudanças que o afetam e um modo de relatar problemas. Se você tem períodos de pico, conte ao provedor para que possa planejar rollouts em etapas em torno deles.

## Modos de falha comuns

- **Releases de uma vez só (big-bang).** Centenas de mudanças saem juntas. Em vez disso, lance em lotes pequenos e separe a implantação do release.
- **Implantação manual.** Os passos variam por pessoa e falham à noite. Em vez disso, automatize em incrementos, começando pelos passos mais arriscados.
- **Lançar com mais frequência sem salvaguardas.** As taxas de falha sobem e as pessoas se esgotam, como adverte o DORA. Em vez disso, invista antes em testes, rollback e monitoramento.
- **Artefatos diferentes em ambientes diferentes.** O que é testado não é o que executa. Em vez disso, construa uma vez e promova o mesmo artefato.
- **Branches de vida longa.** As mesclagens viram eventos. Em vez disso, mantenha as branches curtas e integre continuamente.
- **Rollback não tentado.** O primeiro rollback acontece durante uma queda. Em vez disso, ensaie-o regularmente.
- **O suporte é o último a saber.** O pessoal descobre as mudanças pelos usuários. Em vez disso, envie notas de release e um contato antes do release.
- **Congelamentos gerais.** O mesmo congelamento se aplica a todas as mudanças. Em vez disso, deixe passar mudanças de baixo risco e bem testadas com verificações extras e reserve o congelamento ao que é arriscado.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Automação da implantação | As implantações são manuais e variam | Algumas implantações são roteirizadas | As implantações são automatizadas por um pipeline comum | Falhas e duração das implantações são acompanhadas e reduzidas | Pipelines e práticas são compartilhados e aprimorados entre equipes |
| Frequência e tamanho dos releases | Os releases são raros e grandes | Algumas equipes lançam em lotes menores | As equipes lançam em lotes pequenos num ritmo conhecido | Frequência, lead time e tamanho são medidos e ajustados | Os ritmos de release são coordenados entre serviços e fornecedores |
| Segurança (testes, rollout, rollback) | Os testes são manuais; o rollback não foi tentado | Existem alguns testes automatizados e passos de rollback | Testes automatizados, rollout em etapas e rollback ensaiado são padrão | A taxa de falha de mudanças e o tempo de recuperação são acompanhados e melhorados | As práticas de segurança são compartilhadas e testadas entre equipes |
| Prontidão do suporte | O suporte fica sabendo dos releases pelos usuários | Alguns releases têm notas | Notas de release e contatos são padrão | O feedback do suporte sobre os releases é colhido e usado | Suporte, entrega e usuários planejam os releases juntos |

## Lista de verificação

- [ ] Sabemos enunciar a diferença entre implantar e lançar, e a usamos.
- [ ] As implantações são automatizadas sem passos manuais, ou os passos manuais restantes estão listados.
- [ ] Construímos uma vez e promovemos o mesmo artefato pelos ambientes.
- [ ] Testes automatizados rodam em toda mudança e dão feedback em minutos.
- [ ] As branches são de vida curta e mescladas ao trunk com frequência.
- [ ] Existe um rollback para cada tipo de release, e ele foi ensaiado.
- [ ] Os rollouts são feitos em etapas onde o risco o justifica, com sinais definidos de antemão.
- [ ] Notas de release e problemas conhecidos chegam ao service desk antes de um release.
- [ ] A configuração está sob controle de versões e é revisada.
- [ ] Acompanhamos lead time, taxa de falha de mudanças e tempo de recuperação para cada serviço.

## Prompts de IA

**Finalidade: mapear os passos de "pronto" a "no ar" e achar o que automatizar.**

```text
Help me map the path of a change from ready to live.

The steps in order, with who does each, whether it is manual or automated, and how long it typically waits or takes: [paste].
The last three releases and what went wrong, if anything: [paste facts].

Produce a table of steps and mark the manual ones. Rank the manual steps by how often they caused problems in the text, and suggest, for the top three, one small way to automate or check each. Do not invent durations or failure counts. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

**Finalidade: escrever uma nota de release para o service desk e os usuários.**

```text
Write a release note for [service].

What changed (plain words): [describe].
Who is affected and when: [describe].
What users will notice: [describe].
Known issues and workarounds: [list, or write "none known"].
How to roll back and who to contact: [describe].

Write two versions: a one-paragraph note for users and a half-page note for the service desk. Use only the facts above. Mark any statement that is an assumption and ask clarifying questions first if information is missing. List what you are unsure of.
```

**Finalidade: planejar um rollout em etapas.**

```text
Plan a staged rollout of [change].

What it changes and who uses it: [describe].
How we can limit exposure (percentage of users, regions, servers, feature switch): [describe options available].
Signals we can watch: [list monitoring and user feedback sources].
Rollback method: [describe].

Propose stages, what to check at each stage, who can pause or stop, and what would trigger a rollback, leaving numeric thresholds as [to be agreed]. Do not invent monitoring that we do not have. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: preparar um argumento para investir em automação de releases.**

```text
Help me prepare a short case for investing in release automation for [service].

What a release costs us today, in facts: [people involved, hours, incidents, delays; use real numbers only].
What we want to be able to do: [describe].
Known risks of the work: [for example a temporary slowdown while tests are written].

Write a one-page case with the problem, the proposed first steps (small and incremental), what we will measure (lead time, change fail rate, recovery time, with no targets that I did not give), the risks including a temporary dip in delivery, and what we ask for. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [release-notes](../../../../skills/release-notes/SKILL.md): use para dizer aos usuários e ao service desk o que um release muda.
- [changelog](../../../../skills/changelog/SKILL.md): use para manter um registro corrente das mudanças por versão.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): use para construir os testes automatizados que tornam segura a liberação frequente.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): use para antecipar os testes no pipeline, de modo que os problemas sejam achados mais cedo.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use para planejar releases pequenos e frequentes e as verificações em torno deles.

## Fontes principais

- **Continuous delivery** (DORA, dora.dev): a definição do programa de pesquisa, as práticas recomendadas, os achados e as armadilhas.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): a prática de uma organização de autosserviço, builds reprodutíveis e política de release imposta.
- **Streamlining change approval** (DORA, dora.dev): orientação sobre como a aprovação se encaixa na entrega.
- **Continuous delivery** (Wikipedia): um panorama da prática e de sua história.

## Referências

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
