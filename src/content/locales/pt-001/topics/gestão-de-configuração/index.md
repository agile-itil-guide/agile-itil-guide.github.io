# Gestão de Configuração

**A gestão de configuração mantém um retrato exato e utilizável das partes de um serviço e de como se relacionam, e sua forma moderna é um registro construído a partir de código e descoberta, em que se confia porque o próprio sistema o mantém atualizado.**

## Por que isso importa

Quando algo quebra, as primeiras perguntas são sempre as mesmas. O que é este componente? A que se conecta? O que mudou? Quem é o responsável? Se as respostas levam uma hora para aparecer, um incidente que poderia ser corrigido em minutos se arrasta. Quando uma mudança é planejada, as mesmas perguntas decidem se você entende o risco. Um bom retrato do serviço e de suas partes é uma das coisas mais úteis que uma equipe de operações pode ter.

É também uma das mais difíceis de manter verdadeira. Documentos da infraestrutura, desenhados uma vez, ficam desatualizados em semanas. Bancos de dados de componentes, mantidos à mão, estão errados de modos que ninguém enxerga. As formas de trabalhar ágeis e de nuvem pioram isso em um aspecto, com muitas partes pequenas que mudam depressa, e melhoram em outro, porque a configuração pode ser escrita como código, guardada em controle de versões e aplicada automaticamente.

O artigo da Wikipédia em inglês sobre gestão de configuração a descreve como um processo de gestão para estabelecer e manter a consistência entre os atributos de um produto e seus requisitos, design e informação operacional ao longo da vida, com raízes no Departamento de Defesa dos EUA na década de 1950. O artigo sobre bancos de dados de gestão de configuração descreve o termo do ITIL para o repositório de itens de configuração e suas relações. O artigo sobre infraestrutura como código descreve a gestão de recursos por meio de arquivos de definição legíveis por máquina. Entre eles dão a visão tradicional e a moderna, e este tópico as conecta.

## Conceitos centrais

### Gestão de configuração em geral

Segundo a Wikipédia, a gestão de configuração (CM) é usada em sistemas militares, na gestão de serviços de TI sob o ITIL e na engenharia civil. Sua história começa com o Departamento de Defesa dos EUA na década de 1950 como disciplina técnica para hardware, com normas militares no fim da década de 1960 e na de 1970 fazendo dela uma disciplina própria. O artigo nomeia várias normas, incluindo a ANSI/EIA-649, a ISO 10007 (edição de 2017) e a IEEE 828-2012. As disciplinas centrais que lista, de manuais militares e da norma EIA, são:

| Disciplina | O que faz |
|---|---|
| **Planejamento e gestão** | Um plano que cobre pessoas, treinamento, convenções de nomes, auditorias e requisitos de fornecedores |
| **Identificação de configuração** | Definir e manter linhas de base (baselines) que definem a arquitetura e os componentes; os produtos acompanhados são os **itens de configuração (CIs)** |
| **Controle de configuração** | Avaliar pedidos de mudança e aprová-los ou rejeitá-los |
| **Contabilização do estado da configuração** | Registrar e relatar as descrições dos CIs e os desvios da linha de base |
| **Verificação e auditoria** | Verificações independentes de que o sistema corresponde à sua documentação e aos requisitos |

Uma **linha de base (baseline)** é um ponto de referência acordado; uma vez que um atributo está na linha de base, as mudanças passam por controle formal, são avaliadas, aprovadas e então a linha de base é refeita. O artigo distingue a gestão de configuração da gestão de ativos, que se concentra na contabilidade financeira e no valor dos ativos de TI (veja Tópico 4.1 — Gestão de Ativos de TI).

### Gestão de configuração de software

O artigo descreve a gestão de configuração de software como identificar atributos do software em vários pontos e controlar as mudanças para manter a integridade e a rastreabilidade, com os mesmos quatro procedimentos de identificação, controle, contabilização do estado e auditorias. Sistemas de controle de versões, ferramentas de build e registros de release são instâncias modernas.

### O banco de dados de gestão de configuração

A Wikipédia descreve um **banco de dados de gestão de configuração (CMDB)** como um termo do ITIL para um banco de dados que guarda informação sobre os ativos de hardware e software de uma organização, os CIs, e as relações entre eles. Ele "representa a configuração autorizada dos componentes significativos do ambiente de TI". Pontos-chave do artigo:

