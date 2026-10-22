# Monitoramento e Gestão de Eventos

**O monitoramento diz se um serviço está funcionando do jeito que os usuários o experimentam, e uma boa gestão de eventos transforma uma enxurrada de sinais num pequeno número de alertas que uma pessoa consegue entender e sobre os quais pode agir.**

## Por que isso importa

Um serviço que você não enxerga é um serviço que você não consegue operar. Sem monitoramento, uma equipe sabe das falhas pelos usuários e da deterioração lenta por ninguém. Com monitoramento ruim o problema é o oposto: tantos alertas que o engenheiro de plantão deixa de acreditar neles, e o que importa se perde no ruído. Os dois extremos custam sono, confiança e tempo.

O monitoramento e a gestão de eventos também determinam com que rapidez um incidente pode ser achado e corrigido. Tudo na gestão de incidentes depende de saber depressa que algo está errado e de ter informação suficiente para descobrir por quê (veja Tópico 3.2 — Gestão de Incidentes). As equipes ágeis que lançam com frequência precisam disso ainda mais, porque cada release é uma chance de quebrar algo e cada decisão de rollback depende de ver o efeito.

O livro *Site Reliability Engineering* do Google tem dois capítulos que tratam diretamente do assunto: "Monitoring Distributed Systems" e "Practical Alerting from Time-Series Data". Descrevem a prática de uma organização e defendem uma abordagem deliberadamente simples e voltada ao usuário. Este tópico os usa como fonte principal, porque os artigos da Wikipédia consultados para este guia dizem pouco sobre a prática. O vocabulário do ITIL aqui, como evento, alerta e gestão de eventos, vem de descrições amplamente publicadas que este guia não pôde conferir no texto do titular do framework. Leia os capítulos de SRE como uma opção bem explicada.

## Conceitos centrais

### Monitoramento

O capítulo de SRE define **monitoramento** como coletar, processar e exibir dados quantitativos em tempo real sobre um sistema. Diz que o monitoramento apoia a análise de tendências de longo prazo, a comparação entre experimentos, o alerta, os painéis e a depuração ad hoc depois do fato. Enfatiza que o monitoramento é um esforço de engenharia significativo e que as equipes costumam designar ao menos uma pessoa para ele.

### Eventos, alertas e incidentes

No uso de ITSM, um **evento** é uma mudança de estado que tem significado para a gestão de um serviço. A maioria dos eventos é informativa. Alguns indicam um aviso ou uma exceção. Um **alerta** é, como diz o capítulo de SRE, uma notificação para um humano, entregue como ticket, e-mail ou chamada (page). Um **incidente** é uma interrupção não planejada ou redução de qualidade (veja Tópico 3.2 — Gestão de Incidentes). A gestão de eventos é a prática de decidir quais eventos importam, o que fazer a respeito e quem deve ser avisado. O fluxo é de eventos a alertas e, às vezes, a incidentes.

### Monitoramento caixa-preta e caixa-branca

O capítulo distingue dois tipos:

| Tipo | O que faz | Ponto forte |
|---|---|---|
| **Caixa-preta (black-box)** | Testa o comportamento visível externamente, como um usuário o veria | Detecta problemas ativos; adequado para chamar alguém |
| **Caixa-branca (white-box)** | Usa métricas expostas pelo interior do sistema, como logs ou handlers internos | Revela problemas iminentes e falhas mascaradas por novas tentativas; essencial para depuração |

O livro combina os dois. Uma sonda caixa-preta diz que o checkout está falhando; os dados caixa-branca ajudam a descobrir por quê.

### Sintomas e causas

O capítulo diz que o monitoramento deve responder a duas perguntas: o que está quebrado e por quê. Aconselha concentrar os alertas nos sintomas, que são o que os usuários experimentam, e chamar alguém por causas apenas quando forem definidas e iminentes. Uma única máquina falhando é, nas palavras do capítulo de alertas, inaceitável de alertar, porque é barulhento demais. Esse é o cerne de uma boa abordagem de alertas: avise um humano quando os usuários estão ou estarão prejudicados, e não sempre que uma peça se mexe.

### Os quatro sinais dourados

O capítulo propõe quatro sinais para observar num sistema voltado ao usuário:

- **Latência:** o tempo para atender uma requisição. Acompanhe separadamente as requisições que falham, pois um "erro lento é ainda pior que um erro rápido".
- **Tráfego:** a demanda sobre o sistema.
- **Erros:** requisições que falham, de forma explícita, implícita ou por política.
- **Saturação:** quão "cheio" está o serviço. O desempenho muitas vezes se degrada antes de 100% de utilização.

Eles se mapeiam naturalmente aos indicadores de nível de serviço (veja Tópico 3.7 — Gestão de Níveis de Serviço). O capítulo também adverte que as médias escondem valores atípicos lentos e sugere registrar as contagens de requisições em faixas (buckets) de latência para ver a distribuição.

### O que faz um bom alerta

O capítulo oferece perguntas a fazer antes de escrever um alerta: ele detecta uma condição urgente, acionável e visível ao usuário; pode ser ignorado com segurança; a resposta pode ser automatizada? As chamadas devem ser acionáveis, exigir julgamento e dizer respeito a problemas novos. Diz que os alertas nunca devem disparar apenas porque "algo parece um pouco estranho". Chamadas cujas respostas são rotineiras e algorítmicas são, a seu ver, um sinal de alerta que pede automação ou reparo da causa raiz.

### Roteamento de alertas

O capítulo de alertas descreve enviar os alertas dignos de chamada ao pessoal de plantão, os subcríticos a filas de tickets e o resto a painéis de status. Descreve ferramentas para rotear, desduplicar e inibir alertas e observa que os alertas devem esperar uma duração mínima antes de disparar porque podem oscilar (flapping). Adverte que "você só consegue alertar sobre as falhas que esperava", razão pela qual combinar sondas caixa-preta com dados caixa-branca importa.

### Mantenha simples

O capítulo defende sistemas simples e rápidos em vez de "mágica" que aprende limiares ou detecta causalidade e observa que hierarquias complexas de dependências tiveram sucesso limitado. Diz para manter simples as regras que pegam incidentes reais, remover alertas raramente exercitados e sinais não usados e manter o custo de manutenção crescendo mais devagar que o tamanho do serviço. Os casos que descreve, como o de uma equipe sobrecarregada de alertas que afrouxou temporariamente seu objetivo e desativou os alertas por e-mail para liberar tempo para correções duradouras, mostram disposição de remover ruído.

### Painéis e visões de longo prazo

O capítulo trata os painéis como visões-resumo prontas das métricas-chave de um serviço e diz que os painéis são melhores que os alertas por e-mail, que considera de valor muito limitado. Recomenda também revisar a frequência de chamadas ao longo do tempo, por exemplo em relatórios trimestrais, para manter a liderança informada da carga do pager. Isso transforma a qualidade dos alertas em algo que os gestores podem ver (veja Tópico 1.2 — Princípios Ágeis sobre ritmo sustentável).

### Limites das fontes

Os capítulos de SRE não dão limiares além de um único exemplo trabalhado, não discutem runbooks nem limites de carga de plantão e não descrevem como revisar e aposentar alertas ao longo do tempo, então esses são assuntos da sua própria prática. Vêm de uma grande organização com fortes recursos de engenharia. Equipes menores podem aplicar os princípios com ferramentas mais simples.

## Boas práticas

