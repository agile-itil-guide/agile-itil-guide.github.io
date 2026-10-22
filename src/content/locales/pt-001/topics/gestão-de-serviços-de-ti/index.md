# Gestão de Serviços de TI

**A gestão de serviços de TI (ITSM) é a disciplina de projetar, entregar, operar e melhorar serviços de TI em torno do que os clientes precisam, e as equipes ágeis que operam serviços já a praticam, usem ou não o nome.**

## Por que isso importa

Quando uma equipe entrega software e depois o opera, torna-se um provedor de serviço. Os usuários dependem dela, esperam que esteja disponível e querem ajuda quando falha. A ITSM é o corpo de práticas que cresceu em torno dessa relação. As equipes que a ignoram costumam redescobri-la do modo difícil: sendo chamadas de madrugada, perdendo o rastro do que mudou ou discutindo com os clientes sobre o que foi prometido.

A ITSM tem reputação de processo pesado, e parte dessa reputação é merecida. As equipes ágeis, por sua vez, têm reputação de andar depressa e deixar a operação lidar com o resultado. As duas reputações descrevem falhas, não a intenção de nenhum dos campos. A ITSM pergunta o que o cliente precisa de um serviço e como o provedor o entregará e melhorará. Essa é uma pergunta com que as equipes ágeis também se importam.