- **Os CIs têm atributos** como identificador, nomes, descrições, propriedade e importância, que podem chegar às centenas.
- **As relações** costumam ligar um CI de origem a um CI de destino. Relações mais avançadas acrescentam um descritor, como um banco de dados ser componente de uma aplicação.
- **Federação:** as implementações costumam federar dados de fontes como a gestão de ativos, para que cada fonte mantenha o controle de seus dados; o artigo contrasta isso com copiar dados para o CMDB.
- **Usos:** análise de impacto, análise de causa-raiz, gestão de mudanças, gestão de incidentes, inventário e builds.
- **Tipos de CI:** hardware, software, comunicações e redes, local, documentação e pessoas; organizações maduras acrescentam tipos de negócio como produtos e fornecedores.
- **Desafios:** relevância (coletar dados ao longo do ciclo de vida de cada CI), manutenção (manter alta a qualidade dos dados, o que exige vários papéis especializados) e usabilidade (os CMDBs costumam ser bancos de dados simples sem visualização, então pode ser necessária uma camada de aplicação adicional).

O artigo nomeia a descoberta automática de CIs e o acompanhamento de mudanças como fatores-chave de sucesso. Não declara data de fundação, versão específica do ITIL nem dados de adoção, e está marcado como carente de mais citações. Diz também que o ITIL renomeou o processo como Service Asset and Configuration Management no ITIL versão 3 (isso vem do artigo sobre gestão de configuração).

### Infraestrutura como código

O artigo sobre infraestrutura como código descreve a prática de gerir e provisionar recursos de data center por meio de arquivos de definição legíveis por máquina, e não por configuração manual ou ferramentas interativas, com as definições mantidas em controle de versões. Distingue:

- As abordagens **declarativas**, que descrevem o estado final desejado e deixam o sistema descobrir os passos, e as **imperativas**, que especificam comandos em ordem. O artigo diz que a IaC usa com mais frequência definições declarativas.
- Os métodos **push**, em que um sistema controlador envia instruções aos servidores, e os métodos **pull**, em que os servidores buscam as próprias instruções.

Nomeia muitas ferramentas, do CFEngine (1993) ao Terraform, Ansible, Puppet, Chef, Pulumi e OpenTofu, e relaciona a prática ao DevOps por envolver os desenvolvedores na configuração e trazer a operação mais cedo. Suas alegações de benefícios, sobre custo, rapidez e redução de erro humano, estão marcadas como carentes de citações. Cita um relatório de 2020 da Unit 42 que achou cerca de 200.000 vulnerabilidades potenciais em modelos de IaC, um lembrete de que o código também pode ter falhas. O artigo não menciona deriva de configuração nem idempotência.

### Configuração declarada e descoberta

Um modo útil de pensar a gestão de configuração moderna é que há duas fontes de verdade, e o valor está em compará-las:

| Fonte | O que diz | Ponto forte | Ponto fraco |
|---|---|---|---|
| **Declarada** (código, definições em controle de versões) | O que pretendemos que o sistema seja | Revisável, versionada, repetível | Pode não corresponder ao que está rodando |
| **Descoberta** (varreduras, APIs de nuvem, agentes) | O que existe agora | Reflete a realidade | Não diz o que se pretende nem por quê |

Um CMDB alimentado pelas duas pode mostrar a **deriva (drift)**, a diferença entre o estado pretendido e o real. As fontes lidas para este guia não usam a palavra, mas ela nomeia o problema que as disciplinas de contabilização do estado e de auditoria da CM devem pegar.

### Gestão de configuração e mudança

O controle de configuração e a habilitação de mudanças são parceiros próximos (veja Tópico 3.4 — Habilitação de Mudanças). As disciplinas de CM dizem que as mudanças em itens na linha de base são avaliadas e aprovadas. Numa configuração baseada em pipeline, uma mudança no código que define a infraestrutura é revisada e testada como qualquer outra, e o registro do pipeline mostra quem mudou o quê e quando. O CMDB ou seu equivalente reflete então o resultado.

### Usos na gestão de serviços

As relações registradas nos dados de configuração respondem a perguntas em outras práticas:

- **Incidentes:** o que depende deste componente que falha, e quem é o responsável (veja Tópico 3.2 — Gestão de Incidentes)?
- **Problemas:** que componentes estiveram envolvidos em incidentes repetidos (veja Tópico 3.3 — Gestão de Problemas)?
- **Mudanças:** qual é o raio de impacto desta mudança?
- **Continuidade:** o que precisa ser recuperado e em que ordem (veja Tópico 3.12 — Gestão da Continuidade de Serviço)?
- **Segurança:** o que está exposto e o que mudou?

### Limites das fontes