1. **Monitore o que os usuários experimentam.** Acrescente ao menos uma sonda caixa-preta que execute uma ação real de usuário, como entrar ou fazer um pedido, e alerte quando ela falhar.
2. **Observe os quatro sinais dourados.** Para cada serviço, acompanhe latência, tráfego, erros e saturação. Acrescente outras medidas só se responderem a uma pergunta que você fez.
3. **Alerte sobre sintomas.** Chame alguém quando os usuários estão prejudicados ou logo estarão. Trate condições internas, como uma única máquina falha, como informação de menor prioridade a menos que sejam definidas e iminentes.
4. **Torne toda chamada acionável.** Antes de criar um alerta, escreva o que o responsável deve fazer. Se não há nada a fazer, não é uma chamada.
5. **Roteie por urgência.** Envie alertas urgentes ao plantão, os menos urgentes a uma fila de tickets e a informação a um painel. Não envie alertas por e-mail a pessoas que os ignorarão.
6. **Use distribuições, não só médias.** Olhe percentis altos de latência, ou faixas, para que os valores atípicos lentos fiquem visíveis.
7. **Defina uma duração mínima.** Exija que uma condição se mantenha por pouco tempo antes de alertar, para evitar oscilações. Ajuste a duração com dados reais.
8. **Aposente os alertas ruidosos.** Revise quais alertas mais disparam e não levaram a ação. Remova-os ou corrija-os. O capítulo de SRE trata as respostas rotineiras como sinal para automação ou reparo.
9. **Teste o seu monitoramento.** Quebre algo de propósito num ambiente de teste e confira se dispara o alerta certo. Inclua nas verificações o próprio sistema de monitoramento, para que sua falha seja notada.
10. **Revise a carga do pager.** Conte chamadas por turno, interrupções fora do horário e alarmes falsos a cada trimestre. Compartilhe os resultados com os gestores e use-os no planejamento.
11. **Mantenha o monitoramento na definição de pronto.** Para cada nova funcionalidade, pergunte que sinais mostram se ela funciona e que alerta, se algum, ela precisa (veja Tópico 3.5 — Gestão de Releases e Implantações).
12. **Mantenha simples.** Prefira poucas regras compreensíveis a um esquema complexo. Remova sinais não usados e revise as regras depois dos incidentes.

## Perguntas para discutir com a equipe

**Como descobrimos nossos últimos três incidentes?**

Liste cada incidente e como foi notado pela primeira vez: um alerta, um usuário, um colega. Se a maioria veio de usuários, o monitoramento está perdendo os sintomas que importam. Quem facilita pode perguntar o que uma sonda teria mostrado. Escolha uma ação de usuário para monitorar primeiro.

**Quais alertas ignoramos, e por quê?**

Pergunte aos engenheiros de plantão quais alertas eles silenciam ou pulam. Cada um é candidato a ser corrigido ou apagado. Pergunte o que faz as pessoas confiarem ou desconfiarem de um alerta. Uma resposta franca costuma revelar alertas que disparam por condições sobre as quais ninguém pode agir. Acorde aposentar ou consertar três.

**Qual foi a pior noite que tivemos de plantão, e o que a teria melhorado?**

Colete histórias sem atribuição de culpa. Procure padrões: chamadas repetidas, alertas pouco claros, falta de runbooks, nenhum escalonamento. Cada padrão é uma melhoria. Pergunte quais duas mudanças ajudariam mais. O objetivo é uma carga mais leve e um sinal mais claro.

**Se o nosso sistema de monitoramento falhasse, como saberíamos?**

Pergunte quem vigia o vigia. Muitas equipes não têm verificação de que o monitoramento funciona. Discuta um simples sinal de vida (heartbeat) ou uma sonda de um sistema separado. Acorde uma verificação a acrescentar.

**O que os nossos painéis mostram, e quem os olha?**

Liste os painéis e pergunte quem usou cada um no último mês. Painéis não usados são entulho; os úteis contam uma história sobre o serviço. Pergunte a que pergunta cada um responde. Mantenha um conjunto pequeno que responda a perguntas reais.

**Como saberíamos que um release piorou as coisas?**

Escolha um release recente e pergunte que sinal mostraria um problema. Se a resposta for "ouviríamos dos usuários", discuta que sinais observar depois de um release e quem é responsável. Esta pergunta liga o monitoramento à implantação. Escreva uma breve lista de verificação pós-release.

## Na prática: um exemplo de ITIL ágil

A autoridade de transporte público de uma cidade opera um site e um aplicativo de planejamento de viagens usados por 400.000 pessoas por dia. Uma equipe de plataforma de dez pessoas é dona do serviço, com uma escala de plantão de quatro. A equipe tem centenas de alertas: CPU de todos os servidores, espaço em disco, tamanhos de filas e contagens de erros. Os engenheiros de plantão recebem 40 chamadas numa semana típica, a maioria fora do expediente, e dois incidentes do último trimestre foram relatados primeiro por usuários nas redes sociais.

