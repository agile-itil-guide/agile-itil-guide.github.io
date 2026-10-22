# Gestão do Catálogo de Serviços

**Um catálogo de serviços (o ITIL, em inglês, grafa "service catalogue") é uma lista curada do que uma organização oferece, com um responsável e uma descrição simples para cada serviço, e seu valor depende de os usuários o acharem útil e de os responsáveis o manterem verdadeiro.**

## Por que isso importa

Pergunte a um usuário o que a TI oferece e muitas vezes obterá uma resposta vaga. Pergunte à equipe de TI e obterá uma lista de sistemas. As duas listas raramente coincidem, e a distância causa mal-entendidos: os usuários pedem coisas que não existem, as equipes dão suporte a serviços que ninguém usa e ninguém sabe dizer quem responde pelo quê. Um catálogo de serviços fecha essa distância ao declarar, num só lugar e em termos simples, o que é oferecido e quem responde por isso.

Para as equipes ágeis, o catálogo também é um modo de tornar a responsabilidade visível. Uma equipe que constrói e opera um serviço deve saber dizer: "isto é o que oferecemos, esta é a pessoa a quem perguntar, isto é o que você pode esperar". Sem isso, os pedidos chegam ao lugar errado, os incidentes pulam entre equipes e os novos funcionários não encontram ajuda.

