# As Quatro Dimensões da Gestão de Serviços

**As quatro dimensões do ITIL 4 são uma lista de verificação para descobrir o que falta a um serviço: as pessoas e a estrutura certas, informação e tecnologia, parceiros e fornecedores e fluxos de trabalho definidos, e uma fraqueza em qualquer uma delas limita o valor das outras.**

## Por que isso importa

Quando um serviço decepciona, as equipes tendem a buscar a correção que melhor conhecem. Engenheiros suspeitam da tecnologia, gestores suspeitam do processo e o RH suspeita das habilidades. Cada um pode ter razão, e as chances de resolver o problema melhoram se você olhar nos quatro lugares. As quatro dimensões dão uma moldura simples para isso.

As dimensões também são um freio útil a uma falha ágil comum. Uma equipe excelente em entregar código ainda pode entregar um serviço ruim se ninguém pensou no fornecedor de cuja API depende, nas habilidades necessárias para dar suporte à noite ou na informação de que o service desk precisará quando ele falhar. Do mesmo modo, um grupo de gestão de serviços que aperfeiçoa seus processos pode negligenciar a cultura e as ferramentas que os fazem funcionar.

Segundo a página do ITIL 4 Foundation da PeopleCert, as quatro dimensões são organizações e pessoas; informação e tecnologia; parceiros e fornecedores; e fluxos de valor e processos. Essa lista é a única parte deste tópico tirada diretamente das páginas públicas do titular do framework. As descrições abaixo vêm de fontes de provedores de treinamento e de comentaristas, que concordam entre si mas são secundárias. Confira as publicações do ITIL 4 quando precisar da redação exata.

## Conceitos centrais

### As quatro dimensões

A tabela dá cada dimensão, o que ela cobre como amplamente resumido e uma pergunta a fazer sobre um serviço.

| Dimensão | O que cobre | Uma pergunta a fazer |
|---|---|---|
| **Organizações e pessoas** | A estrutura, a cultura, os papéis, as habilidades e a liderança necessários para fazer o trabalho; vai além do pessoal de TI e inclui todos que interagem com o serviço | Quem faz o quê, com que habilidades, e a cultura sustenta isso? |
| **Informação e tecnologia** | A informação e o conhecimento que o serviço usa e cria, e as ferramentas e a tecnologia que o apoiam | O que precisamos saber e em que o executamos? |
| **Parceiros e fornecedores** | As relações com outras organizações que contribuem para o serviço, incluindo como os fornecedores são escolhidos, geridos e integrados | Quem mais está envolvido e do que dependemos deles? |
| **Fluxos de valor e processos** | As atividades e os fluxos de trabalho pelos quais o valor é criado e como são organizados e controlados | Como o trabalho se move e onde espera? |

As fontes de treinamento ressaltam que as dimensões são interdependentes. Dar pouca atenção a qualquer uma delas limita o valor que uma organização pode entregar às suas partes interessadas.

### Relação com o resto do framework

As dimensões se aplicam a todas as partes do sistema de valor de serviço (veja Tópico 2.3 — O Sistema de Valor de Serviço do ITIL). Uma prática, como a gestão de incidentes, pode ser examinada por cada uma: de que pessoas e papéis precisa, de que informação e ferramentas, de que fornecedores e de que processos. Elas também se ligam aos princípios orientadores, especialmente "pensar e trabalhar de forma holística" (veja Tópico 2.4 — Os Princípios Orientadores do ITIL).

### Fatores externos

As fontes de treinamento e de comentário também descrevem fatores externos que afetam as quatro dimensões. Costumam usar o acrônimo **PESTLE**: político, econômico, social (algumas fontes dizem sociocultural), tecnológico, legal e ambiental. São coisas que a organização não pode controlar mas deve considerar, porque podem criar riscos ou disparar a necessidade de mudar um serviço. Uma mudança na lei pode alterar que informação um serviço pode guardar; uma mudança econômica pode alterar os preços de um fornecedor; uma nova tecnologia pode alterar o que os clientes esperam. As fontes sugerem examiná-los sempre que se considera como responder a mudanças de demanda ou oportunidade.

### As dimensões numa equipe ágil

As equipes ágeis já trabalham com algumas dimensões por hábito e negligenciam outras.