O artigo sobre gestão de configuração está marcado como possivelmente carente de reescrita e diz pouco sobre implementação prática. O artigo sobre CMDB não tem seção de críticas e tem poucas citações. A experiência de campo é que os CMDBs muitas vezes fracassam por tentar guardar demais, com exatidão demais, por tempo demais. Trate isso como experiência prática que este guia oferece, não como achado das fontes.

## Boas práticas

1. **Comece pelas perguntas que você precisa responder.** Liste as perguntas que fazem quem responde a incidentes, quem revisa mudanças e quem planeja a continuidade, como "o que depende disto?" e "quem é o responsável?". Registre apenas o que as responde.
2. **Defina um pequeno conjunto de tipos de itens de configuração.** Comece com serviços, aplicações, hospedeiros ou contêineres, bancos de dados e dependências externas importantes. Acrescente tipos quando uma pergunta exigir.
3. **Registre as relações, não só os itens.** Capture quais itens dependem de quais e que serviço apoiam. As relações tornam os dados úteis para a análise de impacto.
4. **Nomeie um responsável para cada item.** Um item sem responsável é um risco. Faça da responsabilidade parte de como os itens são criados.
5. **Mantenha a configuração pretendida em controle de versões.** Expresse a infraestrutura e a configuração como código, revise-as como outro código e deixe o pipeline aplicá-las. O repositório é então um registro de intenção e de histórico.
6. **Use a descoberta para achar a realidade.** Varra redes e contas de nuvem para ver o que existe e compare com a configuração declarada. Investigue as diferenças (deriva) em vez de ignorá-las.
7. **Federe em vez de copiar onde puder.** Deixe cada fonte de dados (registro de ativos, contas de nuvem, ferramentas de implantação) ser dona de seus fatos e ligue a elas a partir dos dados de configuração, como descreve o artigo sobre CMDB.
8. **Automatize as atualizações.** Alimente os dados de configuração a partir do pipeline e da descoberta para que mudem conforme o sistema muda. As atualizações manuais ficarão para trás.
9. **Defina linhas de base para o que importa.** Para os serviços críticos, registre a configuração aprovada e aplique controle formal de mudanças aos desvios dela. Para o resto, um controle mais leve basta.
10. **Audite regularmente.** Compare os dados com a realidade numa amostra de itens a cada trimestre e corrija o processo por trás de qualquer diferença. Essa é a disciplina de verificação e auditoria na prática.
11. **Facilite o uso dos dados.** Forneça visualização e busca para quem responde e quem planeja, porque dados que não podem ser lidos depressa não serão usados.
12. **Mantenha a segurança em vista.** Trate o código de configuração como sensível, varra os modelos em busca de fraquezas e controle quem pode mudar a linha de base. A cifra da Unit 42 no artigo sobre infraestrutura como código é um lembrete do risco.

## Perguntas para discutir com a equipe

**Quando acontece um incidente, quanto tempo levamos para descobrir o que depende do componente que falha?**

Olhe o último incidente e o tempo gasto nesta pergunta. Pergunte de onde veio a resposta: um diagrama, uma pessoa, uma busca. Quem facilita pode perguntar o que teria poupado mais tempo. Muitas vezes é uma lista de dependências e responsáveis para os serviços mais importantes. Acorde produzir uma para um serviço.

**Onde está definida a nossa infraestrutura, e isso corresponde ao que está rodando?**

Pergunte se os principais ambientes são construídos a partir de código e com que frequência alguém os muda à mão. Procure diferenças. Se você não sabe, planeje uma comparação para um ambiente. Discuta como evitar mudanças manuais ou detectá-las depressa.

**Quais itens nos nossos registros de configuração não têm responsável ou não foram confirmados ultimamente?**

Tome uma amostra e conte. Pergunte por que estão nesse estado: nenhum processo para responsáveis, nenhum lembrete, nenhuma consequência. Discuta um mecanismo leve, como uma confirmação anual ou uma etiqueta de responsável obrigatória na criação. Escolha um.

**Que dados guardamos que ninguém usa?**

Liste os campos e tipos de registro e pergunte quem os usou no último trimestre. O artigo sobre CMDB nomeia a manutenção como desafio central, e dados não usados são um custo sem benefício. Remova ou pare de manter o que ninguém usa.

**O que precisaríamos ver para aprovar com confiança uma mudança num serviço crítico?**

Pergunte a quem revisa. Respostas típicas: o que a mudança toca, o que depende dela, o que fez da última vez. Pergunte quais dessas os dados de configuração podem dar. Escolha uma peça faltante a acrescentar.

**Quem pode mudar a linha de base dos nossos serviços críticos, e como sabemos quando o faz?**

