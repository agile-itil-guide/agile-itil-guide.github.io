# Propriedade de Produtos e Serviços

**A propriedade de produtos e serviços dá a cada produto ou serviço uma pessoa responsável e uma equipe que o constrói e o opera, para que as decisões sobre valor, qualidade e custo sejam tomadas pelas pessoas que vivem com os resultados.**

## Por que isso importa

Em muitas organizações, ninguém é dono de um serviço como um todo. Um projeto o constrói, uma equipe de operações o opera, um fornecedor entrega uma parte e um departamento de finanças o paga. Quando algo dá errado, há quatro reuniões e nenhuma decisão. Quando os usuários querem algo melhorado, o pedido vai para uma fila que não pertence a ninguém. O serviço decai entre as equipes.

A propriedade trata isso diretamente. Pede duas coisas: uma pessoa que responda pelo valor do produto ou serviço e uma equipe que tenha as habilidades e a autoridade para construí-lo, operá-lo e melhorá-lo. A ideia é antiga em algumas formas e da moda em outras, e os detalhes diferem muito entre organizações. Acertar isso é uma das condições mais importantes para tudo o mais neste guia funcionar.

Duas ideias estão por trás do tópico. A primeira é o Product Owner do Scrum Guide, que responde por maximizar o valor do produto e por ordenar seu backlog e que é uma pessoa e não um comitê (veja Tópico 1.4 — Previsões de Entrega e Métricas de Planejamento). A segunda é o slogan "you build it, you run it" (você constrói, você opera), associado ao diretor de tecnologia da Amazon, Werner Vogels, numa entrevista publicada na ACM Queue em 2006, que este guia não pôde ler diretamente (a página retornou um erro de acesso) e conhece por descrições secundárias. Como essas descrições o relatam, Vogels contrastou o modelo antigo, em que os desenvolvedores jogam o software por cima do muro para as operações, com um em que os desenvolvedores permanecem em contato diário com a operação de seu software e com o cliente. O [artigo da Wikipédia sobre gestão de produtos](https://en.wikipedia.org/wiki/Product_management) dá uma descrição geral da disciplina, mas nada diz sobre o papel de product owner ágil nem sobre a propriedade de serviços, então este tópico faz o trabalho de ligação e o diz.

## Conceitos centrais

### Produto, serviço, projeto

| Termo | Significado, no uso comum | Horizonte de tempo |
|---|---|---|
| **Projeto** | Um esforço temporário com escopo, início e fim definidos | Termina quando o escopo é entregue |
| **Produto** | Algo oferecido a clientes ou usuários que é desenvolvido e melhorado ao longo do tempo | Continua enquanto cria valor |
| **Serviço** | Um modo de entregar valor a outros sem que eles tenham os custos e riscos (veja Tópico 2.1 — Gestão de Serviços de TI) | Continua enquanto é oferecido |

Um produto digital muitas vezes é também um serviço: os usuários dependem de que funcione bem. A distinção entre produto e serviço importa menos que a passagem de projeto para responsabilidade contínua, como descreve o Tópico 1.9 — Gestão Ágil.

### Gestão de produtos

O artigo da Wikipédia descreve a gestão de produtos como o processo de negócio de planejar, desenvolver, lançar e gerir um produto ou serviço, garantindo que os produtos atendam às necessidades do mercado-alvo e apoiem a estratégia do negócio ao longo do ciclo de vida do produto. Lista responsabilidades dos gerentes de produto: gerir a linha de produtos no dia a dia, ser dono do business case e da entrega ao mercado, analisar pesquisas de clientes e a concorrência, documentar requisitos, definir a estratégia e criar o roadmap e alinhar-se com design, desenvolvimento, marketing, vendas, suporte e jurídico. Traça o conceito até um memorando de 1931 do presidente da Procter & Gamble, Neil H. McElroy, pedindo "Brand Men" (homens de marca) para gerir produtos. Diz que os gerentes de produto muitas vezes são medidos pela responsabilidade por lucros e perdas.

O artigo não liga a gestão de produtos ao Product Owner ágil, então o vínculo é uma leitura deste guia: um Product Owner responde pelo valor do produto e ordena seu backlog, e em muitas organizações um gerente de produto exerce o papel de negócio mais amplo. Em equipes pequenas, uma pessoa pode fazer os dois.

### O product owner e o dono do serviço

| Papel | Responde por | Perguntas típicas |
|---|---|---|
| **Product Owner** (Scrum) | Maximizar o valor do produto; ordenar o backlog do produto | O que devemos construir ou melhorar a seguir, e por quê? |
| **Gerente de produto** | O business case, a estratégia e o roadmap de um produto | É este o produto certo, para o mercado certo? |
| **Dono do serviço (service owner)** (uso em ITSM) | O desempenho e a melhoria de um serviço ao longo da vida | O serviço atende às necessidades dos usuários, a um custo e risco aceitáveis? |

Os papéis se sobrepõem. Para um serviço interno de TI, uma pessoa pode ser product owner e dona do serviço. O Scrum Guide enfatiza que o Product Owner é uma pessoa, e não um comitê, para que as decisões sobre a ordem tenham um responsável claro. Seja qual for o título, o teste é se uma pessoa nomeada pode fazer compromissos entre novas funcionalidades, confiabilidade e custo.

### "You build it, you run it"

Como descrito em resumos secundários da entrevista de Vogels em 2006, a frase expressa um modelo em que a equipe que constrói um serviço também o opera e, assim, permanece em contato diário com os usuários e com as consequências de seu design. A entrevista foi conduzida por Jim Gray e publicada na ACM Queue em 2006; o próprio blog da Amazon registrou a entrevista quando saiu. Este guia não leu o original, então não o cita. O modelo tem custos além de benefícios:

| Benefício | Custo ou risco |
|---|---|
| Os construtores sentem a dor da má operabilidade e a corrigem | Os construtores carregam a carga de plantão e podem se esgotar |
| Feedback mais curto de usuários e incidentes | As habilidades de operações, segurança e conformidade precisam existir na equipe |
| Nenhuma passagem de bastão que perca conhecimento | Os padrões entre equipes precisam de outros mecanismos |
| Responsabilização clara | Equipes pequenas podem achar pesada demais a carga toda |

A engenharia de confiabilidade de sites e o DevOps oferecem modos de apoiar tais equipes (veja Tópico 5.2 — DevOps e Tópico 5.3 — Engenharia de Confiabilidade de Sites). As equipes de plataforma podem fornecer ferramentas comuns para que cada equipe de produto não precise reconstruí-las.

### Equipes que são donas

A propriedade precisa de uma equipe com as habilidades para entregar e operar e a autoridade para agir. O Scrum descreve uma equipe pequena, multifuncional e autogerida, que não depende de outros para a totalidade de seu trabalho. Na prática, as equipes de produto dependem também de plataformas compartilhadas, segurança e serviços de dados. Gerir essas dependências faz parte da propriedade (veja Tópico 1.8 — Escalando a Agilidade).

### Financiamento e metas

A propriedade precisa de financiamento estável e metas claras. Uma equipe financiada projeto a projeto é dissolvida quando o projeto termina, e o dono do serviço fica sem equipe. Uma equipe permanente financiada para um produto ou serviço, com metas que mudam à medida que aprende, é a resposta usual (veja Tópico 1.9 — Gestão Ágil). As metas devem tratar de resultados para os usuários e o negócio e ser definidas com o responsável.

### Propriedade na gestão de serviços

As práticas do ITIL precisam de responsáveis: cada serviço tem um dono, cada prática tem um dono e cada processo importante tem um dono (veja Tópico 5.1 — Gestão Ágil de Serviços). O dono do serviço guarda o nível de serviço, a entrada do catálogo, a lista de melhorias e o relacionamento com os clientes (veja Tópico 3.7 — Gestão de Níveis de Serviço e Tópico 3.8 — Gestão do Catálogo de Serviços).

### Limites e cuidados

As fontes lidas para este guia não oferecem evidência sobre quão bem funcionam os modelos de propriedade, e o artigo da Wikipédia sobre gestão de produtos não lista críticas. Cuidados práticos oferecidos pela experiência incluem donos com título e sem autoridade, donos sobrecarregados com vários produtos, "you build it, you run it" sem apoio levando à exaustão e propriedade que para na fronteira da equipe enquanto o fluxo de valor a atravessa (veja Tópico 5.4 — Gestão do Fluxo de Valor).

## Boas práticas

1. **Nomeie uma pessoa responsável para cada produto ou serviço.** Escreva o nome no catálogo de serviços (o ITIL, em inglês, grafa "service catalogue"). Garanta que ela tenha autoridade sobre as prioridades e voz no financiamento.
2. **Defina o que o responsável decide.** Declare quais decisões ele toma sozinho, quais com a equipe e quais exigem escalonamento. Sem isso, a propriedade é um título.
3. **Dê tempo ao responsável.** Não faça donos de vários produtos grandes, nem donos que também tenham um trabalho de entrega integral. A propriedade é trabalho real.
4. **Financie a equipe pela vida do serviço.** Evite dissolver equipes quando os projetos terminam. Revise o financiamento num ciclo regular contra os resultados.
5. **Defina metas de resultado com o responsável.** Descreva o que deve ficar melhor para os usuários e o negócio, com poucas medidas que a própria equipe possa produzir (veja Tópico 5.6 — Métricas e Medição).
6. **Ponha construir e operar numa só equipe onde puder.** Inclua as habilidades de desenvolvimento, operações e suporte e dê à equipe acesso a dados e ferramentas de produção dentro de limites seguros. Onde não puder, crie acordos de trabalho fortes.
7. **Apoie a equipe com uma plataforma.** Forneça ferramentas compartilhadas de implantação, monitoramento e segurança para que cada equipe não construa as suas. Trate a plataforma como um produto com usuários.
8. **Divida a carga de plantão de forma justa.** Limite as chamadas noturnas, ajuste os alertas e fique atento ao esgotamento. O "you build it, you run it" fracassa quando as pessoas que operam estão exaustas.
9. **Mantenha um backlog por produto.** Inclua funcionalidades, defeitos, trabalho de operações e itens de melhoria numa só lista ordenada, para que o responsável possa pesá-los uns contra os outros.
10. **Conecte os responsáveis entre si.** Faça conversas regulares entre os donos de produtos e serviços dependentes, para resolver conflitos e alinhar planos.
11. **Revise a propriedade anualmente.** Confira que todo serviço ainda tem um responsável ativo, uma equipe e um backlog e que os papéis ainda se ajustam.
12. **Admita equipes pequenas.** Onde uma equipe é dona de muitos serviços pequenos, agrupe-os com bom senso e use práticas leves. Não aplique um modelo pesado a um serviço pequeno.

## Perguntas para discutir com a equipe

**Quem responde por cada um dos nossos serviços, e a pessoa diria que sim?**

Liste os principais serviços e nomeie o responsável. Depois pergunte a cada pessoa nomeada se ela se diria a responsável. As diferenças entre a lista e as respostas revelam quanto da propriedade é nominal. Quem facilita pode perguntar qual serviço não tem responsável e quanto isso custou.

**O que o nosso responsável pode decidir hoje sem pedir a ninguém?**

Peça exemplos: prioridades, gastos, um release, um compromisso com o cliente. Se a maioria das decisões precisa da aprovação de outros, discuta quais deveriam ser delegadas e sob que limites. Acorde uma decisão a mover.

**Quando algo dá errado em produção, quem é acordado, e tem os meios de consertar?**

Pergunte quem está de plantão e o que pode mudar. Se não são os construtores, pergunte por quê. Discuta como o feedback dos incidentes chega às pessoas que desenham o serviço. Acorde uma rota a encurtar.

**Como financiamos este serviço, e o que acontece quando um projeto termina?**

Rastreie o financiamento de um serviço principal. Pergunte quem pode gastar em melhorias e quem decide parar. Se a equipe é dissolvida depois de um projeto, discuta o custo do conhecimento perdido. Proponha um teste de financiamento permanente para um serviço.

**Que habilidades nos faltam para construir e operar o nosso serviço, e como poderíamos obtê-las?**

Liste as habilidades de que o trabalho precisa: desenvolvimento, operações, segurança, dados, suporte. Marque as lacunas. Discuta pareamento, treinamento, emprestar um especialista ou uma plataforma compartilhada. Escolha uma lacuna a fechar.

**Quantos responsáveis estamos pedindo que uma pessoa seja?**

Conte os produtos e serviços pelos quais cada responsável responde. Responsáveis sobrecarregados não conseguem tomar boas decisões. Discuta dividir, delegar ou aposentar serviços. Acorde um máximo e um plano para um responsável que o exceda.

## Na prática: um exemplo de ITIL ágil

Uma agência nacional de emprego opera um serviço online de correspondência de vagas usado por candidatos e empregadores. O serviço foi construído por uma equipe de projeto, entregue a um grupo de operações e agora é financiado como uma série de pequenos projetos. A chefe dos serviços digitais descobre que ninguém sabe dizer quem é o dono dele: o patrocinador original do projeto se aposentou, as operações tratam dos incidentes e uma unidade de políticas pede mudanças por uma fila que leva meses. Os empregadores reclamam de um formulário de cadastro que não muda há três anos.

A chefe nomeia uma dona do serviço na unidade de relações com empregadores, uma pessoa que entende tanto os empregadores quanto o serviço, e dá a ela voz sobre o backlog e uma parcela do orçamento. Uma equipe permanente de oito pessoas, combinando desenvolvedores, um engenheiro de operações, um testador e uma designer, é formada com as pessoas que já trabalhavam no serviço. A equipe entra na escala de plantão, com um limite de chamadas noturnas, e usa uma plataforma compartilhada de implantação e monitoramento mantida por uma equipe central. Os pedidos da unidade de políticas vão para o backlog único, onde a dona os classifica contra melhorias e correções. A equipe e a dona acordam três metas de resultado para o ano, com poucas medidas: a parcela de cadastros de empregadores concluídos, o tempo que os candidatos levam para achar uma correspondência e o número de incidentes repetidos.

Depois de oito meses, o formulário de cadastro é reconstruído, a conclusão melhora e os incidentes repetidos diminuem. A dona consegue responder às perguntas dos empregadores sobre o que está planejado. Algumas dificuldades permanecem. A dona também é responsável por outro pequeno serviço e está sobrecarregada, a unidade de políticas se ressente de ter de competir por vagas no backlog e os engenheiros de plantão dizem que a plataforma compartilhada carece de uma ferramenta de que precisam. A chefe dos serviços digitais reduz as outras funções da dona, pede à unidade de políticas e à dona que montem uma reunião mensal de planejamento e põe o pedido de plataforma no backlog da equipe central.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega devem trabalhar com um responsável claro e assumir a operação do que constroem. Ofereça ao responsável evidências de usuários, incidentes e custos e seja honesto sobre os compromissos. Peça as ferramentas e o apoio de que precisa para carregar o plantão de forma justa.

### Equipes de serviço e operações

As equipes de operações apoiam as equipes de produto com especialização, plataformas e padrões compartilhados. Onde operam serviços para outros, nomeie responsáveis e acorde níveis de serviço. Resista a passar todo problema operacional a um grupo central que não é dono de nada.

### Liderança e governança

Os líderes criam a propriedade nomeando responsáveis, dando-lhes autoridade e tempo e financiando equipes permanentes. Peça resultados e evidências aos responsáveis e evite sobrepor-se às suas prioridades sem discussão. Fique atento a responsáveis que têm o título, mas não o poder.

### Clientes e usuários

Clientes e usuários se beneficiam quando sabem quem responde por um serviço e podem alcançá-lo. Diga ao responsável o que mais importa e o que dói. Espere informação clara sobre o que está planejado e voz em como as prioridades são definidas.

## Modos de falha comuns

- **Título sem autoridade.** Um responsável não pode decidir nada. Em vez disso, declare o que o responsável decide e respalde-o.
- **Propriedade por comitê.** Ninguém responde. Em vez disso, nomeie uma pessoa para cada produto ou serviço.
- **Responsáveis sobrecarregados.** Uma pessoa é dona de produtos demais. Em vez disso, limite o número e delegue.
- **Dissolver equipes depois dos projetos.** O conhecimento vai embora. Em vez disso, financie equipes permanentes para serviços contínuos.
- **"You build it, you run it" sem apoio.** As equipes se esgotam. Em vez disso, forneça uma plataforma, plantão compartilhado e alertas ajustados.
- **Propriedade que para na equipe.** O fluxo de valor cruza equipes. Em vez disso, conecte os responsáveis por serviços dependentes.
- **Vários backlogs.** Funcionalidades, defeitos e operações competem em filas ocultas. Em vez disso, mantenha um backlog ordenado por produto.
- **Copiar um modelo sem contexto.** Um padrão de grande empresa é aplicado a um serviço pequeno. Em vez disso, ajuste o modelo ao tamanho e ao risco.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Responsabilização | Os serviços não têm responsável claro | Alguns serviços têm responsáveis informais | Todo serviço tem um responsável nomeado, com direitos de decisão definidos e tempo | A eficácia e os resultados dos responsáveis são revisados | Os responsáveis se coordenam entre serviços dependentes e com os clientes |
| Equipe e habilidades | Construir e operar são equipes separadas | Algumas equipes dividem o plantão | Equipes permanentes são donas de construir e operar, com as habilidades de que precisam | As lacunas de habilidades e a carga são medidas e tratadas | Habilidades e plataformas são compartilhadas entre equipes e fornecedores |
| Financiamento e metas | O financiamento é por projeto | Existem algumas equipes permanentes | Os serviços têm financiamento permanente e metas de resultado | O financiamento segue os resultados medidos | Financiamento e metas são alinhados entre serviços e com os clientes |
| Backlog e prioridades | As prioridades vêm de muitas filas | Alguns responsáveis mantêm uma lista | Um backlog ordenado por produto inclui todos os tipos de trabalho | O fluxo do backlog e as prioridades são revisados com as partes interessadas | As prioridades são alinhadas entre responsáveis e com os clientes |

## Lista de verificação

- [ ] Cada produto ou serviço tem um responsável nomeado, listado no catálogo de serviços.
- [ ] O que cada responsável decide sozinho, com a equipe e por escalonamento está escrito.
- [ ] Os responsáveis têm tempo para o papel e um número administrável de serviços.
- [ ] Uma equipe permanente é financiada para cada serviço contínuo.
- [ ] Cada serviço tem metas de resultado com poucas medidas.
- [ ] A equipe que constrói um serviço tem as habilidades e o acesso para operá-lo, ou tem acordos de trabalho claros com quem o faz.
- [ ] A carga de plantão é dividida de forma justa, com limites e alertas ajustados.
- [ ] Uma plataforma compartilhada apoia as equipes com implantação, monitoramento e segurança.
- [ ] Cada produto tem um backlog ordenado que cobre funcionalidades, defeitos, operações e melhoria.
- [ ] A propriedade é revisada ao menos uma vez por ano.

## Prompts de IA

**Finalidade: redigir os direitos de decisão do responsável por um produto ou serviço.**

```text
Help me draft decision rights for the owner of [product or service].

What the service does and who uses it: [describe].
Decisions that come up often: [list 8 to 12, such as priorities, spending, releases, customer commitments, supplier choices].
Rules we must follow (financial, security, legal), with source text if you have it: [paste, or write "none known"].
Current arrangement: [describe].

Produce a table with three columns: owner decides alone, owner decides with the team, and escalate. Place each decision in one column with a one-sentence reason. Mark any placement that is a guess. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: achar serviços sem responsável claro.**

```text
Here is a list of our services with the owner we have recorded, the team that builds, the team that runs, and who funds each: [paste].

Using only this list, identify services with no owner, with different people named as owner by different columns, or with build and run split between teams. For each, suggest a question to ask. Do not decide who should own anything. List what you are unsure of.
```

**Finalidade: planejar um modelo de plantão para uma equipe que constrói e opera.**

```text
Help me plan an on-call model for a team of [number] people who build and run [service].

Current incidents and pages (counts by week, out-of-hours share): [paste real data].
Skills in the team: [list].
Constraints: [for example time zones, leave rules].

Propose a rota design, limits on night calls, how alerts will be tuned, what support the team needs from a platform or operations group, and what to review each quarter. Leave numeric limits as [to be agreed]. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: preparar um argumento para o financiamento permanente de um serviço.**

```text
Help me prepare a short case for funding [service] with a standing team instead of by project.

How it is funded today and what happens at the end of each project: [describe].
Costs of the current arrangement, in facts (rework, lost knowledge, delays; use only real examples): [paste].
What a standing team would need: [describe roles and rough size].
Outcome goals proposed: [list].

Write a one-page case with the problem, the proposal, risks (including the risk of a standing team becoming complacent), what we will measure, and how funding would be reviewed. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use para deixar claro quem é dono, quem dá suporte e quem é consultado em cada produto ou serviço.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): use para descrever a direção e os planos de curto prazo de um produto ou serviço.
- [agile-charter](../../../../skills/agile-charter/SKILL.md): use para definir no início a finalidade, os resultados e os limites de uma equipe.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): use para ajudar um responsável a ordenar o backlog por valor e custo.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md): use para validar o que um produto ou serviço deve fazer a seguir antes de construí-lo.

## Fontes principais

- **The Scrum Guide** (Ken Schwaber e Jeff Sutherland, scrumguides.org): a definição da responsabilidade do Product Owner e da equipe multifuncional e autogerida.
- **Product management** (Wikipedia): uma descrição geral da disciplina, de suas responsabilidades e de sua história.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006): a entrevista em que se descreve o "you build it, you run it"; leia o original para a redação exata.
- **Site Reliability Engineering** (Google, sre.google): um modo de apoiar equipes que operam o que constroem.

## Referências

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
