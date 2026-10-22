# Gestão do Fluxo de Valor

**A gestão do fluxo de valor olha o caminho inteiro do pedido ao valor, mede onde o trabalho espera e melhora o fluxo entre equipes, porque os maiores atrasos numa organização de serviço costumam estar entre as equipes, e não dentro delas.**

## Por que isso importa

A maioria das equipes mede o próprio trabalho: tickets encerrados, histórias concluídas, mudanças lançadas. Esses números podem parecer bons enquanto o cliente espera semanas. A razão é que a maior parte do tempo decorrido num pedido típico é gasta esperando, em filas, por aprovações, entre equipes. Uma equipe que acelera o seu próprio passo pode não mudar nada para quem pediu.

O pensamento lean tem um método para enxergar isso: o mapa do fluxo de valor, que desenha cada passo do início de um processo até o cliente e registra tempo e volume em cada etapa. O ITIL 4 tem sua própria ideia de fluxo de valor, um conjunto de atividades que criam e entregam um serviço, combinando as atividades da cadeia de valor em ordens diferentes (veja Tópico 2.6 — A Cadeia de Valor de Serviço). As duas se encaixam. A ideia do ITIL diz o que é um fluxo, e o método lean mostra como medir e melhorar um.

A gestão do fluxo de valor vai além de um workshop pontual de mapeamento. Significa gerir o fluxo de trabalho continuamente, com medidas comuns, um responsável nomeado e revisões regulares que incluam todas as equipes do fluxo. A lista de capacidades do DORA inclui a visibilidade do trabalho no fluxo de valor e limites ao trabalho em andamento, e sua orientação sobre limites descreve tornar visível todo o trabalho, inclusive o de fora da equipe. Este tópico se apoia no artigo da Wikipédia sobre mapeamento do fluxo de valor, no DORA e no Kanban Guide e diz onde as fontes se calam.

## Conceitos centrais

### O que é um fluxo de valor

