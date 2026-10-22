# Gestão de Ativos de TI

**A gestão de ativos de TI acompanha o hardware, o software e os recursos relacionados que uma organização possui ou paga, da compra ao descarte, para que as decisões sobre custo, risco e suporte se baseiem em fatos e não em palpites.**

## Por que isso importa

Pergunte à maioria das organizações quantos notebooks, servidores, contas de nuvem e licenças de software elas têm, e a primeira resposta é um palpite. A segunda, depois de uma busca, costuma ser diferente. Essa distância tem custos. Compram-se licenças que ninguém usa, ou usam-se licenças que não foram compradas. Hardware antigo permanece na rede sem correções. Funcionários que saem mantêm acesso a sistemas que ninguém lembrou de remover. Um service desk não consegue dar suporte a equipamento cuja existência desconhece.

A gestão de ativos de TI (ITAM) é a prática de fechar essa distância. Está intimamente ligada à gestão de serviços: os serviços rodam em ativos, incidentes e mudanças tocam ativos, e o custo de um serviço é em boa parte o custo de seus ativos. Para as equipes ágeis, a prática tem uma reviravolta particular. Os ativos agora incluem recursos de nuvem criados por um script em segundos e destruídos minutos depois, imagens de contêiner, bibliotecas de código aberto e assinaturas pagas no cartão. O antigo modelo de uma planilha de equipamentos comprados não os captura.

O artigo da Wikipédia em inglês intitulado "IT asset management" atualmente redireciona para o artigo sobre gestão de data centers, em que a ITAM aparece como uma seção. Essa seção descreve a ITAM como práticas de negócio que juntam funções financeiras, contratuais e de inventário para apoiar a gestão do ciclo de vida e decisões estratégicas de TI, e é curta. Este tópico a usa para a definição, acrescenta os detalhes dos artigos sobre gestão de ativos de software e bancos de dados de gestão de configuração e situa a prática no cenário ágil. Onde vai além das fontes, diz isso.

## Conceitos centrais

### O que é

Segundo a seção da Wikipédia sobre gestão de ativos de data center, citando o Gartner, a ITAM é um conjunto de práticas de negócio que juntam funções financeiras, contratuais e de inventário para apoiar a gestão do ciclo de vida e decisões estratégicas de TI. Os ativos incluem software e hardware no ambiente de negócio. A prática é também chamada de gestão de inventário. O artigo observa que a prática usa descoberta automatizada para que o inventário possa ser comparado com os direitos de licença e que a gestão completa exige um repositório de vários tipos de informação, integrado com os sistemas de cadeia de suprimentos, help desk, compras, recursos humanos e ITSM.

### O que conta como ativo

Uma lista de trabalho útil para uma organização de serviço:

| Tipo de ativo | Exemplos | Tratado em |
|---|---|---|
| **Hardware** | Notebooks, servidores, dispositivos de rede, telefones, armazenamento | Tópico 4.3 — Gestão de Ativos de Hardware |
| **Software** | Aplicações licenciadas, sistemas operacionais, componentes de código aberto, assinaturas | Tópico 4.2 — Gestão de Ativos de Software |
| **Recursos de nuvem e de serviço** | Máquinas virtuais, contêineres, buckets de armazenamento, contas SaaS | Tópico 4.2 — Gestão de Ativos de Software e Tópico 4.5 — Gestão Financeira de TI e FinOps |
| **Dados e informação** | Conjuntos de dados, registros, backups | Tópico 3.13 — Gestão da Segurança da Informação |
| **Contratos e direitos** | Licenças, acordos de suporte, garantias | Tópico 4.2 — Gestão de Ativos de Software e Tópico 3.14 — Gestão de Fornecedores |
| **Pessoas e habilidades** | Equipe e capacidades (em geral fora do registro de ativos, mas parte do serviço) | Tópico 2.5 — As Quatro Dimensões da Gestão de Serviços |

A tabela é a lista de trabalho deste guia, não uma classificação de uma fonte.

### Ciclo de vida

A seção da Wikipédia descreve a gestão de ativos de hardware como cobrindo componentes físicos de computação e de rede da aquisição ao descarte, com práticas listadas de requisição e aprovação, compras, gestão do ciclo de vida, redistribuição e descarte, e diz que capturar a informação financeira sobre o ciclo de vida do hardware é um componente-chave. Não dá um modelo formal de etapas. Uma sequência prática comum, amplamente usada e oferecida aqui como tal, é:

1. **Planejar e requisitar:** decidir o que é necessário e obter aprovação.
2. **Adquirir:** comprar ou construir e registrar a compra.
3. **Implantar:** pôr em serviço e ligar ao usuário ou serviço.
4. **Operar e manter:** aplicar correções, dar suporte, mover e acompanhar as mudanças.
5. **Aposentar e descartar:** retirar de serviço, apagar os dados e descartar com segurança.

Em cada etapa, pergunte quem é responsável e que registro é mantido.

### Inventário, descoberta e registros

Um registro de ativos só é útil se for verdadeiro. O artigo observa que a descoberta automatizada apoia a comparação do inventário com os direitos. As ferramentas de descoberta varrem redes e contas de nuvem para achar o que existe, e o registro anota o que a organização pretende possuir e pagar. As diferenças entre os dois são achados: dispositivos desconhecidos, licenças não usadas, assinaturas não aprovadas.

### Relação com a ITSM e o CMDB

A seção da Wikipédia diz que a ITAM se integra com a ITSM, mas não a mapeia em detalhe para processos do ITIL. As descrições do ITIL costumam distinguir a gestão de ativos, que trata de propriedade, custo e contratos, da gestão de configuração, que trata das relações entre componentes. Um **banco de dados de gestão de configuração (CMDB)**, segundo a Wikipédia, é um termo do ITIL para um banco de dados que guarda informação sobre ativos de hardware e software, chamados de itens de configuração, e as relações entre eles (veja Tópico 4.4 — Gestão de Configuração). Os registros de ativos e os de configuração se sobrepõem; muitas organizações federam os dados para que cada fonte mantenha o controle dos seus.

### Normas

A seção da Wikipédia nomeia a família ISO/IEC 19770 como as normas da gestão de ativos de software sem descrever suas partes. O artigo sobre gestão de ativos de software lista as partes: 19770-1:2017 sobre requisitos de sistemas de gestão de ativos de TI, um framework de processos que pode ser implementado em níveis graduais; 19770-2:2015 sobre etiquetas de identificação de software; 19770-3:2016 sobre gestão de direitos; 19770-4:2017 sobre medição da utilização de recursos; e 19770-5:2015 sobre visão geral e vocabulário. Confira as próprias normas para a redação exata e as edições atuais.

### Benefícios e limites

A seção da Wikipédia não lista benefícios nem críticas e não nomeia ferramentas. Benefícios práticos são amplamente alegados, como menor custo de licenças, menor risco de segurança e melhor suporte, mas este guia não tem evidência medida deles nas fontes lidas. Trate com cuidado as alegações de economia, peça evidências a quem as faz e meça as suas.

### ITAM num cenário ágil e de nuvem

As práticas de décadas anteriores presumem que os ativos são comprados, entregues e instalados pela TI. Hoje:

- **As equipes criam recursos por conta própria,** em consoles de nuvem ou por código. O registro deve saber deles pela conta de nuvem, não por uma ordem de compra.
- **Os ativos têm vida curta.** Um contêiner pode durar uma hora. Acompanhe o serviço e a conta, não cada instância.
- **Assinaturas substituem licenças.** O software é pago mensalmente no cartão de alguém, e a responsabilidade é pouco clara.
- **Componentes de código aberto** entram pelo código, fora do sistema de compras (veja Tópico 4.2 — Gestão de Ativos de Software).

Essas mudanças empurram a ITAM para a automação, as etiquetas (tags) e a responsabilidade compartilhada entre a TI e as equipes que usam os ativos.

## Boas práticas