| Dimensão | O que as equipes ágeis costumam fazer bem | O que costuma passar despercebido |
|---|---|---|
| Organizações e pessoas | Equipes autoorganizadas, retrospectivas, foco na motivação | Carga de plantão, habilidades fora da equipe, a cultura dos grupos que dão suporte ao serviço |
| Informação e tecnologia | Automação, ferramentas, controle de versões | Conhecimento para o pessoal de suporte, propriedade dos dados, documentação que outros usam |
| Parceiros e fornecedores | Usar depressa serviços de terceiros e código aberto | Quem dá suporte a uma dependência, o que acontece quando um fornecedor muda os termos ou falha |
| Fluxos de valor e processos | Ciclos curtos, quadros visíveis | As partes do fluxo fora da equipe, como aprovações, revisões de segurança e passagem de bastão para a operação |

### Usando as dimensões para diagnosticar

Um uso prático é tomar um incidente ou uma mudança fracassada e perguntar em que dimensão estava a fraqueza. Alguns exemplos mostram a ideia, sem alegar que sejam típicos:

- Uma correção levou horas porque só uma pessoa entendia o sistema: organizações e pessoas.
- Um alerta foi ignorado porque não dizia nada de útil: informação e tecnologia.
- Uma restauração parou porque a linha de suporte de um fornecedor estava fechada: parceiros e fornecedores.
- Uma mudança esperou três dias por uma assinatura que não servia a nada: fluxos de valor e processos.

A maioria dos problemas reais toca mais de uma. O valor do exercício é notar qual dimensão você costuma ignorar.

### Limites

As dimensões são uma moldura e não um método. Não dizem como consertar uma dimensão fraca e são amplas o bastante para que quase qualquer problema possa ser colocado em mais de uma. O artigo da Wikipédia sobre o ITIL não as descreve, e este guia não encontrou evidências independentes de quão bem funcionam na prática. Trate-as como estímulos que ajudam uma equipe a fazer perguntas melhores.

## Boas práticas

1. **Revise cada serviço pelas quatro dimensões.** Para cada serviço importante, escreva duas ou três linhas sob cada dimensão: o que existe e o que falta. Faça isso ao projetar um serviço e de novo uma vez por ano.
2. **Ponha as pessoas primeiro na lista.** Confira quem está de plantão, que habilidades são necessárias e se a carga é justa. Um serviço que depende de poucas pessoas exaustas está em risco (veja Tópico 1.2 — Princípios Ágeis sobre o ritmo sustentável).
3. **Trate a informação como parte do serviço.** Identifique a informação de que usuários, pessoal de suporte e outras equipes precisam e quem é responsável por ela. Torne-a fácil de achar (veja Tópico 3.9 — Gestão do Conhecimento).
4. **Conheça sua tecnologia e mantenha-a suportável.** Mantenha uma lista dos componentes principais e de quem pode dar suporte a cada um. Aposente o que ninguém entende.
5. **Liste seus fornecedores e do que você depende deles.** Inclua provedores de nuvem, fornecedores de software e equipes internas fora da sua. Registre a quem chamar, como e o que eles prometeram (veja Tópico 3.14 — Gestão de Fornecedores).
6. **Inclua os fornecedores nas suas revisões.** Convide parceiros-chave a planejamentos conjuntos ou a revisões de incidentes. Um fornecedor que fica sabendo dos seus planos tarde demais não pode ajudar.
7. **Mapeie o fluxo de valor e as passagens de bastão.** Desenhe como o trabalho flui do pedido ao valor, marcando onde cruza uma equipe ou um fornecedor. As passagens são onde mais se perdem informação e tempo (veja Tópico 5.4 — Gestão do Fluxo de Valor).
8. **Olhe primeiro a dimensão menos desenvolvida.** Ao melhorar um serviço, comece pela dimensão mais fraca, não pela que a equipe mais gosta. Mostre as evidências da sua escolha.
9. **Examine os fatores externos uma ou duas vezes por ano.** Use os títulos do PESTLE para listar o que poderia mudar para cada serviço: leis, preços, tecnologia, atitudes do público. Note qual dimensão cada um poderia afetar.
10. **Use as dimensões em revisões de incidentes e mudanças.** Acrescente uma pergunta ao modelo de revisão: qual dimensão foi a mais fraca aqui? Com o tempo, os padrões aparecerão.
11. **Mantenha leve.** Uma página por serviço basta. Se a revisão leva mais de uma hora, você provavelmente está coletando informação que ninguém usará.
12. **Não use as dimensões para atribuir culpa.** O objetivo é uma visão completa do serviço. Trate uma lacuna como problema de projeto a resolver em conjunto, não como falha de uma equipe.

