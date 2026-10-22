# Gestão Ágil de Serviços

**A gestão ágil de serviços aplica valores e métodos ágeis ao desenho e à melhoria da própria gestão de serviços, tratando cada processo como um produto com um responsável, um backlog e usuários que podem dizer se ele funciona.**

## Por que isso importa

A maior parte deste guia olhou como as equipes ágeis podem usar as práticas de gestão de serviços. Este tópico inverte a pergunta: como as práticas de gestão de serviços podem ser construídas e mudadas de modo ágil? Muitas organizações têm processos para incidentes, mudanças e requisições que foram desenhados uma vez, implantados num projeto e deixados como estavam. São lentos para mudar, malvistos por quem deve segui-los e fora de compasso com o modo como a organização agora constrói software. É o oposto do que sugeriria o princípio do Manifesto de acolher a mudança (veja Tópico 1.2 — Princípios Ágeis).

O remédio não é abandonar o processo, mas tratá-lo como algo desenhado com seus usuários, lançado em pequenos passos e melhorado com base em evidências. Os princípios orientadores do ITIL 4 dizem o mesmo: comece de onde você está, progrida de forma iterativa com feedback, colabore e promova a visibilidade e mantenha simples e prático (veja Tópico 2.4 — Os Princípios Orientadores do ITIL). O artigo da Wikipédia sobre o ITIL diz que o ITIL 4 foi alinhado com modos de trabalhar ágeis, de DevOps e lean quando foi lançado em 2019. O artigo sobre a ISO/IEC 20000 lista partes recentes dessa norma, incluindo orientação sobre ágil e DevOps, embora não dê o conteúdo delas.

Há pouca pesquisa formal sobre a gestão ágil de serviços como tal, e os artigos da Wikipédia consultados para este guia não a cobrem. Este tópico, portanto, se apoia na descrição de papéis e artefatos do Scrum Guide, nos princípios ágeis e do ITIL e no resto deste guia e oferece sua abordagem como síntese prática a experimentar, e não como método estabelecido.

## Conceitos centrais

### Processos como produtos

Um **processo**, neste sentido, é qualquer modo repetível de trabalhar que uma organização de serviço pede que as pessoas sigam: como relatar um incidente, como pedir acesso, como aprovar uma mudança. Visto como produto, um processo tem:

- **Usuários:** as pessoas que o seguem e as pessoas a quem serve.
- **Uma finalidade:** o resultado que existe para alcançar.
- **Um responsável:** alguém que responde por seu valor, como o Scrum Guide descreve o Product Owner como a única pessoa responsável por maximizar o valor do produto e ordenar seu backlog (veja Tópico 1.4 — Previsões de Entrega e Métricas de Planejamento).
- **Um backlog:** uma lista ordenada de melhorias.
- **Releases:** mudanças entregues em pequenos passos, com notas.
- **Medidas:** evidência de que funciona.

Pensar assim muda as perguntas. Não "implementamos o processo de mudanças?", mas "o processo de mudanças ajuda as pessoas a fazer seu trabalho, e qual é a próxima melhoria?"

### Papéis

| Papel | Numa equipe de produto | Para um processo de gestão de serviços |
|---|---|---|
| **Product Owner** | Ordena o backlog e responde pelo valor | O dono do processo, que decide o que melhorar a seguir e por quê |
| **Desenvolvedores / equipe** | Constroem o incremento | As pessoas que desenham e operam o processo, idealmente incluindo usuários de entrega e operações |
| **Scrum Master ou coach** | Ajuda a equipe a aplicar o framework e remove impedimentos | Um coach que ajuda a equipe a praticar a entrega contínua de software e a colher feedback |
| **Partes interessadas** | Revisam o incremento e dão feedback | Equipes de entrega, o service desk, auditores, clientes |

O mapeamento é deste guia, não uma norma. Os donos de processos em muitas organizações não têm autoridade nem tempo, então o primeiro passo costuma ser dar-lhes ambos.

### O backlog do processo

As ideias de melhoria de um processo vêm de muitos lugares: revisões de incidentes, retrospectivas, achados de auditoria, reclamações de usuários e métricas (veja Tópico 3.15 — Melhoria Contínua). Um backlog de processo as reúne numa única lista ordenada. Os itens são pequenos e descritos do ponto de vista do usuário: "Como desenvolvedor, quero que as mudanças de baixo risco sejam aprovadas automaticamente para poder lançar quando estiver pronto". O Product Owner ordena a lista por valor e esforço, e a equipe leva os itens a ciclos curtos.