Um **fluxo de valor** é a sequência de passos pela qual um pedido se torna valor entregue. O [artigo da Wikipédia sobre mapeamento do fluxo de valor](https://en.wikipedia.org/wiki/Value-stream_mapping) descreve o método como uma técnica de gestão lean que analisa o estado atual e desenha um estado futuro para os eventos que levam um produto ou serviço do início de um processo ao cliente. Na visão do ITIL, um fluxo de valor é um conjunto específico de atividades que criam e entregam um serviço ou produto particular aos clientes (veja Tópico 2.6 — A Cadeia de Valor de Serviço).

Exemplos numa organização de serviço: tratar um incidente do relato à restauração, entregar uma mudança da ideia à produção, integrar um novo cliente ou atender a uma requisição de acesso.

### Mapeamento do fluxo de valor

O artigo diz que o mapa visual resultante mostra cada passo crítico e quantifica o tempo e o volume em cada etapa. Descreve dois mapas: um **mapa do estado atual**, construído observando e acompanhando o fluxo real de material e informação, e um **mapa do estado futuro**, que mostra o processo ideal depois das melhorias. O estado atual deve ser construído primeiro. O artigo cita *Learning to See*, de Mike Rother e John Shook (Lean Enterprise Institute, 1999), como fonte. Lista o desenvolvimento de software, o desenvolvimento de produtos, a gestão de projetos e os processos administrativos e de escritório como áreas de uso e menciona duas abordagens voltadas ao software de Ali e colegas: a análise de artefatos de desenvolvimento e a análise do fluxo de informação.

O artigo não define lead time, tempo de processo nem porcentagem completa e exata, não lista símbolos e não discute críticas. A página do DORA sobre entrega contínua, porém, refere-se ao mapeamento do fluxo de valor como um modo de expor gargalos comparando o tempo decorrido com o tempo de valor agregado e medindo a porcentagem completa e exata (%C/A). Os termos abaixo são o uso comum:

| Termo | Significado, no uso comum |
|---|---|
| **Lead time** | Tempo total decorrido do início de um pedido à entrega |
| **Tempo de processo** (ou tempo de toque) | Tempo em que alguém está de fato trabalhando no pedido |
| **Tempo de espera** | Tempo em que o pedido fica parado entre os passos |
| **Porcentagem completa e exata (%C/A)** | Parcela do trabalho que chega a um passo sem precisar de correção nem de informação faltante |
| **Eficiência de fluxo** | Tempo de processo dividido pelo lead time, em porcentagem |

A eficiência de fluxo é uma razão simples calculada para a ilustração deste guia, e as fontes lidas não a definem.

### Medidas de fluxo

O Kanban Guide nomeia quatro medidas de fluxo (veja Tópico 1.5 — Kanban): **trabalho em andamento** (itens iniciados mas não terminados), **vazão** (itens concluídos por período), **idade do item de trabalho** (tempo desde que um item não concluído começou) e **tempo de ciclo** (tempo do início ao fim de um item concluído). Elas funcionam no nível do fluxo de trabalho de uma equipe. A gestão do fluxo de valor aplica as mesmas ideias entre equipes: meça o tempo decorrido do pedido ao recebimento pelo cliente, e não do ponto em que uma única equipe o pega.

As medidas de entrega de software do DORA, como o lead time de mudanças, se aplicam a uma fatia do fluxo, da confirmação (commit) à produção (veja Tópico 3.4 — Habilitação de Mudanças). A parte anterior, da ideia ao commit, também faz parte do fluxo de valor e muitas vezes tem as esperas mais longas.

### Limites ao trabalho em andamento

A página do DORA sobre limites ao trabalho em andamento (WIP) os descreve como tetos para quantos itens podem estar em cada etapa de um fluxo de trabalho. Diz que a pesquisa do DORA liga os limites de WIP a melhor desempenho de entrega de software apenas em combinação com outras capacidades, como exibições visuais e laços de feedback do monitoramento, e não dá tamanhos de efeito. Seus conselhos de implementação incluem tornar visível todo o trabalho, inclusive o de fora da equipe, definir cada limite pela capacidade da equipe, manter firmes os limites e não elevá-los quando as pessoas estão ociosas, puxar trabalho apenas quando abre uma vaga, acompanhar o lead time e sua variabilidade, reduzir as passagens de bastão e baixar os limites gradualmente para expor a próxima restrição. As armadilhas que nomeia incluem ignorar o trabalho a montante e a jusante, o que leva à otimização local, e definir limites altos demais.

### Ver o fluxo inteiro

A armadilha da "otimização local" é a central. Um fluxo com cinco equipes tem cinco filas. Se uma equipe dobra a sua rapidez, o lead time do fluxo pode quase não mudar, porque as outras ainda esperam. A gestão do fluxo de valor procura a **restrição**, o passo que limita o todo, e a melhora primeiro (veja Tópico 1.7 — Desenvolvimento Lean de Software sobre otimizar o todo).

### Responsabilidade e governança

Um fluxo cruza equipes, então precisa de alguém responsável pelo todo. Um dono do fluxo de valor (ou um pequeno grupo) guarda o mapa, as medidas e a lista de melhorias e reúne as equipes. Sem um responsável, ninguém responde pelo fluxo, e as melhorias ficam dentro das fronteiras das equipes. Isso se liga à propriedade de produtos e serviços (veja Tópico 5.5 — Propriedade de Produtos e Serviços).

### Ferramentas

As ferramentas de software para a gestão do fluxo de valor coletam dados de tickets, controle de código-fonte e pipelines para mostrar o fluxo ao longo da cadeia de ferramentas. As fontes lidas para este guia não discutem tais ferramentas. Se você avaliar alguma, confira de que dados precisa, quão exata é e se as medidas respondem a uma pergunta que você tem. Um mapa aproximado desenhado à mão com as equipes envolvidas é um bom lugar para começar e muitas vezes revela mais que um painel.

### Limites

O artigo da Wikipédia não discute críticas, e a página do DORA sobre WIP não dá tamanhos de efeito nem valores-alvo. Cuidados práticos, oferecidos como experiência, incluem o mapeamento que nunca leva a mudança, medidas usadas para classificar equipes e mapas desenhados de memória dos gestores em vez da observação de itens reais.

## Boas práticas

1. **Escolha um fluxo que importa.** Escolha um fluxo com que os usuários se importam, como uma mudança chegando à produção ou uma requisição de acesso. Um fluxo estreito e real ensina mais que um amplo e abstrato.
2. **Mapeie a partir de itens reais.** Acompanhe vários itens recentes do início ao fim e registre as datas reais, e não o documento do processo. A observação vence a lembrança, como sugere a ênfase do artigo em observar e acompanhar o fluxo real.
3. **Registre o tempo e a espera em cada passo.** Para cada passo, anote o tempo de trabalho e a espera antes dele. As esperas costumam ser a história.
4. **Inclua todos do fluxo.** Convide pessoas de todas as equipes que tocam o item, inclusive aprovadores e fornecedores. Faça o mapeamento em conjunto, para que ninguém se surpreenda com o resultado.
5. **Calcule lead time, tempo de processo e eficiência de fluxo.** Compare o tempo decorrido com o tempo de trabalho e olhe quanto é espera. Use os números para iniciar conversas.
6. **Olhe a exatidão.** Pergunte com que frequência o trabalho chega a um passo incompleto ou errado, exigindo retrabalho. Um passo com baixa porcentagem completa e exata causa atraso a jusante.
7. **Ache a restrição.** Identifique o passo que limita o fluxo todo e melhore-o primeiro. Melhorar outros passos traz pouco benefício.
8. **Desenhe o estado futuro.** Desenhe com as equipes um fluxo melhor, e não um ideal, e escolha a primeira ou as duas primeiras mudanças. Acorde responsáveis e datas.
9. **Limite o trabalho em andamento.** Ponha um teto no que cada etapa segura, defina os limites pela capacidade, mantenha-os quando as pessoas estão ociosas e baixe-os gradualmente, como descreve a orientação do DORA.
10. **Torne o trabalho visível.** Mostre o fluxo num quadro ou mapa compartilhado que inclua o trabalho de fora de qualquer equipe. Atualize-o conforme os itens se movem.
11. **Nomeie um dono do fluxo.** Escolha uma pessoa responsável pelo desempenho do fluxo, que possa reunir as equipes e levar as melhorias aos líderes.
12. **Revise regularmente.** Faça uma breve revisão mensal do lead time, das esperas e da lista de melhorias. Redesenhe o mapa depois de mudanças significativas.

## Perguntas para discutir com a equipe

**Se acompanhássemos um pedido do primeiro contato ao recebimento pelo cliente, quanto tempo levaria, e quanto disso é tempo de trabalho?**

Escolha um item recente e reúna as datas. Peça às pessoas que adivinhem a resposta antes de olhar. O palpite costuma ser otimista. Calcule a parcela de tempo de trabalho. Quem facilita pode perguntar onde ocorreu a maior espera e quem era dono dela. Escolha-a como primeiro alvo.

**Com quem do fluxo nunca conversamos?**

Liste as equipes, aprovadores e fornecedores que um item toca. Marque aqueles que a equipe nunca encontrou. Pergunte o que se ganharia convidando-os a uma sessão de mapeamento. Respostas típicas: entender por que esperam, ou do que precisam para trabalhar mais depressa. Convide um.

**O que entregamos incompleto, e o que recebemos incompleto?**

Peça exemplos de trabalho que voltou para retrabalho. Anote quais passagens de bastão causam mais devoluções e o que falta. Essa é a ideia da porcentagem completa e exata em termos simples. Acorde uma lista de verificação curta para uma passagem de bastão.

**Onde está a restrição do nosso fluxo, e o que acontece se acelerarmos outra coisa?**

Discuta qual passo tem a fila mais longa. Pergunte o que aconteceria com o tempo de ponta a ponta se outro passo dobrasse de rapidez. A ideia é ver que melhorar algo que não é a restrição muda pouco. Escolha trabalhar na restrição.

**Em quantas coisas cada equipe trabalha ao mesmo tempo, e o que aconteceria se pusermos um teto?**

Conte o trabalho em andamento por equipe. Discuta o que significaria parar de começar. Medos típicos: algo importante vai esperar. Benefícios típicos: as coisas terminam. Acorde um teto de teste para uma equipe e um modo de julgar o resultado.

**Quem responde por este fluxo como um todo?**

Peça à equipe que nomeie a pessoa. Se ninguém, discuta quem poderia ser e que autoridade precisaria. Quem facilita pode notar que melhorias entre equipes raramente acontecem sem um responsável. Proponha um nome e leve-o ao líder pertinente.

## Na prática: um exemplo de ITIL ágil

Um órgão regulador ambiental nacional emite licenças a operadores industriais. Os requerentes reclamam que uma licença típica leva cerca de quatro meses, e pede-se ao grupo de serviços digitais do regulador, com doze pessoas, que a acelere. O grupo já havia construído um formulário online de requerimento mais rápido, mas o tempo decorrido quase não mudou.

A chefe do grupo reúne pessoas de todas as partes do fluxo: a equipe de requerimentos, dois revisores técnicos, um oficial jurídico, o escritório de taxas e a equipe que emite os documentos da licença. Mapeiam seis licenças recentes da data de envio até a data em que a licença chegou ao requerente. Os resultados são sóbrios. O tempo total foi de cerca de 110 dias, e o tempo de trabalho foi de cerca de 12. A maior espera foi na fila da revisão técnica, onde os requerimentos esperavam em média 40 dias antes de alguém abri-los, e cerca de um terço dos requerimentos chegava com informação faltante que tinha de ser pedida de novo. O escritório de taxas e a equipe de documentos acrescentavam, cada um, uma semana de espera pelo processamento em lote.

O grupo acorda três mudanças. O formulário online confere os itens comumente faltantes antes do envio. A equipe de revisão técnica define um limite de trabalho em andamento e uma regra de abrir todo requerimento em até cinco dias úteis para conferir se está completo. O escritório de taxas e a equipe de documentos passam de lotes semanais para processamento diário. Nomeiam a chefe dos serviços digitais dona do fluxo e revisam o lead time mensalmente. Depois de três meses, o lead time mediano é de cerca de 70 dias, e a parcela de requerimentos devolvidos por informação faltante cai. Alguns problemas permanecem. A equipe de revisão diz que o limite dificulta tratar requerimentos grandes e complexos, e o oficial jurídico é um ponto único de atraso que ninguém havia contado. A dona do fluxo pede à equipe de revisão que separe os casos complexos numa raia própria e trabalha com o escritório jurídico em um segundo revisor.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega veem apenas parte do fluxo. Participe das sessões de mapeamento, compartilhe seus dados e olhe o que acontece antes de o trabalho chegar a você e depois de você lançar. Trate o lead time do fluxo como meta comum, e não só o seu passo.

### Equipes de serviço e operações

As equipes de operações muitas vezes guardam as filas mais longas: acesso, aprovações, ambientes, suporte. Seja aberto sobre a sua capacidade e as suas restrições. Use o mapa para pedir insumos completos às equipes a montante e para explicar as suas prioridades.

### Liderança e governança

Os líderes podem remover restrições entre equipes que as equipes não conseguem. Nomeie donos de fluxos, peça o lead time de ponta a ponta e responda às melhorias que o mapa sugere. Evite usar as medidas do fluxo para classificar equipes, o que desencoraja dados honestos.

### Clientes e usuários

Clientes e usuários vivenciam o fluxo inteiro. Diga à equipe onde os atrasos doem, dê informação completa no início e participe de uma sessão de mapeamento se for convidado. A sua visão de quando o pedido realmente terminou é o verdadeiro fim do fluxo.

## Modos de falha comuns

- **Otimizar uma única equipe.** Um ganho local não muda nada de ponta a ponta. Em vez disso, ache e trate a restrição.
- **Mapear de memória.** O mapa reflete o que os gestores acreditam. Em vez disso, acompanhe itens reais com datas reais.
- **Vozes ausentes.** Fornecedores e aprovadores não estão na sala. Em vez disso, inclua todas as equipes do fluxo.
- **Um mapa e nenhuma mudança.** O cartaz fica pendurado na parede. Em vez disso, acorde uma ou duas mudanças com responsáveis antes de a sessão acabar.
- **Sem responsável.** Ninguém responde pelo fluxo. Em vez disso, nomeie um dono do fluxo com autoridade para reunir as equipes.
- **Medidas como classificações.** As equipes escondem as esperas. Em vez disso, use as medidas para entender o fluxo e discuta-as abertamente.
- **Limites que se movem.** Os limites de WIP são elevados sempre que as pessoas estão ociosas. Em vez disso, mantenha os limites e corrija as causas, como aconselha o DORA.
- **Ferramenta primeiro.** Compra-se um painel antes de se conhecerem as perguntas. Em vez disso, comece com um mapa desenhado à mão e acrescente ferramentas conforme a necessidade.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Ver o fluxo | O fluxo é julgado por impressão | Algumas equipes mapeiam seus próprios passos | Os fluxos-chave são mapeados de ponta a ponta a partir de itens reais, com todas as equipes | Lead time, esperas e exatidão são medidos e revisados | Os fluxos são mapeados e medidos entre organizações e fornecedores |
| Melhorar o fluxo | As equipes aceleram seus próprios passos | Algumas mudanças entre equipes são tentadas | Uma lista de melhorias focada na restrição por fluxo, com responsáveis | As melhorias são ligadas ao lead time medido e conferidas | A melhoria do fluxo é rotina e compartilhada entre fluxos |
| Limites e visibilidade | O trabalho em andamento é ilimitado e oculto | Algumas equipes usam quadros e limites | O trabalho é visível entre equipes, com limites acordados | Os limites são ajustados com dados de lead time | Limites e visibilidade são coordenados entre fluxos |
| Responsabilidade e governança | Ninguém é dono do fluxo | Existem coordenadores informais | Cada fluxo-chave tem um dono nomeado e uma revisão regular | Os donos respondem por resultados medidos | Os donos colaboram entre fluxos para otimizar o todo |

## Lista de verificação

- [ ] Escolhemos um fluxo importante e o mapeamos a partir de itens reais.
- [ ] O mapa mostra tempo de trabalho e tempo de espera em cada passo.
- [ ] Pessoas de todas as equipes do fluxo participaram do mapeamento.
- [ ] Conhecemos o lead time de ponta a ponta e quanto dele é espera.
- [ ] Identificamos a restrição e escolhemos uma ou duas mudanças.
- [ ] O trabalho em andamento é visível entre equipes, com limites acordados nas etapas-chave.
- [ ] Uma pessoa nomeada é dona do fluxo.
- [ ] Uma breve revisão regular olha o lead time, as esperas e a lista de melhorias.
- [ ] Acompanhamos com que frequência o trabalho chega incompleto a uma passagem de bastão.
- [ ] As medidas do fluxo não são usadas para classificar equipes.

## Prompts de IA

**Finalidade: calcular lead time e eficiência de fluxo a partir de itens reais.**

```text
I have timing data for [number] recent items in the stream [name]. For each item and each step I have the date work began and ended, and the date it arrived at the step: [paste a table with real dates, step names, and the team responsible].

Using only my dates, calculate for each item the total lead time, the working time (end minus begin for each step), the waiting time (arrival at a step minus the end of the previous step), and the flow efficiency (working time divided by lead time). Show the average and range across items, and the three longest waits by team and step. Do not invent numbers. If dates are missing, say what to collect. List what you are unsure of.
```

**Finalidade: planejar um workshop de mapeamento do fluxo de valor.**

```text
Plan a 2-hour value stream mapping workshop for the stream [name].

Participants: [roles and teams].
Data to bring (real dates for [number] recent items): [describe what exists].
Constraints: [for example remote].

Provide a timed agenda: agree the start and end of the stream, walk through real items, mark steps with working time and waiting time, record rework and incomplete handovers, identify the constraint, draw a future state, and agree one or two changes with owners and dates. Include prompts to keep the conversation on the system. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: analisar a qualidade da passagem de bastão entre duas equipes.**

```text
Teams A and B hand work over in the stream [name]. Here are examples of items that came back for rework or information, with reason: [paste, one per line].

Group the reasons into categories using only the text. Count items per category from my list. For the top two categories, suggest an item for a handover checklist that team A could use, and a question for team B. Do not infer causes beyond the text. List what you are unsure of.
```

**Finalidade: desenhar um teste de limite de trabalho em andamento.**

```text
Design a four-week trial of work-in-process limits for [team] working in [stream or stage].

Current items in progress per person or stage: [paste real counts].
Lead time data we have: [describe].
Capacity, in people: [number].

Propose limits for each stage based on capacity, how to show work and age on a board, rules for pulling work, what to do when someone is idle (without raising limits), what to measure (leave targets as [to be agreed]), and what would make us stop. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use para mapear um fluxo, registrar tempos e achar a restrição.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use para estudar como o trabalho se move entre papéis e onde espera.
- [kanban](../../../../skills/kanban/SKILL.md): use para montar a visualização e os limites de trabalho em andamento do fluxo.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use para entender o que entra no fluxo e em que volume.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): use para decidir que fluxos e iniciativas merecem investimento.

## Fontes principais

- **Value-stream mapping** (Wikipedia): a definição de mapas do estado atual e futuro e uma referência a *Learning to See*.
- **Work in process limits** (DORA, dora.dev): orientação sobre definir e manter limites e sobre evitar a otimização local.
- **The Kanban Guide** (kanbanguides.org): definições das quatro medidas de fluxo.
- **Lean software development** (Wikipedia): os desperdícios e princípios por trás do pensamento de fluxo de valor.

## Referências

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