## Perguntas para discutir com a equipe

**Para o nosso serviço principal, o que escreveríamos sob cada uma das quatro dimensões, e qual é a mais escassa?**

Divida a equipe em quatro grupos, um por dimensão, e dê-lhes dez minutos. Compare as listas. A escassa muitas vezes surpreende: as equipes de entrega costumam achar que parceiros e fornecedores tem pouco, enquanto as de operações podem achar o mesmo para informação. Quem facilita pode perguntar o que a dimensão escassa custou nos últimos seis meses.

**De quem dependemos que nunca contatamos?**

Liste os fornecedores e as equipes internas de que o serviço depende, inclusive os escondidos atrás de um produto de nuvem. Marque aqueles de que você tem contato e aqueles de que não tem. Pergunte o que aconteceria se cada um falhasse. É um bom lugar para encontrar riscos que ninguém assume. Escolha uma dependência para entender melhor.

**Que conhecimento existe só na cabeça de uma pessoa?**

Peça às pessoas que nomeiem tarefas que só uma pessoa sabe fazer e que informação o service desk não tem para dar suporte ao serviço. Trate as respostas como lista de riscos. Pergunte como o conhecimento poderia ser compartilhado em um mês, por exemplo em par ou escrevendo um guia curto. Registre o primeiro passo e o responsável.

**Onde o trabalho espera fora da nossa equipe?**

Rastreie um pedido recente entre equipes e marque cada espera. Esperas em aprovações, revisões de segurança ou filas de fornecedores estão fora do controle da equipe, mas não fora da sua influência. Pergunte quem poderia mudar cada espera e que evidência ajudaria. Escolha uma espera para levar ao responsável.

**O que aconteceu da última vez que algo fora do nosso controle mudou, como uma lei, um preço ou uma plataforma?**

Peça um caso real. Veja quanto tempo levou para notar, quem decidiu e qual dimensão levou o golpe. O objetivo é aprender como a equipe examina mudanças externas. Pergunte quem é responsável por observar e o que observa.

**Se pudéssemos fortalecer só uma dimensão neste trimestre, qual traria mais benefício aos nossos usuários?**

Deixe as pessoas defenderem uma dimensão com um exemplo recente. Evite votar de início; peça evidências. Depois acorde uma ação na dimensão escolhida, com um responsável e uma medida. Lembre-se de dizer em quais dimensões você escolheu não trabalhar, para que a escolha seja explícita.

## Na prática: um exemplo de ITIL ágil

Uma agência ambiental nacional opera um portal público de dados que publica leituras de qualidade do ar de milhares de sensores. Uma equipe de nove pessoas o constrói e o opera. A equipe entrega mudanças toda semana, e seus processos parecem saudáveis. Mas durante uma onda de calor o portal fica lentíssimo, o interesse público dispara e a assessoria de imprensa da agência fica sabendo do problema pelas redes sociais.

O responsável pelo portal usa as quatro dimensões para revisar o incidente. Em organizações e pessoas, apenas dois engenheiros conhecem o pipeline de ingestão de dados, e um estava de licença. Em informação e tecnologia, o monitoramento mostrou que o banco de dados estava ocupado, mas não mostrou quais leituras estavam atrasadas, então a equipe não soube dizer à assessoria o que estava afetado. Em parceiros e fornecedores, os dados dos sensores vêm de agências regionais e de um provedor de nuvem, e ninguém havia perguntado a nenhum dos dois o que esperar durante picos de demanda. Em fluxos de valor e processos, a assessoria não tem caminho para o processo de incidentes, de modo que seu primeiro contato veio por meio de um jornalista.

