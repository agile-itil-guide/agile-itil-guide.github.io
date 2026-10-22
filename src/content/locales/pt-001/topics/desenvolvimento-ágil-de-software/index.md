# Desenvolvimento Ágil de Software

**O desenvolvimento ágil de software é uma família de métodos de entrega contínua de software que entregam em pequenos passos e aprendem com o feedback, e as práticas que ele produziu, como testes automatizados e integração contínua, são a base prática para operar com segurança serviços que mudam.**

## Por que isso importa

A maioria das equipes que operam um serviço de TI também o constrói e o altera. O modo como o software é construído decide com que frequência o serviço muda, quão arriscada é cada mudança e quanto as pessoas de plantão podem confiar no que recebem. Uma equipe que constrói em lotes grandes e passa o bastão raramente entregará à operação poucos releases grandes e assustadores. Uma equipe que constrói em pequenos passos, com testes e feedback rápido, pode entregar muitos releases pequenos e compreendidos.

O desenvolvimento ágil de software é o conjunto de ideias mais conhecido para o segundo modo de trabalhar. Também é amplamente mal compreendido. Há quem use "ágil" para dizer "sem planos e sem documentos", e há quem o use para qualquer processo com uma reunião diária. Este tópico oferece um quadro mais claro: de onde vieram os métodos ágeis, o que eles têm em comum, o que não afirmam e quais práticas mais importam para uma equipe que precisa manter um serviço funcionando.

