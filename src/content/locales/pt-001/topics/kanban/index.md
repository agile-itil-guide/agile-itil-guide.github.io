# Kanban

**O Kanban gere o trabalho como um fluxo: torna o fluxo de trabalho visível, limita quanto está em andamento e usa medidas de fluxo para melhorar, o que convém a equipes de serviço cujo trabalho chega continuamente e não pode ser planejado em ciclos fixos.**

## Por que isso importa

Um service desk, uma equipe de operações e uma equipe de plataforma compartilham um traço: o trabalho chega quando chega. Incidentes, requisições e pequenas mudanças vêm em fluxo, e a equipe não consegue planejar um mês deles com antecedência. Frameworks construídos em torno de ciclos fixos, como o Scrum, só se ajustam a esse trabalho com adaptações (veja Tópico 1.4 — Previsões de Entrega e Métricas de Planejamento). O Kanban foi projetado para o fluxo, por isso se encaixa com mais naturalidade.

O Kanban também fala a língua da gestão de serviços. Pergunta quanto tempo o trabalho leva, quanto está esperando e qual etapa é o gargalo, e essas são as perguntas por trás de níveis de serviço, gestão de filas e planejamento de capacidade. Uma equipe que acompanha a idade e o tempo de ciclo do seu trabalho pode falar de níveis de serviço com dados, em vez de impressões.

O Kanban é simples de começar e surpreendentemente fácil de fazer mal. Um quadro com colunas não é Kanban se nada limita o trabalho em andamento e ninguém usa as medidas. Este tópico explica o que o Kanban Guide pede de uma equipe, de onde veio o método e como aplicá-lo ao trabalho de serviço.

## Conceitos centrais

### O que é o Kanban

