# Previsões de Entrega e Métricas de Planejamento

**As previsões de entrega e as métricas de planejamento permitem a uma equipe dizer, com intervalos honestos, quando o trabalho provavelmente terminará e quanto ela pode assumir, observando o fluxo contínuo de trabalho concluído e a capacidade da equipe, e funcionam para equipes de serviço quando o trabalho planejado e o trabalho movido por interrupções são contados juntos.**

## Por que isso importa

As equipes ágeis visam a entrega contínua de software, e todos que dependem dessa entrega fazem as mesmas perguntas: quando isto estará pronto, quanto a equipe pode assumir e o que acontece quando chega algo urgente? Uma equipe que não consegue responder a essas perguntas com evidências recorre a promessas que não consegue cumprir, e as pessoas que dependem dela aprendem a desconfiar de toda data.

Uma equipe que opera serviços sente isso com mais força que a maioria. O trabalho planejado de melhoria, as requisições de serviço e os incidentes compartilham as mesmas pessoas. Um plano que ignora a parte não planejada fracassará na primeira semana em que chegar um incidente. Uma previsão que vem do histórico da própria equipe e declara seu intervalo resiste melhor ao contato com a realidade do que uma data que nasce da esperança.

Este tópico descreve como prever a partir do fluxo de trabalho concluído, como planejar em torno da capacidade da equipe e quais métricas de planejamento ajudam ou enganam. Scrum, sprints e velocidade são uma maneira de planejar; uma seção curta perto do fim os trata para as equipes que os usam. As medidas aqui se apoiam nas medidas de fluxo do Tópico 1.5 — Kanban e na orientação mais ampla sobre medição do Tópico 5.6 — Métricas e Medição.

## Conceitos centrais

### Preveja a partir do fluxo, não de promessas

Uma previsão é uma declaração sobre o futuro baseada em evidências do passado, e carrega incerteza. O Kanban Guide define uma expectativa de nível de serviço (service level expectation) como uma previsão de quanto tempo um item de trabalho deve levar para percorrer o fluxo de trabalho, com base em tempos de ciclo passados, e diz que isso não é um acordo. Essa definição é um bom modelo para toda previsão de entrega: use o histórico real, diga o que ele cobre e evite prometer mais do que você mediu (veja Tópico 1.5 — Kanban).

Dois tipos de previsão são comuns:

- **Quanto tempo levará um item?** Veja quanto tempo itens semelhantes concluídos levaram e declare um intervalo ou uma afirmação como "a maioria dos itens deste tipo termina dentro de tantos dias".
- **Quanto terminaremos até uma data, ou quando terminará um conjunto de itens?** Veja quantos itens a equipe costuma concluir num período e aplique esse intervalo ao trabalho restante.

### As medidas de fluxo por trás de uma previsão

O Kanban Guide define quatro medidas, que são a matéria-prima da previsão de entrega:

| Medida | O que diz | Como alimenta uma previsão |
|---|---|---|
| **Tempo de ciclo** | Quanto tempo um item concluído levou do início ao fim | A dispersão dos tempos de ciclo recentes dá um intervalo para quanto tempo um novo item levará |
| **Vazão (throughput)** | Quantos itens foram concluídos num período | O intervalo da vazão recente dá um intervalo de quanto será concluído num período futuro |
| **Trabalho em andamento (WIP)** | Quantos itens foram iniciados mas não concluídos | WIP em excesso alonga os tempos de ciclo e torna toda previsão menos confiável |
| **Idade do item de trabalho** | Há quanto tempo um item não concluído está em andamento | Mostra itens que já são mais velhos que a maioria dos concluídos, enquanto ainda há tempo de agir |

O guia observa que as equipes podem renomear essas medidas e devem acrescentar outras quando úteis, e que as medidas só importam quando informam como a equipe trabalha. Use percentis e intervalos, não apenas médias, porque caudas longas se escondem nas médias (veja Tópico 5.6 — Métricas e Medição).

