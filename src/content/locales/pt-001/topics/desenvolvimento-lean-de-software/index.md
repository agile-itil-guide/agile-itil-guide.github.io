# Desenvolvimento Lean de Software

**O desenvolvimento lean de software aplica ao trabalho com software as ideias lean de eliminar desperdício, aprender depressa e otimizar o sistema inteiro, e dá às equipes de serviço uma maneira comum de ver onde o tempo e o esforço vazam do fluxo entre o pedido e o valor.**

## Por que isso importa

Os métodos ágeis dizem para entregar em pequenos passos e aprender. O lean faz uma pergunta mais afiada: para onde vai o tempo? Na maioria das organizações de serviço, o tempo de trabalho efetivo num pedido é uma pequena parte do tempo decorrido. O resto é espera por aprovações, passagens de bastão entre equipes, retrabalho por defeitos e trabalho que ninguém queria desde o início. O lean dá palavras e ferramentas para ver esse desperdício e removê-lo.

O lean também põe o foco no sistema inteiro. Uma equipe que acelera a sua própria parte enquanto a fila antes ou depois dela cresce não melhorou nada para o cliente. Essa visão combina bem com a gestão de serviços. Um serviço é a soma de muitas equipes, ferramentas e fornecedores, e um atraso em qualquer ponto é um atraso para o usuário. O princípio "otimizar o todo" é um lembrete permanente para olhar o fluxo de ponta a ponta.

O lean é a fonte de boa parte do que aparece em outros pontos deste guia. O Kanban bebe nas mesmas raízes (veja Tópico 1.5 — Kanban), a gestão do fluxo de valor aplica o mapeamento lean ao trabalho digital (veja Tópico 5.4 — Gestão do Fluxo de Valor) e a melhoria contínua ecoa o hábito lean de pequenos ganhos constantes (veja Tópico 3.15 — Melhoria Contínua). Este tópico explica as ideias e como usá-las sem transformá-las em lemas.

## Conceitos centrais

### De onde vem o lean