Peça a lista e a evidência das mudanças. Discuta se as mudanças fora do pipeline são detectadas. Acorde como a deriva será achada e quem age.

## Na prática: um exemplo de ITIL ágil

Uma agência tributária nacional opera 120 aplicações e uma mistura de servidores próprios e serviços de nuvem. Uma equipe de seis engenheiros de operações mantém um CMDB que foi carregado de uma planilha três anos atrás. Durante um grande incidente no portal de declarações, os engenheiros descobrem que o CMDB lista um servidor de banco de dados aposentado um ano antes e omite o balanceador de carga que de fato falhou. O incidente leva três horas a mais para ser resolvido porque é esse o tempo necessário para descobrir de que o portal depende.

O chefe de operações e um engenheiro revisam que perguntas fazem os respondentes. Restringem o escopo do CMDB a serviços, aplicações, os principais componentes de infraestrutura por trás deles e dependências externas importantes e abandonam os tipos de baixo valor. A infraestrutura do portal de declarações é movida para código em controle de versões, e o pipeline escreve no CMDB um registro de cada componente implantado. Uma varredura de descoberta da rede e das contas de nuvem roda todas as noites, e um relatório lista as diferenças entre os dados declarados e os descobertos. Cada item tem um campo de responsável, que o relatório também confere. Uma visão simples de dependências do portal é construída a partir dos dados.

Um trimestre depois, a visão de dependências do portal é exata o bastante para que a equipe do incidente seguinte a use nos primeiros dez minutos. O relatório noturno de diferenças acha 14 servidores não gerenciados, a maioria aposentados ou reivindicados por responsáveis. Problemas permanecem. Os serviços fora do portal de declarações ainda dependem dos dados antigos, e uma equipe continua a fazer mudanças manuais num servidor de banco de dados que o pipeline depois sobrescreve, causando uma breve queda. O chefe de operações estende a abordagem aos três serviços seguintes, acrescenta uma regra de que as mudanças em produção passam pelo pipeline e pede que o relatório de descoberta sinalize mudanças manuais.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega definem a configuração por código. Ponha infraestrutura e ajustes em controle de versões, revise-os e deixe o pipeline aplicá-los. Etiquete os recursos com responsável e serviço e descreva as dependências no repositório ou no registro do serviço.

### Equipes de serviço e operações

As equipes de operações usam e mantêm os dados de configuração. Mantenha o escopo pequeno, compare a configuração declarada e a descoberta e persiga a deriva. Devolva o que aprende dos incidentes aos tipos e relações que você registra.

### Liderança e governança

Os líderes decidem quanto esforço os dados de configuração merecem. Pergunte que decisões eles apoiam, como análise de impacto e planejamento de continuidade, e julgue pelo uso. Evite financiar um banco de dados enorme por si só. Apoie os controles do pipeline que mantêm os registros verdadeiros.

### Clientes e usuários

Clientes e usuários se beneficiam quando os incidentes são resolvidos mais depressa e as mudanças quebram menos, o que bons dados de configuração ajudam a conseguir. Raramente veem os dados. Pergunte aos provedores como sabem o que uma mudança afeta e como acham a causa de uma queda.

## Modos de falha comuns

- **Tentar registrar tudo.** Os dados são grandes demais para se manterem verdadeiros. Em vez disso, comece pelas perguntas e pelos serviços críticos.
- **Manutenção manual.** Os registros ficam para trás. Em vez disso, alimente os dados a partir do pipeline e da descoberta.
- **Nenhuma relação.** Os itens são listados mas não conectados. Em vez disso, capture as dependências e o serviço que cada item apoia.
- **Sem responsáveis.** Ninguém confirma ou corrige os registros. Em vez disso, exija um responsável e confira regularmente.
- **Mudanças manuais fora do pipeline.** A realidade e a intenção se afastam. Em vez disso, passe as mudanças pelo pipeline e detecte a deriva.
- **Dados ilegíveis.** Quem responde não consegue usar o banco de dados. Em vez disso, forneça busca e visualização.
- **Copiar em vez de federar.** Dados duplicados envelhecem. Em vez disso, ligue à fonte que é dona dos fatos.
- **Código de configuração tratado como inofensivo.** Os modelos carregam vulnerabilidades. Em vez disso, varra-os e revise-os.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Escopo e relações | Os componentes são conhecidos informalmente | Alguns serviços têm listas de componentes | Os serviços-chave têm itens, responsáveis e dependências registrados | Cobertura e exatidão são medidas e as lacunas fechadas | Os dados de configuração abrangem equipes, nuvens e fornecedores |
| Configuração declarada | Os sistemas são configurados à mão | Alguns ambientes usam código | Infraestrutura e configuração dos serviços-chave são código em controle de versões | O histórico de mudanças e a deriva são acompanhados | O código de configuração é compartilhado e reutilizado entre equipes |
| Descoberta e verificação | A realidade é presumida | Varreduras ocasionais são feitas | A descoberta regular é comparada com os dados declarados | As diferenças e suas causas são medidas e reduzidas | Descoberta e verificação são automatizadas em toda a organização |
| Uso dos dados | Os dados raramente são consultados | Usados em alguns incidentes | Usados rotineiramente em incidentes, mudanças e planejamento de continuidade | Uso e benefício são medidos e os dados melhorados | Os dados apoiam decisões em toda a organização e com parceiros |

