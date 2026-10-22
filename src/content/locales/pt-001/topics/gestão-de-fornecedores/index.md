# Gestão de Fornecedores

**A gestão de fornecedores garante que as partes externas de que um serviço depende sejam escolhidas com cuidado, cobradas por expectativas claras e tratadas como parte do serviço, pois uma promessa aos seus clientes é tão forte quanto as promessas que a sustentam.**

## Por que isso importa

Quase nenhum serviço moderno é construído e operado por uma única equipe. Ele depende de plataformas de nuvem, fornecedores de software, processadores de pagamento, operadoras de rede, terceirizados e parceiros especializados. Quando um deles falha, o cliente não distingue entre a sua falha e a dele. A queda do fornecedor é sua, e o trabalho de explicá-la também.

As equipes ágeis recorrem facilmente a fornecedores: um cartão de crédito, algumas linhas de configuração e uma nova capacidade está funcionando. Essa rapidez é valiosa e cria uma lacuna. Talvez ninguém tenha perguntado o que acontece se o serviço do fornecedor se degradar, mudar seus termos ou encerrar. Talvez ninguém saiba quem é o dono do relacionamento. A gestão de fornecedores é a prática de fechar essa lacuna em proporção ao risco, sem transformar cada compra num projeto.

O [artigo da Wikipédia sobre gestão do relacionamento com fornecedores](https://en.wikipedia.org/wiki/Supplier_relationship_management) descreve a avaliação sistemática, em toda a empresa, dos pontos fortes, do desempenho e das capacidades dos fornecedores, alinhada com a estratégia de negócio, e observa que suas fontes são escassas e antigas, com várias referências de 2009 a 2012. O [artigo sobre integração e gestão de serviços](https://en.wikipedia.org/wiki/Service_integration_and_management) descreve uma abordagem para organizações que usam vários fornecedores. Este tópico os combina com os demais tópicos do guia e com a prática comum na gestão de serviços, e diz quando está fazendo a última.

## Conceitos centrais

### Gestão do relacionamento com fornecedores

Segundo a Wikipédia, a gestão do relacionamento com fornecedores (SRM) coordena as interações com fornecedores ao longo do ciclo de vida do relacionamento, com o objetivo de construir parcerias de mão dupla com fornecedores estratégicos, de modo análogo à gestão do relacionamento com clientes. O artigo faz vários pontos úteis para as equipes de serviço:

- **Segmente os fornecedores.** Os fornecedores são segmentados pelo valor potencial total em várias dimensões, e não apenas pelo gasto, e pelo grau de risco que afeta esse valor. O artigo critica uma abordagem de "tamanho único".
- **Meça o desempenho nos dois sentidos.** As organizações usam scorecards balanceados conjuntos, de mão dupla, com medidas quantitativas e qualitativas, e algumas usam scorecards de 360 graus que também pesquisam os fornecedores.
- **Colabore.** As atividades conjuntas incluem cúpulas de fornecedores, reuniões executivas, planejamento conjunto de negócios, revisões operacionais e previsão conjunta de demanda. O artigo afirma que a previsão conjunta e a reengenharia de processos liberaram economias de 10 a 30% para organizações líderes, mas o artigo tem marcações de manutenção por redação fraca e citações faltantes, então trate a cifra como alegação e não como achado.

### Por que a segmentação importa

Você não consegue gerir de perto todo fornecedor. Uma segmentação útil faz duas perguntas: quanto o serviço depende deste fornecedor e quão difícil seria substituí-lo? Segue uma grade aproximada.

| Dependência e substituibilidade | Exemplos | Abordagem |
|---|---|---|
| **Crítico e difícil de substituir** | A plataforma de nuvem, o processador de pagamentos | Relacionamento próximo: responsável nomeado, revisões regulares, planejamento conjunto, planos de saída e de continuidade |
| **Importante mas substituível** | Uma ferramenta de monitoramento, um serviço de mensagens | Revisão regular, níveis de serviço claros e um plano para trocar se necessário |
| **De rotina e fácil de substituir** | Material de escritório, uma biblioteca menor | Contrato leve e verificação periódica |

A grade é uma ilustração deste guia, não vem de uma fonte.

### O desempenho do fornecedor e o serviço que você promete

Os seus níveis de serviço dependem dos dos seus fornecedores (veja Tópico 3.7 — Gestão de Níveis de Serviço). Se você promete 99,9% de disponibilidade e o seu único provedor de nuvem promete menos, a aritmética não fecha. A gestão de fornecedores inclui comparar o que os fornecedores se comprometeram a entregar com o que você prometeu e projetar em torno da distância com redundância ou ajustando a sua própria promessa.

No vocabulário do ITIL, um acordo com um fornecedor externo que sustenta um acordo de nível de serviço é chamado de contrato de apoio (underpinning contract), e um acordo entre equipes internas que o sustenta é chamado de acordo de nível operacional (operational-level agreement). As fontes lidas para este guia não os definem, então confira as publicações do ITIL para os termos exatos.

### Ambientes com vários fornecedores e SIAM

O artigo sobre integração e gestão de serviços (SIAM) descreve uma abordagem para gerir vários fornecedores e integrá-los num único serviço voltado ao negócio. Observa que as organizações obtêm cada vez mais capacidades de TI de vários fornecedores externos, um modelo chamado multisourcing, que pode reduzir custos e estimular a concorrência, mas acrescenta sobrecarga de gestão e dificulta a gestão de serviços de ponta a ponta. Um **integrador de serviços** fornece governança e coordenação para que os provedores trabalhem juntos.

O artigo lista quatro modelos para o integrador (interno, fornecedor líder, externo e híbrido) e três camadas: a organização cliente, o integrador de serviços e os provedores de serviços. Diz que o SIAM se originou por volta de 2005 no setor público do Reino Unido, projetado primeiro para o Department for Work and Pensions, e lista marcos incluindo um corpo de conhecimento em 2016 e revisões em 2019 para o COBIT 2019 e o ITIL 4. Observa que o ITIL fornece uma base e uma linguagem comum para trabalhar com fornecedores, mas não trata em profundidade de ambientes com vários fornecedores. Os desafios de implementação que lista incluem acordos de nível de serviço desalinhados, provedores que culpam uns aos outros, responsabilidade pouco clara pelas decisões de causa-raiz e lacunas de comunicação.

Poucas equipes ágeis precisam de um SIAM formal, mas as lições são úteis: quando várias partes contribuem para um serviço, alguém deve ser dono do todo, acordar como os problemas são tratados através das fronteiras e manter os níveis de serviço dos fornecedores coerentes entre si.

### Contratos e agilidade

Os contratos podem ajudar ou atrapalhar o trabalho ágil. Contratos de escopo fixo e preço fixo combinam mal com aprender enquanto se faz (veja Tópico 1.1 — O Manifesto Ágil sobre colaboração com o cliente mais que negociação de contratos). Acordos que permitem mudança, com modos claros de ajustar o escopo e medir o valor, combinam melhor. Um contrato deve também cobrir as coisas que importam à gestão de serviços: níveis de serviço, horário de suporte, tratamento de incidentes, proteção de dados, obrigações de segurança, direitos de auditoria, saída e continuidade. Seus colegas do jurídico e de compras devem liderar os termos legais.

### Risco

Os fornecedores trazem riscos: falha, mudança de termos ou de preço, fraquezas de segurança, concentração num só provedor, aprisionamento (lock-in) e as próprias dependências do fornecedor. O artigo sobre SRM lista a redução do risco de falha como objetivo, sem descrever métodos. Medidas práticas incluem conhecer os arranjos de continuidade do próprio fornecedor, distribuir as dependências críticas, manter os dados portáveis e ensaiar a saída (veja Tópico 3.12 — Gestão da Continuidade de Serviço e Tópico 3.13 — Gestão da Segurança da Informação).

### Relacionamento, não só contrato

O artigo sobre SRM enfatiza parcerias de mão dupla. Fornecedores que entendem seus planos podem ajudar; fornecedores tratados só como fontes de faturas não ajudarão. Compartilhe previsões, envolva-os nas revisões de incidentes que lhes dizem respeito e ouça o feedback deles sobre o seu comportamento, como pagamentos atrasados ou pedidos pouco claros.

### Limites das fontes

O artigo sobre SRM não dá critérios de seleção, cláusulas contratuais nem cronogramas de implementação. O artigo sobre SIAM não tem seção de críticas. Ambos são gerais. Para termos legais e financeiros, apoie-se nas suas funções de compras e jurídica e no próprio contrato.

## Boas práticas

1. **Liste os seus fornecedores e do que você depende deles.** Inclua nuvem, software, rede, pagamento e terceirizados. Para cada um, anote que serviço apoia e quem na sua equipe é dono do relacionamento.
2. **Segmente por dependência e substituibilidade.** Decida quais poucos fornecedores são críticos e invista sua atenção neles. Mantenha um toque leve com os demais.
3. **Nomeie um responsável para cada fornecedor importante.** Uma pessoa deve conhecer o contrato, os contatos, o desempenho e os planos. Sem responsável, os relacionamentos decaem.
4. **Confira se os compromissos dos fornecedores sustentam as suas promessas.** Compare o que cada fornecedor crítico se comprometeu a entregar com o que você disse aos clientes. Feche a distância por design, por negociação ou mudando a sua promessa.
5. **Acorde de antemão o tratamento de incidentes.** Saiba como relatar um problema ao fornecedor, com que rapidez ele responde, quem pode escalar e como ele se comunicará. Teste a rota antes de precisar dela.
6. **Inclua segurança e proteção de dados.** Pergunte aos fornecedores como protegem a sua informação e o que lhe dirão depois de uma violação. Ponha isso no contrato, com a equipe jurídica.
7. **Planeje a saída e a falha.** Para fornecedores críticos, mantenha os dados portáveis, conheça alternativas e escreva um plano curto para a falha do fornecedor ou a sua saída. Ensaie a parte que puder.
8. **Revise o desempenho em conjunto.** Faça revisões regulares com os fornecedores críticos, compartilhe dados nos dois sentidos e acorde ações. Pergunte ao fornecedor como você poderia ser um cliente melhor.
9. **Inclua os fornecedores na aprendizagem.** Convide-os a revisões de incidentes e sessões de planejamento que os envolvam. Compartilhe lições que os ajudem a ajudá-lo.
10. **Torne os contratos flexíveis onde se espera aprendizado.** Para trabalho de desenvolvimento, prefira acordos que permitam mudar o escopo, com pontos de revisão claros, a promessas de escopo fixo. Mantenha firmes as obrigações de serviço.
11. **Use um integrador quando muitos fornecedores contribuem.** Para um serviço que depende de vários provedores, nomeie quem é dono do resultado de ponta a ponta e como os problemas entre fornecedores são resolvidos. Não deixe isso para o cliente.
12. **Revise regularmente o portfólio de fornecedores.** Uma vez por ano, confira quais fornecedores ainda são necessários, quais são riscos concentrados e quais são mais baratos ou melhores em outro lugar.

## Perguntas para discutir com a equipe

**Quais fornecedores poderiam parar o nosso serviço se falhassem, e o que faríamos?**

Peça a cada pessoa que nomeie as dependências que mais a preocupariam. Compile a lista e marque cada uma como crítica, importante ou de rotina. Para cada crítica, pergunte o que a equipe faria na primeira hora de uma falha. Respostas típicas revelam lacunas em contatos, alternativas e dados. Escolha uma para planejar.

**O que os nossos fornecedores nos prometeram, e o que nós prometemos aos nossos clientes?**

Ponha as duas lado a lado para um serviço-chave. Onde a promessa do fornecedor é mais fraca, a promessa ao cliente está em risco. Quem facilita pode perguntar se alguém leu recentemente os níveis de serviço do fornecedor. Acorde uma lacuna a fechar.

**Quem é dono de cada relacionamento importante com fornecedores?**

Percorra a lista e nomeie um responsável para cada um. As lacunas são comuns: a pessoa que assinou o contrato saiu, ou uma ferramenta foi comprada no cartão e ninguém a gerencia. Pergunte do que o responsável precisaria para fazer o trabalho, como tempo e um contato. Atribua responsáveis onde faltarem.

**Como ficamos sabendo de um problema de fornecedor, e como avisamos nossos usuários?**

Rastreie a última vez que um fornecedor teve uma queda. Pergunte como você soube, quanto tempo levou e o que disse aos clientes. Discuta páginas de status, contatos e canais acordados. Planeje uma melhoria, como uma assinatura do feed de status do fornecedor ou um contato de escalonamento nomeado.

**O que seria preciso para deixar este fornecedor, e algum dia gostaríamos de fazê-lo?**

Para um fornecedor crítico, pergunte sobre exportação de dados, produtos alternativos e termos contratuais. As equipes muitas vezes descobrem um aprisionamento que não pretendiam. Discuta como reduzi-lo onde o risco justificar o custo. Registre uma nota breve de saída.

**Nossos fornecedores sabem o que estamos planejando, e nós sabemos o que eles estão planejando?**

Pergunte quando cada fornecedor crítico ouviu falar dos seus planos pela última vez e quando você ouviu dos deles. Surpresas em qualquer direção causam problemas. Discuta uma conversa regular. Acorde um fornecedor para começar.

## Na prática: um exemplo de ITIL ágil

Uma emissora regional opera um aplicativo e um site de notícias com uma equipe de quatorze pessoas. O serviço depende de um provedor de nuvem, de uma rede de entrega de conteúdo, de um serviço de notificações push, de uma ferramenta de moderação de comentários e de uma pequena empresa que fornece um widget de blog ao vivo. Quando o serviço do fornecedor do blog ao vivo falhou numa noite de eleição, o aplicativo exibiu erros por duas horas e a reputação da emissora sofreu. Ninguém na equipe sabia dizer qual era o contato do fornecedor; o widget fora acrescentado por um desenvolvedor que já seguira adiante.

O chefe da plataforma lidera uma revisão. A equipe lista todos os fornecedores, ordenando-os por quanto o serviço depende deles e quão facilmente cada um poderia ser substituído. O provedor de nuvem e a rede de entrega de conteúdo são críticos, e o serviço de notificações e o widget são importantes mas substituíveis. Cada um ganha um responsável na equipe. Para o fornecedor do widget, a equipe obtém contatos, lê os termos e descobre que nenhum nível de serviço é prometido. Decidem manter o fornecedor, mas acrescentar um plano alternativo: se o widget não carregar, a página mostra um link estático para o blog ao vivo. Para o provedor de nuvem, comparam seus compromissos com a disponibilidade que prometeram aos editores da emissora e acham uma lacuna numa região, que fecham espalhando o serviço por duas.

Seis meses depois, uma segunda queda no provedor de notificações é detectada pelo monitoramento em minutos, o responsável a leva ao fornecedor pela rota acordada e o aplicativo continua funcionando com notificações atrasadas. Dificuldades permanecem. Os editores querem que o widget do blog ao vivo faça mais, mas o fornecedor é pequeno demais para se comprometer com um nível de serviço, e as regras de compras da emissora tornam lenta uma substituição. O chefe da plataforma acorda com as compras fazer um pequeno teste de uma alternativa e revisar a lista de fornecedores anualmente.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega escolhem e integram muitos fornecedores. Registre cada dependência quando a acrescentar, nomeie um responsável e pergunte sobre níveis de serviço e saída antes de depender dela. Construa planos alternativos para as falhas que você consegue imaginar.

### Equipes de serviço e operações

As equipes de operações lidam com fornecedores nos incidentes. Mantenha atualizados os contatos e as rotas de escalonamento, teste-os e registre o desempenho dos fornecedores. Leve essa evidência às revisões e às compras.

### Liderança e governança

Líderes e compras moldam os termos e o relacionamento. Peça uma lista dos fornecedores críticos e seus riscos, apoie contratos flexíveis para trabalho baseado em aprendizado e garanta que o contrato cubra níveis de serviço, segurança e saída. Pergunte quem é dono do resultado de ponta a ponta quando muitos fornecedores contribuem.

### Clientes e usuários

Clientes e usuários dependem da cadeia inteira, e não de um único elo. Pergunte aos provedores quais fornecedores importam para o serviço que você usa e como o protegem. Quando algo der errado, espere honestidade sobre que parte falhou e o que está sendo feito.

## Modos de falha comuns

- **Dependências ocultas.** Uma ferramenta acrescentada por um desenvolvedor se torna crítica e ninguém é dono dela. Em vez disso, registre toda dependência e nomeie um responsável.
- **Tamanho único.** Todo fornecedor recebe o mesmo processo pesado, ou nenhum recebe. Em vez disso, segmente por dependência e substituibilidade.
- **Promessas que não fecham.** A promessa ao cliente é mais forte que a do fornecedor. Em vez disso, compare os compromissos e feche a distância.
- **Nenhuma rota testada.** A linha de suporte do fornecedor é achada durante uma queda. Em vez disso, acorde e teste de antemão contatos e escalonamento.
- **Aprisionamento por acidente.** Os dados não podem ser exportados. Em vez disso, confira cedo a portabilidade e registre uma nota de saída.
- **Só contrato, sem relacionamento.** O fornecedor é um estranho quando vêm os problemas. Em vez disso, faça revisões regulares e compartilhe planos.
- **Ninguém é dono do todo.** Vários fornecedores culpam uns aos outros. Em vez disso, nomeie um integrador para o serviço de ponta a ponta e acorde o tratamento entre fornecedores.
- **Contratos de escopo fixo para trabalho incerto.** O contrato briga com o aprendizado. Em vez disso, use acordos que deixem o escopo mudar dentro de limites claros.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Conhecer os fornecedores | Os fornecedores são conhecidos por indivíduos | Algumas equipes listam seus fornecedores | Uma lista compartilhada com dependência, substituibilidade e responsáveis | A lista é revisada contra incidentes e mudanças | A lista é compartilhada entre equipes e ligada aos serviços |
| Compromissos e serviço | Os níveis de serviço dos fornecedores são desconhecidos | Os termos dos fornecedores-chave são lidos | Os compromissos dos fornecedores são comparados com as promessas aos clientes | O desempenho dos fornecedores é medido e revisado | Os compromissos são alinhados ao longo da cadeia, com revisão conjunta |
| Incidentes e risco | Os problemas de fornecedores são achados por acaso | Alguns contatos são conhecidos | As rotas de escalonamento são acordadas e testadas; os riscos são registrados | Incidentes e riscos de fornecedores são acompanhados e tratados | O tratamento de incidentes e os planos de risco são conjuntos com os fornecedores |
| Relacionamento e saída | Os fornecedores são transacionais | Algumas reuniões com fornecedores | Revisões regulares com fornecedores críticos e notas curtas de saída | A saúde do relacionamento e a prontidão de saída são revisadas | Os fornecedores participam do planejamento e da melhoria |

## Lista de verificação

- [ ] Temos uma lista de fornecedores e do que cada um apoia.
- [ ] Os fornecedores estão ordenados por dependência e substituibilidade.
- [ ] Cada fornecedor importante tem um responsável nomeado.
- [ ] Comparamos os compromissos dos fornecedores com as nossas promessas aos clientes para os serviços-chave.
- [ ] Os contatos e rotas de escalonamento dos fornecedores críticos são conhecidos e testados.
- [ ] As expectativas de segurança e proteção de dados estão no contrato ou acordadas por escrito.
- [ ] Existe uma nota breve de saída ou falha para cada fornecedor crítico.
- [ ] Fazemos revisões regulares com os fornecedores críticos.
- [ ] Onde vários fornecedores contribuem, alguém é dono do resultado de ponta a ponta.
- [ ] A lista de fornecedores é revisada ao menos uma vez por ano.

## Prompts de IA

**Finalidade: montar uma lista de fornecedores e dependências a partir do que você sabe.**

```text
Help me build a supplier and dependency list for [service].

What the service does and what it is built on: [describe components, cloud services, tools, and contractors].
What I know about each: [for example name, what we use it for, who set it up, contract status].

Produce a table with: supplier, what it supports, who owns the relationship (or "unknown"), how critical it seems (critical, important, routine, with a reason from my text), and one question to ask. Mark guesses. Do not invent suppliers or terms. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: comparar os compromissos dos fornecedores com as suas promessas aos clientes.**

```text
Here are the commitments we have made to customers for [service]: [paste, for example availability and response time].
Here are the commitments our suppliers have made, with the exact wording from their terms: [paste for each supplier].

Compare them. For each customer commitment, list which suppliers it depends on, whether their commitments appear to support ours (using only the pasted text), and what gaps there are. Suggest design or agreement changes as questions to consider. Do not interpret legal terms; flag anything ambiguous for legal review. List what you are unsure of.
```

**Finalidade: preparar uma reunião de revisão com um fornecedor.**

```text
Plan a 45-minute review with [supplier] about [service they provide to us].

Data we have: [incidents involving them, response times, requests, with dates; real data only].
Concerns we want to raise: [list].
Things we want to ask about their plans: [list].
Things they may want from us: [list, or write "unknown"].

Give a timed agenda, a one-page summary of our data, five questions for them, three things we should offer, and a closing step that records actions with owners and dates. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: redigir uma nota breve de saída para um fornecedor crítico.**

```text
Help me draft an exit note for [supplier], which provides [service].

What we store with or through them, and how we could export it: [describe].
Alternatives we know of: [list, or write "unknown"].
Contract terms about notice and data return, if known (paste the exact text): [paste, or write "not read"].

Write a one-page note with: what depends on them, what we would need to leave (data, configuration, skills), a rough sequence of steps (leave timing as [to be estimated]), risks, and questions to ask the supplier. Do not interpret the contract. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [vendor-management](../../../../skills/vendor-management/SKILL.md): use para planejar a seleção, a revisão e o relacionamento com um fornecedor.
- [risk-register](../../../../skills/risk-register/SKILL.md): use para registrar os riscos de fornecedores e como são geridos.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): use para entender quem, na sua organização e na do fornecedor, importa para o relacionamento.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): use para conferir se os compromissos dos fornecedores sustentam o que você promete.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use para deixar claro quem é dono de cada relacionamento com fornecedor e quem é consultado.

## Fontes principais

- **Supplier relationship management** (Wikipedia): um panorama de segmentação, scorecards e colaboração com fornecedores, com marcações de manutenção que mostram onde as fontes são fracas.
- **Service integration and management** (Wikipedia): a abordagem de vários fornecedores, com suas camadas, modelos e desafios de implementação.
- **Service-level agreement** (Wikipedia): contexto sobre os acordos que fornecedores e clientes assinam.
- **ITIL** (Wikipedia): contexto sobre como o ITIL trata os fornecedores.

## Referências

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