Segundo o [artigo da Wikipédia sobre manufatura enxuta](https://en.wikipedia.org/wiki/Lean_manufacturing), o lean nasceu do [Sistema Toyota de Produção](https://en.wikipedia.org/wiki/Toyota_Production_System). Depois da Segunda Guerra Mundial, os fabricantes japoneses tinham pouco dinheiro, espaço e matéria-prima, e Taiichi Ohno e Shigeo Shingo redesenharam o processo da Toyota em torno de pequenas fábricas e baixo estoque, apoiando-se no ensino de W. Edwards Deming. John Krafcik cunhou o termo "lean" num artigo de 1988, e James Womack e Daniel Jones o definiram formalmente no livro *Lean Thinking*, de 1996.

O termo "desenvolvimento lean de software" vem do livro de 2003 *Lean Software Development: An Agile Toolkit*, de Mary e Tom Poppendieck, segundo o [artigo da Wikipédia sobre desenvolvimento lean de software](https://en.wikipedia.org/wiki/Lean_software_development). O livro adapta os princípios da manufatura enxuta ao software e compara as ferramentas lean com as práticas ágeis. As palestras dos Poppendieck em conferências ágeis ajudaram a levar as ideias à comunidade ágil.

### Cinco princípios do pensamento lean

Womack e Jones estabeleceram cinco princípios do pensamento lean, como o artigo sobre manufatura os registra:

1. **Valor:** definir o valor do ponto de vista do cliente.
2. **Fluxo de valor:** identificar toda a sequência de passos que cria esse valor e questionar os passos que não acrescentam nenhum.
3. **Fluxo:** fazer os passos restantes fluírem sem interrupção.
4. **Puxar:** deixar a demanda do cliente puxar o trabalho pelo sistema, em vez de empurrá-lo.
5. **Perfeição:** continuar melhorando, de modo que o desperdício continue sendo removido.

### Sete princípios para software

O artigo da Wikipédia sobre desenvolvimento lean de software lista sete princípios para software:

| Princípio | O que pede | No trabalho com serviços |
|---|---|---|
| **Eliminar o desperdício** | Remover tudo que não acrescenta valor para o cliente | Abandonar aprovações que nunca recusam, relatórios que ninguém lê e recursos que ninguém usa |
| **Amplificar o aprendizado** | Encurtar o ciclo entre tentar algo e aprender como foi | Lançar mudanças pequenas e observar o que os usuários fazem |
| **Decidir o mais tarde possível** | Adiar compromissos até ter fatos, mantendo as opções abertas | Não fixar o design do futuro completo de um serviço antes de saber como ele é usado |
| **Entregar o mais rápido possível** | Reduzir o tempo entre a ideia e o valor; a entrega rápida permite ver e analisar os resultados mais cedo | Encurtar o caminho de mudanças pequenas e requisições de rotina |
| **Dar autonomia à equipe** | Deixar as pessoas que fazem o trabalho tomarem decisões sobre ele | Dar ao service desk autoridade para resolver problemas comuns sem escalar |
| **Embutir a integridade** | Embutir qualidade à medida que o trabalho é feito, em vez de inspecioná-la depois | Testes automatizados, monitoramento e runbooks claros como parte do trabalho |
| **Otimizar o todo** | Melhorar o fluxo de ponta a ponta, não o desempenho de uma parte | Medir o tempo entre pedido e resolução entre equipes, não a fila de cada equipe |

O artigo diz que esses princípios só têm êxito quando aplicados em conjunto e com bom discernimento sobre o ambiente. Chama também de mito a crença de que "a pressa é inimiga da perfeição", argumentando que a entrega rápida ajuda as equipes a ver e analisar os resultados mais cedo. Essa afirmação é uma opinião, não uma lei: velocidade sem qualidade embutida de fato produz desperdício, e é por isso que "embutir a integridade" fica ao lado de "entregar o mais rápido possível".

### Desperdício no software e no trabalho com serviços

Os sete desperdícios do lean (chamados *muda*) vêm da lista de Shingo para a manufatura: estoque, superprodução, processamento excessivo, transporte, movimento excessivo, espera e defeitos. O artigo sobre lean de software os mapeia para o software assim:

| Desperdício da manufatura | Equivalente em software | Exemplo numa equipe de serviço |
|---|---|---|
| Estoque | Trabalho parcialmente feito | Uma longa lista de mudanças iniciadas mas não concluídas |
| Superprodução | Recursos extras | Um relatório ou serviço que ninguém pediu |
| Processamento excessivo | Processos extras | Quatro aprovações para uma mudança de baixo risco |
| Transporte | Troca de tarefas | Um engenheiro puxado entre incidentes e trabalho de projeto |
| Espera | Espera | Um ticket esperando a fila de outra equipe |
| Movimento | Repasses | Um pedido que passa por cinco pessoas |
| Defeitos | Defeitos | Um bug que causa retrabalho e incidentes repetidos |

Os termos japoneses *mura* (irregularidade) e *muri* (sobrecarga) às vezes são acrescentados às discussões sobre desperdício. Os artigos da Wikipédia consultados aqui listam apenas os sete desperdícios, então use os termos extras com cuidado e defina-os ao fazê-lo.

### Mapeamento do fluxo de valor

O artigo sobre lean de software nomeia o mapeamento do fluxo de valor como a técnica para encontrar desperdício, com o desperdício removido em rodadas repetidas. Um mapa mostra cada passo no caminho do pedido ao valor entregue, com o tempo que o trabalho passa sendo trabalhado e o tempo que passa esperando. O resultado muitas vezes é um choque: um caminho que leva semanas pode conter horas de trabalho efetivo.

### Puxar, fluxo e kanban

O princípio lean de puxar está por trás dos limites de trabalho em andamento do Kanban. O artigo sobre software descreve o desenvolvimento just-in-time, em que o cliente declara o resultado necessário e a equipe organiza as próprias tarefas, puxando trabalho conforme a capacidade permite. Os cartões kanban são uma forma visível desse puxar (veja Tópico 1.5 — Kanban).

### Kaizen: melhoria pequena e constante

Kaizen significa melhoria contínua e incremental. O artigo sobre manufatura o remonta a equipes de melhoria na Toyota em 1936. Numa equipe de serviço, aparece como pequenas mudanças feitas com frequência e pelas pessoas mais próximas do trabalho, como um modelo revisado, uma nova verificação automatizada ou uma passagem de bastão mais clara. Difere dos grandes programas de melhoria porque nunca espera um ciclo orçamentário.

### Limites do lean

Os artigos consultados não nomeiam críticas formais, mas os limites práticos são bem conhecidos. O lean nasceu da manufatura repetível, e o trabalho do conhecimento varia muito mais. Contar desperdício pode reduzir a folga de que uma equipe precisa para lidar com surpresas, de modo que uma equipe totalmente carregada responde devagar a um incidente. Trate o lean como uma lente que encontra desperdício e mantenha capacidade sobressalente onde a variação é alta (veja Tópico 3.11 — Disponibilidade, Capacidade e Desempenho).

## Boas práticas

1. **Defina o valor do lado do cliente.** Para cada serviço, escreva o que o usuário de fato recebe e quando. Use isso para julgar cada passo: ele acrescenta valor para o usuário ou só serve ao nosso próprio processo?
2. **Mapeie o fluxo de valor de um tipo real de pedido.** Escolha um pedido ou mudança comum e rastreie-o do primeiro contato à entrega. Registre o tempo de trabalho e o tempo de espera em cada passo. Um mapa rústico desenhado em uma hora é mais útil que um perfeito desenhado em um trimestre.
3. **Dê nome aos desperdícios que encontrar.** Use as sete categorias como lista de verificação: trabalho parcialmente feito, recursos extras, processo extra, troca de tarefas, espera, repasses, defeitos. Nomeá-los facilita discuti-los sem culpar indivíduos.
4. **Ataque primeiro a espera mais longa.** O maior atraso do mapa costuma estar entre os passos, não dentro deles. Reduzi-lo costuma valer mais que polir um passo que já é rápido.
5. **Limite o trabalho em andamento.** Terminar o trabalho é mais rápido que fazer malabarismo com ele. Limite o número de itens abertos por equipe e observe o que acontece com o tempo que cada um leva.
6. **Embuta a qualidade.** Acrescente verificações no momento do trabalho, como testes automatizados, revisão por pares e monitoramento pré-release, para que os defeitos sejam encontrados cedo. Inspecionar no fim é mais lento e mais caro.
7. **Adie decisões que ainda não consegue tomar bem.** Mantenha as opções abertas até ter fatos, mas fixe uma data até a qual decidirá. Isso evita tanto o compromisso precoce com um design errado quanto a indecisão sem fim.
8. **Dê autonomia às pessoas mais próximas do trabalho.** Deixe analistas do service desk, engenheiros de plantão e desenvolvedores tomarem decisões dentro de limites claros. Declare os limites, como patamares de gasto ou de risco, e revise-os após incidentes.
9. **Olhe para o todo, não para a parte.** Meça o tempo de ponta a ponta entre pedido e resolução e discuta-o com todas as equipes envolvidas. Uma mudança que ajuda uma equipe e retarda outra não é melhoria.
10. **Faça a melhoria pequena, frequente e local.** Estimule cada equipe a fazer uma pequena melhoria a cada uma ou duas semanas e a compartilhar o que aprendeu. Registre a mudança e seu resultado.
11. **Mantenha folga onde a variação é alta.** Não preencha todas as horas de uma equipe de plantão. Deixe capacidade para surpresas e julgue-a pela rapidez com que a equipe se recupera quando algo dá errado.
12. **Use o lean com outras práticas.** Combine mapas de fluxo de valor com medidas de fluxo do Kanban e com a gestão de problemas para defeitos recorrentes (veja Tópico 3.3 — Gestão de Problemas).

## Perguntas para discutir com a equipe

**Se acompanhássemos um pedido comum do início ao fim, quanto do tempo decorrido seria trabalho efetivo?**

Escolha um pedido típico e reúna as datas de cada passo. Marque o tempo em que alguém trabalhava nele e o tempo em que ficou numa fila. A proporção costuma ser um choque. Pergunte às pessoas onde esperavam que estivessem as esperas e onde realmente estavam. Quem facilita deve resistir a soluções no início e pedir ao grupo que concorde sobre o que o mapa mostra.

**Qual dos sete desperdícios vemos com mais frequência no nosso trabalho diário?**

Dê a lista às pessoas e peça um exemplo recente de cada um. Espere que trabalho parcialmente feito, troca de tarefas, espera e repasses apareçam com frequência. Pergunte quais a equipe pode mudar sozinha e quais precisam de outras equipes ou gestores. Feche escolhendo um desperdício a reduzir neste mês.

**O que fazemos que nossos clientes não sentiriam falta se parássemos?**

Liste relatórios, reuniões, formulários e aprovações. Para cada um, pergunte quem o usa e o que acontece se parar. Alguns serão necessários para auditoria ou segurança, o que é um bom motivo. Outros se revelarão hábito. Designe alguém para conferir cada item duvidoso antes de removê-lo.

**Onde inspecionamos a qualidade no fim em vez de embuti-la?**

Olhe os seus processos de release, mudança e incidente em busca de verificações no fim da linha. Pergunte que defeitos essas verificações encontram e quando poderiam ter sido encontrados antes. Respostas típicas incluem testar depois que o desenvolvimento termina e revisar documentos depois do fato. Escolha uma verificação para antecipar e descreva como saberá se ajudou.

**Quem pode tomar decisões na nossa equipe sem perguntar, e quem deveria?**

Peça às pessoas que listem as últimas cinco decisões que queriam tomar e não puderam, e por quê. Procure padrões, como limites de gasto, aprovações de mudanças ou decisões de prioridade. Pergunte o que tornaria seguro aproximar uma dessas decisões do trabalho, como uma proteção embutida ou uma revisão posterior. Não force um sim; o objetivo é descobrir o que as pessoas acreditam ser necessário.

**Se tudo o que fazemos agora ficasse mais rápido, o que quebraria primeiro?**

Esta pergunta testa "entregar o mais rápido possível" e "embutir a integridade" juntos. Pergunte onde um fluxo mais rápido sobrecarregaria uma equipe, uma ferramenta ou uma pessoa. Respostas típicas são testes, aprovações e carga de plantão. Trate as respostas como as próximas coisas a melhorar. Lembre que o lean valoriza o fluxo do sistema inteiro, então o gargalo é onde investir.

## Na prática: um exemplo de ITIL ágil

O departamento de TI de uma agência tributária nacional opera um serviço interno para que os funcionários peçam acesso a software. Um pedido típico leva cerca de três semanas, e os funcionários reclamam alto. A equipe de cinco que atende os pedidos acredita que trabalha duro e se surpreende com a reclamação.

Um gerente conduz uma sessão de mapeamento do fluxo de valor com a equipe, o grupo de segurança e dois usuários de negócio. Juntos, rastreiam dez pedidos recentes. Cada pedido passa por oito passos: envio do formulário, aprovação do gestor imediato, aprovação do dono dos dados, revisão de segurança, verificação de licença, atribuição do ticket, instalação e confirmação. O mapa mostra que o trabalho efetivo leva cerca de uma hora e que quase todas as três semanas são espera entre passos, sobretudo pelas duas aprovações e pela revisão de segurança. Em três dos dez casos, o pedido foi devolvido ao usuário por falta de um campo no formulário.

O grupo concorda com três mudanças. O formulário ganha campos obrigatórios e um breve guia, o que elimina as devoluções. Pedidos de uma lista curta de aplicações comuns e de baixo risco recebem uma única aprovação do gestor imediato, com o dono dos dados informado. O grupo de segurança concorda em revisar uma amostra desses pedidos toda semana, em vez de cada pedido antes da instalação. Depois de dois meses, o tempo típico cai para cerca de uma semana. Uma dificuldade permanece: pedidos de aplicações sensíveis ainda levam três semanas, e o grupo de segurança observa que a amostragem pegou dois pedidos que deveriam ter sido recusados. Ajustam a lista de aplicações elegíveis à aprovação rápida e decidem revisá-la a cada trimestre.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega podem usar o lean para olhar além do próprio sprint ou quadro. Mapeie o caminho de uma ideia até as mãos do usuário, incluindo testes, revisão de segurança e aprovações de release, e encontre onde o trabalho espera. Trate o trabalho inacabado como desperdício e prefira terminar a começar.

### Equipes de serviço e operações

As equipes de operações veem desperdício todos os dias: incidentes repetidos, repasses entre camadas e pedidos que voltam. Use mapas para mostrar onde o trabalho espera e use a gestão de problemas para remover as causas das repetições. Defenda a capacidade sobressalente mostrando o que acontece com o fluxo quando cada hora é planejada.

### Liderança e governança

Os líderes moldam o sistema que cria a maior parte do desperdício: regras de aprovação, ciclos de financiamento e relatórios. Pergunte às suas equipes onde essas regras custam mais tempo e contra que risco cada uma protege. Esteja pronto para trocar um controle por uma verificação mais leve que atenda ao mesmo propósito.

### Clientes e usuários

Os clientes definem o valor no pensamento lean e sentem o desperdício como atraso. Espere ser perguntado do que realmente precisa e com que rapidez. Diga à equipe que parte de um serviço mais importa para você, já que isso orienta para onde vai o esforço. Em troca, espere esperas mais curtas e previsíveis.

## Modos de falha comuns

- **Cortar capacidade em nome do desperdício.** As equipes trabalham em carga total e não conseguem responder a surpresas. Em vez disso, mantenha folga onde a variação é alta e julgue pela rapidez de recuperação da equipe.
- **Mapear sem agir.** O mapa do fluxo de valor vai para a parede e nada muda. Em vez disso, escolha a maior espera e acorde uma mudança com responsável antes de a sessão terminar.
- **Otimizar uma equipe.** Um ganho local move a fila para outro lugar. Em vez disso, meça o tempo de ponta a ponta e acorde mudanças com todas as equipes do fluxo.
- **Remover controles sem entendê-los.** Um passo que parecia desperdício protegia contra um risco real. Em vez disso, pergunte o que cada passo protege e troque-o por uma verificação mais leve quando puder.
- **Usar palavras do lean como lemas.** As pessoas dizem "desperdício" para desqualificar o trabalho de colegas. Em vez disso, use os termos para descrever o fluxo e mantenha a conversa sobre o sistema.
- **Priorizar velocidade sobre qualidade.** Entrega mais rápida produz mais defeitos e retrabalho. Em vez disso, trate "embutir a integridade" como pré-condição da velocidade.
- **Aplicar números da manufatura ao trabalho do conhecimento.** Metas de uma fábrica não servem ao trabalho variável. Em vez disso, use o lean como modo de ver e perguntar e defina medidas a partir dos seus próprios dados.
- **Tratar o lean como projeto pontual.** Os ganhos se esvaem quando a atenção se move. Em vez disso, faça das pequenas melhorias parte da rotina de cada equipe.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Enxergar o desperdício | O desperdício é sentido, mas não descrito | Algumas equipes mapeiam o próprio trabalho | As equipes usam categorias de desperdício comuns e mapas de fluxo de valor | Espera e retrabalho são medidos ao longo do fluxo de valor | Mapas e medidas atravessam equipes e fornecedores |
| Fluxo e puxar | O trabalho é empurrado e iniciado em lote | Algumas equipes limitam o trabalho em andamento | Regras de puxar e limites são padrão | As medidas de fluxo orientam mudanças nos limites e nas políticas | O fluxo é coordenado em todo o fluxo de valor |
| Embutir a qualidade | A qualidade é inspecionada no fim | Algumas equipes testam e revisam o trabalho cedo | Verificações automatizadas e revisões embutidas são padrão | As taxas de escape de defeitos são acompanhadas e reduzidas | As práticas de qualidade são compartilhadas e aprimoradas entre equipes |
| Melhoria contínua | A melhoria segue crises | Algumas equipes fazem pequenas mudanças regulares | Toda equipe tem uma rotina regular de melhoria | As melhorias são acompanhadas e seu efeito conferido | As melhorias circulam entre equipes e fornecedores de forma rotineira |

## Lista de verificação

- [ ] Definimos o que valor significa, do lado do usuário, para pelo menos um serviço.
- [ ] Mapeamos o fluxo de valor de um tipo comum de pedido, com tempo de trabalho e tempo de espera.
- [ ] A equipe sabe nomear os sete desperdícios e dar um exemplo recente de cada um.
- [ ] O trabalho em andamento é limitado, e o trabalho inacabado é visível.
- [ ] As verificações de qualidade acontecem durante o trabalho e também no fim.
- [ ] Escolhemos ao menos uma espera a reduzir, com responsável e data.
- [ ] A equipe tem limites claros para as decisões que pode tomar sem perguntar.
- [ ] Medimos o tempo de ponta a ponta de pelo menos um fluxo entre equipes.
- [ ] Mantemos capacidade sobressalente para surpresas onde a demanda varia.
- [ ] Cada equipe faz e registra uma pequena melhoria num ritmo regular.

## Prompts de IA

**Finalidade: analisar um fluxo de valor a partir dos tempos que você fornece.**

```text
Help me analyze a value stream for [type of request, e.g. "software access requests"].

Here are the steps in order, with who does each step, how long work was actually done on it, and how long the item waited before and after it. Use real numbers from a few recent cases: [paste as a table, with one row per step and one column per case].

Calculate, using only my numbers, the total elapsed time, the total working time, and the share of time spent waiting. Identify the three longest waits. For each wait, ask what the step protects against, and suggest one lighter alternative. Do not invent data. If numbers are missing, ask me first, mark assumptions, and list what you are unsure of.
```

**Finalidade: classificar exemplos de desperdício do trabalho da sua própria equipe.**

```text
Here is a list of things that frustrate our team or customers: [paste 8-12 short, factual examples].

Classify each one under the seven wastes of lean software development: partially done work, extra features, extra process, task switching, waiting, handoffs, and defects. If an item does not fit any, say so. Give one sentence of reasoning per item based only on what I wrote. Then say which two categories seem most common in this list and suggest two questions the team should discuss. Mark assumptions, and list what you are unsure of.
```

**Finalidade: testar se remover um controle é seguro.**

```text
We are considering removing or simplifying this control: [describe the approval, report, or step].

What we believe it is for: [describe the purpose, or write "unknown"].
Who uses its output: [list people or teams, or write "unknown"].
Rules we know apply (audit, security, legal), with the actual text if you have it: [paste text, or write "none known"].

List the questions we should answer before changing it. Describe two lighter ways to meet its purpose, and a way to check after the change that nothing worse happened. Do not claim any law or standard applies unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Finalidade: planejar um workshop de mapeamento do fluxo de valor.**

```text
Plan a 90-minute value stream mapping workshop for [number] people from [teams or roles]. We want to examine [request type or service].

Include: a timed agenda, who must attend, what data to bring (use only data we really have), how to draw the map step by step, how to mark working time and waiting time, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## Skills de IA

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use para mapear os passos, o tempo de trabalho e o tempo de espera de um pedido do início ao fim.
- [kaizen](../../../../skills/kaizen/SKILL.md): use para planejar melhorias pequenas e contínuas depois que o desperdício for encontrado.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use para analisar como o trabalho se move entre papéis e encontrar repasses e atrasos.
- [kanban](../../../../skills/kanban/SKILL.md): use para aplicar o puxar e os limites de trabalho em andamento ao fluxo que você mapeou.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): use quando defeitos e variação, e não apenas espera, forem o principal problema e você precisar de um método baseado em dados para reduzi-los.

## Fontes principais

- **Lean software development** (Wikipedia): os sete princípios, o mapeamento dos desperdícios e links para leituras adicionais.
- **Lean manufacturing** (Wikipedia): a história do lean na Toyota, os desperdícios e os cinco princípios do pensamento lean.
- **Lean Software Development: An Agile Toolkit** (Mary e Tom Poppendieck, 2003): o livro que levou as ideias lean à comunidade ágil.
- **Lean Thinking** (James Womack e Daniel Jones, 1996): a declaração formal dos cinco princípios do lean.

## Referências

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