O [artigo da Wikipédia sobre catálogos de serviços](https://en.wikipedia.org/wiki/Service_catalog) descreve um catálogo de serviços como uma coleção organizada e curada de serviços de negócio e de tecnologia da informação dentro de uma empresa, que funciona como ferramenta de gestão do conhecimento ao designar especialistas para cada serviço listado. Observa que o volume Service Design do ITIL define um catálogo de serviços de TI como uma lista exaustiva de serviços exclusivamente de TI e a única parte do portfólio de serviços publicada aos clientes, sem especificar a edição do ITIL. Este tópico se apoia nessa descrição e nos demais tópicos do guia e mantém o catálogo prático e leve.

## Conceitos centrais

### O que há num catálogo

Segundo a Wikipédia, cada entrada de um catálogo de serviços costuma incluir um responsável nomeado, uma descrição, uma categoria, tipos de requisição relacionados, serviços de apoio, direitos de uso, custos, como o serviço é solicitado e atendido e contatos de escalonamento. Categorias comuns incluem TI, operações e atendimento. Você não precisa de tudo isso para todo serviço. Um bom catálogo começa com os poucos campos de que usuários e pessoal de suporte de fato precisam.

| Campo | Por que ajuda | Quem usa |
|---|---|---|
| **Nome e descrição em palavras simples** | Os usuários reconhecem o que é oferecido | Usuários, service desk |
| **Responsável** | Alguém responde pelo serviço | Todos |
| **Quem pode usar (direito de uso)** | Evita requisições inúteis | Usuários, service desk |
| **Como pedir ou obter ajuda** | Leva os usuários ao lugar certo | Usuários, service desk |
| **De que depende (serviços de apoio)** | Mostra o que mais precisa funcionar | Operações, equipes de entrega |
| **Custo, se cobrado** | Apoia decisões e orçamentos | Clientes, finanças |
| **Nível de serviço ou expectativa** | Define expectativas | Usuários, clientes (veja Tópico 3.7 — Gestão de Níveis de Serviço) |
| **Contato de escalonamento** | Acelera a ajuda durante problemas | Service desk, operações |

### Catálogo e portfólio

O artigo da Wikipédia situa o catálogo de serviços de TI como um subconjunto do catálogo corporativo mais amplo. No vocabulário do ITIL, o portfólio de serviços é o conjunto completo de serviços, incluindo os em desenvolvimento e os em aposentadoria, e o catálogo é a parte publicada aos clientes. As fontes lidas aqui não definem o portfólio em detalhe: o artigo sobre gestão do portfólio de serviços redireciona para a gestão de portfólio de TI, que diz apenas que o ITIL v3 pede uma prática de gestão do portfólio de serviços que parece funcionalmente equivalente à gestão de portfólio de TI. Trate a ideia de portfólio assim: o catálogo é o que você oferece agora, e o portfólio é também o que você está construindo e aposentando (veja Tópico 5.7 — Governança, Risco e Conformidade para escolhas de portfólio).

### Catálogos corporativos e de TI

Um catálogo de serviços corporativo cobre serviços de várias funções, como recursos humanos, instalações e TI. Um catálogo de serviços de TI é um subconjunto. O artigo cita benefícios de um catálogo: centralizar serviços em empresas distribuídas, identificar lacunas e redundâncias de serviços, acompanhar a alocação de recursos e medir demanda, oferta, tempos de aprovação, tempos de entrega e finanças dos serviços. Para serviços em nuvem, cita o autoprovisionamento e as definições padronizadas que ajudam o planejamento de capacidade e as previsões de compra. São afirmações do artigo, com base nas fontes que ele cita.

### Visão de negócio e visão técnica

Muitas organizações distinguem o que os clientes veem do que o provedor precisa internamente. As fontes lidas aqui não fazem a distinção, então trate-a como prática comum. A **visão voltada ao cliente** lista os serviços nos termos do usuário ("E-mail e calendário"). A **visão técnica** lista componentes e equipes por trás deles ("Servidores de correio, filtro de spam, serviço de diretório"). A visão do cliente ajuda os usuários a escolher. A visão técnica ajuda a operação a entender as dependências (veja Tópico 4.4 — Gestão de Configuração). Mantenha as duas ligadas, mas separadas, para que os usuários não se deparem com nomes de componentes.

### O catálogo como ferramenta de conhecimento

O artigo da Wikipédia enfatiza que o catálogo designa especialistas para cada serviço. Isso o torna um mapa de quem sabe o quê. Um catálogo mantido atualizado ajuda o service desk a rotear contatos, ajuda os novos funcionários a encontrar ajuda e ajuda quem responde a incidentes a alcançar a pessoa certa (veja Tópico 3.9 — Gestão do Conhecimento).

### Catálogo e requisições

O catálogo costuma incluir as requisições que os usuários podem fazer para cada serviço, como "pedir acesso" ou "relatar uma falha". Um modelo de requisição descreve como cada uma é atendida (veja Tópico 3.6 — Gestão de Requisições de Serviço). Nem todo serviço precisa de requisições, e nem toda requisição precisa de uma entrada no catálogo, mas as requisições frequentes devem ser fáceis de achar.

### Mantendo-o verdadeiro

Um catálogo envelhece depressa se ninguém é responsável por ele. Os serviços mudam, as equipes se reorganizam e as descrições se afastam da realidade. A disciplina mais útil é um ciclo de revisão: cada responsável confirma suas entradas num calendário e os serviços não usados são aposentados. O artigo da Wikipédia não discute críticas nem limites, mas a experiência prática é coerente: um catálogo errado é pior que nenhum, porque manda as pessoas ao lugar errado com confiança.

### Catálogos e equipes ágeis

As equipes ágeis muitas vezes resistem a catálogos pesados porque esperam burocracia. Um catálogo leve é compatível com os modos de trabalhar ágeis. Pode ser um documento ou página compartilhada, mantida pelos próprios responsáveis, com poucos campos por serviço. O teste é o uso: os usuários e o desk de fato o consultam?

## Boas práticas

1. **Liste os serviços nas palavras dos usuários.** Comece perguntando a usuários e ao service desk como chamariam cada coisa. Nomeie os serviços pelo que os usuários fazem ("Participar de uma videorreunião") e não pela tecnologia ("Plataforma de conferência").
2. **Dê a cada serviço um responsável nomeado.** Uma pessoa deve responder por cada serviço. Onde um serviço tem várias partes, nomeie um responsável pelo todo e liste os contribuintes.
3. **Comece pequeno.** Comece com os 10 a 20 serviços sobre os quais os usuários mais perguntam. Acrescente mais à medida que aprender o que é útil. Uma lista curta e exata é melhor que uma longa e desatualizada.
4. **Inclua apenas o que as pessoas usam.** Para cada campo, pergunte quem o usa e para quê. Remova os campos que ninguém usa. Acrescente um campo apenas quando alguém precisar.
5. **Ligue a requisições e ajuda.** Para cada serviço, mostre como pedir algo, relatar uma falha e encontrar ajuda. Ligue à base de conhecimento (veja Tópico 3.9 — Gestão do Conhecimento).
6. **Mostre as expectativas de serviço.** Declare o que os usuários podem esperar, como horário de suporte e resposta típica, em termos simples. Ligue ao acordo formal onde houver.
7. **Registre as dependências.** Para cada serviço, anote os principais serviços e fornecedores de que depende. Isso ajuda a resposta a incidentes e o planejamento de mudanças.
8. **Separe a visão do cliente da visão técnica.** Mantenha as descrições voltadas ao usuário livres de jargão. Ligue-as aos registros técnicos onde existirem.
9. **Revise num calendário.** Peça a cada responsável que confirme suas entradas ao menos duas vezes por ano e aposente os serviços que ninguém usa. Mostre a data da última revisão em cada entrada.
10. **Facilite achá-lo e usá-lo.** Coloque o catálogo onde os usuários já olham, como a intranet ou o portal. Teste a busca com consultas reais.
11. **Use o catálogo para achar lacunas e sobreposições.** Procure serviços sem responsável, serviços que se duplicam e requisições sem serviço correspondente. Leve os achados ao planejamento (veja Tópico 5.5 — Propriedade de Produtos e Serviços).
12. **Trate mudanças no catálogo como mudanças de serviço.** Quando acrescentar, alterar ou aposentar um serviço, anuncie ao desk e aos usuários afetados, como faria com um release.

## Perguntas para discutir com a equipe

**Se um novo colega perguntasse o que oferecemos, o que responderíamos, e todos diríamos a mesma coisa?**

Peça a cada pessoa que liste os serviços em dois minutos e depois compare. As diferenças mostram o quão difusas são as fronteiras. Quem facilita pode perguntar quais itens os usuários não reconheceriam. Use a lista combinada como rascunho de catálogo e marque os itens em que há desacordo.

**Quais serviços não têm responsável claro?**

Percorra a lista e marque os serviços de que ninguém sabe dizer quem responde. Serviços sem responsável costumam causar os maiores atrasos em incidentes e requisições. Pergunte o que impede uma pessoa de assumir a responsabilidade: tempo, autoridade ou fronteiras pouco claras. Acorde um responsável ou uma decisão de aposentar para cada um.

**O que os usuários pedem que não listamos, e o que listamos que ninguém pede?**

Compare os dados de requisições com a lista. Requisições sem serviço correspondente revelam lacunas; serviços listados sem requisições revelam candidatos à aposentadoria. Cuidado: alguns serviços são usados em silêncio. Pergunte aos usuários antes de remover. Escolha uma lacuna e um candidato para examinar.

**O que um usuário precisaria ver para escolher o serviço certo sem nos ligar?**

Tome uma escolha comum, como qual ferramenta usar para compartilhar arquivos. Pergunte que informação ajudaria: uma breve descrição, para quem é, uma comparação. Redija uma entrada de um parágrafo e teste-a com dois usuários. O objetivo é um catálogo que desvie chamadas por ser claro.

**Como descobrimos que um serviço mudou e o catálogo está desatualizado?**

Pergunte quando foi a última revisão e quem a fez. Discuta gatilhos, como uma reorganização ou um grande release, e um ciclo regular. Uma data de "última revisão" visível em cada entrada ajuda. Acorde a data da primeira revisão e quem é responsável.

**De que dependemos que não está no catálogo?**

Liste as plataformas e fornecedores por trás dos seus serviços. Pergunte quais estão listados e quem é responsável por eles. Dependências sem responsável são riscos. Escolha uma para acrescentar à visão técnica.

## Na prática: um exemplo de ITIL ágil

Um conselho regional tem 120 pessoas no departamento de TI, que atende 2.500 funcionários do conselho e vários serviços voltados ao público. Os funcionários reclamam de não saber a quem pedir ajuda, e o service desk gasta boa parte do tempo redirecionando chamadas. O conselho já construiu um catálogo de serviços com 300 entradas, mas ele é raramente usado e está em grande parte desatualizado.

A chefe da entrega de serviços decide recomeçar, pequeno. Pede ao service desk os 30 motivos mais comuns de contato e os agrupa em 15 serviços nas palavras dos usuários: "E-mail e calendário", "Arquivos e compartilhamento", "Notebooks e dispositivos", "Site do conselho", "Sistema financeiro" e assim por diante. Para cada um, um responsável nomeado escreve quatro coisas: uma descrição de duas frases, para quem é, como obter ajuda e o que esperar. As dependências são registradas numa lista técnica separada para a operação. O catálogo é uma única página web na intranet do conselho, e cada entrada mostra a data da última confirmação por seu responsável.

Depois de três meses, as chamadas ao desk sobre a quem perguntar diminuem, e os responsáveis notam lacunas: ninguém era dono do sistema de reserva de salas de reunião, e dois serviços se sobrepunham. São atribuídos e fundidos. Problemas permanecem. Três responsáveis não confirmaram suas entradas, e alguns funcionários ainda ligam para o desk por hábito. A chefe da entrega de serviços define um ciclo de lembretes e combina com o desk que aponte o catálogo a quem liga enquanto trata o pedido. Descobre também que algumas entradas estão escritas em linguagem técnica e pede a uma oficial de comunicação que as revise.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega devem ser nomeadas responsáveis pelos serviços que constroem e operam e manter suas entradas atualizadas. Quando lançar ou aposentar um serviço, atualize o catálogo e avise o service desk. Use o catálogo para descobrir com quem falar sobre uma dependência.

### Equipes de serviço e operações

Operações e o service desk são os maiores usuários. Diga aos responsáveis o que está errado ou falta nas entradas e use o catálogo para roteamento e escalonamento. Mantenha a visão técnica ligada à visão do cliente, para que quem responde a incidentes veja o que depende de quê.

### Liderança e governança

Os líderes podem usar o catálogo para ver o que a organização oferece, o que se sobrepõe e o que está órfão. Peça que lacunas e duplicatas sejam tratadas e que responsáveis sejam nomeados. Não exija todos os campos para todos os serviços; peça o que apoia decisões.

### Clientes e usuários

Clientes e usuários têm uma visão clara do que podem pedir e do que esperar. Use o catálogo para achar o serviço certo e avise os responsáveis quando uma entrada estiver errada ou pouco clara. Se você não encontra o que precisa, diga, pois isso é evidência de uma lacuna.

## Modos de falha comuns

- **Grande demais, cedo demais.** Centenas de entradas são criadas e não mantidas. Em vez disso, comece pelos serviços mais usados e cresça.
- **Escrito na linguagem do provedor.** Os usuários não encontram o que precisam. Em vez disso, nomeie os serviços pelo que os usuários fazem e teste com usuários.
- **Sem responsáveis.** Ninguém mantém as entradas verdadeiras. Em vez disso, nomeie um responsável para cada entrada e mostre as datas de revisão.
- **Um catálogo que ninguém usa.** Fica num site que os usuários não visitam. Em vez disso, coloque-o onde as pessoas já olham e faça o desk apontá-lo.
- **Misturar as visões do cliente e a técnica.** Os usuários enfrentam nomes de componentes. Em vez disso, mantenha uma visão clara do cliente e ligue uma técnica para a operação.
- **Nenhuma aposentadoria.** Serviços mortos continuam listados. Em vez disso, revise o uso e aposente o que ninguém precisa.
- **Tratá-lo como projeto pontual.** O catálogo envelhece após o lançamento. Em vez disso, defina um ciclo de revisão e faça dele parte das mudanças.
- **Campos obrigatórios demais.** Os responsáveis preenchem campos só para satisfazer o modelo. Em vez disso, exija só o que alguém usa.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Cobertura e clareza | Os serviços são conhecidos informalmente | Existe uma lista de alguns serviços | Um catálogo dos serviços principais nas palavras dos usuários, com responsáveis | O uso e as lacunas são medidos e o catálogo é ajustado | O catálogo abrange funções e parceiros e é moldado com os usuários |
| Responsabilidade e atualidade | Ninguém é dono da lista | Alguns responsáveis confirmam as entradas ocasionalmente | Toda entrada tem um responsável e uma data de revisão | As revisões em atraso são acompanhadas e resolvidas | Responsabilidade e revisão são rotina em toda a organização |
| Ligação com requisições e ajuda | As requisições vão por e-mail ou telefone | Algumas entradas ligam a formulários ou ajuda | As entradas ligam a requisições, conhecimento e rotas de suporte | Cliques e desvio de chamadas são medidos | Requisições, conhecimento e suporte são integrados entre funções |
| Dependências e decisões | As dependências são conhecimento tribal | Algumas dependências são listadas | As dependências são registradas e usadas no trabalho de incidentes e mudanças | Os dados de dependências apoiam o planejamento e a revisão de riscos | As dependências são compartilhadas com fornecedores e usadas para planejar em conjunto |

## Lista de verificação

- [ ] Temos uma lista de serviços nas palavras dos usuários, começando pelos mais usados.
- [ ] Todo serviço tem um responsável nomeado.
- [ ] Cada entrada diz para quem é, como obter ajuda e o que esperar.
- [ ] O catálogo está onde usuários e service desk já olham.
- [ ] As entradas mostram a data da última confirmação.
- [ ] Os responsáveis revisam suas entradas ao menos duas vezes por ano.
- [ ] As principais dependências estão registradas numa visão técnica.
- [ ] Os serviços não usados são revisados para aposentadoria.
- [ ] Acrescentar, alterar ou aposentar um serviço é anunciado ao desk e aos usuários.
- [ ] Testamos o catálogo com consultas reais de usuários.

## Prompts de IA

**Finalidade: transformar dados de contatos num rascunho de lista de serviços nas palavras dos usuários.**

```text
Below are the reasons people contacted our service desk in the last [period]: [paste short, anonymized descriptions or category counts].

Group them into 10 to 20 candidate services, each named in plain words that a non-technical user would recognize, such as "Email and calendar." For each, give a two-sentence description based only on the contacts, the contacts that fit under it, and a question to ask its owner. List contacts that do not fit. Do not invent services or systems that do not appear in the data. Ask clarifying questions first if the data is thin, and list what you are unsure of.
```

**Finalidade: escrever uma entrada clara de catálogo.**

```text
Help me write a service catalog entry for [service].

What it does, in my own words: [describe].
Who may use it: [describe].
How users get help or make requests: [describe].
Support hours and what users can expect: [describe, or write "unknown"].
Main things it depends on: [list].
Owner: [role].

Write a short entry for users (no jargon, under 80 words) and a separate technical note for operations. Mark anything you added as an assumption. Do not invent service levels or contacts. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: revisar um catálogo em busca de lacunas, sobreposições e órfãos.**

```text
Here is our service catalog (names, owners, descriptions, and last review dates): [paste].
Here is data on what users request or report: [paste counts by topic, or write "none"].

Using only this text, list: services with no owner or an overdue review; pairs of services that seem to overlap; request topics with no matching service; and services with no requests in the data. For each, suggest a question for the owner or the desk rather than a conclusion. Do not guess about services not listed. List what you are unsure of.
```

**Finalidade: planejar uma revisão do catálogo com os responsáveis.**

```text
Plan a 60-minute review of our service catalog with [number] service owners.

State of the catalog: [describe, such as number of entries and how old they are].
Problems we know of: [list].

Give a timed agenda that has each owner confirm or correct their entries, look at overlaps and gaps, decide what to retire, and agree a review date. Include a one-page template for owners to prepare. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md): use para redigir entradas e estruturar um catálogo de serviços.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): use para entender quem usa cada serviço e do que precisa.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use para descobrir quais requisições e serviços são mais usados.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use para registrar quem é dono, quem dá suporte e quem é consultado sobre cada serviço.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): use para planejar como os serviços serão acrescentados, alterados ou aposentados ao longo do tempo.

## Fontes principais

- **Service catalog** (Wikipedia): uma breve descrição do conteúdo, dos benefícios e da definição do ITIL de catálogo de serviços de TI.
- **IT portfolio management** (Wikipedia): contexto sobre conceitos de portfólio, incluindo a nota de que a gestão do portfólio de serviços do ITIL v3 parece funcionalmente equivalente.
- **ITIL** (Wikipedia): contexto sobre as versões do ITIL e de onde vêm as ideias de catálogo e portfólio.
- **Knowledge management** (Wikipedia): contexto sobre como os catálogos funcionam como ferramentas de conhecimento.

## Referências

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