1. **Comece pelo que mais importa.** Escolha primeiro os ativos de maior custo ou risco: licenças caras, servidores expostos à internet, dispositivos com dados sensíveis. Um registro completo pode vir depois.
2. **Defina o que é um ativo para os seus propósitos.** Escreva uma lista curta dos tipos de ativos que vai acompanhar e dos fatos de que precisa para cada um: responsável, local ou conta, custo, contrato e status. Evite campos que ninguém usará.
3. **Nomeie um responsável para cada ativo.** Uma pessoa ou equipe deve responder por cada ativo ou grupo de ativos. Ativos sem responsáveis são onde se acumulam desperdício e risco.
4. **Use a descoberta para achar o que existe.** Varra redes, contas de nuvem e dispositivos finais e compare com o registro. Trate as diferenças como itens a investigar.
5. **Etiquete os recursos de nuvem.** Exija etiquetas de responsável, serviço e ambiente nos recursos criados em contas de nuvem e relate os sem etiqueta. As etiquetas deixam o registro acompanhar ativos que se movem depressa.
6. **Ligue as compras ao registro.** Garanta que novas compras, incluindo assinaturas e compras no cartão, criem ou atualizem um registro. Revise os gastos em busca de itens que não o fizeram.
7. **Ligue os ativos aos serviços.** Registre que serviço cada ativo apoia. Isso permite calcular o impacto de um incidente, de uma mudança ou de uma aposentadoria (veja Tópico 4.4 — Gestão de Configuração).
8. **Acompanhe o lado financeiro.** Registre custo, termos do contrato, datas de renovação e depreciação onde relevante. Capturar a informação financeira ao longo do ciclo de vida é um componente-chave da gestão de hardware, como diz a seção da Wikipédia.
9. **Gerencie o fim de vida.** Planeje a aposentadoria desde o início: apagamento de dados, devolução e descarte. Remova o acesso e as licenças ao mesmo tempo.
10. **Revise regularmente.** Ao menos duas vezes por ano, confira o registro com a realidade nas classes de ativos mais importantes. Corrija o processo que causou qualquer diferença.
11. **Compartilhe os dados.** Torne os dados de ativos disponíveis ao service desk, à segurança, às finanças e às equipes, numa forma que possam usar. Dados que só o gestor de ativos vê valem pouco.
12. **Meça a prática.** Acompanhe quão completo e exato é o registro, quanto tempo leva para achar um ativo e o custo de itens não usados. Use isso para melhorar, não para classificar pessoas.

## Perguntas para discutir com a equipe

**Se alguém perguntasse quantos ativos de cada tipo temos, com que certeza responderíamos?**

Peça a cada pessoa que estime o número de notebooks, servidores, contas de nuvem e assinaturas e depois compare com o registro. As diferenças mostram quanto é desconhecido. Quem facilita pode perguntar em qual categoria as pessoas menos confiam. Escolha uma para reconciliar primeiro.

**Quem é dono de cada um dos nossos ativos, e o que acontece quando essa pessoa sai?**

Pegue uma amostra de ativos e olhe o campo do responsável. Conte os que não têm responsável ou têm um responsável que saiu. Pergunte que processo deve atualizar os responsáveis quando as pessoas mudam. Acorde um gatilho, como o processo de desligamento.

**Pelo que pagamos que ninguém usa?**

Olhe licenças, assinaturas e recursos de nuvem e pergunte quais não têm uso recente. Prepare-se para surpresas. Pergunte quem pode autorizar o cancelamento de algo. Escolha os três maiores e confira cada um.

**Como ficamos sabendo de um novo recurso de nuvem ou assinatura?**

Rastreie o último. Muitas vezes a resposta é "na fatura" ou "quando quebrou". Discuta como compras, etiquetas e descoberta poderiam pegá-lo mais cedo. Acorde um controle, como etiquetas obrigatórias ou um relatório mensal de itens sem etiqueta.

**O que acontece com um notebook ou servidor no fim da vida?**

Percorra os passos: quem decide, como os dados são removidos, o que diz o registro. As lacunas costumam aparecer em torno do apagamento de dados e dos registros. Peça evidência de que um descarte recente foi feito corretamente. Planeje uma lista de verificação curta.

**Que dados de ativos outras equipes precisam e não damos a elas?**

Pergunte ao service desk, à segurança e às finanças o que gostariam de ver. Pedidos típicos incluem responsável, serviço e custo. Discuta como compartilhar e quem os mantém atualizados. Escolha um relatório a produzir.

## Na prática: um exemplo de ITIL ágil

Uma agência nacional de estatística tem 1.800 funcionários e roda o processamento de suas pesquisas numa mistura de data center próprio e uma conta de nuvem pública. A equipe de finanças nota que a fatura da nuvem cresceu um terço em um ano, e uma auditoria de segurança acha no data center três servidores que ninguém consegue identificar. A função de ITAM é de duas pessoas com uma planilha.