O [Kanban Guide](https://kanbanguides.org/english/), cuja versão atual é datada de maio de 2025 e que lista John Coleman e Daniel Vacanti entre seus autores, define o Kanban como uma estratégia para otimizar o fluxo de valor por um processo. Descreve o fluxo como o movimento de valor potencial por um sistema. O objetivo é um equilíbrio entre três coisas: eficácia (entregar o que as partes interessadas querem, quando querem), eficiência (usar bem os recursos) e previsibilidade (prever a entrega com um nível aceitável de incerteza). O guia diz que se aplica ao trabalho do conhecimento em qualquer setor.

A palavra "kanban" é japonesa e significa placa ou painel. O [artigo da Wikipédia sobre Kanban no desenvolvimento](https://en.wikipedia.org/wiki/Kanban_(development)) diz que o método vem da manufatura enxuta e do [Sistema Toyota de Produção](https://en.wikipedia.org/wiki/Toyota_Production_System), com um sistema just-in-time iniciado na Toyota no fim da década de 1940. O livro de 2010 de David J. Anderson remonta a versão para software a um projeto de 2004 na Microsoft e a um projeto de 2006 e 2007 na Corbis.

### As três práticas

O Kanban Guide nomeia três práticas. Uma equipe que faz as três e usa as medidas abaixo está praticando Kanban no sentido do guia.

| Prática | O que a equipe faz | Uma nota para equipes de serviço |
|---|---|---|
| **Definir e visualizar o fluxo de trabalho** | Acordar uma Definição de Fluxo de Trabalho (Definition of Workflow, DoW): o que é um item de trabalho, onde começa e termina, os estados intermediários, como o trabalho em andamento é limitado, as políticas para mover o trabalho e uma expectativa de nível de serviço (SLE). Mostrá-la num quadro. | A DoW de um service desk pode definir itens de incidente, requisição e mudança, com estados e políticas diferentes para cada um |
| **Gerir ativamente os itens no fluxo de trabalho** | Controlar o número de itens em andamento, observar os itens que envelhecem e destravar os itens parados. | Um limite de incidentes abertos por engenheiro obriga a equipe a concluir ou repassar o trabalho antes de começar mais |
| **Melhorar o fluxo de trabalho** | Alterar a DoW ao longo do tempo para melhorar eficácia, eficiência e previsibilidade, em intervalos definidos ou quando necessário. | Uma revisão da DoW depois de um incidente grave pode mudar políticas, limites ou estados |

O guia não prescreve um layout de quadro nem reuniões. As equipes são livres para acrescentar práticas, desde que as práticas centrais, as medidas e o objetivo de otimizar o valor permaneçam intactos.

### Limites de trabalho em andamento e puxar

Controlar o trabalho em andamento (WIP) cria o que o guia chama de sistema puxado: o novo trabalho só começa quando há capacidade para ele. O artigo da Wikipédia dá o exemplo de uma etapa de "implantação" com limite de cinco. Quando a etapa está cheia, nada mais pode entrar até que algo termine, de modo que um bloqueio se torna visível e as pessoas podem ajudar a desfazê-lo. Sem limites, um quadro é apenas um retrato da bagunça.

### Quatro medidas de fluxo

O guia lista quatro medidas que uma equipe que usa Kanban acompanha:

- **Trabalho em andamento:** o número de itens iniciados mas ainda não concluídos.
- **Vazão (throughput):** o número de itens concluídos num dado período.
- **Idade do item de trabalho:** há quanto tempo um item não concluído está em andamento.
- **Tempo de ciclo:** quanto tempo um item concluído levou do início ao fim.

O guia diz que as equipes podem renomeá-las e devem acrescentar outras medidas quando úteis, e que as medidas só importam quando informam as três práticas. Uma expectativa de nível de serviço é uma previsão de quanto tempo um item deve levar, com base em tempos de ciclo passados. Não é uma promessa, e difere de um acordo de nível de serviço (SLA) negociado com um cliente. Veja Tópico 3.7 — Gestão de Níveis de Serviço.

### A literatura mais ampla do Kanban

Outros autores descreveram o método de forma mais ampla. O artigo da Wikipédia lista o trabalho de Don Reinertsen sobre fluxo, o *Personal Kanban* de Jim Benson e Tonianne DeMaria Barry, o *Kanban From the Inside* de Mike Burrows e o *Scrumban* de Corey Ladas, que propôs o Kanban como modo de melhorar o Scrum. Algumas dessas fontes listam práticas além das três do guia, como tornar as políticas explícitas, implementar laços de feedback e melhorar de forma colaborativa. Trate-as como acréscimos úteis, não como exigências do guia.

O artigo da Wikipédia traz uma etiqueta observando que um colaborador importante pode ter ligação estreita com o assunto, portanto confira suas afirmações nas fontes primárias.

### O que o Kanban não diz

O Kanban não é um plano de projeto, um conjunto de papéis nem um processo de release. Não diz como projetar um serviço nem como conduzir um incidente. Dá um jeito de ver e gerir o fluxo e conta com você para trazer o conteúdo do seu trabalho. Essa também é a sua força: você pode começar com o processo que tem e melhorá-lo em pequenos passos (veja Tópico 3.15 — Melhoria Contínua).

## Boas práticas

1. **Comece pelo que você faz hoje.** Desenhe o fluxo de trabalho real, com os estados por onde o trabalho de fato passa, inclusive as esperas. Não desenhe o processo que você gostaria de ter. Só se pode melhorar o que se vê.
2. **Defina o que é um item de trabalho.** Decida se incidentes, requisições e mudanças são um tipo de item ou vários e dê a cada um um início e um fim claros. Definições misturadas tornam as medidas sem sentido.
3. **Defina limites de WIP e respeite-os.** Comece com um limite que pareça um pouco apertado, como um ou dois itens por pessoa, e ajuste com a experiência. Um limite rotineiramente quebrado não informa nada, então discuta cada violação.
4. **Torne as políticas explícitas.** Escreva no quadro quando um item pode passar ao estado seguinte, quem pode puxá-lo e o que conta como bloqueado. Políticas visíveis reduzem discussões e facilitam a integração.
5. **Observe a idade do item, não só o tempo de ciclo.** O tempo de ciclo só é conhecido depois que o item termina, ao passo que a idade mostra problemas enquanto ainda há tempo de agir. Revise os itens mais antigos todos os dias.
6. **Use uma expectativa de nível de serviço baseada no histórico.** Tome os tempos de ciclo dos itens concluídos recentemente e declare, por exemplo, que a maioria dos itens de um tipo termina em até certo número de dias. Revise-a conforme os dados mudam. Não prometa aos clientes um número que você não mediu.
7. **Trate o trabalho expedito como exceção explícita.** Incidentes urgentes furarão a fila. Defina uma política, como uma raia com limite próprio, para que as exceções sejam visíveis e não destruam o fluxo em silêncio (veja Tópico 3.2 — Gestão de Incidentes).
8. **Procure o gargalo e ajude-o.** Quando um estado está sempre cheio, pergunte se precisa de mais capacidade, de uma política alterada ou de um fluxo a montante diferente. Mover pessoas para o gargalo costuma valer mais que empurrar mais trabalho para dentro dele.
9. **Faça revisões num ritmo regular.** O guia permite melhorar em intervalos definidos ou quando necessário. Uma revisão semanal curta das medidas e um olhar mensal para a DoW funcionam para muitas equipes.
10. **Conecte o quadro ao resto da organização.** Deixe o quadro visível para os clientes e equipes vizinhas. Acorde como os itens passam de um quadro a outro, como de um service desk para uma equipe de desenvolvimento.
11. **Use as medidas para aprender.** Use os números para fazer perguntas, não para classificar pessoas. Quando os dados de fluxo viram meta, as equipes os manipulam (veja Tópico 5.6 — Métricas e Medição).
12. **Combine com outros frameworks de forma deliberada.** Se a equipe usa eventos Scrum para planejar e Kanban para o fluxo, diga para que serve cada um e confira se a combinação reduz a confusão (veja Tópico 1.8 — Escalando a Agilidade para coordenar várias equipes).

## Perguntas para discutir com a equipe

**Se desenhássemos o nosso fluxo de trabalho real, inclusive as esperas, como ele seria?**

Peça a cada pessoa que desenhe o caminho de um item recente e depois junte os desenhos numa parede. As diferenças entre eles mostram etapas ocultas e passagens informais. Espere surpresas: aprovações que ninguém mencionou, itens esperando outra equipe e laços de retrabalho. Em seguida, marque as três esperas mais longas.

**Quanto trabalho está em andamento para cada um de nós agora, e quanto dele está esperando?**

Conte os itens abertos por pessoa e marque quais estão bloqueados ou parados. Muitas equipes descobrem que a maioria dos itens está esperando e poucos estão sendo trabalhados. Pergunte o que cada pessoa faz quando está bloqueada e se começar um novo item é a resposta habitual. O objetivo é discutir por que começar é recompensado e terminar não é.

**Qual é o item mais antigo do nosso quadro, e por que ainda está lá?**

Escolha os três itens mais antigos e rastreie o que aconteceu. Respostas comuns são um responsável indefinido, uma dependência de outra equipe ou um item que ninguém quer cancelar. Pergunte se o item deve ser concluído, cancelado ou escalado. Quem facilita pode perguntar que política o teria detectado antes.

**O que prometemos aos nossos clientes sobre quanto tempo as coisas levam, e o que dizem os nossos próprios números?**

Compare os níveis de serviço acordados com os tempos de ciclo reais dos itens concluídos. Se não houver dados, colete-os por um mês primeiro. Discuta qualquer diferença abertamente. Pergunte se a meta deve mudar ou se é o modo de trabalhar que deve mudar. Lembre-se de que uma expectativa de nível de serviço baseada em dados é uma previsão, ao passo que um SLA é um acordo.

**Quando chega trabalho urgente, o que acontece com todo o resto?**

Percorra o último incidente urgente e veja que itens pararam. Pergunte se a equipe tem uma política para trabalho urgente e se alguém sabe quantos itens urgentes ela trata por mês. As equipes costumam descobrir que o trabalho urgente é rotina, não exceção, e que a política precisa refletir isso. Em seguida, acorde um limite para itens expeditos.

**Em quais das nossas medidas confiaríamos o bastante para basear uma decisão, e quais ignoraríamos?**

Peça às pessoas que ordenem as medidas disponíveis segundo a confiança que têm nelas e por quê. A desconfiança muitas vezes vem de definições inconsistentes de item ou de lacunas nos dados. Não transforme isso numa discussão sobre pessoas; concentre-se na qualidade dos dados. Feche escolhendo uma medida a melhorar no próximo mês.

## Na prática: um exemplo de ITIL ágil

O service desk de TI de uma universidade tem oito analistas que tratam incidentes e requisições de estudantes e funcionários. A equipe tem uma ferramenta de tickets com filas, mas sem limites, e cada analista tem entre 20 e 40 tickets abertos. Os clientes reclamam que os tickets parecem sumir, e o gerente do desk não sabe dizer quanto tempo leva um pedido típico.

O gerente e os analistas montam um quadro que espelha a ferramenta: novo, triado, em andamento, aguardando o cliente, aguardando outra equipe e resolvido. Concordam com um limite de oito itens ativos por analista e com uma regra de que tickets que aguardam terceiros devem nomear a pessoa responsável pelo passo seguinte. Reservam uma raia para incidentes urgentes, com limite de dois. Durante um mês, só coletam dados de tempo de ciclo e idade.

Depois do mês, os dados mostram que a maioria dos pedidos é resolvida em poucos dias, mas uma cauda longa espera semanas, na maioria "aguardando outra equipe". A equipe define uma expectativa de nível de serviço a partir dos dados e começa uma revisão diária dos itens mais antigos. Vários tickets há muito parados são encerrados ou escalados na primeira semana. Um problema permanece: a equipe de redes, dona de muitos dos tickets em espera, não tem quadro próprio, e o desk não enxerga sua fila. O gerente do desk organiza uma conversa semanal com o líder da equipe de redes, e as duas equipes começam a discutir o compartilhamento de uma visão dos itens que passam entre elas.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega podem usar o Kanban para ver onde o trabalho espera entre design, construção, teste e release. Limites de trabalho em andamento reduzem o número de mudanças deixadas pela metade, e os dados de fluxo podem mostrar onde um processo de release precisa de atenção. Trate os pedidos da operação como itens do mesmo fluxo, com política própria.

### Equipes de serviço e operações

As equipes de operações são a casa natural do Kanban. Visualize incidentes, requisições e mudanças em seus próprios estados, defina limites e observe o envelhecimento. Use os dados de tempo de ciclo para definir expectativas realistas com os clientes e use os estados de bloqueio e espera para iniciar conversas com outras equipes.

### Liderança e governança

Os líderes se beneficiam das medidas de fluxo como retrato mais honesto que os relatórios de status. Peça tempo de ciclo, vazão e idade por tipo de trabalho e pergunte o que a equipe mudou por causa deles. Evite fixar metas em números individuais, o que produz manipulação. Apoie limites de trabalho em andamento mesmo quando as partes interessadas querem mais coisas iniciadas.

### Clientes e usuários

Os clientes ganham previsões mais claras e menos pedidos perdidos. Peça à equipe a expectativa de nível de serviço para o seu tipo de pedido e espere que se baseie em histórico. Se o seu pedido for urgente, espere ser perguntado por quê, porque a equipe precisa proteger o fluxo dos outros.

## Modos de falha comuns

- **Um quadro sem limites.** O quadro mostra a bagunça, mas não a reduz. Em vez disso, defina e faça valer limites de trabalho em andamento e revise cada violação.
- **Definições de item misturadas.** Incidentes, projetos e tarefas dividem o mesmo conjunto de colunas, e as medidas não significam nada. Em vez disso, defina tipos de item com estados e políticas separados.
- **Ignorar o envelhecimento.** Itens antigos ficam despercebidos até um cliente reclamar. Em vez disso, revise os itens mais antigos todos os dias e decida sobre cada um.
- **Transformar medidas em metas.** As equipes dividem ou encerram itens para melhorar os números. Em vez disso, use as medidas para fazer perguntas e revise-as com a equipe.
- **Raias expeditas ocultas.** O trabalho urgente contorna os limites sem deixar rastro. Em vez disso, dê ao trabalho urgente uma raia visível, um limite e uma política.
- **Copiar o layout de um quadro.** Uma equipe adota as colunas de outra sem compreender o próprio fluxo. Em vez disso, mapeie primeiro o fluxo de trabalho real.
- **Tratar o Kanban como ferramenta de relatório.** Gerentes usam o quadro para vigiar pessoas e não para melhorar o fluxo. Em vez disso, use-o como ferramenta da equipe para decidir o que fazer em seguida.
- **Nunca melhorar o fluxo de trabalho.** O quadro fica igual por anos. Em vez disso, faça revisões regulares da Definição de Fluxo de Trabalho e mude-a quando os dados pedirem.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Visualização do fluxo de trabalho | O trabalho vive em caixas de entrada individuais e na cabeça das pessoas | Algumas equipes têm quadros que mostram seus estados | As equipes compartilham uma Definição de Fluxo de Trabalho com tipos de item e políticas | O quadro é revisado e corrigido segundo o que realmente acontece | Quadros de várias equipes mostram itens e passagens entre equipes |
| Limitação do trabalho em andamento | Sem limites; as pessoas começam mais do que terminam | Algumas equipes definem limites informais | Os limites são definidos e as violações são discutidas | Os limites são ajustados a partir de dados de fluxo | Limites e capacidade são equilibrados entre equipes e fornecedores |
| Medidas de fluxo | Poucas medidas são coletadas | Algumas equipes registram tempo de ciclo ou vazão | As quatro medidas são coletadas de forma consistente | As medidas são revisadas e usadas para definir expectativas de nível de serviço | Os dados de fluxo são compartilhados entre equipes e usados para planejar a capacidade em conjunto |
| Melhoria | As mudanças seguem crises | As equipes ajustam o quadro ocasionalmente | As equipes revisam o fluxo de trabalho num ritmo regular | As mudanças são ligadas a medidas e os resultados conferidos | As melhorias se espalham entre equipes sem direção central |

## Lista de verificação

- [ ] Desenhamos o nosso fluxo de trabalho real, com esperas e passagens.
- [ ] Nossos itens de trabalho estão definidos, com início e fim claros para cada tipo.
- [ ] Existem limites de trabalho em andamento e cada violação é discutida.
- [ ] As políticas para mover e bloquear itens estão escritas no quadro ou perto dele.
- [ ] Acompanhamos tempo de ciclo, vazão, trabalho em andamento e idade do item de trabalho.
- [ ] Revisamos os itens mais antigos diariamente ou ao menos semanalmente.
- [ ] Temos uma expectativa de nível de serviço baseada no nosso próprio histórico.
- [ ] O trabalho urgente tem raia, limite e política próprios e visíveis.
- [ ] A Definição de Fluxo de Trabalho é revisada num ritmo regular.
- [ ] Equipes vizinhas e clientes conseguem ver os itens que lhes dizem respeito.

## Prompts de IA

**Finalidade: descrever o seu fluxo de trabalho real e encontrar onde o trabalho espera.**

```text
You are helping me map the real workflow of a team that handles [type of work, e.g. "service desk incidents and requests"].

Here are the states a typical item goes through, as best I can describe them: [paste the steps in order, including waits and handovers].
Here is what happened to three recent items, with dates for each state change: [paste three short timelines, using only real data].

Draw the workflow as a simple text diagram. Identify where each item waited longest, using only the dates I provided. Suggest three questions I should ask the team about those waits. Do not invent numbers. If the data are too thin, ask me for more first, mark your assumptions, and list what you are unsure of.
```

**Finalidade: redigir uma Definição de Fluxo de Trabalho para uma equipe.**

```text
Help me write a first Definition of Workflow for [team name and what it does].

Item types we handle: [list them, e.g. incidents, requests, changes].
States an item can be in: [list, or write "unknown"].
Current policies for starting, finishing, and blocking items: [paste, or write "none written"].
Roughly how many items each person has open at a time: [number, or "unknown"].

Produce a draft with: the item types, start and finish points, states, a proposed WIP limit approach, policies for moving items, a policy for urgent work, and how a service level expectation would be set from our own history. Mark every proposal that is a guess. Do not state any numbers I have not given you. Ask me clarifying questions first, and list what you are unsure of.
```

**Finalidade: analisar dados de fluxo do seu sistema de tickets.**

```text
Below are the start and finish dates of [number] items our team completed recently, and the start dates of [number] items still open: [paste as a table, real data only].

Calculate the cycle time of each completed item and the current age of each open item. Describe the spread: what most items take, what the slowest take, and which open items are older than most finished items. Do not extrapolate beyond the data. Suggest two questions to ask the team about the oldest items. Tell me what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Finalidade: planejar uma revisão do quadro com a equipe.**

```text
Plan a 30-minute weekly flow review for a team of [number] people that uses a Kanban board for [type of work].

Our measures: [list which of work in progress, throughput, cycle time, and work item age you track].
Current frustration: [describe in one or two sentences].

Include a timed agenda, five questions to ask about the measures and the oldest items, and a closing step that records at most two changes with owners. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## Skills de IA

- [kanban](../../../../skills/kanban/SKILL.md): use para desenhar ou revisar um quadro, limites de trabalho em andamento e políticas de uma equipe de serviço ou de operações.
- [scrumban](../../../../skills/scrumban/SKILL.md): use quando uma equipe quiser os eventos de planejamento do Scrum junto com a gestão de fluxo do Kanban.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use para mapear como o trabalho se move entre equipes e onde espera, antes de desenhar o quadro.
- [kaizen](../../../../skills/kaizen/SKILL.md): use para planejar pequenas melhorias no fluxo de trabalho depois de uma revisão de fluxo.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use para entender que tipos de trabalho chegam e em que volume, antes de definir limites e capacidade.

## Fontes principais

- **The Kanban Guide** (John Coleman, Daniel Vacanti e outros, kanbanguides.org): a definição concisa e autorizada das três práticas e das quatro medidas.
- **Kanban (development)** (Wikipedia): um panorama da história e das práticas mais amplas, com citações dos principais livros.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): o relato de como o Kanban foi aplicado ao trabalho com software.
- **Toyota Production System** (Wikipedia): contexto sobre as origens do kanban na manufatura enxuta.

## Referências

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