A equipe faz quatro mudanças, uma por dimensão: um terceiro engenheiro é treinado no pipeline, o painel mostra o frescor dos dados por região, as agências regionais e o provedor de nuvem são convidados para uma curta revisão de capacidade e a assessoria é incluída nas notificações de incidentes. Uma onda de calor posterior é tratada sem reclamação do público. Algumas questões permanecem: uma agência regional ainda envia dados num formato antigo que quebra o pipeline, e a assessoria acha difícil transformar as mensagens técnicas de status em linguagem simples. A equipe concorda em pedir à agência regional um cronograma para mudar seu formato e em escrever com a assessoria um modelo curto de status.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega costumam controlar tecnologia e processo, mas podem ignorar pessoas e fornecedores. Pergunte quem dará suporte ao que você constrói, de que habilidades precisa e de que partes externas o seu serviço depende. Forneça a informação de que outros precisam e convide-os às suas revisões.

### Equipes de serviço e operações

As equipes de operações costumam ver primeiro as fraquezas nas dimensões porque vivem com as consequências. Use as dimensões para descrever problemas de um modo em que as equipes de entrega e os gestores possam agir e para defender o tempo gasto em compartilhar conhecimento e em relações com fornecedores.

### Liderança e governança

Os líderes controlam a estrutura, as habilidades, os contratos com fornecedores e os processos que cruzam equipes. Peça uma revisão de quatro dimensões dos serviços importantes e olhe a dimensão escassa. Esteja pronto para financiar as partes pouco glamorosas, como treinamento e relações com fornecedores.

### Clientes e usuários

Clientes e usuários vivenciam o resultado das quatro dimensões sem vê-las. Quando algo der errado, conte ao provedor o que você viu e do que precisou. Essa informação o ajuda a encontrar a dimensão fraca. Pergunte aos provedores como organizam suporte, fornecedores e informação para os serviços que você usa.

## Modos de falha comuns

- **Consertar a dimensão familiar.** Os engenheiros acrescentam tecnologia a todo problema. Em vez disso, pergunte a que dimensão as evidências apontam.
- **Esquecer os fornecedores.** O serviço depende de partes que ninguém conheceu. Em vez disso, liste os fornecedores e registre contatos, compromissos e riscos.
- **Tratar as pessoas como dado.** Habilidades e carga de plantão são presumidas. Em vez disso, revise-as como parte do serviço.
- **Processos que param na fronteira da equipe.** As passagens de bastão não são geridas. Em vez disso, mapeie o fluxo entre equipes e acorde as passagens.
- **Informação que ninguém acha.** A documentação existe, mas o pessoal de suporte não consegue usá-la. Em vez disso, pergunte aos usuários da informação o que precisam.
- **Análise excessiva.** A revisão vira um documento enorme. Em vez disso, mantenha-a em uma página por serviço.
- **Usar a moldura para culpar.** As equipes são julgadas por lacunas. Em vez disso, trate as lacunas como problemas de projeto compartilhados.
- **Ignorar a mudança externa.** Leis, preços e tecnologia mudam sem aviso. Em vez disso, examine os fatores PESTLE regularmente e anote qual dimensão cada um afeta.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Organizações e pessoas | Papéis e habilidades são informais | Algumas equipes listam habilidades e carga de plantão | Papéis, habilidades e carga de trabalho são descritos para cada serviço | Habilidades e carga são medidas e revisadas | Pessoal e habilidades são planejados entre equipes e parceiros |
| Informação e tecnologia | Conhecimento e ferramentas estão espalhados | Algumas equipes mantêm listas de componentes e de conhecimento | Componentes e informação têm responsáveis e podem ser encontrados | O uso da informação e das ferramentas é acompanhado e as lacunas corrigidas | Informação e ferramentas são compartilhadas e aprimoradas entre equipes e fornecedores |
| Parceiros e fornecedores | Fornecedores são geridos por indivíduos | Alguns fornecedores-chave são listados com contatos | Todos os fornecedores-chave têm responsáveis, contatos e expectativas | O desempenho e o risco dos fornecedores são revisados | Fornecedores participam do planejamento e da melhoria |
| Fluxos de valor e processos | O trabalho flui por hábito | Alguns fluxos são desenhados | Os fluxos-chave são mapeados entre equipes, com responsáveis | Fluxo e esperas são medidos e reduzidos | Os fluxos são melhorados em conjunto com clientes e fornecedores |

## Lista de verificação