### Entrega contínua de software de mudanças de processo

Em vez de desenhar um processo completo e implantá-lo, desenhe a menor versão que poderia funcionar, experimente com poucos usuários e aprenda:

| Passo | O que acontece |
|---|---|
| **Achar o problema** | Observar como as pessoas realmente trabalham e onde têm dificuldade |
| **Desenhar uma pequena mudança** | Um novo formulário, uma rota de aprovação mais curta, uma lista de verificação |
| **Experimentar** | Com uma equipe, ou um tipo de trabalho, por um período curto |
| **Conferir** | Comparar com o que se esperava, usando dados e conversa |
| **Adotar, ajustar ou abandonar** | Espalhar o que funcionou; corrigir ou abandonar o que não funcionou |

É o ciclo plan-do-check-act aplicado ao próprio processo (veja Tópico 3.15 — Melhoria Contínua).

### Desenhar com os usuários

Os desenhistas de processos que não usam o processo cometem erros evitáveis. Envolva as pessoas que o seguem: convide engenheiros a desenhar o processo de mudanças, analistas do desk a desenhar o formulário de incidentes e clientes a desenhar o catálogo de requisições. Observe o trabalho real. Teste com casos reais. É a "colaboração com o cliente mais que negociação de contratos" aplicada dentro da organização (veja Tópico 1.1 — O Manifesto Ágil).

### Processo mínimo viável

Um **processo mínimo viável** é o menor conjunto de passos, registros e papéis que alcança a finalidade. Acrescentar a ele exige uma razão. O princípio orientador "mantenha simples e prático" apoia isso. Um teste útil de cada passo é perguntar o que aconteceria se fosse removido e quem notaria. Os controles exigidos por lei ou contrato são mantidos, com a fonte nomeada; os outros são questionados.

### Releases de processo e comunicação

Quando um processo muda, as pessoas precisam saber. Trate as mudanças como releases: uma nota curta descrevendo o que mudou, por quê e o que fazer de diferente, com um contato para perguntas. Lance em pequenos passos, num ritmo que as pessoas possam acompanhar, e evite surpreender as equipes com grandes mudanças. Mantenha um histórico visível de mudanças.

### Normas, auditorias e agilidade

Muitas organizações precisam satisfazer normas ou auditores. A ISO/IEC 20000 é uma norma para sistemas de gestão de serviços, e a Wikipédia lista uma parte recente dela com orientação sobre ágil e DevOps (veja Tópico 2.7 — Frameworks e Normas de ITSM). Um processo construído em pequenos passos pode satisfazer auditorias se os registros mostrarem como funciona e como muda: o backlog, as notas de release e as medidas são em si evidência. Converse cedo com os auditores sobre o que precisam e mostre-lhes o seu modo de trabalhar.

### Gestão ágil de serviços e DevOps

As práticas de DevOps, como automação e pipelines, são ferramentas para implementar processos (veja Tópico 5.2 — DevOps). Onde um passo de processo puder ser automatizado, como registrar uma mudança a partir de um pipeline, faça-o e trate a automação como parte do processo. A gestão ágil de serviços e o DevOps compartilham o interesse por ciclos curtos e feedback rápido.

### Limites

A abordagem presume que as pessoas têm tempo e mandato para melhorar o processo, o que nem sempre é verdade. Pode fracassar quando a responsabilidade pelo processo é nominal, quando as partes interessadas exigem um desenho acabado antes de experimentar qualquer coisa ou quando toda mudança precisa de uma longa aprovação. Corre também o risco de agitação constante se as mudanças forem frequentes demais para as pessoas absorverem. Equilibre a entrega contínua de mudanças com estabilidade: mude num ritmo previsível.

## Boas práticas