O líder da equipe e um engenheiro revisam três meses de chamadas. Descobrem que três quartos foram por condições que não exigiam ação ou que se resolveram sozinhas. Acordam seguir uma abordagem simples do livro de SRE: alertar sobre o que os usuários experimentam. Acrescentam uma sonda que planeja uma viagem padrão a cada minuto e mede êxito e rapidez, e mantêm um pequeno conjunto de alertas sobre a saturação do banco de dados e da fila. Movem o resto para um painel e um ticket diário. Cada chamada restante recebe uma breve entrada de runbook dizendo o que conferir.

Depois de um mês, as chamadas caem para cerca de cinco por semana, e os dois incidentes seguintes foram detectados pela sonda antes de os usuários reclamarem. Alguns problemas permanecem. A sonda cobre só um tipo de viagem, e uma falha que afetava viagens de bicicleta passou despercebida por um dia. Um engenheiro também relata que a decisão de "mover para o painel" escondeu um problema lento de disco que depois causou uma falha. A equipe acrescenta sondas para outros tipos de viagem, inclui na escala uma revisão diária do painel e acorda revisar a carga do pager a cada trimestre.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega sabem o que o software deve fazer e onde é provável que falhe. Embuta os sinais no código: logs úteis, métricas e verificações de saúde. Defina sondas para as ações-chave dos usuários e trate o monitoramento como parte do pronto. Participe das revisões de alertas para que as chamadas reflitam problemas reais.

### Equipes de serviço e operações

As equipes de operações carregam o pager e os painéis. Mantenha poucos alertas, acionáveis, roteie por urgência e acompanhe a carga do pager. Devolva alertas ruidosos às equipes donas deles, com evidências, e compartilhe o que aprende dos incidentes sobre o que observar.

### Liderança e governança

Os líderes devem pedir a carga do pager e dados de detecção de incidentes, e não mais alertas. Apoie o tempo para aposentar ruído e acrescentar sinais úteis. Trate um número crescente de chamadas fora do expediente como risco para o serviço e para as pessoas.

### Clientes e usuários

Clientes e usuários se beneficiam quando os problemas são achados antes de eles notarem. Relate problemas com detalhes, como o que você tentou e quando, pois isso ajuda a ajustar o monitoramento. Pergunte aos provedores como detectam falhas e com que rapidez e se publicam informação de status.

## Modos de falha comuns

- **Alertar sobre tudo.** O pager é constante e a confiança se perde. Em vez disso, chame por sintomas e envie o resto a tickets ou painéis.
- **Monitorar sistemas, não usuários.** Todas as máquinas estão verdes enquanto os usuários não conseguem entrar. Em vez disso, acrescente sondas caixa-preta de ações reais de usuários.
- **Nenhuma ação associada.** Chegam chamadas sem nada a fazer. Em vez disso, exija que cada chamada tenha uma resposta descrita, ou remova-a.
- **Só médias.** Um grupo de usuários sofre enquanto a média parece boa. Em vez disso, olhe percentis altos ou distribuições.
- **Regras complexas e engenhosas.** Limiares aprendidos e árvores de dependências confundem quem responde. Em vez disso, prefira regras simples e compreensíveis.
- **Monitoramento sem vigilância.** O sistema de monitoramento falha em silêncio. Em vez disso, confira-o com heartbeats e testes.
- **Respostas rotineiras.** As pessoas repetem a mesma correção depois de cada chamada. Em vez disso, automatize a resposta ou corrija a causa.
- **Ignorar a carga do pager.** Chamadas noturnas são tratadas como normais. Em vez disso, meça e revise, e trate a carga alta como risco.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Visibilidade da experiência do usuário | Os usuários relatam a maioria dos problemas | Alguns serviços têm sondas ou métricas de ações de usuários | As ações-chave dos usuários são sondadas e os sinais dourados são acompanhados em todo serviço | O tempo de detecção e a cobertura são medidos e as lacunas corrigidas | O monitoramento é compartilhado entre equipes, fornecedores e clientes |
| Qualidade dos alertas | Muitos alertas, pouca ação | Algumas equipes podam alertas | As chamadas são baseadas em sintomas, acionáveis e roteadas por urgência | A precisão e o ruído dos alertas são medidos e revisados | O desenho de alertas é aprimorado entre equipes com evidências compartilhadas |
| Resposta e automação | As respostas são improvisadas | Existem alguns runbooks | As chamadas ligam a runbooks e as respostas rotineiras são automatizadas | O tempo de resposta e o uso de automação são medidos | As respostas são coordenadas entre equipes e fornecedores |
| Pessoas e carga | A carga do pager não é acompanhada | Algumas equipes contam chamadas | A carga do pager é revisada a cada trimestre | A carga é equilibrada e reduzida com base em dados | Carga e aprendizado são compartilhados entre equipes e refletidos no planejamento |