## Lista de verificação

- [ ] Listamos as perguntas que nossos respondentes e revisores precisam que os dados de configuração respondam.
- [ ] Registramos um pequeno conjunto de tipos de itens com responsáveis e relações.
- [ ] Infraestrutura e configuração dos serviços-chave estão em controle de versões.
- [ ] As mudanças em produção nesses serviços passam pelo pipeline.
- [ ] Os resultados da descoberta são comparados com a configuração declarada num calendário.
- [ ] As diferenças (deriva) são investigadas e corrigidas.
- [ ] Os registros são alimentados automaticamente pelo pipeline e pela descoberta onde possível.
- [ ] Uma amostra de registros é auditada contra a realidade a cada trimestre.
- [ ] Os dados podem ser pesquisados e visualizados com facilidade por quem responde.
- [ ] O código de configuração é revisado e varrido em busca de fraquezas.

## Prompts de IA

**Finalidade: decidir o que registrar listando as perguntas que você precisa responder.**

```text
Help me decide what configuration data to record for [service].

The questions responders and change reviewers ask, in our words: [list].
What we record today: [describe, or write "nothing"].
Where data lives (tools, repositories, cloud accounts): [list].

For each question, say what item types and relationships would be needed to answer it, where the data could come from automatically, and what would still need a person. Propose a minimal set of item types and fields. Mark guesses. Do not invent tools we do not have. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: resumir a deriva entre a configuração declarada e a descoberta.**

```text
Here is a list of items found by discovery and a list of items declared in our configuration code or records.

Discovered: [paste names or IDs, with type and key attributes].
Declared: [paste names or IDs, with type and key attributes].

Using only these lists, identify items found but not declared, items declared but not found, and items where attributes differ. Group them and suggest a question to ask about each group (for example whether it is retired, owned by someone else, or created by hand). Do not guess the cause. List what you are unsure of.
```

**Finalidade: montar uma visão de dependências para um serviço.**

```text
Help me describe the dependencies of [service] so that responders can use them in an incident.

What the service does: [describe].
Components I know (applications, databases, network, cloud services, external suppliers): [list with how they connect].
Owners I know: [list].

Produce a simple text diagram and a table with: component, what depends on it, owner (or "unknown"), and what to check first if it fails (only from my text; otherwise "ask owner"). Highlight single points of failure that appear in my description. Do not invent components. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: planejar uma auditoria trimestral dos registros de configuração.**

```text
Plan a one-hour quarterly audit of our configuration records for [scope].

How records are created and updated today: [describe].
Sample size we can handle: [number].

Give a method: how to choose a sample, how to check each item against reality, what to record, how to calculate the share that is accurate (from the audit results only), and how to turn errors into process fixes. Keep it tool-free. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [configuration-management](../../../../skills/configuration-management/SKILL.md): use para planejar o que registrar, como mantê-lo verdadeiro e como usá-lo.
- [change-request](../../../../skills/change-request/SKILL.md): use para escrever registros de mudança que referenciem os itens afetados.
- [runbook](../../../../skills/runbook/SKILL.md): use para transformar conhecimento de configuração em passos que quem responde possa seguir.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): use para situar serviços, aplicações e infraestrutura num retrato arquitetural.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): use para manter a configuração e o design mudando com segurança ao longo do tempo.

## Fontes principais

- **Configuration management** (Wikipedia): a história, as disciplinas centrais, as linhas de base e as normas da gestão de configuração.
- **Configuration management database** (Wikipedia): a definição, o conteúdo, os usos e os desafios de um CMDB.
- **Infrastructure as code** (Wikipedia): a gestão de recursos por definições legíveis por máquina, com uma lista de ferramentas e notas sobre benefícios e riscos.
- **ITIL** (Wikipedia): o framework em que aparecem o CMDB e a gestão de configuração.

## Referências

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