### Um método simples de previsão

Uma equipe pode prever sem ferramentas especiais:

1. Reúna a vazão de cada uma das últimas oito a doze semanas, ou de períodos semelhantes, a partir de itens realmente concluídos.
2. Tome a menor, uma típica e a maior dessas cifras.
3. Divida o número de itens restantes por cada cifra para obter um intervalo de períodos até terminar.
4. Declare o intervalo, os dados de que veio e o que o alteraria, como trabalho novo, uma mudança na equipe ou uma dependência.

É uma regra prática, não um padrão. Pressupõe que o trabalho futuro se parece com o passado e que os itens têm tamanho aproximadamente semelhante. Quando isso for falso, diga-o e trate o intervalo como mais largo. Compare cada previsão com o que aconteceu e ajuste o método, como o Tópico 3.11 — Disponibilidade, Capacidade e Desempenho aconselha para previsões de demanda.

### Capacidade da equipe

Capacidade é quanto trabalho uma equipe consegue absorver num período. Para uma equipe de entrega, não é o número de pessoas multiplicado pelos dias do período. Licenças, tarefas de suporte, reuniões e trabalho não planejado reduzem o que resta para os itens planejados. Uma boa declaração de capacidade lista pessoas e dias disponíveis e depois subtrai uma parcela reservada ao trabalho não planejado, com base no que os últimos períodos mostraram.

A skill de planejamento de capacidade e o Tópico 3.11 — Disponibilidade, Capacidade e Desempenho descrevem a capacidade de serviços e infraestrutura. A mesma lógica vale para uma equipe: planeje com intervalos, confira com o que aconteceu e revise o plano quando os fatos mudarem.

### Trabalho planejado e não planejado juntos

As equipes de serviço recebem incidentes, requisições urgentes e mudanças que ninguém agendou. Se isso não for contado, a previsão do trabalho planejado será otimista demais. Dê ao trabalho não planejado seus próprios tipos de item, conte quantos chegam e quanto tempo levam e mantenha os dados junto do trabalho planejado. Isso também dá ao Product Owner ou ao responsável pelo serviço evidências sobre quais incidentes recorrentes consomem capacidade, o que apoia decisões de corrigir causas (veja Tópico 3.3 — Gestão de Problemas).

### Fluxo de entrega contínua e cadência de releases

As equipes que entregam continuamente lançam pequenas mudanças quando estão prontas, em vez de esperar o fim de um período de planejamento. Isso encurta o tempo entre concluir e entregar e facilita conferir as previsões: cada item concluído é um ponto de dados. As mudanças ainda seguem a abordagem de habilitação de mudanças da organização, e as mudanças padrão pré-autorizadas ajudam aqui (veja Tópico 3.4 — Habilitação de Mudanças e Tópico 3.5 — Gestão de Releases e Implantações).

### Se você usa Scrum, sprints e velocidade

Algumas equipes planejam em ciclos de duração fixa. O Scrum Guide de 2020, de Ken Schwaber e Jeff Sutherland, define o Scrum como um framework leve para soluções adaptativas a problemas complexos. Seus eventos ocorrem dentro do Sprint, um intervalo de tempo de no máximo um mês. Esta seção cobre o mínimo de que uma equipe precisa se os usar; leia o próprio guia antes de mudar o modo de trabalhar de uma equipe.

