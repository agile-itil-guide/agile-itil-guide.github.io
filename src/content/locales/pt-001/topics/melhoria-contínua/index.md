# Melhoria Contínua

**A melhoria contínua é o hábito de tornar serviços e modos de trabalhar um pouco melhores, uma vez após outra, e só se torna real quando o trabalho de melhoria é visível, tem responsável, é agendado e é conferido, como qualquer outro trabalho.**

## Por que isso importa

Toda prática deste guia termina no mesmo lugar: aprender com o que aconteceu e mudar algo. Os incidentes levam a problemas, os problemas levam a correções, as retrospectivas levam a experimentos e as revisões de níveis de serviço levam a novas metas. A melhoria contínua é a prática que os conecta e os mantém em movimento. Sem ela, cada prática produz percepções sobre as quais ninguém age.

Em muitas organizações, a melhoria é a primeira coisa a ser espremida. A pressão de entrega preenche todos os dias, e as ideias de melhoria se empilham num documento que ninguém abre. As equipes ágeis largam na frente, já que as retrospectivas são embutidas, mas retrospectivas que não produzem mudança são comuns. O teste de uma prática de melhoria contínua é simples: você consegue nomear três coisas que estão melhores neste trimestre por causa dela?

O [artigo da Wikipédia sobre o processo de melhoria contínua](https://en.wikipedia.org/wiki/Continual_improvement_process) o descreve como um esforço permanente para melhorar produtos, serviços ou processos, incremental ou de ruptura, com feedback, eficiência e evolução por pequenos passos como características-chave. O [artigo sobre o PDCA](https://en.wikipedia.org/wiki/PDCA) descreve o ciclo plan-do-check-act por trás de muitos métodos de melhoria. Ambos são gerais. O ITIL trata a melhoria contínua como componente do sistema de valor de serviço (veja Tópico 2.3 — O Sistema de Valor de Serviço do ITIL) e como prática, mas o texto do titular do framework não estava disponível para este guia, então este tópico não descreve em detalhe o modelo de melhoria do ITIL.

## Conceitos centrais

### O que é

Segundo a Wikipédia, um processo de melhoria contínua (CIP), também chamado de melhoria contínua (continuous improvement), é um esforço permanente para melhorar produtos, serviços ou processos. O artigo o descreve como um metaprocesso para sistemas de gestão como qualidade, gestão de projetos e de programas, com três características-chave: feedback, eficiência e evolução por pequenos passos incrementais. Credita a W. Edwards Deming o pioneirismo, que via o CIP como parte de um sistema que avalia o processo e o feedback do cliente contra as metas organizacionais.

### Continual ou contínuo

O artigo observa um ponto de terminologia: no fim da década de 1990, os desenvolvedores da ISO 9001:2000 mudaram "continuous" para "continual", ao que se diz porque o comitê preferia a melhoria passo a passo e achava que "continuous" poderia implicar mudança minuto a minuto. O ITIL usa "continual". Na prática, os termos são usados como intercambiáveis. O que importa é a melhoria regular e repetida.

### Kaizen

**Kaizen** é um termo japonês que significa mais ou menos "mudança para melhor". Segundo o artigo, o livro de Masaaki Imai de 1986, *Kaizen: The Key to Japan's Competitive Success*, o popularizou, e suas características incluem muitas pequenas mudanças, ideias de trabalhadores existentes, baixo custo e responsabilidade dos funcionários. Isso combina com as equipes ágeis, em que as pessoas que fazem o trabalho estão mais bem situadas para ver o que melhorar (veja Tópico 1.7 — Desenvolvimento Lean de Software).

### O ciclo PDCA

O PDCA (plan, do, check, act; planejar, fazer, verificar, agir) é, nas palavras da Wikipédia, um método iterativo para controlar e melhorar continuamente processos e produtos. É também chamado de ciclo de Shewhart, por Walter Shewhart, da Bell Telephone Laboratories, na década de 1920; W. Edwards Deming o modificou na década de 1940 e o aplicou à gestão no Japão na década de 1950. Os passos:

| Passo | O que você faz |
|---|---|
| **Planejar (Plan)** | Estabelecer objetivos e os processos necessários para entregar os resultados que você quer |
| **Fazer (Do)** | Executar o plano, de preferência em pequena escala |
| **Verificar (Check)** | Comparar os dados coletados com os resultados esperados e procurar tendências |
| **Agir (Act)** | Investigar as causas-raiz dos problemas, ajustar o processo e iniciar o próximo ciclo |

O artigo liga o PDCA ao método científico e ao seu padrão de hipótese, experimento e avaliação. Uma variante, o PDSA, substitui "check" por "study", que Deming preferia. O artigo diz que a iteração é central: cada ciclo refina o conhecimento. As equipes que chamam uma mudança de "experimento", com uma expectativa declarada e uma verificação, usam esse padrão.

### De onde vem a melhoria

As ideias de melhoria vêm de muitos lugares numa organização de serviço:

| Fonte | Exemplo | Onde é tratada |
|---|---|---|
| Incidentes e postmortems | Uma falha mostra um alerta faltante | Tópico 3.2 — Gestão de Incidentes |
| Investigação de problemas | Quedas repetidas mostram uma falha de design | Tópico 3.3 — Gestão de Problemas |
| Temas do service desk | A mesma pergunta aparece toda semana | Tópico 3.1 — Service Desk |
| Retrospectivas | A equipe acha lenta a sua passagem de bastão | Tópico 1.4 — Previsões de Entrega e Métricas de Planejamento |
| Dados de fluxo | Uma fila cresce num passo | Tópico 1.5 — Kanban |
| Feedback de clientes | Os usuários acham confuso um formulário | Tópico 3.6 — Gestão de Requisições de Serviço |
| Revisões de níveis de serviço | Uma meta é perdida repetidamente | Tópico 3.7 — Gestão de Níveis de Serviço |
| Auditorias e revisões de riscos | Um controle se revela fraco | Tópico 5.7 — Governança, Risco e Conformidade |

A prática de melhoria contínua reúne essas fontes numa lista visível, escolhe o que fazer e confere os resultados.

### Melhoria como trabalho

A disciplina central é tratar a melhoria como trabalho: itens num backlog com responsáveis, benefícios esperados e datas. Sem isso, a melhoria depende de entusiasmo e tempo livre. Isso também significa fazer às claras o compromisso com o trabalho de entrega, para que a capacidade seja protegida de forma deliberada. Um arranjo comum é reservar uma parcela de cada ciclo para melhoria, ou executar ciclos curtos de melhoria ao lado da entrega.

### Medir a melhoria

Para saber que algo melhorou, você precisa de um antes e um depois. Escolha uma medida relacionada à mudança, como tempo para restaurar o serviço, incidentes repetidos ou tempo de espera, e olhe-a antes e depois. Evite medidas fáceis de mover sem melhorar nada. Use várias e discuta o que os números significam (veja Tópico 5.6 — Métricas e Medição). Os artigos consultados não dão evidência sobre a eficácia de programas de melhoria, então os resultados das próprias equipes são a evidência.

### Métodos

Muitos métodos apoiam a melhoria: análise de causa-raiz, Six Sigma e DMAIC para a redução de defeitos baseada em dados, mapeamento do fluxo de valor e eventos kaizen. O artigo da Wikipédia sobre melhoria contínua não menciona Six Sigma, DMAIC nem o modelo de melhoria do ITIL, então este guia não os atribui a ele. Escolha métodos que combinem com o tamanho do problema: uma ação de retrospectiva para um pequeno atrito, um projeto baseado em dados para um defeito persistente.

### Limites

O artigo não registra críticas à melhoria contínua, e algumas de suas fontes são fracas ou antigas. Os riscos práticos são bem conhecidos: fadiga de melhoria quando chegam mudanças demais, teatro de melhoria em que as listas crescem e nada muda e otimização local em que uma equipe melhora a sua parte e piora o todo. Proteja-se com uma lista curta e visível e uma conferência regular dos resultados.

## Boas práticas

1. **Mantenha uma lista visível de melhorias.** Reúna num lugar as ideias de incidentes, retrospectivas, feedback e revisões. Dê a cada item um responsável, o problema que trata e o benefício esperado.
2. **Trate os itens de melhoria como trabalho.** Ponha-os no backlog junto com os itens de entrega e decida no planejamento quanta capacidade recebem. Proteja essa parcela quando a pressão subir.
3. **Escolha poucos e termine-os.** Trabalhe nos um a três itens mais valiosos por vez. Uma longa lista de itens iniciados é sinal de teatro de melhoria.
4. **Use o ciclo.** Para cada mudança, declare o plano e o resultado esperado, faça a mudança em pequena escala, confira os dados e decida se vai adotar, ajustar ou abandonar. Escreva a decisão.
5. **Defina o sucesso antes de começar.** Escolha a medida e o que espera ver, antes da mudança. Isso evita explicar depois qualquer resultado como um sucesso.
6. **Comece pequeno e local.** Deixe as equipes melhorarem o próprio trabalho sem esperar permissão, dentro de limites claros. Reserve programas maiores para problemas que cruzam equipes.
7. **Compartilhe o que aprende.** Publique notas curtas sobre o que mudou e o que aconteceu, inclusive as falhas. Outras equipes podem reutilizar ou evitar.
8. **Olhe o sistema inteiro.** Antes de adotar uma melhoria, pergunte a quem ela afeta. Um ganho local que acrescenta trabalho a outra equipe não é uma melhoria no geral (veja Tópico 2.4 — Os Princípios Orientadores do ITIL sobre pensar de forma holística).
9. **Revise a lista regularmente.** Uma vez por mês, olhe a lista com a equipe e o responsável pelo serviço: o que está feito, o que está travado, o que deve ser abandonado. Remova os itens que perderam o sentido.
10. **Celebre resultados, não atividade.** Reconheça melhorias que deixaram as coisas melhores para usuários ou funcionários, com evidências. Não premie o número de ideias ou reuniões.
11. **Combine o método com o problema.** Use experimentos rápidos para pequenos problemas, métodos baseados em dados para defeitos persistentes e traga ajuda especializada para os complexos.
12. **Envolva usuários e fornecedores.** Pergunte a eles o que melhorar e convide-os a revisar resultados onde forem afetados (veja Tópico 3.14 — Gestão de Fornecedores).

## Perguntas para discutir com a equipe

**O que melhorou no último trimestre por causa de algo que decidimos mudar?**

Peça exemplos específicos, com evidências. Se as pessoas têm dificuldade, esse é o achado. Se há exemplos, pergunte o que os fez funcionar: um responsável, tempo, uma medida clara. Compare com melhorias que empacaram. Quem facilita pode perguntar qual padrão é mais comum na sua equipe.

**Para onde vão as nossas ideias de melhoria?**

Rastreie várias ideias recentes: de uma revisão de incidente, de uma retrospectiva, de um comentário de cliente. Descubra onde cada uma foi parar. Muitas vezes estão espalhadas por documentos e tickets. Discuta uma lista única, quem a mantém e como é revisada. Crie a primeira versão na sessão.

**Quanto da nossa capacidade vai para melhoria, e quem decidiu?**

Olhe os últimos ciclos e estime a parcela. Muitas vezes é bem menor do que as pessoas acreditam, e ninguém a escolheu. Pergunte o que a equipe e os gestores acham que deveria ser. Acorde uma parcela inicial e um modo de protegê-la.

**Quais das nossas mudanças conferimos depois?**

Pergunte sobre as últimas três mudanças e que evidência mostrou que funcionaram. Muitas nunca foram conferidas. Discuta um hábito simples: antes da mudança, declare o que espera ver e quando vai olhar. Escolha uma mudança atual para aplicá-lo.

**Que melhoria nos ajudou e prejudicou outra pessoa?**

Reúna exemplos de melhorias locais que empurraram um problema para outro lugar. Costumam vir de mudanças em passagens de bastão ou aprovações. Discuta como perguntar mais cedo às pessoas afetadas. O objetivo é uma pergunta simples a fazer antes de uma mudança.

**Qual é o item mais antigo da nossa lista de melhorias, e por que ainda está lá?**

Escolha o item mais antigo e rastreie sua história. Os motivos incluem falta de responsável, falta de tempo, desacordo ou ter sido superado pelos eventos. Decida fazê-lo, agendá-lo ou abandoná-lo abertamente. Abandonar um item de propósito é sinal de uma lista saudável.

## Na prática: um exemplo de ITIL ágil

Uma companhia regional de água tem uma plataforma de faturamento de clientes e leitura de medidores operada por uma equipe de onze pessoas. As retrospectivas são feitas a cada duas semanas e produzem listas de ações, mas poucas são concluídas. Os incidentes são revisados, e as ações dessas revisões são registradas num sistema separado. O regulador da companhia pediu evidências de como ela aprende com as falhas de serviço.

A responsável pelo serviço e o líder da equipe decidem tornar a melhoria visível. Criam uma lista única de melhorias que reúne ações de retrospectivas, revisões de incidentes e feedback de clientes. Cada item tem um responsável, uma declaração do problema, o benefício esperado e uma medida. Reservam 15% de cada ciclo de duas semanas para itens de melhoria e limitam a três o número em andamento. Para cada um, seguem planejar, fazer, verificar e agir: escrevem o que esperam ver, testam a mudança num subconjunto, olham os números depois de um período definido e registram a decisão. Uma revisão mensal com a responsável pelo serviço e um representante do atendimento ao cliente olha o que foi feito e o que foi aprendido.

Depois de seis meses, a equipe concluiu nove itens, incluindo uma correção para uma falha repetida na importação de dados dos medidores, que reduziu a quase zero os incidentes repetidos por essa causa, e uma explicação mais clara da fatura, que reduziu as ligações sobre o tema. Tem também evidências para o regulador na forma da lista e das conferências. Algumas dificuldades permanecem. Dois itens foram concluídos sem ser conferidos porque o ciclo seguiu adiante, e uma melhoria no processo de importação tornou mais lento o trabalho de uma equipe de relatórios a jusante, o que só veio à tona um mês depois. A equipe acrescenta ao modelo da lista a pergunta "quem mais é afetado" e um lembrete de calendário para cada conferência.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega são donas de boa parte da lista de melhorias. Traga as ideias das retrospectivas e dos incidentes para um só lugar, termine o que começar e confira os resultados. Esteja disposto a gastar capacidade em melhoria em vez de apenas em novas funcionalidades.

### Equipes de serviço e operações

As equipes de operações veem o atrito primeiro. Alimente a lista com temas de incidentes, contatos do desk e dados de fluxo e participe da conferência dos resultados. Defenda melhorias que reduzam o toil e os incidentes repetidos.

### Liderança e governança

Os líderes protegem a capacidade para a melhoria e perguntam pelos resultados. Pergunte o que melhorou e como foi conferido, não quantas ideias existem. Remova os obstáculos que as equipes nomearem e mostre que o fez. Apoie melhorias que cruzam as fronteiras das equipes.

### Clientes e usuários

Clientes e usuários fornecem algumas das melhores ideias. Diga à equipe o que o frustra e peça para saber o que mudou em consequência. Participe das revisões em que o seu serviço for tratado. Seu feedback sobre se uma mudança ajudou é a conferência mais direta que existe.

## Modos de falha comuns

- **Ideias sem responsáveis.** A lista cresce e nada é feito. Em vez disso, exija um responsável e um benefício esperado para cada item.
- **Melhoria como tempo livre.** A entrega a expulsa. Em vez disso, reserve capacidade e proteja-a.
- **Muita coisa ao mesmo tempo.** Tudo é iniciado e pouco é terminado. Em vez disso, limite o trabalho em andamento dos itens de melhoria.
- **Nenhuma conferência.** As mudanças são adotadas porque foram planejadas. Em vez disso, declare o resultado esperado de antemão e olhe os dados.
- **Otimização local.** Uma equipe melhora e outra sofre. Em vez disso, pergunte antes e depois quem mais é afetado.
- **Teatro de melhoria.** Workshops e cartazes substituem resultados. Em vez disso, conte as melhorias concluídas e verificadas.
- **Medidas que podem ser manipuladas.** O número se move e nada melhora. Em vez disso, use várias medidas e olhe o trabalho subjacente.
- **Esquecer de compartilhar.** As lições ficam com a equipe. Em vez disso, publique notas curtas e convide outros a reutilizá-las.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Coletar e priorizar | As ideias são dispersas e sem prioridade | Algumas equipes mantêm listas | Uma lista visível por equipe, com responsáveis e benefícios esperados | As prioridades usam dados de impacto e esforço | As listas de melhorias são alinhadas entre equipes e com os clientes |
| Capacidade e fluxo | A melhoria é feita em tempo livre | Alguma capacidade é reservada | Uma parcela protegida da capacidade e limites ao trabalho em andamento | A capacidade e a vazão da melhoria são revisadas | A capacidade é compartilhada entre equipes para melhorias transversais |
| Conferir resultados | Os resultados não são conferidos | Algumas mudanças são revisadas | Cada mudança tem uma expectativa declarada e uma conferência | Os resultados são medidos e ligados a decisões | A evidência é compartilhada entre equipes e usada para orientar a organização |
| Aprendizado e difusão | As lições ficam locais | Algumas notas são compartilhadas | As lições são publicadas e revisadas | A reutilização de melhorias é acompanhada | As melhorias se espalham rotineiramente entre equipes e fornecedores |

## Lista de verificação

- [ ] Temos uma lista visível de melhorias, com responsáveis e benefícios esperados.
- [ ] Ideias de retrospectivas, revisões de incidentes, temas do desk e feedback alimentam a lista.
- [ ] Uma parcela protegida de cada ciclo vai para itens de melhoria.
- [ ] Limitamos o número de itens de melhoria em andamento.
- [ ] Cada mudança declara um resultado esperado e um prazo para conferi-lo.
- [ ] Conferimos os resultados e registramos a decisão de adotar, ajustar ou abandonar.
- [ ] Perguntamos quem mais é afetado antes de fazer uma mudança.
- [ ] A lista é revisada ao menos mensalmente.
- [ ] Compartilhamos notas curtas sobre o que mudou e o que aprendemos.
- [ ] Sabemos nomear três coisas que estão melhores neste trimestre por causa do trabalho de melhoria.

## Prompts de IA

**Finalidade: consolidar ideias de melhoria numa única lista priorizada.**

```text
Here are improvement ideas from several sources over the last [period]: [paste items from retrospectives, incident reviews, desk themes, and feedback, one per line, with their source].

Merge duplicates, group related items, and produce a list with: a one-line problem statement for each, the source, what benefit it might bring (use only what the text implies, otherwise write "unknown"), and a question about effort. Do not rank by guesswork; instead propose a way to rank (for example by repeat count and user impact) and apply it only to data I gave. List what you are unsure of.
```

**Finalidade: transformar uma ideia de melhoria num pequeno experimento.**

```text
Help me turn this improvement idea into a small experiment using plan, do, check, act.

The idea: [describe].
The problem it addresses, with evidence: [paste facts].
Who is affected: [list teams and users].
Measures we already have: [list].

Write: a hypothesis in one sentence, the smallest change that could test it, how long to run it, what we will measure before and after (leave targets as [to be agreed]), who else to ask before we start, and what decision rule we will use at the end. Do not invent baseline data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: revisar o estado de uma lista de melhorias.**

```text
Here is our improvement list with status, owner, age, and expected benefit: [paste].

Using only this text, identify: items with no owner; items older than [period] with no progress; items whose expected benefit is unclear; and items that look related and could be combined. For each, suggest a question to ask at the monthly review. Do not decide for us what to drop. List what you are unsure of.
```

**Finalidade: conferir se uma melhoria funcionou.**

```text
We made this change: [describe] on [date].

Measure before the change, with dates and values: [paste real data].
Measure after, with dates and values: [paste real data].
What else changed in the same period: [list, or write "unknown"].

Describe in plain words what the data shows, without claiming the change caused it if other changes could explain it. Suggest additional checks, and say whether the data is enough to decide to adopt, adjust, or drop. Do not invent numbers or statistics. List what you are unsure of.
```

## Skills de IA

- [kaizen](../../../../skills/kaizen/SKILL.md): use para planejar e revisar melhorias pequenas e contínuas.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use para conduzir retrospectivas que produzam ações com responsáveis.
- [dmaic](../../../../skills/dmaic/SKILL.md): use para a melhoria baseada em dados de defeitos persistentes, por meio de definir, medir, analisar, melhorar e controlar.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): use quando a variação e os defeitos são o principal problema e você precisa de uma abordagem estatística.
- [futurespective](../../../../skills/futurespective/SKILL.md): use para olhar adiante em conjunto e acordar melhorias para o próximo período.

## Fontes principais

- **Continual improvement process** (Wikipedia): a definição, o kaizen, o PDCA e a terminologia continual contra contínuo.
- **PDCA** (Wikipedia): o ciclo plan-do-check-act, suas origens e variantes como o PDSA.
- **Kaizen** (Wikipedia): contexto sobre a melhoria pequena e contínua e suas origens na indústria japonesa.
- **Lean software development** (Wikipedia): as ideias lean por trás da melhoria contínua no trabalho de software.

## Referências

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