O chefe de TI define um objetivo modesto: conhecer os principais ativos, seus responsáveis e seus custos, começando pela nuvem. Uma nova regra exige etiquetas de responsável, serviço e ambiente em todo recurso de nuvem. Um relatório semanal lista os recursos sem etiqueta, e as equipes têm duas semanas para reivindicá-los ou removê-los. No data center, as duas pessoas da ITAM executam uma varredura de descoberta e a comparam com a planilha, achando 40 dispositivos fora da lista. Rastreiam responsáveis para a maioria deles. As compras concordam que qualquer nova assinatura de software seja comunicada à ITAM em até uma semana.

Depois de um trimestre, a parcela de recursos de nuvem sem etiqueta cai de cerca de um terço para um punhado, e as finanças conseguem atribuir a fatura da nuvem a serviços. Alguns recursos não usados são desligados, e dois servidores são aposentados. Problemas permanecem. Um grupo de pesquisa compra ferramentas no cartão do departamento e não as comunica, e o relatório semanal é lido só por poucas equipes. A equipe de ITAM conversa com o grupo de pesquisa sobre um formulário simples de registro e pede ao chefe de finanças que acrescente as assinaturas à revisão mensal. Decidem também que o registro cobrirá os serviços de nuvem por conta e serviço, e não cada instância de vida curta.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega criam muitos ativos. Etiquete o que criar, registre as assinaturas e bibliotecas que acrescentar e aposente o que não precisar mais. Trate o registro como um serviço para o qual você contribui e do qual se beneficia.

### Equipes de serviço e operações

As equipes de operações dependem do registro para suporte, correções e resposta a incidentes. Mantenha-o exato atualizando-o na implantação, na mudança e na aposentadoria. Use a descoberta para achar o que falta e relate as diferenças aos responsáveis.

### Liderança e governança

Líderes e finanças usam os dados de ativos para decisões sobre gastos, riscos e renovações. Peça alguns números confiáveis, como gasto por serviço e a parcela de ativos com responsáveis, em vez de um registro perfeito. Apoie os pequenos controles, como etiquetas e comunicação de compras, que o mantêm verdadeiro.

### Clientes e usuários

Os usuários se beneficiam quando seu equipamento e seu acesso são bem geridos: dispositivos que funcionam, substituições rápidas e nenhuma cobrança surpresa. Avise o service desk sobre equipamentos que acrescentar ou de que não precisar mais e espere que lhe peçam para confirmar o que você tem.

## Modos de falha comuns

- **Um registro em que ninguém confia.** Está desatualizado e é ignorado. Em vez disso, restrinja o escopo, use a descoberta e atualize em cada evento do ciclo de vida.
- **Sem responsáveis.** Os ativos não pertencem a ninguém. Em vez disso, exija um responsável para cada ativo ou grupo.
- **Acompanhar tudo.** O esforço soterra o valor. Em vez disso, comece pelo que é caro ou arriscado e cresça.
- **Ignorar a nuvem e as assinaturas.** O registro cobre apenas hardware comprado. Em vez disso, etiquete os recursos de nuvem e capture as assinaturas.
- **Compras fora do processo.** As compras no cartão contornam o registro. Em vez disso, ligue compras e relatórios de gastos à ITAM.
- **Nenhum processo de fim de vida.** Dispositivos antigos mantêm dados e acesso. Em vez disso, planeje aposentadoria, apagamento e descarte.
- **Dados mantidos longe dos outros.** Só a ITAM vê o registro. Em vez disso, compartilhe-o com o service desk, a segurança e as finanças.
- **Contar sem agir.** Os relatórios mostram ativos não usados e nada é cancelado. Em vez disso, atribua responsáveis para agir sobre os achados.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Inventário e descoberta | Os ativos são listados em planilhas ou não são | Algumas classes de ativos são inventariadas | A descoberta e um registro cobrem as principais classes de ativos e são reconciliados regularmente | A completude e a exatidão são medidas e as lacunas corrigidas | O inventário abrange o ambiente próprio, a nuvem e os fornecedores, com dados compartilhados |
| Responsabilidade | Poucos ativos têm responsáveis | Há responsáveis nomeados para alguns ativos | Todo ativo ou grupo tem um responsável, mantido atualizado por processo | As lacunas de responsabilidade são acompanhadas e resolvidas | Os responsáveis entre equipes e fornecedores trabalham segundo regras comuns |
| Ciclo de vida e controle financeiro | Compra e descarte são informais | Alguns ativos têm dados de custo e contrato | As etapas do ciclo de vida e os dados financeiros são registrados para os ativos principais | Custo, renovações e utilização são revisados e tratados | Os dados financeiros e de ciclo de vida são ligados aos serviços e compartilhados com as finanças |
| Uso dos dados | Poucos usam os dados | O service desk às vezes usa o registro | Desk, segurança e finanças usam rotineiramente os dados de ativos | A qualidade e o uso dos dados são medidos e melhorados | Os dados alimentam decisões em toda a organização e com parceiros |