1. **Nomeie um responsável para cada processo.** Escolha alguém com autoridade para mudá-lo e tempo para fazê-lo. Deixe claro o seu papel: responde por quão bem o processo serve à sua finalidade.
2. **Escreva uma finalidade em uma frase.** Declare para que serve o processo e a quem atende. Se não consegue, o processo pode ser candidato à remoção.
3. **Mantenha um backlog do processo.** Reúna ideias de revisões, auditorias, feedback e dados numa lista ordenada. Mostre-a às pessoas que seguem o processo.
4. **Envolva os usuários no desenho.** Inclua engenheiros, analistas do desk e clientes em workshops e testes. Observe o trabalho real antes de mudá-lo.
5. **Comece com um processo mínimo viável.** Desenhe a menor versão que atenda à finalidade e às necessidades legais. Acrescente passos só quando um problema os justificar.
6. **Experimente antes de implantar.** Faça um piloto com uma equipe ou um tipo de trabalho por um período curto e definido. Acorde o que vai olhar antes de começar.
7. **Lance as mudanças em pequenos passos num ritmo.** Publique uma nota curta para cada release do processo, com um contato. Evite mudanças grandes e surpreendentes.
8. **Meça o processo.** Escolha poucas medidas de se ele funciona, como tempo gasto, retrabalho e satisfação do usuário (veja Tópico 5.6 — Métricas e Medição). Revise-as com os usuários.
9. **Automatize onde ajudar.** Capture registros a partir de ferramentas e não de formulários; faça o caminho fácil ser o caminho certo. Confira que a automação não esconde um julgamento que as pessoas deveriam exercer.
10. **Guarde a evidência para os auditores.** Armazene o backlog, as decisões, as notas de release e as medidas onde os auditores possam ver. Convide-os a uma revisão de como o processo muda.
11. **Aposente processo.** Remova passos, formulários e registros que não servem mais à sua finalidade. Trate a exclusão como melhoria.
12. **Revise anualmente a responsabilidade pelos processos.** Confira que cada processo ainda tem um responsável ativo, um backlog atual e usuários que possam alcançá-lo.

## Perguntas para discutir com a equipe

**Quem é dono de cada um dos nossos processos, e que autoridade tem para mudá-lo?**

Liste os principais processos e nomeie o responsável por cada um. Pergunte o que o responsável pode mudar sem pedir a ninguém. Muitas vezes a resposta é "muito pouco". Quem facilita pode perguntar o que seria necessário para que o responsável faça pequenas mudanças depressa. Acorde um processo para começar.

**Para que serve o nosso processo de mudanças? Conseguimos dizer isso em uma frase?**

Peça a cada pessoa que escreva uma finalidade. Compare. As diferenças mostram confusão sobre por que o processo existe. Use a declaração comum para julgar cada passo. Remova ou questione os passos que não a servem.

**Quando foi a última vez que mudamos um processo porque os usuários pediram, e como ficamos sabendo?**

Peça exemplos. Se não há nenhum, pergunte para onde vão as reclamações. Discuta como o feedback poderia chegar ao responsável: um canal, uma revisão regular, uma pesquisa curta. Escolha uma rota para experimentar.

**Como seria um teste de um mês de um processo mais simples?**

Escolha um processo com atrito conhecido. Descreva uma versão mais leve, quem a experimentaria, o que mediria e o que o faria parar. Isso transforma uma discussão num experimento. Acorde os detalhes e a data.

**Que evidência os nossos auditores aceitariam de um processo de entrega contínua de software?**

Pergunte a um auditor ou colega de conformidade. Liste o que o processo produz: um backlog, notas de release, medidas, registros. Discuta as lacunas. As equipes muitas vezes se surpreendem com a boa vontade dos auditores em aceitar evidência clara de mudança controlada.

**Como as pessoas ficam sabendo que um processo mudou?**

Rastreie a última mudança. Muitas pessoas souberam por um colega ou esbarrando nela. Discuta notas de release e um registro visível de mudanças. Acorde um modo simples de anunciar mudanças e onde elas ficam.

## Na prática: um exemplo de ITIL ágil

Uma agência nacional de segurança viária tem um departamento de TI de 90 pessoas que dão suporte a uma aplicação usada por polícia e tribunais. O processo de incidentes do departamento foi escrito oito anos atrás: um formulário de 14 campos, três aprovações para encerrar um incidente de alta prioridade e um relatório mensal que ninguém lê. As equipes de entrega pulam o formulário durante as quedas e o preenchem depois, de modo que seus registros são pobres. Um achado de auditoria diz que os registros de incidentes estão incompletos.