- **Sprint e Sprint Goal:** o Sprint é o intervalo de tempo, e o Sprint Goal é o objetivo único dele. Uma meta que alguém de fora da equipe consiga entender orienta as escolhas melhor que uma lista de tickets.
- **Product Backlog, Product Owner e Scrum Master:** o Product Backlog é uma lista ordenada do que o produto precisa. O Product Owner é uma pessoa responsável por sua ordem, e o Scrum Master é responsável por estabelecer o Scrum e ajudar a equipe a aplicá-lo.
- **Increment e Definição de Pronto (Definition of Done):** um Increment é um passo utilizável e verificado rumo ao Product Goal, e a Definição de Pronto é o padrão de qualidade que o trabalho deve atender para contar. Uma equipe de serviço pode incluir nela monitoramento, um runbook e um rollback testado.
- **Eventos:** Sprint Planning, Daily Scrum, Sprint Review e Sprint Retrospective. A retrospectiva é onde a equipe inspeciona como trabalhou e planeja melhorias (veja Tópico 6.1 — Conversas em Equipe).
- **Velocidade:** uma cifra baseada em estimativas que algumas equipes usam para planejar quanto trabalho assumir. Use-a apenas no planejamento da própria equipe. Se virar meta, as equipes inflam as estimativas; por isso, prefira as medidas de fluxo, que contam itens concluídos, e as medidas de resultado.