Este tópico dá o vocabulário usado no resto do guia: o que é um serviço, quem são os clientes e os usuários, o que a ITSM cobre e de onde vêm seus principais frameworks. Usa o [artigo da Wikipédia sobre gestão de serviços de TI](https://en.wikipedia.org/wiki/IT_service_management) como mapa. Esse artigo é curto e lista frameworks mais do que os explica, então o tópico acrescenta interpretação prática e assinala onde o faz.

## Conceitos centrais

### O que é a ITSM

O artigo da Wikipédia define a ITSM como o conjunto de atividades que uma organização realiza para projetar, construir, entregar, operar e controlar serviços de TI oferecidos a clientes. Contrasta a ITSM com abordagens voltadas à tecnologia, como a gestão de redes e a gestão de sistemas. A ITSM, diz, adota uma abordagem por processos, concentra-se nas necessidades do cliente e não nos sistemas e enfatiza a melhoria contínua.

O artigo cita uma pesquisa de 2017 da CIO WaterCooler que relata que as empresas usam a ITSM sobretudo em apoio à experiência do cliente (35%) e à qualidade do serviço (48%). É uma só pesquisa, e a amostra não é descrita no artigo, então trate os números como ilustração de como os praticantes descrevem seus objetivos e não como medida da frequência de cada objetivo.

### Serviço, cliente e usuário

Um **serviço** é um modo de entregar valor a outros sem que eles tenham de arcar com os custos e riscos. Os pagamentos online de um banco, o agendamento de consultas de um hospital e o armazenamento compartilhado de arquivos de uma empresa são todos serviços. O artigo distingue os **usuários**, que usam o serviço, dos **clientes**, que o pagam ou o encomendam. Na TI interna de uma empresa, o cliente pode ser o chefe de uma unidade de negócio e os usuários, sua equipe. Num serviço público, o cliente pode ser um ministério e os usuários, os cidadãos. Os dois grupos têm necessidades diferentes, e um provedor que ouve apenas o cliente pode perder o que os usuários vivenciam.

### Atividades típicas da ITSM

O artigo nomeia algumas ideias centrais, e a prática padrão da ITSM acrescenta outras. Juntas, dão uma forma reconhecível:

| Atividade | Para que serve | Onde este guia a trata |
|---|---|---|
| **Service desk** | Um ponto único de contato entre provedores e usuários; trata incidentes e requisições de serviço | Tópico 3.1 — Service Desk |
| **Tratamento de incidentes** | Restabelecer o serviço quando algo o interrompe ou o ameaça | Tópico 3.2 — Gestão de Incidentes |
| **Requisições de serviço** | Fornecer coisas de rotina que os usuários pedem, como acesso ou equipamento | Tópico 3.6 — Gestão de Requisições de Serviço |
| **Problemas e mudanças** | Encontrar e corrigir causas subjacentes e controlar modificações nos serviços | Tópico 3.3 — Gestão de Problemas e Tópico 3.4 — Habilitação de Mudanças |
| **Níveis de serviço e catálogo** | Acordar o que é oferecido e com que qualidade | Tópico 3.7 — Gestão de Níveis de Serviço e Tópico 3.8 — Gestão do Catálogo de Serviços |
| **Melhoria contínua** | Melhorar os serviços com o tempo | Tópico 3.15 — Melhoria Contínua |

O artigo define um **incidente** como uma interrupção ou interrupção potencial da disponibilidade ou da qualidade do serviço e uma **requisição de serviço** como um pedido de rotina de um serviço. Nomeia os **acordos de nível de serviço (SLAs)** só de passagem, então o guia os explica no Tópico 3.7 — Gestão de Níveis de Serviço.

### Gestão de serviços corporativa e automação

O artigo observa duas extensões. A **gestão de serviços corporativa (ESM)** aplica ferramentas e ideias da ITSM a outras partes de um negócio, como recursos humanos ou instalações, que também recebem pedidos e entregam serviços. A **automação de processos de TI** substitui passos manuais de rotina por passos automatizados, para que o pessoal se concentre em trabalho de maior prioridade. As duas importam para as equipes ágeis: a ESM mostra que a disciplina não está presa à TI, e a automação é como equipes pequenas acompanham o volume.

### Frameworks e padrões

O artigo lista muitos frameworks e padrões. A lista abaixo repete suas descrições de uma linha e é ampliada no Tópico 2.7 — Frameworks e Normas de ITSM.

| Nome | O que diz o artigo |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | Práticas detalhadas para a ITSM e a gestão de ativos de TI, alinhando a TI às metas do negócio |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | Uma norma internacional para sistemas de gestão de serviços, pela qual uma organização pode ser certificada |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | Um framework de governança de TI com objetivos de controle, métricas e modelos de maturidade |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | Uma norma leve, em grande parte alinhada à ISO/IEC 20000 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | Um modelo para estabelecer, gerir e melhorar serviços |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | Um framework que liga metas de negócio a objetivos de arquitetura |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Orientação de gestão de serviços baseada em tecnologias da Microsoft |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | Um framework para a gestão profissional de aplicações |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | Um framework de boas práticas para a gestão da informação |
| Business Process Framework (eTOM) | Um framework de processos para provedores de telecomunicações |

O artigo acrescenta que os frameworks de ITSM se apoiaram na ISO 9000, na ISO/IEC 27000 e no CMMI e que o ITIL versão 2 e a BS 15000, precursora da ISO/IEC 20000, foram alinhados entre si. Descreve também o USM, um sistema de gestão baseado em princípios adotado pelo governo holandês.

### O que o artigo não cobre

O artigo não tem seção de história, nem críticas, nem menção ao ágil ou ao DevOps. Esse silêncio importa. A ITSM foi criticada por excesso de processo e lentidão para mudar, e as equipes ágeis foram criticadas por negligenciar a operação, mas nenhuma das críticas aparece ali. Este guia cobre a lacuna na Parte 5, começando pelo Tópico 5.1 — Gestão Ágil de Serviços. Onde este tópico menciona problemas, apoia-se nas outras fontes do guia e na experiência prática, e diz isso.

### ITSM e ITAM

O artigo sobre o ITIL descreve o ITIL como cobrindo tanto a ITSM quanto a gestão de ativos de TI (ITAM). A ITAM é a disciplina de saber quais ativos de TI uma organização tem, quanto custam e como são usados. Os serviços dependem de ativos, e as duas disciplinas compartilham informação, e é por isso que a Parte 4 segue de perto a ITSM (veja Tópico 4.1 — Gestão de Ativos de TI).

## Boas práticas

1. **Defina seus serviços do lado do cliente.** Liste o que clientes e usuários realmente usam, nas palavras deles, como "entrar", "agendar uma consulta" e "enviar uma fatura". Agrupe a tecnologia por trás de cada um. É o começo de um catálogo de serviços (veja Tópico 3.8 — Gestão do Catálogo de Serviços).
2. **Nomeie quem são os clientes e os usuários.** Para cada serviço, escreva quem paga ou encomenda e quem usa. Se forem pessoas diferentes, verifique se os dois grupos têm voz.
3. **Dê um responsável a cada serviço.** Nomeie uma pessoa responsável pelo desempenho e pela melhoria do serviço ao longo do tempo. Sem responsável, os problemas do serviço não são tarefa de ninguém.
4. **Comece pelas atividades que mais doem.** Se a dor são as quedas, fortaleça primeiro o tratamento de incidentes. Se ninguém sabe o que mudou, comece pelos registros de mudanças. Não implante todas as práticas da ITSM de uma vez.
5. **Use uma porta de entrada única.** Dê aos usuários um só lugar para pedir ajuda e fazer requisições, e torne-o fácil. Um service desk difícil de alcançar é contornado, e então você perde a informação de que a ITSM depende.
6. **Separe incidentes de requisições e de problemas.** Um incidente é uma interrupção, uma requisição é um pedido de rotina e um problema é uma causa subjacente. Filas misturadas escondem padrões e distorcem as medidas.
7. **Registre o que importa e nada mais.** Mantenha registros de incidentes, mudanças e ativos que você usará para tomar decisões. Apague os campos que ninguém lê. Registros são um custo, e você deve saber dizer para que serve cada um.
8. **Escolha frameworks pelo problema, não pela moda.** Use ITIL, ISO/IEC 20000, COBIT ou modelos mais leves como fontes de ideias para o problema que você tem. Adote as partes que ajudam e diga quais deixou de fora.
9. **Automatize a rotina.** Procure passos repetitivos, como redefinição de senhas e concessão de acessos, e automatize-os com cuidado. Revise periodicamente as ações automatizadas para que não se afastem do que os usuários precisam.
10. **Meça o que os clientes sentem.** Acompanhe a disponibilidade, o tempo para restabelecer o serviço e a satisfação dos usuários antes de contar a atividade interna. Use a pesquisa do artigo da Wikipédia como lembrete de que os praticantes já nomeiam a experiência do cliente e a qualidade como principais objetivos.
11. **Olhe além da TI.** Se outras partes da organização tratam mal os pedidos, considere ferramentas e prática compartilhadas por meio da gestão de serviços corporativa. Não imponha o vocabulário da TI a elas.
12. **Melhore continuamente.** Reserve tempo regular para revisar o que funciona, com base nos dados de incidentes e requisições, e fazer pequenas mudanças (veja Tópico 3.15 — Melhoria Contínua).

## Perguntas para discutir com a equipe

**Que serviços fornecemos, nas palavras que os nossos usuários usariam?**

Peça a cada pessoa que escreva as três coisas para as quais os usuários mais dependem de nós. Compare as listas. As diferenças costumam mostrar que a equipe tem quadros diferentes do serviço ou que descreve serviços por tecnologia em vez de por uso. Quem facilita pode perguntar qual serviço não tem responsável claro. Em seguida, acorde uma primeira lista de serviços.

**Quem são os clientes e quem são os usuários do nosso serviço principal, e eles querem as mesmas coisas?**

Nomeie a pessoa que encomenda ou paga e as pessoas que usam. Pergunte o que cada uma quer do serviço. Na TI interna, o cliente pode se preocupar com custo e risco, e os usuários com rapidez e facilidade. Pergunte onde entram em conflito e como a equipe fica sabendo. Escolha um conflito para conversar com pessoas reais.

**Aonde os usuários vão quando precisam de ajuda, e quantos caminhos há?**

Conte as vias: um portal, um telefone, e-mail, chat, a mesa de um colega. Pergunte qual via os usuários preferem e por quê. Várias vias informais significam que parte da demanda é invisível. A discussão deve terminar numa decisão sobre quais vias manter, quais fundir e como captar o que chega por vias informais.

**Quão bem distinguimos um incidente de uma requisição e de um problema, e o que acontece quando os misturamos?**

Tome dez tickets recentes e classifique-os. Divergências mostram que as definições diferem na equipe. Pergunte o que categorias misturadas fazem com os relatórios e as prioridades. Por exemplo, muitas requisições dentro de uma fila de incidentes podem fazer o tratamento de incidentes parecer lento. Acorde definições e exemplos simples.

**Que práticas de ITSM nos faltam ou fazemos só no papel?**

Liste as práticas da tabela acima e classifique cada uma como funcionando, funcionando em parte ou só no papel. Peça um exemplo recente de cada uma classificada como funcionando. Quem facilita deve resistir ao impulso de preencher todas as lacunas e perguntar qual lacuna causa mais dano aos clientes.

**O que queremos que um framework faça por nós, e o que tememos que ele faça conosco?**

Reúna esperanças e receios quanto a adotar o ITIL ou a ISO/IEC 20000. As esperanças costumam ser consistência e credibilidade. Os receios costumam ser burocracia e lentidão. Pergunte como obter o primeiro sem o segundo. Por exemplo, adote o vocabulário e algumas práticas e evite formulários. Registre as condições de que a equipe precisaria.

## Na prática: um exemplo de ITIL ágil

Um varejista online de porte médio cresceu de um site de fundador para um negócio com uma equipe de doze engenheiros, uma base crescente de clientes e um pequeno grupo de suporte. Os clientes enviam os problemas por e-mail para uma caixa compartilhada e ligam para o celular pessoal quando o checkout falha. Os engenheiros consertam o que ouvem dizer e raramente anotam algo. Depois de uma queda de pagamentos que durou três horas, o fundador pergunta por que ninguém soube até um cliente ligar.

O chefe de engenharia propõe a ITSM mais leve possível. A equipe lista seus serviços em termos de cliente: navegar e buscar, checkout e pagamento, rastreamento de pedidos e contas de clientes. Cada um recebe um responsável. Um endereço de suporte compartilhado se torna a porta de entrada única, alimentando uma ferramenta simples de tickets com tipos separados para incidentes e requisições. Todo incidente que dure mais de 30 minutos recebe uma revisão curta, escrita num documento compartilhado. As mudanças no checkout e no pagamento são anunciadas num canal da equipe antes de acontecerem.

Depois de três meses, a equipe sabe quantos incidentes trata e descobre que a maioria vem de duas causas. Corrige as duas, e a queda do checkout não se repete. Algumas dificuldades permanecem. Os clientes ainda ligam para o fundador quando estão aborrecidos, de modo que parte da demanda contorna a ferramenta de tickets. Os engenheiros também resmungam que escrever revisões toma tempo, e duas revisões foram puladas num mês movimentado. O chefe de engenharia decide manter as revisões curtas, pedir ao fundador que encaminhe as ligações ao endereço de suporte e reexaminar, após mais um trimestre de dados, se um processo mais completo, no estilo ITIL, é necessário.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega que também operam o que constroem já fazem ITSM. Nomeie seus serviços, registre incidentes e mudanças de forma leve e compartilhe os dados com quem dá suporte aos seus serviços. Trate o service desk como fonte de evidências do que os usuários enfrentam.

### Equipes de serviço e operações

O pessoal de operações e do service desk carrega a maior parte da prática de ITSM. Ideias ágeis podem ajudar tornando o seu trabalho visível, encurtando os laços de feedback com os usuários e passando a melhoria de projetos anuais para pequenas mudanças regulares. Explique o propósito por trás de cada regra da ITSM para que os colegas possam adaptá-la com bom senso.

### Liderança e governança

Os líderes decidem quanta estrutura exigir e quanta evidência pedir. Peça resultados que os clientes sentem e algumas medidas que as equipes consigam produzir a partir de suas ferramentas. Cuidado ao comprar um framework como sinal; o artigo da Wikipédia lista muitos, e nenhum substitui conhecer os seus próprios serviços.

### Clientes e usuários

Clientes e usuários são a razão de existir da ITSM. Espere um jeito claro de pedir ajuda, informação honesta sobre o que esperar e alguém que responda por cada serviço. Em troca, dê informação oportuna e específica quando algo der errado, para que o provedor possa aprender com isso.

## Modos de falha comuns

- **Processo por si mesmo.** Formulários e aprovações se multiplicam e ninguém se lembra por quê. Em vez disso, ligue cada prática a um propósito e apague as que já não servem a um.
- **Nenhuma porta de entrada única.** Os usuários procuram quem conhecem, e a demanda é invisível. Em vez disso, ofereça uma via fácil e capture os pedidos informais nela.
- **Misturar incidentes, requisições e problemas.** Os relatórios enganam e as causas ficam escondidas. Em vez disso, use definições simples e classifique os tickets de forma consistente.
- **Serviços descritos por tecnologia.** Os usuários não encontram o que precisam e os responsáveis não são claros. Em vez disso, descreva os serviços em termos de cliente e nomeie um responsável para cada um.
- **Adotar um framework por inteiro.** As equipes copiam um framework grande e se enterram em processo. Em vez disso, comece pelo problema e leve apenas as partes que ajudam.
- **Ignorar os usuários.** O provedor fala só com o cliente que paga. Em vez disso, ouça clientes e usuários e procure conflitos.
- **Medir atividade.** Contagens de tickets e chamadas substituem evidências de qualidade do serviço. Em vez disso, meça disponibilidade, tempo para restabelecer o serviço e satisfação dos usuários.
- **Tratar a ITSM como separada da entrega.** As equipes de entrega despacham e deixam a operação se virar. Em vez disso, conecte-as por serviços compartilhados, dados compartilhados e revisões conjuntas (veja Tópico 5.1 — Gestão Ágil de Serviços).

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Definição de serviços | Os serviços são descritos por tecnologia ou nem descritos | Alguns serviços são listados com responsáveis | Todos os serviços são descritos em termos de cliente com responsáveis nomeados | As descrições dos serviços são conferidas contra uso e feedback | As definições de serviço são compartilhadas com clientes e fornecedores e ajustadas em conjunto |
| Suporte e requisições | A ajuda é pedida por vias informais | Algumas equipes têm uma ferramenta de tickets ou caixa compartilhada | Uma porta de entrada única com tipos claros para incidentes e requisições | A demanda e os tempos de resolução são acompanhados e revisados | O suporte é coordenado entre equipes e fornecedores com dados compartilhados |
| Registros e medidas | Poucos registros são mantidos | Algumas equipes registram incidentes e mudanças | Os registros são consistentes e cada um tem um propósito declarado | As medidas voltadas ao cliente são revisadas regularmente | As medidas são compartilhadas entre serviços e usadas para definir prioridades em conjunto |
| Melhoria | As correções seguem crises | Algumas equipes revisam incidentes | A revisão regular dos dados de incidentes e requisições leva a mudanças planejadas | O trabalho de melhoria tem recursos e seus resultados são conferidos | A melhoria é rotina entre equipes e com clientes |

## Lista de verificação

- [ ] Temos uma lista dos nossos serviços em linguagem de cliente.
- [ ] Cada serviço tem um responsável nomeado.
- [ ] Sabemos quem são os clientes e quem são os usuários de cada serviço.
- [ ] Os usuários têm uma porta de entrada clara para ajuda e requisições.
- [ ] Incidentes, requisições e problemas são registrados como coisas diferentes.
- [ ] Cada tipo de registro tem um propósito declarado, e os campos não usados são removidos.
- [ ] Medimos ao menos uma coisa que os clientes sentem, como disponibilidade ou tempo para restabelecer o serviço.
- [ ] Revisamos regularmente os dados de incidentes e requisições e agimos sobre eles.
- [ ] Sabemos dizer quais ideias de frameworks usamos e quais deixamos de fora.
- [ ] As tarefas de rotina que podem ser automatizadas com segurança foram identificadas.

## Prompts de IA

**Finalidade: redigir uma lista dos seus serviços em linguagem de cliente.**

```text
Help me describe the services my team provides in the words our users would use.

Who we are and what we run: [describe the team and its main systems in a few sentences].
Who uses what: [list user groups and what each group does with our systems].
What we currently call our services: [paste a list, or write "none"].

Produce a draft list of 5 to 10 services, each with a one-sentence description from the user's point of view, the customer or user groups, and a suggested owner role. Mark each item that is a guess. Do not invent systems I did not mention. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Finalidade: classificar tickets recentes em incidentes, requisições e problemas.**

```text
Here are [number] recent tickets or messages to our team: [paste short, anonymized descriptions, one per line].

Definitions to use: an incident is an unplanned disruption or potential disruption to a service; a service request is a routine request for something the service normally provides; a problem is the underlying cause of one or more incidents.

Classify each item as incident, request, or possible problem, with one sentence of reasoning that uses only what I wrote. List items you could not classify and the question I should ask to decide. At the end, tell me the share in each category from my list only. Do not invent details, and list what you are unsure of.
```

**Finalidade: escolher um pequeno primeiro conjunto de práticas de ITSM para a sua situação.**

```text
Help me choose a first set of IT service management practices for a team in this situation.

Team size and type: [describe].
Our biggest pains (with a recent example for each): [list].
Existing tools and records: [list, or write "none"].
Rules we must follow (audit, security, contracts), with source text if you have it: [paste, or write "none known"].

From these practices: service desk, incident management, problem management, change enablement, service request management, service level management, service catalog management, knowledge management, continual improvement, propose the two or three to start with and say why, using only the information above. Say what you would leave for later. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: preparar uma conversa entre uma equipe de entrega e o service desk.**

```text
Plan a 45-minute conversation between a delivery team and the service desk about how new changes are handed over.

Delivery team: [describe]. Service desk: [describe].
Recent example of a handover that went badly: [describe factually].
What the service desk says it needs: [list, or write "unknown"].

Produce an agenda, five questions for each side, and a closing step that records one agreed change with an owner. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md): use para redigir ou revisar uma lista de serviços em linguagem de cliente, com responsáveis e descrições.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): use quando estiver pronto para acordar com os clientes que nível de serviço esperar.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): use para preparar como a sua equipe trata um incidente antes que um aconteça.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use para entender que tipos de requisições e incidentes chegam e em que volume.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use para deixar claro quem é responsável por cada serviço e quem é consultado ou informado.

## Fontes principais

- **IT service management** (Wikipedia): uma definição curta com uma lista de frameworks e padrões relacionados, útil como mapa.
- **ITIL** (Wikipedia): a história e as versões do framework de ITSM mais conhecido, incluindo as mudanças de titularidade.
- **ISO/IEC 20000** (Wikipedia): contexto sobre a norma internacional para sistemas de gestão de serviços.
- **Enterprise service management** (Wikipedia): uma introdução à aplicação de ideias de ITSM além da TI.

## Referências

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
3. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
4. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
5. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
9. Application Services Library — Wikipedia — https://en.wikipedia.org/wiki/Application_Services_Library
10. Business Information Services Library — Wikipedia — https://en.wikipedia.org/wiki/Business_Information_Services_Library
11. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
12. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