A chefe da gestão de serviços se nomeia dona do processo de incidentes e forma uma pequena equipe de trabalho: dois analistas do service desk, um engenheiro de cada uma de duas equipes de entrega e uma oficial de qualidade da unidade de governança da agência. Escreve uma finalidade para o processo: restaurar o serviço depressa e aprender com o que aconteceu. A equipe observa três incidentes reais. Descobrem que o formulário é preenchido depois do evento, principalmente com os mesmos poucos valores, e que as aprovações acrescentam atraso sem nunca mudar um resultado. Montam um backlog e começam pelas menores mudanças. Um teste com duas equipes reduz o formulário a seis campos, preenchidos automaticamente a partir da ferramenta de monitoramento sempre que possível, elimina duas das três aprovações e acrescenta uma breve revisão sem atribuição de culpa para todo incidente de alta prioridade.

Depois de seis semanas, as equipes do teste registram os incidentes durante a queda e não depois, e a oficial de qualidade acha os registros mais completos do que antes. A equipe publica uma nota de release de uma página, estende a mudança a todas as equipes e mostra ao auditor o backlog, os resultados do teste e as medidas. Algumas dificuldades permanecem. Uma equipe de entrega nunca entrou no teste e ainda usa o formulário antigo, o contrato de um fornecedor exige um campo que o novo formulário omite e a oficial de qualidade teme que a eliminação das aprovações seja questionada na próxima auditoria. A chefe da gestão de serviços acrescenta um campo para o caso do fornecedor, pede à equipe restante que entre na próxima rodada e acorda com o auditor rever os registros de incidentes na próxima reunião trimestral.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega são os usuários de muitos processos de gestão de serviços. Participe do desenho dos que afetam você, ofereça dados sobre como funcionam na prática e experimente pilotos. Onde um passo de processo puder ser automatizado no seu pipeline, ofereça-se para construí-lo.

### Equipes de serviço e operações

As equipes de operações muitas vezes são donas dos processos. Trate cada um como produto: escreva uma finalidade, mantenha um backlog, pergunte aos usuários e lance pequenas mudanças. Arranje tempo para a melhoria do processo e defenda-o, pois o trabalho de entrega o expulsará.

### Liderança e governança

Os líderes dão autoridade e tempo aos donos de processos e definem a expectativa de que os processos mudem com base em evidências. Peça a finalidade e as medidas de cada processo e o backlog. Apoie os testes e esteja disposto a aceitar evidências em novas formas.

### Clientes e usuários

Os clientes e usuários dos serviços também seguem processos, como requisições e aprovações. Diga ao responsável o que está confuso ou lento. Ofereça-se para participar de um teste. Espere que as mudanças sejam anunciadas e explicadas.

## Modos de falha comuns

- **Processo sem responsável.** Ninguém pode mudá-lo. Em vez disso, nomeie um responsável com autoridade e tempo.
- **Redesenho de uma vez só (big-bang).** Um processo inteiramente novo é implantado de uma vez e rejeitado. Em vez disso, mude em pequenos passos e faça pilotos.
- **Desenho por comitê longe dos usuários.** O processo serve aos desenhistas. Em vez disso, inclua as pessoas que o seguem e observe o trabalho real.
- **Agitação constante.** As mudanças chegam com frequência demais para serem absorvidas. Em vez disso, lance num ritmo previsível.
- **Esquecer os requisitos legais.** Um controle necessário é abandonado. Em vez disso, confira para que cada passo é exigido e nomeie a fonte.
- **Mudanças não anunciadas.** As pessoas as descobrem por acaso. Em vez disso, publique notas curtas de release.
- **Evidência não guardada.** A auditoria não vê como o processo mudou. Em vez disso, guarde o backlog, as decisões e as medidas.
- **Nenhuma remoção.** Os passos se acumulam. Em vez disso, trate a exclusão como melhoria.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Responsabilidade e finalidade | Os processos não têm responsável nem finalidade claros | Alguns processos têm responsáveis | Todo processo tem um responsável com autoridade e uma finalidade escrita | Os responsáveis são revisados quanto à eficácia e apoiados | Os responsáveis trabalham juntos entre equipes para alinhar os processos de ponta a ponta |
| Backlog e mudança | As mudanças são projetos, raros e grandes | Alguns responsáveis mantêm listas de ideias | Cada processo tem um backlog ordenado e lança mudanças em pequenos passos | O fluxo do backlog e os efeitos dos releases são medidos | As mudanças de processo são coordenadas entre processos e com fornecedores |
| Envolver os usuários | Os desenhistas raramente consultam os usuários | Alguns testes são feitos com usuários | Os usuários participam do desenho e dos testes como padrão | O feedback e a satisfação dos usuários são medidos e tratados | Clientes e fornecedores participam do desenho do processo |
| Evidência e auditoria | Os registros são pobres e as mudanças não são registradas | Algumas mudanças de processo são registradas | Backlog, notas de release e medidas servem como evidência de auditoria | Os auditores revisam regularmente o registro de mudanças | A evidência é compartilhada continuamente com auditores e parceiros |