## Lista de verificação

- [ ] Temos uma lista curta de tipos de ativos e dos fatos que registramos para cada um.
- [ ] Todo ativo ou grupo acompanhado tem um responsável nomeado.
- [ ] Os resultados da descoberta são comparados com o registro num calendário regular.
- [ ] Os recursos de nuvem levam etiquetas de responsável, serviço e ambiente, e os sem etiqueta são relatados.
- [ ] Novas compras, incluindo assinaturas, criam ou atualizam um registro.
- [ ] Os ativos são ligados aos serviços que apoiam.
- [ ] Dados de custo, contrato e renovação são registrados para os ativos principais.
- [ ] A aposentadoria inclui remoção de dados, remoção de acesso e um registro.
- [ ] O registro é reconciliado com a realidade ao menos duas vezes por ano nas principais classes de ativos.
- [ ] O service desk, a segurança e as finanças conseguem ver os dados de que precisam.

## Prompts de IA

**Finalidade: reconciliar os resultados da descoberta com o registro.**

```text
I have two lists of assets: what our register says we have, and what a discovery scan found. 

Register: [paste a table with asset name or ID, type, owner, and status; remove personal data].
Discovery: [paste a table with name or ID, type, and any identifying details].

Using only these lists, identify: items in the register not found by discovery; items found by discovery not in the register; and items where the details differ. For each group, suggest a question to ask the owner or the team. Do not guess what an unknown item is. If the lists are too thin to match, say what to add. List what you are unsure of.
```

**Finalidade: redigir um padrão curto de etiquetagem para recursos de nuvem.**

```text
Help me draft a one-page tagging standard for cloud resources.

Our cloud accounts and teams: [describe].
Facts we need to know about a resource: [for example owner, service, environment, cost center, data sensitivity].
Problems today: [for example untagged resources and unknown owners].

Propose three to six required tags with allowed values or formats, how untagged resources will be found and reported, who is responsible for fixing them, and a grace period (leave the length as [to be agreed]). Mark assumptions. Do not invent our tooling. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: planejar uma lista de verificação de aposentadoria para um dispositivo ou servidor.**

```text
Help me write a retirement checklist for [asset type, for example "laptops" or "servers"].

Our current practice: [describe].
Data it may hold: [describe sensitivity].
Records we must keep: [list, or write "unknown"].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a checklist covering: approval, removing access and licenses, data wiping or destruction and evidence, updating the register, financial records, and disposal or return. Mark every item that is an assumption. Do not state that a law requires a step unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: achar candidatos a economia a partir de dados de uso.**

```text
Here is a table of our subscriptions and licenses with cost per month, number of paid seats, and number of active users in the last 90 days: [paste real data].

Using only my numbers, list items where paid seats exceed active users and compute the difference and the cost of the unused seats. Rank by cost. For the top five, suggest a question to ask the owner before changing anything. Do not assume that inactive users can lose access; flag it as a question. List what you are unsure of.
```

## Skills de IA

- [configuration-management](../../../../skills/configuration-management/SKILL.md): use para planejar como os ativos e suas relações são registrados e mantidos verdadeiros.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use para gerir contratos e renovações que ficam por trás dos ativos.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): use para prever o custo de ativos e assinaturas.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use para deixar claro quem é dono, quem dá suporte e quem aprova cada classe de ativo.
- [data-governance](../../../../skills/data-governance/SKILL.md): use para decidir quem é dono dos dados guardados em ativos e como são aposentados.

## Fontes principais

- **IT asset management** (Wikipedia, atualmente dentro do artigo sobre gestão de data centers): uma definição curta e uma descrição da gestão de ativos de hardware.
- **Software asset management** (Wikipedia): a definição, os objetivos, as tecnologias e as partes da ISO/IEC 19770.
- **Configuration management database** (Wikipedia): o termo do ITIL para o repositório de itens de configuração e relações.
- **ITIL** (Wikipedia): o framework que trata a ITAM ao lado da gestão de serviços.

## Referências

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