- [ ] Para cada serviço importante, escrevemos o que existe e o que falta em cada dimensão.
- [ ] As pessoas e habilidades necessárias para operar cada serviço estão identificadas, com a carga de plantão revisada.
- [ ] A informação de que usuários e pessoal de suporte precisam tem responsável e é encontrável.
- [ ] Os componentes principais do serviço estão listados, com alguém capaz de dar suporte a cada um.
- [ ] Fornecedores-chave e provedores internos estão listados com contatos e expectativas.
- [ ] O fluxo de trabalho de um serviço foi mapeado entre equipes.
- [ ] Examinamos os fatores externos (PESTLE) pelo menos uma vez no último ano.
- [ ] As revisões de incidentes e de mudanças perguntam qual dimensão foi a mais fraca.
- [ ] A revisão de cada serviço cabe em uma página.
- [ ] Escolhemos uma dimensão fraca a fortalecer neste trimestre.

## Prompts de IA

**Finalidade: redigir uma revisão de quatro dimensões de um serviço.**

```text
Help me draft a four-dimension review of the service [name]. The dimensions are: organizations and people; information and technology; partners and suppliers; value streams and processes.

About the service: [describe what it does and who uses it].
For each dimension, what I know: [write a few lines each; write "unknown" where you do not know].

For each dimension, say what exists, what appears to be missing, and one question I should ask the team, using only my text. Highlight the thinnest dimension and say why. Do not invent suppliers, people, or tools. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: classificar a dimensão mais fraca em incidentes recentes.**

```text
Here are short, factual descriptions of [number] recent incidents or failed changes: [paste, one per item].

For each, say which of the four ITIL dimensions (organizations and people; information and technology; partners and suppliers; value streams and processes) the weakness most likely lay in, with one sentence of reasoning drawn only from the text. Where more than one applies, say so. Then count how many fall under each dimension, from my list only, and suggest two questions about the pattern. Do not invent causes, and list what you are unsure of.
```

**Finalidade: listar fornecedores e dependências de um serviço.**

```text
Help me build a dependency and supplier list for [service].

What I know about how it is built and run: [describe components, cloud services, data sources, other teams].
Contracts or support arrangements I know about: [list, or write "unknown"].

Produce a table with columns: dependency, who provides it, what we rely on it for, what happens if it fails (from my text only), and the question I should ask the supplier. Mark anything you inferred. Do not invent contracts or service levels. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: examinar fatores externos de um serviço.**

```text
Help me prepare a scan of external factors using the PESTLE headings (political, economic, social, technological, legal, environmental) for the service [name].

Context: [describe the sector, countries served, and users].
Known upcoming changes: [list laws, price changes, technology shifts you actually know about, or write "none known"].

For each heading, propose questions we should research (not answers), and note which of the four ITIL dimensions each factor could affect. Do not state that any law or regulation exists or applies unless I have listed it. Mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): use para mapear os parceiros, fornecedores e grupos que dependem de um serviço ou contribuem para ele.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use para planejar como escolher, gerir e revisar fornecedores.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): use para mapear o fluxo de trabalho entre equipes na dimensão de fluxos de valor e processos.
- [swot-analysis](../../../../skills/swot-analysis/SKILL.md): use junto com o exame dos fatores externos para resumir forças, fraquezas, oportunidades e ameaças.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): use para encontrar lacunas de habilidades na dimensão de organizações e pessoas.

## Fontes principais

- **ITIL 4 Foundation** (PeopleCert): a página do titular que nomeia as quatro dimensões entre os temas estudados.
- **The ITIL Four Dimensions of Service Management** (itsm.tools): um resumo de um site de praticantes de cada dimensão e do PESTLE; secundário.
- **PESTLE analysis** (Wikipedia): contexto sobre a ferramenta de fatores externos.
- **ITIL** (Wikipedia): contexto sobre o ITIL 4 e seu lugar na história do framework.

## Referências

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. The ITIL Four Dimensions of Service Management — itsm.tools (practitioner site; secondary source) — https://itsm.tools/the-itil-four-dimensions-of-service-management/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. PESTLE analysis — Wikipedia — https://en.wikipedia.org/wiki/PEST_analysis
5. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
6. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
7. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
8. Supply chain management — Wikipedia — https://en.wikipedia.org/wiki/Supply_chain_management
