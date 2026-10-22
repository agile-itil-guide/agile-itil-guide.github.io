# Escalando a Agilidade

**Escalar a agilidade significa coordenar muitas equipes, serviços e fornecedores sem perder os laços curtos de feedback que fizeram o ágil funcionar, e o principal risco é acrescentar camadas de processo antes de saber que problema você está resolvendo.**

## Por que isso importa

Uma única equipe ágil de até dez pessoas pode conversar todos os dias. Um serviço real costuma envolver mais gente: várias equipes de entrega, um grupo de operações, um service desk, segurança, uma equipe de redes e fornecedores. Quando o trabalho de muitos grupos precisa se encaixar, a conversa diária de uma equipe não basta, e surgem novos problemas. As prioridades entram em conflito, as dependências travam o trabalho e cada equipe melhora a sua própria parte sem que o serviço como um todo melhore.

Vários frameworks dizem resolver isso. Diferem em tamanho, custo e filosofia, e atraem opiniões fortes. Algumas organizações adotam um framework grande como um programa e passam anos na implantação. Outras escalam removendo barreiras e mantendo um conjunto pequeno de regras. A posição honesta, apoiada pelo [artigo da Wikipédia sobre desenvolvimento ágil de software](https://en.wikipedia.org/wiki/Agile_software_development), é que as opiniões sobre a eficácia dos frameworks de escala divergem e as evidências são limitadas.

Para quem trabalha com gestão de serviços de TI (ITSM), a escala importa porque o ITIL já funciona em escala. Descreve um sistema de valor de serviço que liga muitas práticas e partes (veja Tópico 2.3 — O Sistema de Valor de Serviço do ITIL). A pergunta que este tópico ajuda a responder é como combinar os dois: como coordenar muitas equipes ágeis mantendo as práticas de gestão de serviços que protegem os usuários, sem construir uma segunda camada de burocracia sobre a primeira.

## Conceitos centrais

### Por que uma equipe é diferente de muitas

O artigo da Wikipédia sobre desenvolvimento ágil de software relata que escalar traz desafios quando um projeto envolve mais de cerca de 20 desenvolvedores ou quando as equipes estão distribuídas por locais diferentes. Existem estratégias e frameworks para esses casos, mas o artigo observa que há opiniões conflitantes sobre se eles se enquadram na definição de ágil.

Três problemas se repetem quando se acrescentam equipes:

- **Alinhamento:** as equipes precisam de uma direção comum e de prioridades consistentes, ou otimizarão coisas diferentes.
- **Dependências:** o trabalho de uma equipe espera por outra, e as esperas se multiplicam conforme cresce o número de equipes.
- **Integração:** o resultado de muitas equipes precisa se juntar em algo que funcione como serviço, e quanto mais tarde você testar isso, mais caras são as surpresas.

### Quatro abordagens conhecidas

A tabela a seguir resume quatro abordagens nomeadas. Os resumos se apoiam nos artigos da Wikipédia e nas páginas dos próprios donos dos frameworks, como lidos para este guia; confira as versões atuais nas fontes antes de confiar nos detalhes.

| Abordagem | Criadores ou dono | Ideia principal | Tamanho e forma |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Descrito primeiro no livro de 2007 de Dean Leffingwell, *Scaling Software Agility*; materiais publicados pela Scaled Agile, Inc. | Um conjunto de padrões de organização e fluxo de trabalho que se apoia no ágil, no desenvolvimento lean de produtos e no pensamento sistêmico | Configurações do nível de equipe e de programa (Agile Release Trains) até grandes soluções e portfólios |
| **Large-Scale Scrum (LeSS)** | Craig Larman e Bas Vodde | Escalar o próprio Scrum: um Product Owner e um Product Backlog para um produto, muitas equipes de funcionalidade multidisciplinares, com o mínimo possível de papéis e artefatos extras | LeSS para cerca de duas a oito equipes; LeSS Huge para mais, com Áreas de Requisitos de várias equipes cada uma |
| **Disciplined Agile (DA)** | Scott Ambler e Mark Lines; adquirido pelo Project Management Institute (PMI) em agosto de 2019 | Um kit de ferramentas de objetivos e opções de processo que ajuda uma equipe a escolher o próprio modo de trabalhar em contexto | Híbrido e sensível ao contexto, com vários ciclos de vida e uma camada para a empresa |
| **Scrum@Scale e outros** | Nomeados junto com o SAFe no artigo da Wikipédia | Outros frameworks para coordenar várias equipes Scrum | Veja os sites dos donos |

### O SAFe em mais detalhe

O artigo da Wikipédia diz que o SAFe foi descrito formalmente pela primeira vez em 2007, com um primeiro lançamento em 2011 e a versão 6.0 em março de 2023. Para a versão 5.1, lista quatro configurações: Essential SAFe (nível de equipe e de programa), Large Solution SAFe, Portfolio SAFe e Full SAFe. O artigo também lista dez princípios, incluindo adotar uma visão econômica e aplicar o pensamento sistêmico.

O SAFe atraiu críticas abertas, que o artigo registra. A Thoughtworks argumentou que o controle de cima para baixo gera desperdício, Ken Schwaber o criticou numa publicação de 2013 e Jeff Gothelf argumentou em 2021 que o SAFe não é ágil. Críticos o chamam de hierárquico e inflexível e dizem que pode dar à organização a aparência de agilidade mantendo os processos antigos. Defensores valorizam seu vocabulário comum e sua estrutura para grandes organizações. Leia os dois lados antes de decidir.

### LeSS: escalar removendo

Larman e Vodde descrevem o LeSS como Scrum aplicado a muitas equipes que trabalham num só produto. Ele não acrescenta nenhuma camada sobre o Scrum. Segundo a introdução do próprio framework, um Product Owner gerencia um Product Backlog e as equipes produzem um produto entregável num Sprint comum. O LeSS enuncia uma ideia de "mais com menos": menos papéis, artefatos e regras produzem equipes mais responsáveis. Para o método subjacente, veja Tópico 1.4 — Previsões de Entrega e Métricas de Planejamento.

### Disciplined Agile: escolha o seu modo de trabalhar

O artigo da Wikipédia sobre Disciplined Agile Delivery descreve um kit de ferramentas híbrido, centrado nas pessoas, que cobre todo o ciclo de vida da entrega. Suporta seis ciclos de vida e descreve 21 objetivos de processo. A abordagem é ajudar as equipes a escolher práticas que se ajustem à sua situação, em vez de prescrever um só framework. O artigo traz um aviso de manutenção de que pode se apoiar demais em fontes próximas ao assunto.

### Scrum of scrums e coordenação simples

Antes de adotar um framework, considere as ferramentas mais simples. Um "scrum of scrums" reúne representantes de várias equipes para compartilhar progresso e resolver dependências. Planejamento trimestral conjunto, um backlog comum para um produto e uma reunião regular dos líderes de equipe são outras opções leves. Muitas organizações escalam bem o bastante com isso.

### Escala numa organização de serviço

Numa organização de TI, as equipes podem ser organizadas de várias maneiras, e a escolha afeta o quanto o ágil escala:

| Organização | Como as equipes são organizadas | Efeito na escala |
|---|---|---|
| **Por componente** | Uma equipe por camada técnica ou sistema | Os recursos exigem várias equipes, então as dependências são muitas |
| **Por funcionalidade ou produto** | Equipes multidisciplinares donas de uma fatia voltada ao cliente | Menos dependências; exige padrões compartilhados para plataformas |
| **Por serviço** | Uma equipe por serviço, dona de sua construção e operação | Próximo da gestão de serviços; exige um modo de lidar com plataformas compartilhadas |
| **Plataforma mais fluxo** | Equipes que oferecem uma plataforma e equipes que a usam | Exige acordos de serviço claros entre elas |

Nenhum padrão é o melhor para todos. Passar de equipes por componente para equipes organizadas em torno de produtos ou serviços é um passo comum, e difícil, porque muda quem se reporta a quem.

### O que dizem a pesquisa e a crítica

O artigo sobre desenvolvimento ágil de software afirma que as evidências empíricas dos métodos ágeis em geral são limitadas e pouco conclusivas. Quanto aos frameworks de escala, as fontes consultadas oferecem sobretudo opiniões e material de fornecedores. Trate com cuidado qualquer alegação de melhoria medida, peça as evidências por trás dela e teste qualquer framework primeiro numa pequena parte da organização.

## Boas práticas

1. **Comece pelo problema, não pelo framework.** Nomeie o que está dando errado: dependências lentas, prioridades conflitantes, integração tardia. Escolha a abordagem mais leve que o resolva e adote mais apenas se ela não bastar.
2. **Tente primeiro a coordenação mais simples.** Planejamento compartilhado, um scrum of scrums e um backlog comum por produto resolvem muitos problemas a baixo custo. Acrescente estrutura só quando isso deixar de funcionar.
3. **Organize as equipes em torno de valor.** Prefira equipes que sejam donas de um produto ou serviço de ponta a ponta, com as habilidades para construí-lo e operá-lo. Isso reduz repasses e dependências e combina com o modo como o ITIL pensa os serviços (veja Tópico 2.6 — A Cadeia de Valor de Serviço).
4. **Mantenha uma lista ordenada por produto.** Ter um backlog de produto com um responsável, como o LeSS recomenda, remove boa parte do conflito entre equipes. Onde isso não for possível, torne visível a ordem das prioridades entre equipes.
5. **Planeje em conjunto num ritmo regular.** Reúna equipes e partes interessadas-chave a cada poucos meses para alinhar metas, dependências e riscos. Mantenha o evento curto e baseado em evidências e evite que vire uma negociação de planos detalhados.
6. **Integre continuamente.** Teste o resultado de todas as equipes em conjunto com a maior frequência possível, idealmente todo dia. A integração tardia é a razão mais comum de grandes programas surpreenderem seus patrocinadores (veja Tópico 1.6 — Extreme Programming).
7. **Torne as dependências visíveis e reduza-as.** Liste quais equipes esperam por quais e conte as esperas. Reduza-as mudando as fronteiras das equipes, compartilhando habilidades ou construindo plataformas compartilhadas com interfaces claras.
8. **Defina acordos de serviço entre equipes.** Onde uma equipe fornece uma plataforma ou serviço a outra, acorde o que se espera: disponibilidade, resposta, horário de suporte e como pedir mudanças (veja Tópico 3.7 — Gestão de Níveis de Serviço).
9. **Adapte e registre o que mudou.** Qualquer que seja o framework adotado, registre quais partes você segue, quais deixa de fora e por quê. Rótulos honestos evitam a situação em que um híbrido é julgado contra um framework que nunca pretendeu seguir.
10. **Pilote antes de implantar.** Experimente a abordagem com poucas equipes, meça os resultados que lhe importam e aprenda. Amplie-a só quando o piloto mostrar um benefício que você saiba descrever.
11. **Mantenha a governança leve e baseada em resultados.** Peça evidências como fluxo de entrega, tendências de incidentes e feedback dos usuários, e não relatórios de status que cada equipe escreve num formato diferente (veja Tópico 5.7 — Governança, Risco e Conformidade).
12. **Revise a estrutura regularmente.** Faça uma revisão uma ou duas vezes por ano para perguntar se as fronteiras das equipes, os papéis e as cerimônias ainda servem ao trabalho. Estruturas certas para 30 pessoas podem estar erradas para 300.

## Perguntas para discutir com a equipe

**Que problema esperamos que a escala resolva, e como saberemos que foi resolvido?**

Peça às pessoas que nomeiem a dor: integração tardia, prioridades conflitantes, longas esperas por outras equipes. Anote cada uma com um exemplo recente. Um framework escolhido sem um problema declarado é uma solução à procura de um problema. Quem facilita pode perguntar qual seria a correção mais simples possível para cada problema e que evidência mostraria que funcionou.

**De quais outras equipes mais esperamos, e quanto esperamos?**

Mapeie as dependências numa parede e acrescente a espera típica de cada uma. As equipes que se achavam independentes costumam se surpreender. Pergunte quais dependências são reais e quais vêm de fronteiras históricas entre equipes. Escolha uma dependência a remover, seja mudando a organização das equipes, seja compartilhando habilidades.

**Quem decide a ordem do trabalho entre as nossas equipes, e como descobrimos?**

Acompanhe um conflito de prioridade recente do início à resolução. Procure escalonamentos, reuniões e acordos informais. Pergunte se uma única pessoa responsável, como no LeSS, poderia tomar a decisão. Considere o que se perderia ou ganharia. Um bom resultado é um caminho claro para decidir conflitos, mesmo que não seja um novo papel.

**O que um framework como SAFe, LeSS ou Disciplined Agile nos daria que não conseguimos obter a custo menor?**

Peça a alguém que leu sobre cada um que o explique em poucas frases e peça as críticas mais fortes. O artigo da Wikipédia sobre o SAFe lista várias, e os sites dos donos dos frameworks listam benefícios. Quem facilita deve manter a discussão prática: o que faríamos na segunda-feira se o adotássemos e quem precisaria mudar o quê? Decida o que experimentar, se algo, e o que deixar como está.

**Como testamos que o trabalho de todas as nossas equipes se encaixa, e com que frequência?**

Conte os dias entre uma mudança de uma equipe e seu primeiro teste com as mudanças de todas as outras. Intervalos maiores significam surpresas maiores. Pergunte o que impede a integração diária, como ambientes, dados de teste ou propriedade. Escolha uma barreira a remover.

**Quais dos nossos controles se aplicam a todas as equipes do mesmo modo, e quais deveriam depender do risco?**

Liste os controles padrão, como revisões, aprovações e relatórios. Pergunte quais deles são ajustados para trabalho de baixo risco. Controles uniformes são fáceis de administrar e lentos para todos. Controles que dependem do risco precisam de critérios claros. Escolha um controle a revisar.

## Na prática: um exemplo de ITIL ágil

O grupo de TI de um grande banco de varejo tem 14 equipes de entrega e um grupo central de operações. Cada equipe adotou o Scrum, mas os clientes do banco veem pouca melhoria. Os releases do aplicativo bancário móvel exigem mudanças de cinco equipes, e cada release é coordenado por um escritório de programa que acompanha as dependências numa planilha. Um release recente atrasou três semanas porque duas equipes descobriram na última hora que suas mudanças eram incompatíveis.

Um arquiteto e o chefe de operações fazem um estudo de seis meses de releases. Descobrem que a maioria dos atrasos vem da integração tardia e de prioridades pouco claras entre as equipes que compartilham um backlog de funcionalidades móveis. Consideram adotar um framework grande, mas decidem começar pequeno. Criam um único backlog para o aplicativo móvel, com um product owner responsável, e fundem o planejamento das cinco equipes numa sessão conjunta a cada seis semanas. Montam um pipeline compartilhado que constrói e testa as mudanças de todas as equipes juntas toda noite e incluem o grupo de operações na sessão de planejamento conjunta.

Depois de dois trimestres, o número de incompatibilidades de última hora cai e os releases saem a cada duas semanas. Alguns problemas continuam. A product owner luta com o volume de pedidos e gasta a maior parte do tempo em arbitragem, e duas equipes ainda dependem de uma equipe central de banco de dados com uma fila longa. O banco concorda em tornar visível a fila da equipe de banco de dados no planejamento conjunto e em experimentar um caminho de autosserviço para mudanças comuns no banco de dados. Decide também adiar qualquer decisão sobre framework até que uma segunda área de produto tenha experimentado a mesma abordagem.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega carregam a maior parte do fardo da escala: planejamento compartilhado, pipelines compartilhados e acordos com os vizinhos. Trabalhe para reduzir dependências na origem, aprendendo as habilidades da equipe seguinte ou construindo interfaces que não exijam coordenação. Participe dos eventos de planejamento com informação real sobre progresso e risco.

### Equipes de serviço e operações

O pessoal de operações deve fazer parte do planejamento desde o início, já que muitas dependências entre equipes são operacionais: ambientes, acesso, monitoramento e suporte. Leve dados de serviço à sessão de planejamento e acorde níveis de serviço com as equipes que dependem de você. Defenda plataformas que deem autosserviço às equipes de entrega.

### Liderança e governança

Os líderes moldam a estrutura que decide o quanto a escala funciona. Resista à tentação de comprar um framework como substituto para decidir o que a organização quer ser. Peça uma declaração clara do problema, um piloto e evidências. Mantenha os relatórios leves e aceite que mudanças de estrutura podem ser desconfortáveis para os gestores.

### Clientes e usuários

Os clientes devem ver um serviço coerente e não as emendas entre equipes. Espere um ponto de contato único para um produto e um caminho claro para pedidos. Diga ao product owner o que mais importa e espere que a resposta inclua compromissos entre demandas concorrentes.

## Modos de falha comuns

- **Comprar um framework para evitar uma decisão.** A organização adota um framework na esperança de que ele resolva divergências sobre prioridades. Em vez disso, decida quem tem autoridade sobre as prioridades e só então veja qual framework, se algum, ajuda.
- **Copiar um diagrama.** Papéis e reuniões são acrescentados sem entender as razões. Em vez disso, adote apenas os elementos que tratam de um problema nomeado.
- **Acrescentar camadas.** Coordenadores, escritórios de programa e comitês se multiplicam enquanto as equipes perdem autonomia. Em vez disso, remova dependências para que haja menos a coordenar.
- **Integração tardia.** As equipes integram no fim de um ciclo longo. Em vez disso, integre e teste todas as mudanças juntas diariamente.
- **Controles uniformes.** Toda equipe segue o mesmo processo pesado, seja qual for o risco. Em vez disso, baseie os controles no risco e torne rápidos os caminhos de baixo risco.
- **Ignorar a operação.** O planejamento inclui desenvolvedores e gerentes de produto, mas nenhum pessoal de operações. Em vez disso, inclua a operação no planejamento conjunto e compartilhe dados de serviço.
- **Julgar um híbrido pelo framework.** Críticos dizem que não é o framework, e defensores dizem que é. Em vez disso, dê à sua abordagem um nome próprio e descreva-a.
- **Nunca rever a estrutura.** Fronteiras traçadas para 30 pessoas persistem em 300. Em vez disso, revise a estrutura de equipes e papéis ao menos uma vez por ano.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Alinhamento e prioridades | Cada equipe define suas próprias prioridades | Algumas equipes compartilham um backlog ou se reúnem para alinhar | Os produtos têm um backlog ordenado e planejamento conjunto num ritmo regular | O alinhamento é conferido contra resultados e as dependências são medidas | As prioridades são ajustadas continuamente entre equipes, clientes e fornecedores |
| Dependências | As esperas por outras equipes não são geridas | Algumas equipes listam suas dependências | As dependências são visíveis e existem acordos entre equipes | Os tempos de espera por dependências são medidos e reduzidos | As fronteiras das equipes são remodeladas a partir de evidências para remover dependências |
| Integração | A integração acontece no fim | Algumas equipes integram com mais frequência | Pipelines compartilhados integram e testam com frequência as mudanças de todos | Falhas de integração e suas causas são acompanhadas e corrigidas | Ambientes e testes de integração são compartilhados e aprimorados entre equipes |
| Governança e estrutura | Os controles são uniformes e lentos | Existem alguns caminhos de baixo risco | Os controles variam segundo o risco, com critérios claros | Resultados e eficácia dos controles são revisados | Estrutura e controles são revisados e ajustados em toda a organização de forma rotineira |

## Lista de verificação

- [ ] Sabemos enunciar em uma frase o problema que a escala deve resolver.
- [ ] Mapeamos as dependências entre as nossas equipes e conhecemos a espera típica de cada uma.
- [ ] Cada produto tem um backlog ordenado com um responsável.
- [ ] Equipes e partes interessadas-chave planejam juntas num ritmo regular.
- [ ] O resultado de todas as equipes é construído e testado em conjunto ao menos diariamente.
- [ ] As equipes que oferecem plataformas ou serviços a outras têm acordos de serviço escritos.
- [ ] O pessoal de operações participa do planejamento entre equipes.
- [ ] Os controles variam com o risco, e o caminho de baixo risco é rápido.
- [ ] Qualquer framework que adotarmos foi pilotado antes em pequena escala.
- [ ] Registramos quais partes de qualquer framework seguimos e quais não.
- [ ] A estrutura de equipes e papéis é revisada ao menos uma vez por ano.

## Prompts de IA

**Finalidade: mapear dependências entre equipes a partir da descrição de um trabalho recente.**

```text
Help me understand the dependencies between teams in a recent delivery.

Teams involved: [list the teams and what each does].
Recent delivery: [describe a recent release or project that needed work from several teams, with approximate dates for when each team finished and what it waited for].

Using only what I wrote, produce a table of dependencies (which team waited on which, for what, and for roughly how long). Highlight the three longest waits. For each, suggest one way to reduce the dependency and one question to ask the teams. Do not invent durations. Ask me clarifying questions first if the description is thin, mark assumptions, and list what you are unsure of.
```

**Finalidade: comparar opções de escala com um problema declarado.**

```text
Our problem: [describe in 3-5 sentences, with a recent example].
Number of teams and people: [numbers].
Our current coordination: [for example weekly meeting of team leads, a program office, none].

From the text I paste below, summarize what each of these approaches proposes: [paste short excerpts or summaries from the owners' public pages for the approaches you are considering, such as SAFe, LeSS, Disciplined Agile, or a simple scrum of scrums]. Use only the pasted text.

Then, for each approach, list which parts of our problem it addresses, what it would require of us, and what questions we should ask its owner. Do not state anything about an approach that is not in the pasted text. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: planejar uma sessão de planejamento conjunta para várias equipes.**

```text
Plan a half-day joint planning session for [number] teams working on [product or service].

Participants: [roles].
Inputs available: [for example each team's backlog, a list of dependencies, recent incident data].
Constraints: [for example people in different time zones].

Give a timed agenda that covers shared goals, dependencies, risks, and the plan for the next [period]. Include what each team brings, what the facilitator does, and a closing step that records agreed commitments and open questions. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: escrever um acordo entre uma equipe de plataforma e as equipes que a usam.**

```text
Help me draft a one-page working agreement between a team that provides [platform or service] and the teams that use it.

What the platform team does today: [describe].
What the using teams need: [list, or write "unknown"].
Known constraints: [support hours, security rules, tools].

Draft sections for scope, how to request changes, availability and response expectations (leave numbers as [to be agreed] and do not invent them), how incidents are handled, and how the agreement is reviewed. Mark every item that is an assumption. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): use para entender os papéis, eventos e níveis do SAFe e julgar de quais partes você precisa.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): use para aplicar o Scrum a várias equipes que trabalham num só produto.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): use para escolher práticas por objetivo de processo para o seu contexto.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): use como modo leve de coordenar poucas equipes antes de adotar um framework.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): use para decidir como vários produtos e iniciativas são escolhidos e financiados.

## Fontes principais

- **Scaled agile framework** (Wikipedia): um panorama da história, das configurações e das críticas ao SAFe, com citações.
- **Introduction to LeSS** (less.works): a breve descrição dos criadores sobre o Large-Scale Scrum e sua ideia de "mais com menos".
- **Disciplined agile delivery** (Wikipedia): um resumo do kit de ferramentas, de seus ciclos de vida e de seus objetivos.
- **Agile software development** (Wikipedia): a seção sobre trabalho em larga escala, offshore e distribuído e a discussão sobre opiniões conflitantes a respeito de frameworks de escala.

## Referências

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