## Lista de verificação

- [ ] Cada processo principal tem um responsável nomeado, com autoridade e tempo.
- [ ] Cada processo tem uma finalidade em uma frase e um conjunto definido de usuários.
- [ ] Cada processo tem um backlog visível e ordenado de melhorias.
- [ ] Usuários de entrega e operações participam do desenho e dos testes.
- [ ] As mudanças passam por piloto antes da implantação, com uma conferência definida.
- [ ] As mudanças de processo são lançadas num ritmo, com notas curtas.
- [ ] Algumas medidas mostram se cada processo funciona.
- [ ] Os controles legais e contratuais são identificados com suas fontes.
- [ ] Os auditores viram o backlog, as notas de release e as medidas.
- [ ] Os passos que não servem mais a uma finalidade são removidos.

## Prompts de IA

**Finalidade: redigir uma declaração de finalidade e uma lista de usuários para um processo.**

```text
Help me write a purpose statement for this process: [name and brief description].

Who follows it: [roles].
Who it serves: [roles].
What goes wrong today: [examples].
Rules or contracts that require parts of it, with source text: [paste, or write "none known"].

Write three alternative one-sentence purpose statements, each focused on an outcome and not on the steps. Then list questions for the users to test which is closest. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: transformar feedback e revisões de incidentes num backlog de processo.**

```text
Here are comments, complaints, audit findings, and review actions about [process]: [paste one per line, with source].

Group related items. For each group, write a backlog item in the form "As a [role], I want [change] so that [outcome]," using only what the text says. Add a note on who is affected and a question about evidence. Leave priority blank. List items that look like requirements from law or contract, quoting the text, and items that conflict. List what you are unsure of.
```

**Finalidade: desenhar um teste de um mês de um processo mais leve.**

```text
Design a one-month trial of a lighter version of [process].

Current steps and where people struggle: [describe].
Proposed change: [describe].
Teams that could take part: [list].
Controls that must stay, with source: [list, or write "none known"].

Give: the trial scope, what we expect to see, what to measure before and during (leave targets as [to be agreed]), how to gather user feedback, conditions to stop, and what evidence to keep for auditors. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: escrever uma nota de release para uma mudança de processo.**

```text
Write a short release note for a change to [process].

What changed: [describe].
Why: [describe].
Who is affected and from what date: [describe].
What people should do differently: [describe].
Where to ask questions: [contact].

Write under 150 words in plain language, with a heading, a short list of changes, and what to do. Use only my information. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

## Skills de IA

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use para deixar claro quem é dono de cada processo e quem é consultado.
- [user-story](../../../../skills/user-story/SKILL.md): use para escrever itens de backlog de processo do ponto de vista do usuário.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use para estudar como um processo realmente roda e onde tem dificuldades.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use para revisar como um processo está funcionando com seus usuários.
- [kaizen](../../../../skills/kaizen/SKILL.md): use para planejar melhorias pequenas e contínuas de um processo.

## Fontes principais

- **The Scrum Guide** (Ken Schwaber e Jeff Sutherland, scrumguides.org): a fonte dos papéis e artefatos usados aqui como analogia para a responsabilidade e os backlogs de processo.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): o lado ágil da abordagem de desenho.
- **ITIL** (Wikipedia): a história do alinhamento do ITIL 4 com modos de trabalhar ágeis, de DevOps e lean.
- **ISO/IEC 20000** (Wikipedia): a lista de partes, incluindo orientação recente sobre ágil e DevOps.

## Referências

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