## Lista de verificação

- [ ] Cada serviço importante tem ao menos uma sonda de uma ação real de usuário.
- [ ] Acompanhamos latência, tráfego, erros e saturação de cada serviço.
- [ ] Toda chamada tem uma resposta escrita e diz respeito a uma condição visível ao usuário ou iminente.
- [ ] Os alertas são roteados por urgência ao plantão, a tickets ou a painéis.
- [ ] Percentis altos ou distribuições são visíveis para a latência.
- [ ] Revisamos quais alertas mais disparam e aposentamos os que não levam a ação.
- [ ] O próprio sistema de monitoramento é verificado.
- [ ] A carga do pager (chamadas por turno, interrupções fora do expediente) é revisada a cada trimestre.
- [ ] As novas funcionalidades incluem monitoramento na definição de pronto.
- [ ] Depois de cada release, alguém confere os sinais contra uma lista curta.

## Prompts de IA

**Finalidade: revisar uma lista de alertas quanto a ruído e acionabilidade.**

```text
Here is a list of our alerts with how often each fired in the last [period], and what happened after (acted on, ignored, resolved by itself): [paste as a table; use real data].

Using only my data, group the alerts into: fired often with no action; fired and led to action; rarely fired. For each of the first group, suggest a question to ask its owner (for example whether it can be removed, routed to a ticket, or turned into a symptom-based alert). Do not invent frequencies or outcomes. Tell me what additional data would help, and list what you are unsure of.
```

**Finalidade: definir uma sonda para uma jornada do usuário.**

```text
Help me define a black-box probe for this user action in [service]: [describe, for example "a user searches for a journey and receives results"].

What counts as success: [describe].
What is too slow: [say "unknown" or describe in words, not numbers].
What systems the action touches: [list].

Describe the steps the probe should perform, what it should record (success, time taken, and where it failed), what alert condition to propose (leave thresholds as [to be agreed]), and what a responder would check first. Mark assumptions. Do not invent system details. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: escrever a seção de resposta de um alerta.**

```text
For this alert, write a short response entry for on-call staff.

Alert name and condition: [paste].
What it means for users: [describe].
What I know to check first: [list].
Who to escalate to: [role, or write "unknown"].

Write: what the alert means, the first three checks, how to tell whether users are affected, when to escalate, and a note on whether the response could be automated. Use only my information; mark anything you added as [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: preparar uma revisão trimestral da carga do pager.**

```text
Help me prepare a quarterly pager load review for [team].

Data for the quarter (pages by week, out-of-hours pages, pages with no action, incidents detected by monitoring versus by users): [paste real figures].
Context: [describe changes in the period].

Summarize the data in plain language, using only my figures. Highlight trends and outliers as questions, not conclusions. Suggest three questions for the team and one for management. Do not invent causes. If the data is incomplete, say what to collect. List what you are unsure of.
```

## Skills de IA

- [runbook](../../../../skills/runbook/SKILL.md): use para escrever a resposta que acompanha cada chamada.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): use para desenhar uma escala justa e planejar como a carga do pager é compartilhada e revisada.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): use para escolher e interpretar medidas de desempenho de serviço e de entrega.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): use para conferir latência e saturação sob carga antes que os problemas cheguem aos usuários.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): use para testar que as falhas são detectadas e tratadas, causando-as de propósito num ambiente seguro.

## Fontes principais

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): definições, os quatro sinais dourados, sintomas contra causas e conselhos sobre alertas simples.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): como regras de alerta, roteamento e oscilação funcionam na prática.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): a ligação entre indicadores, objetivos e alertas.
- **IT service management** (Wikipedia): o lugar do monitoramento e dos incidentes na ITSM.

## Referências

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