O guia diz que o Scrum é um framework, não um método completo. Ele não cobre a resposta a incidentes, os níveis de serviço nem o processo de mudanças, e usar apenas partes dele não faz do resultado Scrum. Se você o adaptar, nomeie a variação com honestidade. Uma mistura de eventos Scrum e fluxo Kanban às vezes é chamada de [Scrumban](https://en.wikipedia.org/wiki/Scrumban).

## Boas práticas

1. **Preveja a partir do seu próprio histórico.** Use os tempos de ciclo e a vazão de itens concluídos recentes e declare o período que os dados cobrem. Não tome emprestados números de outra equipe.
2. **Dê um intervalo, não uma data única.** Mostre um caso baixo, um típico e um alto, e diga o que moveria o resultado. Uma data sem intervalo promete uma certeza que você não tem.
3. **Conte o trabalho não planejado.** Registre incidentes, requisições urgentes e interrupções como itens de trabalho com seus próprios tipos. Meça quantos chegam e quanto tempo levam.
4. **Defina a capacidade com dados.** Liste pessoas e dias disponíveis, subtraia licenças e tarefas de suporte e reserve uma parcela para o trabalho não planejado com base nos períodos recentes. Revise a parcela regularmente.
5. **Limite o trabalho em andamento.** Muito trabalho iniciado alonga os tempos de ciclo e enfraquece toda previsão. Defina um limite e revise-o quando os dados mudarem (veja Tópico 1.5 — Kanban).
6. **Observe a idade dos itens diariamente.** A idade mostra problemas em itens não concluídos enquanto ainda há tempo de agir. Revise primeiro os itens mais antigos.
7. **Use percentis e distribuições.** Diga que a maioria dos itens de um tipo termina em até certo número de dias e mostre a cauda lenta. As médias a escondem.
8. **Compare as previsões com o realizado.** Ao fim de cada período, registre o que foi previsto e o que aconteceu. Ajuste o método, não só o número.
9. **Use estimativas para planejar, não para julgar.** Se a equipe estima itens, use as cifras no seu próprio planejamento e não classifique pessoas nem equipes por elas (veja Tópico 5.6 — Métricas e Medição).
10. **Torne as previsões visíveis para quem depende delas.** Compartilhe o intervalo e as premissas com clientes e partes interessadas e atualize-os quando os fatos mudarem.
11. **Traga o trabalho de melhoria para o mesmo fluxo.** Coloque correções de problemas, trabalho de monitoramento e automação ao lado dos recursos, para que os compromissos fiquem visíveis (veja Tópico 3.15 — Melhoria Contínua).
12. **Se você usa sprints e velocidade, mantenha-os pequenos e honestos.** Acorde quais partes do Scrum você segue, nomeie a variação e teste uma abordagem baseada em fluxo se as interrupções predominarem.

## Perguntas para discutir com a equipe

**Como respondemos hoje a "quando isto estará pronto?", e em que a resposta se baseia?**

Peça as três últimas respostas que a equipe deu e em que cada uma se baseou. Compare-as com o que aconteceu. As equipes costumam descobrir que as datas vieram da esperança ou da opinião da pessoa mais sênior. Em seguida, pergunte que histórico a equipe poderia usar em vez disso.

**Que parcela do nosso tempo vai para trabalho que ninguém planejou, e sabemos isso por dados?**

Some itens planejados, requisições urgentes e incidentes das últimas semanas. Quem facilita pode perguntar se a parcela é estável ou varia por época do ano e quem decide quando uma interrupção prevalece sobre o trabalho planejado. Acorde como registrar isso de agora em diante.

**Como são os nossos tempos de ciclo, e o que diríamos se um cliente perguntasse quanto tempo leva um pedido típico?**

Desenhe ou liste os tempos de ciclo dos últimos itens concluídos. Pergunte o que a maioria leva, o que os mais lentos levam e o que explica os lentos. Discuta se uma expectativa de nível de serviço baseada nesse histórico seria justa e quem deveria ouvi-la.

**Quais dos nossos itens atuais já são mais velhos que a maioria dos itens concluídos?**

Olhe os itens abertos mais antigos. Pergunte por que cada um está parado, quem pode destravá-lo e o que a equipe fará hoje. Feche decidindo com que frequência a equipe revisará a idade.

**Quando uma previsão nossa se revelou errada pela última vez, e o que mudamos depois?**

Peça um exemplo recente, a previsão e o resultado. Procure o que a previsão deixou passar: trabalho não planejado, uma dependência ou itens maiores que o esperado. Acorde uma mudança no método e como a equipe a conferirá.

**Se usamos sprints ou velocidade, o que eles fazem por nós, e o que perderíamos se os abandonássemos?**

Pergunte com honestidade que problema cada um resolve. Procure evidências, como foco melhor ou metas mais claras, e danos, como estimativas infladas ou interrupções ignoradas. Quem facilita deve ficar atento a qualquer mudança que elimine laços de feedback, que são as partes úteis. Acorde um experimento e como comparar os resultados.

## Na prática: um exemplo de ITIL ágil

O departamento de TI de um hospital regional tem uma equipe de sete pessoas que mantém o aplicativo de agendamento de pacientes. Os gerentes das clínicas pedem datas, e a equipe as tem dado. A maioria das datas é perdida, porque incidentes das enfermarias, pedidos das clínicas e a aplicação de patches de segurança continuam chegando, e a equipe gasta a maior parte dos dias com eles.

A líder da equipe começa a registrar todo item, planejado ou não, com suas datas de início e fim. Após oito semanas, os dados mostram que cerca de metade do tempo da equipe vai para trabalho não planejado e que a maioria dos itens planejados termina em menos de duas semanas, com uma cauda longa de itens que esperam por outra equipe. A equipe concorda com três mudanças. Declarará cada previsão como um intervalo, usando a vazão e os tempos de ciclo recentes. Reservará metade da sua capacidade para o trabalho não planejado e planejará apenas com o restante. Revisará os itens abertos mais antigos toda manhã.

Nos dois meses seguintes, as previsões acertam na maior parte, e os gerentes das clínicas, que agora veem um intervalo e suas premissas, planejam em torno dele. A responsável pelo serviço, uma gerente de operações de clínica, consegue ver quais incidentes recorrentes consomem capacidade e eleva a prioridade da correção de uma falha recorrente de sincronização de consultas; a falha cessa. Dificuldades permanecem. Um incidente grave ainda empurra parte do trabalho, e os gerentes que gostavam das respostas rápidas do arranjo anterior acham os intervalos menos satisfatórios. A equipe concorda em dizer-lhes o que mudou na previsão sempre que ela se mover e em comparar sua abordagem com um método de ciclo fixo para o trabalho de melhoria na próxima revisão.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega ganham mais ao prever com seus próprios dados de fluxo. Registre o trabalho quando começa e termina, limite o trabalho em andamento e lance mudanças pequenas continuamente. Compartilhe o intervalo com quem espera e use a Definição de Pronto, se tiver uma, para incluir o trabalho operacional que torna um release suportável.

### Equipes de serviço e operações

As equipes de operações são donas do trabalho não planejado que faz as previsões falharem. Registre incidentes, requisições e mudanças como itens de trabalho e compartilhe padrões recorrentes para que influenciem a ordem do trabalho. Use os dados de tempo de ciclo para definir expectativas realistas com os clientes e seja explícito sobre quanta capacidade vai para a melhoria planejada.

### Liderança e governança

Os líderes obtêm um quadro mais honesto de intervalos de previsão e medidas de fluxo do que de relatórios de status. Peça intervalos com suas premissas, a precisão das previsões ao longo do tempo e o que a equipe mudou por causa dos dados. Evite fixar metas em números individuais, o que produz manipulação, e aceite que uma previsão se moverá quando os fatos se moverem.

### Clientes e usuários

Os clientes e usuários se beneficiam de expectativas mais claras e menos datas perdidas. Peça à equipe o tempo esperado para o seu tipo de pedido e espere que ele se apoie em histórico. Se o seu pedido for urgente, espere ser perguntado por quê, porque passá-lo à frente afeta o trabalho de todos os outros.

## Modos de falha comuns

- **Prometer datas por esperança.** As datas vêm de opinião e são perdidas. Em vez disso, preveja a partir de itens concluídos recentes e mostre o intervalo.
- **Ignorar o trabalho não planejado.** As interrupções arruínam o plano a cada período. Em vez disso, conte-as como itens de trabalho e reserve capacidade com base em dados.
- **Previsões de número único.** Uma data esconde a incerteza. Em vez disso, dê um caso baixo, um típico e um alto, com premissas.
- **Usar só médias.** A cauda longa dos itens lentos fica escondida. Em vez disso, use distribuições e percentis.
- **Começar coisas demais.** O alto trabalho em andamento alonga todo tempo de ciclo. Em vez disso, limite-o e termine antes de começar.
- **Usar velocidade ou vazão como meta de desempenho.** As equipes inflam estimativas ou dividem itens para parecer bem. Em vez disso, use as cifras para planejar e julgue os resultados (veja Tópico 5.6 — Métricas e Medição).
- **Nunca conferir a previsão.** O método nunca melhora. Em vez disso, compare cada previsão com o que aconteceu.
- **Aplicar ciclos fixos a trabalho que não se encaixa.** Uma fila de pedidos imprevisíveis forçada em períodos fixos gera frustração. Em vez disso, teste uma abordagem baseada em fluxo e compare os resultados.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Previsão | As datas vêm de opinião | Algumas equipes usam dados passados | As equipes preveem como intervalos a partir dos próprios dados de fluxo | A precisão das previsões é acompanhada e o método é aprimorado | As previsões são coordenadas entre equipes e fornecedores |
| Medidas de fluxo | Poucas medidas são coletadas | Algumas equipes registram tempo de ciclo ou vazão | As quatro medidas de fluxo são coletadas de forma consistente | As medidas são revisadas e usadas para definir expectativas | Os dados de fluxo são compartilhados entre equipes e usados para planejar em conjunto |
| Capacidade e trabalho não planejado | As interrupções não são contadas | Algumas equipes acompanham o trabalho não planejado | A capacidade para o trabalho não planejado é definida a partir de dados | A parcela e as causas do trabalho não planejado são revisadas e reduzidas | Operações e entrega planejam a capacidade em conjunto |
| Uso de estimativas e ciclos fixos | As estimativas são usadas para julgar pessoas | Algumas equipes usam estimativas no próprio planejamento | As equipes acordam quais práticas usam e nomeiam variações | Os efeitos das práticas são revisados contra fluxo e resultados | As práticas são ajustadas entre equipes a partir de aprendizado compartilhado |

## Lista de verificação

- [ ] As previsões vêm do histórico da própria equipe de itens concluídos.
- [ ] Cada previsão é um intervalo com premissas declaradas.
- [ ] Incidentes, requisições e trabalho de melhoria são todos registrados como itens de trabalho.
- [ ] A capacidade para o trabalho não planejado é definida a partir de dados e revisada.
- [ ] Tempo de ciclo, vazão, trabalho em andamento e idade do item de trabalho são acompanhados.
- [ ] O trabalho em andamento tem um limite que a equipe revisa.
- [ ] Os itens abertos mais antigos são revisados regularmente.
- [ ] As previsões são comparadas com o realizado após cada período.
- [ ] Estimativas e velocidade, se usadas, não são metas.
- [ ] Qualquer uso de Scrum, sprints ou de uma variação está registrado e nomeado com honestidade.

## Prompts de IA

**Finalidade: montar um intervalo de previsão a partir dos seus próprios dados de vazão.**

```text
Help me forecast delivery for a team of [number and type of people].

Throughput (items finished) for each of the last [number] weeks: [paste the real figures as a list].
Items remaining: [number], and a note on how similar in size they are: [paste].
Known changes that may affect the next weeks (leave, new work, dependencies): [paste, or write "none known"].

Calculate the lowest, typical, and highest weekly throughput from the figures, and divide the remaining items by each to give a range of weeks. State the assumptions. Do not extrapolate beyond the data or invent numbers. If the data are too thin, say so and ask what to add. List what you are unsure of.
```

**Finalidade: analisar tempos de ciclo e propor uma expectativa de nível de serviço.**

```text
Below are the start and finish dates of the last [number] finished work items of type [type]: [paste as a table; use only real data].

Calculate the cycle time of each item. Describe the spread: what most items take, what the slowest take, and what might explain the slow ones. Suggest a service level expectation in the form "most items of this type finish within N days", and say how confident the data allow us to be. Do not state it as a promise. If the data are too few, say so and ask what to collect. List what you are unsure of.
```

**Finalidade: medir quanta capacidade vai para o trabalho não planejado.**

```text
Below is a list of the work items our team completed over the last [number] weeks, each marked as planned or unplanned, with the time it took: [paste as a table; use only real data].

Calculate the share of time on planned and unplanned work for each week, using only the numbers I gave. Describe the pattern, suggest what share of capacity to hold back for unplanned work, and name two assumptions behind the suggestion. Ask clarifying questions first if the data are thin, and list what you are unsure of.
```

**Finalidade: revisar os itens abertos mais antigos e planejar o desbloqueio.**

```text
Our open work items, with start dates and current state: [paste as a table; use only real data].
Cycle times of our last [number] finished items: [paste].

Calculate the current age of each open item and flag those older than most finished items. For each flagged item, suggest two questions to ask about what blocks it. Do not guess the cause. List what you are unsure of.
```

## Skills de IA

- [kanban](../../../../skills/kanban/SKILL.md): use para montar medidas de fluxo, limites de trabalho em andamento e uma expectativa de nível de serviço.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use para verificar se a capacidade disponível atende à demanda projetada e o que fazer com uma lacuna.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): use para estimar a carga futura como um intervalo a partir de dados passados e planos de negócio.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): use para escolher uma métrica, nomear seu vetor de manipulação e sua proteção e preencher uma carta de métricas.
- [scrum](../../../../skills/scrum/SKILL.md): use, se a equipe planeja em sprints, para montar ou revisar seus papéis, eventos e artefatos.

## Fontes principais

- **The Kanban Guide** (kanbanguides.org): define as medidas de fluxo e a expectativa de nível de serviço como uma previsão baseada em tempos de ciclo passados.
- **The Scrum Guide** (Ken Schwaber e Jeff Sutherland, scrumguides.org): a definição autorizada e breve do Scrum, para as equipes que usam sprints.
- **Kanban (development)** (Wikipedia): um panorama das medidas de fluxo e do sistema puxado do Kanban.
- **Scrum (software development)** (Wikipedia): um panorama da história, dos papéis, dos eventos e das críticas ao Scrum.

## Referências

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