As evidências pedem uma leitura cuidadosa. O [artigo da Wikipédia sobre desenvolvimento ágil de software](https://en.wikipedia.org/wiki/Agile_software_development) diz que as evidências anedóticas a favor do ágil são fortes, mas as empíricas são "limitadas e pouco conclusivas", e aponta pesquisas, como a anual State of Agile, que relatam benefícios, mas vêm de opiniões autodeclaradas. Trate os métodos ágeis como abordagens promissoras a testar no seu próprio contexto.

## Conceitos centrais

### O que o termo abrange

"Desenvolvimento ágil de software" é um termo guarda-chuva. O artigo da Wikipédia o descreve como abrangendo abordagens que cresceram a partir dos valores e princípios acordados em 2001 por 17 praticantes (veja Tópico 1.1 — O Manifesto Ágil e Tópico 1.2 — Princípios Ágeis). "Agile" com inicial maiúscula costuma designar as práticas que nasceram dessa mentalidade, e "ágil" em minúsculas a qualidade de saber se adaptar. A distinção não é rígida, e você ouvirá ambas.

Os métodos ágeis visam a entrega contínua de software. Apoiam-se na colaboração contínua entre partes interessadas e desenvolvedores, constroem projetos em torno de indivíduos motivados e buscam a melhoria contínua por meio do feedback, com atenção à qualidade. Diferem no que enfatizam. Alguns, como o Extreme Programming, concentram-se em práticas de engenharia, e outros, como Scrum e Kanban, em como o trabalho é gerido.

### Uma breve história

O artigo da Wikipédia remonta o desenvolvimento iterativo e incremental a 1957, com a gestão evolutiva de projetos e o desenvolvimento adaptativo de software aparecendo no início da década de 1970. Nos anos 1990 surgiu um grupo de métodos leves, em reação a processos pesados e orientados por planos, muitas vezes chamados de [modelo em cascata](https://en.wikipedia.org/wiki/Waterfall_model). O artigo lista o desenvolvimento rápido de aplicações (1991), o processo unificado e o método de desenvolvimento de sistemas dinâmicos, DSDM (1994), o Scrum (1995), o Crystal Clear e o Extreme Programming (1996) e o desenvolvimento orientado a funcionalidades (1997).

Em fevereiro de 2001, dezessete praticantes se reuniram em Snowbird, Utah, e escreveram o Manifesto. Declarações posteriores se apoiaram nele: a PM Declaration of Interdependence em 2005, o Software Craftsmanship Manifesto em 2009 e o *Guide to Agile Practices* da Agile Alliance em 2011, que foi rebatizado como *Agile Glossary* em 2016.

### Abordagens adaptativas e preditivas

O artigo descreve um contínuo entre abordagens preditivas e adaptativas. Um método preditivo planeja a maior parte do trabalho em detalhe antes de começar e funciona bem quando os requisitos são estáveis e bem compreendidos. Um método adaptativo espera mudanças e planeja em horizontes curtos. Boehm e Turner, citados no artigo, argumentam que cada lado tem seu próprio "terreno de origem", isto é, que nenhum dos dois está certo em toda parte.

Isso importa para uma equipe de serviço porque o trabalho dela é misto. Substituir a rede de um data center está mais perto do trabalho preditivo. Melhorar um aplicativo voltado ao cliente está mais perto do trabalho adaptativo. Escolha a abordagem por tipo de trabalho, não uma vez só para toda a organização.

### Métodos comuns

O artigo lista muitos métodos. Os que você tem mais chance de encontrar:

| Método | Ênfase principal | Tratado em |
|---|---|---|
| Scrum | Papéis definidos, eventos regulares e uma cadência fixa | Tópico 1.4 — Previsões de Entrega e Métricas de Planejamento |
| Kanban | Visualizar o trabalho e limitar quanto está em andamento | Tópico 1.5 — Kanban |
| Extreme Programming (XP) | Práticas de engenharia como programação em par e desenvolvimento orientado a testes | Tópico 1.6 — Extreme Programming |
| Desenvolvimento lean de software | Aplicar ideias lean, como eliminar desperdício, ao software | Tópico 1.7 — Desenvolvimento Lean de Software |
| Desenvolvimento orientado a funcionalidades, DSDM, Crystal e desenvolvimento adaptativo de software | Outros métodos leves de entrega contínua de software, com papéis e práticas próprios | Este tópico |
| Scrumban | Uma mistura de eventos Scrum e fluxo Kanban | Tópico 1.4 — Previsões de Entrega e Métricas de Planejamento e Tópico 1.5 — Kanban |

Nenhum método é "o" método ágil. O artigo cita a opinião de Ken Schwaber de que as equipes se metem em apuros ao caçar uma metodologia perfeita quando é a própria empresa que precisa mudar, e a sugestão de Bas Vodde de que o Scrum fornece o básico, que as equipes ampliam localmente.

### Práticas comuns

O artigo lista práticas que muitas equipes ágeis usam. Uma seleção, com a finalidade de cada uma:

- **Histórias de usuário e backlogs:** descrevem o trabalho do ponto de vista do usuário e mantêm uma lista priorizada do que fazer em seguida.
- **Reunião diária em pé (stand-up):** uma reunião diária curta, muitas vezes de cerca de 15 minutos, para compartilhar progresso e bloqueios.
- **Desenvolvimento orientado a testes (TDD) e desenvolvimento orientado a testes de aceitação (ATDD):** escrevem-se os testes primeiro, de modo que o "pronto" seja definido antes de o trabalho começar.
- **Integração contínua (CI):** mescla as mudanças com frequência e constrói e testa automaticamente. O artigo observa que Grady Booch propôs o termo pela primeira vez em 1991.
- **Programação em par e refatoração:** duas pessoas dividem o trabalho para melhorar a qualidade e difundir o conhecimento, e o código é continuamente melhorado sem alterar o que faz.
- **Retrospectivas:** a equipe reflete em intervalos regulares sobre como melhorar.

Para uma equipe de serviço, três delas merecem atenção especial. Testes automatizados e integração contínua tornam seguras as mudanças frequentes. As retrospectivas oferecem um lugar fixo para melhorar o modo de trabalhar da equipe. Os backlogs dão uma lista única e ordenada na qual melhorias de serviço competem de forma justa com novos recursos.

### Experiência, medição e armadilhas

O artigo relata que pesquisas, entre elas uma da Shine Technologies em 2002 e 2003 e a State of Agile desde 2006, encontram ganhos percebidos em qualidade, produtividade e satisfação do negócio. Observa também que uma pesquisa da VersionOne apontou o treinamento insuficiente como a causa mais citada de implantações fracassadas, e lista armadilhas como ocupar o papel de product owner com um membro da equipe de desenvolvimento e a falta de apoio do patrocinador.

Medir o quanto uma equipe é "ágil" produziu várias autoavaliações, como o teste da Nokia, e um índice que classifica projetos por duração, risco, novidade, esforço e interação. Cuidado com qualquer pontuação desse tipo. Um número é um ponto de partida para conversa, e uma equipe que otimiza para a pontuação pode perder o sentido.

### Trabalho em larga escala, distribuído e regulado

O artigo diz que escalar além de cerca de 20 desenvolvedores, ou entre locais diferentes, traz desafios, e que vários frameworks foram propostos, embora as opiniões divirjam sobre como funcionam (veja Tópico 1.8 — Escalando a Agilidade). Relata também que domínios regulados como dispositivos médicos, farmacêutica, finanças, nuclear, automotivo e aviônica foram de início considerados inadequados para o ágil e que hoje existem adaptações. As preocupações que lista são garantia da qualidade, segurança física e da informação, rastreabilidade e verificação e validação.

São exatamente as preocupações da gestão de serviços. Quando um regulador ou um auditor pede evidências, uma equipe ágil pode fornecê-las a partir das ferramentas que já usa, como o histórico do controle de versões, os resultados de testes automatizados e os registros de mudanças (veja Tópico 5.7 — Governança, Risco e Conformidade).

### Crítica que vale conhecer

Steven Rakitin, numa carta à *IEEE Computer* em 2001, chamou o ágil de "mais uma tentativa de minar a disciplina da engenharia de software" e leu a preferência do Manifesto por software em funcionamento como licença para dispensar a documentação. Os defensores respondem que a documentação deve ser "apenas suficientemente boa", nas palavras de Scott Ambler. As equipes de serviço conhecem os dois lados: documentação de menos atrasa as passagens de bastão e a resposta a incidentes, e de mais fica obsoleta.

## Boas práticas

1. **Combine o método com o tipo de trabalho.** Use a entrega contínua de software e feedback frequente onde os requisitos mudam, e mais planejamento antecipado onde são fixos e o custo do erro é alto. Decida isso para cada tipo de trabalho e revise quando as circunstâncias mudarem.
2. **Comece com o menor lote útil.** Divida o trabalho em partes que possam ser construídas, testadas e lançadas em dias. Lotes pequenos dão feedback mais rápido e tornam uma mudança fracassada mais fácil de entender e reverter.
3. **Automatize os testes antes de acelerar os releases.** Releases frequentes sem testes automatizados transferem o risco para os usuários. Construa uma suíte que rode a cada mudança e falhe em alto e bom som, e trate um build quebrado como a primeira prioridade da equipe.
4. **Integre continuamente.** Mescle o trabalho numa branch compartilhada com frequência e construa-o automaticamente. Branches longevas escondem conflitos até que sejam caros de resolver.
5. **Faça o "pronto" incluir a operação.** Uma história não está concluída até poder ser monitorada, suportada e revertida. Acrescente essas verificações à sua definição de pronto e peça ao pessoal de operações que ajude a escrevê-la (veja Tópico 3.5 — Gestão de Releases e Implantações).
6. **Mantenha um backlog ordenado por equipe.** Coloque recursos, defeitos e melhorias de serviço na mesma lista priorizada, para que concorram às claras. Filas laterais ocultas são onde o trabalho operacional passa fome em silêncio.
7. **Escreva documentação apenas suficiente.** Mantenha os documentos que as pessoas usam, como runbooks, descrições de serviço e notas de arquitetura, e dê a cada um um responsável e uma data de revisão. Apague o resto. Isso responde à preocupação de Rakitin sem voltar aos documentos pesados.
8. **Faça retrospectivas regulares e aja sobre elas.** Escolha uma mudança de cada uma, com responsável e data. Uma retrospectiva que produz só discussão vira ritual.
9. **Invista em treinamento e patrocínio.** As evidências de pesquisa no artigo da Wikipédia apontam o treinamento e o apoio do patrocinador como pontos fracos comuns. Planeje ambos antes de pedir às equipes que mudem o modo de trabalhar.
10. **Adapte e diga por quê.** Adapte um método ao seu contexto e registre o que mudou e a razão. Alterar uma prática porque é incômoda, sem motivo, é como as equipes se afastam dos benefícios.
11. **Meça resultados, não pontuações de agilidade.** Acompanhe coisas como o lead time de uma mudança, com que frequência os releases causam incidentes e com que rapidez o serviço é restabelecido (veja Tópico 5.6 — Métricas e Medição). Use autoavaliações apenas como estímulo à discussão.
12. **Traga os dados de serviço de volta ao desenvolvimento.** Alimente o backlog com incidentes recorrentes e registros de problemas, para que o desenvolvimento aprenda com a operação (veja Tópico 3.3 — Gestão de Problemas).

## Perguntas para discutir com a equipe

**Quais práticas ágeis realmente usamos, e quais só conhecemos de nome?**

Liste as práticas que você acha que segue: reuniões em pé, retrospectivas, backlogs, testes automatizados. Para cada uma, pergunte quando foi a última vez que mudou uma decisão. Práticas que ninguém consegue ligar a uma decisão são rituais. Quem facilita deve pedir evidências sem insinuar culpa. Em seguida, escolha um ritual para melhorar ou abandonar.

**Para qual parte do nosso trabalho uma abordagem mais preditiva seria mais sensata, e por quê?**

O artigo da Wikipédia relata que cada abordagem tem um "terreno de origem". Peça às pessoas que separem o trabalho recente em estável e de mudança rápida. O trabalho estável típico inclui renovações de hardware, mudanças de data center e grandes renovações de contrato. Pergunte o que um plano mais cuidadoso teria rendido em cada caso. O objetivo é evitar aplicar um só estilo a tudo.

**Com que rapidez descobrimos que algo que construímos não funciona, e o que tornaria isso mais rápido?**

Rastreie o caminho entre escrever uma mudança e aprender como ela se comporta em uso. Conte as etapas e as esperas: revisão, build, teste, release, monitoramento. Pergunte em qual etapa a equipe confia menos. Muitas vezes a resposta é um teste manual ou uma etapa de release que depende de uma só pessoa. Escolha uma etapa para encurtar e acorde como saberá que ficou mais curta.

**O que um auditor ou regulador precisaria ver de nós, e nosso modo de trabalhar já o produz?**

Peça a alguém com experiência em auditoria ou segurança que participe. Reúna as evidências que suas ferramentas já produzem: histórico de mudanças, resultados de testes, aprovações. Depois liste o que falta. As equipes costumam se surpreender ao descobrir que mudanças pequenas e frequentes com verificações automatizadas produzem evidências melhores que mudanças raras e grandes. Registre as lacunas para a discussão de governança no Tópico 5.7 — Governança, Risco e Conformidade.

**Onde a nossa documentação ajuda as pessoas, e onde só existe porque mandaram escrevê-la?**

Pergunte às pessoas quais documentos usaram no último mês. Um runbook usado e mantido em dia conta. Um documento de design que ninguém lê desde o dia em que foi aprovado, não. Peça à equipe que decida quais manter, quais fundir e quais apagar, e atribua responsáveis. É um modo seguro de aplicar a ideia de "apenas suficientemente bom".

**O que mudamos por último em nosso modo de trabalhar por causa do que aprendemos, e qual é a próxima mudança?**

Peça a mudança concreta mais recente vinda de uma retrospectiva e pergunte se funcionou. Se ninguém souber citar uma, a retrospectiva não está cumprindo seu papel. Veja por quê: as ações podem ser grandes demais, não ter responsáveis ou competir com o trabalho de entrega. Feche escolhendo uma pequena mudança a fazer nas próximas duas semanas.

## Na prática: um exemplo de ITIL ágil

Um varejista online de porte médio tem uma equipe de desenvolvimento de dez pessoas que constrói seu sistema de gestão de pedidos e uma equipe de operações separada, de seis, que o opera. A equipe de desenvolvimento escolheu usar sprints e releases a cada duas semanas. A equipe de operações recebe cada release com uma nota curta e o pedido de implantá-lo numa janela na quinta-feira à noite. O pessoal de operações reclama que só descobre o que mudou quando algo quebra, e os desenvolvedores reclamam que uma janela na quinta é tarde demais para corrigir qualquer coisa encontrada nos testes.

Numa retrospectiva conjunta, as duas equipes mapeiam um release recente passo a passo. Descobrem que os únicos testes automatizados cobrem cerca de metade do fluxo de pedidos, que ninguém do lado de operações viu o release antes da nota de quinta e que a etapa de rollback nunca foi tentada. Concordam com três mudanças. A equipe de desenvolvimento acrescentará uma verificação de monitoramento e um teste de rollback à sua definição de pronto. Um engenheiro de operações participará de cada revisão de sprint. Os releases que passarem em toda a suíte automatizada serão implantados assim que estiverem prontos, e não só na quinta.

Nos dois meses seguintes, dois dos quatro releases seguintes são implantados no meio da semana. O engenheiro de operações detecta uma mensagem de log ausente numa revisão de sprint, o que economiza uma hora de busca num incidente posterior. Nem tudo melhora: a suíte automatizada ainda pula o caminho de reembolso, e uma falha de reembolso chega aos clientes. As equipes acrescentam testes de reembolso ao sprint seguinte e concordam em revisar as lacunas de cobertura todo mês. O engenheiro de operações também diz que comparecer à revisão de sprint toma um tempo que a escala não comporta, de modo que o gerente de operações redistribui parte das outras tarefas desse engenheiro.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega são donas das práticas que tornam a mudança segura: testes, integração contínua, lotes pequenos e uma definição clara de pronto. Trate a operação como cliente do seu trabalho. Pergunte do que ela precisa para operar um release e inclua isso no backlog como faria com um recurso.

### Equipes de serviço e operações

O pessoal de operações pode usar práticas ágeis no próprio trabalho: um backlog visível de melhorias, ciclos curtos de feedback sobre incidentes e retrospectivas regulares. Peça para participar cedo de sessões de planejamento e de revisão. Leve o conhecimento de como os serviços falham, a contribuição mais útil que uma equipe de entrega pode receber.

### Liderança e governança

Os líderes decidem se as equipes recebem tempo e treinamento para trabalhar assim. As evidências de pesquisa no artigo da Wikipédia apontam o treinamento e o patrocínio como pontos fracos comuns. Pergunte de que controles você precisa e como uma equipe pode atendê-los com as próprias ferramentas, em vez de acrescentar um processo paralelo.

### Clientes e usuários

Os clientes veem o benefício dos métodos ágeis como melhoria visível num ritmo constante, não como cerimônia. Espere revisar mudanças em funcionamento regularmente e ser perguntado sobre o que mais importa. Em troca, a equipe precisa de respostas oportunas e da disposição de aceitar releases pequenos e imperfeitos que melhoram com o tempo.

## Modos de falha comuns

- **Adotar rituais sem práticas de engenharia.** Reuniões diárias e quadros aparecem, mas não há testes automatizados, e os releases continuam arriscados. Em vez disso, invista em testes, integração e automação de releases junto com as cerimônias.
- **Chamar de "ágil" um processo de mudanças sem alterar os direitos de decisão.** As equipes ainda esperam por aprovações distantes. Em vez disso, leve as decisões a quem tem o conhecimento e defina limites claros.
- **Usar o ágil como desculpa para não documentar.** As passagens de bastão e os incidentes sofrem. Em vez disso, mantenha os documentos curtos que as pessoas usam e dê a cada um um responsável.
- **Pular o treinamento.** A constatação da VersionOne no artigo da Wikipédia aponta o treinamento insuficiente como a causa mais citada de implantações fracassadas. Em vez disso, treine equipes e líderes antes e durante a mudança.
- **Colocar um membro da equipe de desenvolvimento no papel de product owner.** O artigo lista isso como armadilha. Em vez disso, escolha alguém que represente o negócio e tenha tempo para decidir.
- **Escalar copiando um framework.** Um framework grande instalado sem compreensão acrescenta processo e retarda as equipes. Em vez disso, comece pelo problema que você tem e adote apenas o que ajuda (veja Tópico 1.8 — Escalando a Agilidade).
- **Perseguir uma pontuação de agilidade.** As equipes otimizam para a métrica. Em vez disso, acompanhe resultados como lead time, falhas de release e tempo para restabelecer o serviço.
- **Manter desenvolvimento e operações separados.** A equipe de entrega despacha e a de operações herda. Em vez disso, leve-as ao planejamento conjunto, às revisões e ao aprendizado com incidentes (veja Tópico 5.2 — DevOps).

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Entrega contínua de software | O trabalho é entregue em releases grandes | Algumas equipes entregam em ciclos curtos | As equipes compartilham uma cadência de entrega comum e uma definição de pronto | O lead time e os resultados dos releases são medidos e revisados | Os ritmos de release são coordenados entre equipes e fornecedores |
| Práticas de engenharia | Testes e builds são majoritariamente manuais | Algumas equipes têm testes e builds automatizados | Um pipeline compartilhado roda testes a cada mudança | A cobertura de testes e as taxas de falha são acompanhadas e as lacunas corrigidas | Pipelines e práticas são aprimorados entre equipes a partir de evidências compartilhadas |
| Backlog e priorização | Os pedidos chegam por e-mail e de forma ad hoc | As equipes mantêm seus próprios backlogs | Cada equipe tem um backlog ordenado que inclui o trabalho de serviço | O fluxo e a idade do backlog são revisados com as partes interessadas | As prioridades são alinhadas entre equipes, clientes e fornecedores |
| Aprendizagem e adaptação | As revisões só seguem falhas graves | Algumas equipes fazem retrospectivas | Todas as equipes fazem retrospectivas regulares e registram ações | As ações são acompanhadas até a conclusão e os efeitos conferidos | As lições circulam entre as equipes e chegam à política sem direção central |

## Lista de verificação

- [ ] A equipe sabe dizer qual método ou práticas ágeis usa e por que os escolheu.
- [ ] O trabalho é separado em tipos preditivo e adaptativo, com uma abordagem declarada para cada um.
- [ ] Testes automatizados rodam a cada mudança, e um build com falha para a linha.
- [ ] Nossa definição de pronto inclui monitoramento, notas de suporte e um rollback testado.
- [ ] Cada equipe tem um backlog ordenado que inclui melhorias de serviço e defeitos.
- [ ] Runbooks e descrições de serviço têm responsáveis e datas de revisão.
- [ ] As retrospectivas são feitas num ritmo regular e cada uma termina com uma ação com responsável.
- [ ] Equipes e líderes receberam treinamento no modo de trabalhar que pedimos deles.
- [ ] Sabemos que evidências os auditores precisam e como nossas ferramentas as fornecem.
- [ ] Medidas de resultado, como lead time e tempo para restabelecer o serviço, são revisadas regularmente.

## Prompts de IA

**Finalidade: mapear suas práticas atuais para as práticas ágeis comuns e encontrar lacunas.**

```text
You are helping a team understand which agile software development practices it actually uses.

Practices to consider: user stories and backlogs, daily stand-ups, retrospectives, test-driven development, continuous integration, pair programming, refactoring, definition of done, regular reviews with customers.

Our team: [team size and what you build and run].
What we do today, in our own words: [paste a short description of a typical week, including meetings, tools, and how a change reaches production].

For each practice, say whether the description shows it in use, partly in use, or not mentioned, and quote the words you based that on. Do not assume a practice exists if it is not described. Then list three questions I should ask my team to fill gaps. Ask me clarifying questions first if the description is too thin, and list what you are unsure of.
```

**Finalidade: redigir uma definição de pronto que inclua a operação.**

```text
Help us write a definition of done for [type of work, e.g. "backend changes to our order service"] that covers both building and running the service.

Our current definition of done is: [paste it, or write "none"].
Things operations staff tell us they need before they accept a release: [paste a list, or write "unknown"].
Rules we must follow: [list any known audit, security, or safety rules, or write "none known"].

Produce a checklist of 8 to 12 items, grouped as build quality, release readiness, and operational readiness. Mark each item that you added by assumption. Do not claim that any standard requires an item unless I have pasted its text. Ask me clarifying questions first, and list what you are unsure of.
```

**Finalidade: preparar evidências para um auditor a partir das suas ferramentas ágeis.**

```text
An auditor has asked: [paste the question, e.g. "show me how changes are reviewed and approved"].

Our tools and records: [list your version control, build, test, ticket, and release tools, and what each records].
Our practice: [describe how a change goes from idea to production].

List what evidence each tool already produces that relates to the question, what gaps remain, and three lightweight ways to close each gap. Do not state that any law or standard requires something unless I have pasted its text. Separate facts from assumptions, and list what you are unsure of.
```

**Finalidade: planejar uma retrospectiva sobre como sua equipe adota práticas ágeis.**

```text
Plan a 60-minute retrospective for a team of [number] people who are [adopting / improving] agile practices. The main problem right now is [problem].

Include: a timed agenda, a way to gather facts first, a short discussion of two or three of these questions: [paste questions from the "Questions to discuss" section], and a closing step that records exactly one action with an owner and a date.

Keep the plan free of any specific tool. If anything is missing, ask me clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [scrum](../../../../skills/scrum/SKILL.md): use para montar ou revisar os papéis, eventos e artefatos de uma equipe Scrum.
- [kanban](../../../../skills/kanban/SKILL.md): use para desenhar um quadro visual com limites de trabalho em andamento para uma equipe de serviço ou de operações.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): use para revisar ou adotar práticas de engenharia como o desenvolvimento orientado a testes e a integração contínua.
- [user-story](../../../../skills/user-story/SKILL.md): use para escrever histórias de usuário com critérios de aceitação que incluam necessidades operacionais.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use para conduzir uma retrospectiva que termine com uma mudança que tenha responsável.

## Fontes principais

- **Manifesto for Agile Software Development** e **Principles behind the Agile Manifesto** (agilemanifesto.org): a declaração primária de valores e princípios.
- **Agile software development** (Wikipedia): um amplo panorama de história, métodos, práticas, adoção e críticas, com muitas fontes citadas.
- **Agile Glossary** (Agile Alliance): definições de práticas e termos ágeis, mantidas pela comunidade que nasceu do Manifesto.

## Referências

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
