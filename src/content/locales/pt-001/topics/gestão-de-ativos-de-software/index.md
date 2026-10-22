# Gestão de Ativos de Software

**A gestão de ativos de software garante que uma organização compre o software de que precisa, use o que compra e siga os termos que aceitou, e para as equipes ágeis isso agora significa acompanhar componentes de código aberto e assinaturas além de produtos licenciados.**

## Por que isso importa

O software é um dos maiores e menos visíveis custos da TI. Compram-se licenças para pessoas que já saíram, as assinaturas renovam sem ser notadas e os produtos são instalados de modos que a licença não permite. Cada caso é um custo ou um risco. Uma auditoria de fornecedor pode transformar uma pequena divergência numa grande fatura, e um componente sem correções numa aplicação esquecida pode abrir uma porta para um atacante.

As equipes ágeis mudam o quadro. Os desenvolvedores trazem bibliotecas com um único comando, e as aplicações modernas são em grande parte montadas com peças de terceiros e de código aberto. O artigo da Wikipédia sobre a cadeia de suprimentos de software relata que se achou software de código aberto em 96% das bases de código comerciais que um fornecedor analisou em 2024, citando a Synopsys. As equipes também compram serviços de nuvem e assinaturas em cartões, fora do processo de compras. A gestão de ativos de software (SAM) cresceu, portanto, além de contar instalações de alguns grandes produtos, e passou a ser uma prática que cobre o que é usado, o que é devido e o que é confiável.

O [artigo da Wikipédia sobre gestão de ativos de software](https://en.wikipedia.org/wiki/Software_asset_management) descreve a SAM como uma prática de negócio para gerir e otimizar a compra, a implantação, a manutenção, a utilização e o descarte de software, com os objetivos de reduzir os custos de TI, limitar o risco empresarial e legal e melhorar a produtividade do usuário final. Não cobre serviços de nuvem, SBOMs nem modelos de maturidade, então este tópico acrescenta os artigos sobre a cadeia de suprimentos de software e sobre software de código aberto. Este tópico descreve a prática e não dá aconselhamento jurídico; os termos de licença diferem, e a fonte certa é o texto da licença ou do contrato.

## Conceitos centrais

### O que é a SAM

Segundo a Wikipédia, a SAM faz parte da gestão de ativos de TI (veja Tópico 4.1 — Gestão de Ativos de TI). Cita o ITIL como a descrevendo como incluindo a gestão, o controle e a proteção eficazes dos ativos de software. Seus objetivos estratégicos, como o artigo os lista, incluem reduzir custos de software e de suporte por meio de contratos de volume e da realocação de licenças não usadas, impor políticas de segurança e padrões de desktop, servidor e dispositivos móveis, melhorar a produtividade implantando tecnologia de modo mais rápido e confiável, limitar a sobrecarga de gestão por automação e estabelecer políticas de aquisição, implantação, uso e aposentadoria.

### Conformidade de licenças

O artigo descreve a SAM como equilibrando o número de licenças compradas com o número de fato consumido e garantindo que o uso corresponda aos termos de licença de cada fornecedor. Observa que as instalações são a medida mais comum de consumo, mas alguns softwares são licenciados por usuários, capital, processadores ou núcleos de CPU. As organizações podem reduzir a responsabilidade em auditorias de fornecedores ou de terceiros como a Business Software Alliance, diz o artigo, por meio de inventários contínuos de software, políticas de compra e ferramentas. O artigo não descreve procedimentos de auditoria. O objetivo do exercício é conhecer o seu **direito de uso (entitlement)**, aquilo que você pode usar, o seu **consumo**, aquilo que você usa, e a distância entre os dois.

### As três perguntas

Uma prática de SAM responde a três perguntas para cada produto importante:

| Pergunta | O que precisa |
|---|---|
| A que temos direito? | Contratos, termos de licença, faturas e comprovantes de compra |
| O que estamos usando? | Dados de inventário e de uso vindos de descoberta e medição |
| Qual é a distância e o que fazemos a respeito? | Comparação, decisões de comprar, realocar ou remover |

Uma distância pode correr em qualquer direção: o licenciamento insuficiente, que é um risco de conformidade, e o licenciamento excessivo, que é desperdício.

### Normas: ISO/IEC 19770

O artigo lista as partes da família ISO/IEC 19770: 19770-1:2017 (requisitos de sistemas de gestão de ativos de TI, um framework de processos que pode ser implementado em níveis graduais), 19770-2:2015 (etiquetas de identificação de software), 19770-3:2016 (um esquema de gestão de direitos para detalhes de licença, contrato e fatura), 19770-4:2017 (dados de medição da utilização de recursos) e 19770-5:2015 (visão geral e vocabulário). O artigo diz que a norma de identificação de software é apoiada por IBM, Microsoft e Adobe. Confira as normas para as edições atuais e o conteúdo exato.

### Tecnologias de SAM e seus limites

O artigo lista ferramentas de inventário de software, gestão de licenças, medição, controle de aplicações, implantação, gestão de correções, gestão de requisições e catalogação de produtos. Dá também um exemplo de escala: as regras de medição do System Center Configuration Manager da Microsoft funcionam bem para parques pequenos, mas geram volumes de dados ingerenciáveis em escala corporativa. As ferramentas ajudam, mas precisam de uma pergunta clara e de um responsável.

### Software de código aberto

A Wikipédia define software de código aberto como aquele cujo código-fonte é publicamente disponível e que os usuários podem usar, estudar, modificar e distribuir, normalmente sob uma licença aberta. A Open Source Initiative mantém a definição mais comum, com dez critérios e uma lista de licenças aprovadas, embora o artigo diga que a OSI não tem autoridade legal sobre o termo. Descreve duas famílias de licenças:

| Família | O que pede de quem recebe | Exemplos citados |
|---|---|---|
| **Permissiva** | Preservar os avisos de direitos autorais e incluir a licença; nenhum dever de liberar o seu próprio código sob a mesma licença | BSD, MIT, Apache |
| **Copyleft** | Usar a mesma licença para ao menos algumas partes do que você distribui (o copyleft forte se aplica a todas as obras derivadas; o fraco, apenas sob certas condições) | GNU GPL (forte); MPL, EPL (fraco) |

As duas famílias, diz o artigo, exigem preservar os avisos de direitos autorais e fornecer uma cópia da licença junto com o código. Cita o caso *Jacobson v Katzer* (2008), em que um tribunal fez valer os termos de uma licença aberta, inclusive a atribuição, pela lei de direitos autorais. Observa que as organizações estão montando escritórios de programas de código aberto para gerir suas estratégias. Os termos do código aberto são obrigações reais. Quais se aplicam depende de como você usa e distribui o software; pergunte à sua função jurídica e leia a licença.

### A cadeia de suprimentos de software e os SBOMs

O artigo sobre a cadeia de suprimentos de software a descreve como os componentes, bibliotecas, ferramentas e processos usados para desenvolver, construir e publicar um artefato de software. Nomeia riscos: os atacantes podem comprometer um componente a montante para alcançar todos os usuários a jusante, e cita exemplos como o Log4Shell em 2021, o ataque à SolarWinds em 2020 e a porta dos fundos do XZ Utils em 2024. Descreve uma **lista de materiais de software (SBOM)** como um inventário dos componentes de um artefato de software, incluindo partes de código aberto e proprietárias, a contrapartida em software da lista de materiais de manufatura. Os SBOMs apoiam a análise de vulnerabilidades e de licenças.

O artigo relata limites: planilhas não podem ser enriquecidas automaticamente com dados de vulnerabilidades e devem ser guardadas num repositório consultável; SBOMs orientados por política são raros, com um estudo achando que cerca de 0,56% dos repositórios populares do GitHub os contêm; menos da metade dos projetos testados inclui SBOMs nos releases e muitos são incompletos; e um estudo de seis ferramentas Java de SBOM achou imprecisões frequentes. Observa que a visibilidade sozinha não garante a integridade. Relata também que a Ordem Executiva 14028 dos EUA, assinada em 12 de maio de 2021, mandou o NIST e a NTIA emitirem orientação sobre a segurança da cadeia de suprimentos de software, incluindo SBOMs, e que os elementos mínimos da NTIA se dividem em campos de dados, apoio à automação e práticas e processos. O artigo não nomeia formatos de SBOM nem descreve o Cyber Resilience Act da União Europeia. As regras sobre SBOMs diferem por país e setor; pergunte à sua função de conformidade o que se aplica a você.

### SaaS e assinaturas de nuvem

O artigo sobre SAM não discute software como serviço (SaaS) nem nuvem. A experiência prática mostra que o software por assinatura cria novos problemas: compras fora das aquisições, licenças que ninguém remove, ferramentas sobrepostas e dados colocados com fornecedores sem revisão (veja Tópico 3.14 — Gestão de Fornecedores e Tópico 4.5 — Gestão Financeira de TI e FinOps). A SAM para assinaturas se concentra em descobrir o que é comprado, quem é o responsável, quem usa e quando renova.

### Limites das fontes

O artigo sobre SAM não cobre procedimentos de auditoria, catálogos de tipos de licença nem modelos de maturidade, e suas referências principais incluem itens antigos de 2006 a 2009. O artigo sobre a cadeia de suprimentos de software relata cifras de pesquisas e estudos de qualidade irregular. Use as fontes para enquadrar perguntas e use os textos de licença e os contratos para as respostas.

## Boas práticas

1. **Comece pelos produtos que mais importam.** Escolha os poucos produtos maiores ou mais arriscados por custo ou exposição legal e ponha em ordem primeiro o direito de uso, o inventário e o uso deles.
2. **Guarde a prova do direito de uso.** Armazene contratos, faturas e termos de licença onde possam ser achados e ligue-os aos registros dos produtos. Você não consegue defender uma posição numa auditoria sem evidências.
3. **Conheça a métrica da licença.** Para cada produto, registre como é contado: por usuário, dispositivo, processador, núcleo ou outro. Contar instalações quando a licença é por núcleo produz a resposta errada.
4. **Compare regularmente direito de uso e uso.** Ao menos trimestralmente para os produtos principais, compare o que você pode usar com o que de fato usa. Aja sobre a distância comprando, realocando ou removendo.
5. **Recupere as licenças não usadas.** Use os dados de uso para achar licenças que ninguém usou por um período definido e reatribua-as ou cancele-as depois de consultar o responsável.
6. **Controle como o software entra.** Facilite pedir software aprovado e dificulte comprar fora do processo. Inclua assinaturas e compras no cartão nas revisões de gastos.
7. **Trate componentes de código aberto como ativos.** Mantenha um inventário dos componentes de código aberto nos seus produtos, com licença e versão. Confira as licenças contra o modo como você usa e distribui o software, com aconselhamento jurídico.
8. **Gere SBOMs no build.** Produza automaticamente uma lista de materiais de software para cada build, guarde-a num lugar consultável e use-a para responder a vulnerabilidades e a perguntas de clientes. Confira o SBOM contra o build, pois as ferramentas podem ser imprecisas.
9. **Acompanhe as assinaturas.** Para cada uma, registre responsável, finalidade, custo, número de licenças, usuários, data de renovação e dados guardados. Revise antes da renovação.
10. **Ligue o software aos serviços.** Registre que serviços usam que software e versões, para que uma vulnerabilidade ou uma mudança de licença possa ser rastreada até os serviços afetados (veja Tópico 4.4 — Gestão de Configuração).
11. **Prepare-se com calma para as auditorias.** Mantenha os registros atualizados, nomeie um contato e conheça seus direitos e deveres pelo contrato. Não espere pela notificação para começar a se organizar.
12. **Aposente o software do modo certo.** Remova-o dos sistemas, encerre licenças e assinaturas e atualize os registros. Software não usado é custo e superfície de ataque.

## Perguntas para discutir com a equipe

**Para os nossos três produtos de software mais caros, sabemos o que podemos usar e o que usamos?**

Peça o número de licenças possuídas e o número em uso para cada um. Compare. Os resultados comuns surpreendem: mais licenças que usuários, ou usuários além das licenças. Quem facilita pode perguntar onde está guardada a evidência do direito de uso. Planeje reconciliar a maior distância.

**Que software as pessoas compraram ou instalaram sem avisar ninguém?**

Seja honesto e sem julgamentos. Pergunte sobre ferramentas compradas em cartões, ferramentas gratuitas usadas no trabalho e extensões de navegador. Os motivos típicos são rapidez e processo pouco claro. Discuta o que tornaria a rota aprovada rápida o bastante. Acorde um passo de registro.

**De que componentes de código aberto os nossos produtos dependem, e quais são suas licenças?**

Pergunte se alguém consegue produzir uma lista. Se não, discuta como gerá-la a partir do build. Depois pergunte como as licenças são conferidas. Lembre que as obrigações diferem entre licenças permissivas e copyleft. Planeje com o jurídico a revisão dos casos de alto risco.

**Se uma vulnerabilidade grave aparecesse amanhã numa biblioteca comum, quanto tempo levaria para sabermos se a usamos?**

Percorra os passos: quem é avisado, como você busca, como você sabe a versão em cada serviço. A resposta mostra o quanto SBOMs e inventários ajudariam. Acorde uma primeira melhoria, como gerar uma lista de materiais no pipeline.

**Que assinaturas renovam no próximo trimestre, e quem decide se vamos mantê-las?**

Liste as renovações. Para cada uma, pergunte quem é o responsável, quantas licenças estão ativas e o que acontece se for cancelada. Muitas vezes ninguém é dono da decisão. Atribua responsáveis e acrescente uma data de revisão antes de cada renovação.

**Como responderíamos a uma notificação de auditoria de fornecedor?**

Pergunte quem cuidaria disso e que evidências tem. Discuta se os registros estão completos. O objetivo é um plano calmo, e não o medo das auditorias. Acorde um contato e uma lista de verificação.

## Na prática: um exemplo de ITIL ágil

Um serviço postal nacional opera cerca de 60 aplicações internas e uma plataforma de rastreamento de encomendas voltada ao cliente, construída por uma equipe de quinze pessoas. Um fornecedor notifica o departamento de TI de uma auditoria de licenças de um produto de banco de dados. O oficial de ITAM descobre que os registros de licenças estão espalhados por três planilhas e que ninguém sabe dizer em quantos núcleos de processador o banco de dados roda agora, porque as máquinas virtuais foram movidas entre hospedeiros muitas vezes.

O oficial de ITAM, um administrador de banco de dados e o líder de compras reúnem as evidências. Coletam o contrato, a métrica de licença (por núcleo de processador), as faturas e os dados de descoberta sobre onde o banco de dados roda. Descobrem que o produto roda em mais núcleos que os comprados num ambiente e em menos em outro, onde há licenças sem uso. Depois de conversar com o fornecedor, realocam as licenças não usadas, compram um pequeno número de outras e movem um ambiente não essencial para uma alternativa gratuita. O custo é muito abaixo do que seria um achado de auditoria, mas não é trivial.

Ao mesmo tempo, um grande cliente pede à equipe da plataforma uma lista dos componentes de software da plataforma de rastreamento de encomendas. A equipe percebe que não consegue produzi-la. Acrescenta um passo no build que gera uma lista de materiais para cada release e a guarda num repositório. A primeira saída inclui uma biblioteca com uma licença que a equipe jurídica não havia revisado, e decidem substituí-la. Problemas permanecem. A ferramenta de SBOM da equipe perde componentes numa linguagem, e um grupo de pesquisa à parte continua a comprar assinaturas no cartão do departamento. O oficial de ITAM pergunta ao fornecedor da ferramenta sobre a lacuna e convence o departamento a registrar suas assinaturas.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega trazem a maior parte do software para a organização. Registre os componentes e assinaturas que acrescentar, gere listas de materiais nos seus builds e pergunte antes de usar uma biblioteca com licença desconhecida. Compartilhe os achados com o jurídico e a segurança.

### Equipes de serviço e operações

As equipes de operações conduzem o inventário, as correções e a medição. Mantenha o inventário de software ligado aos serviços, corrija depressa quando surgirem vulnerabilidades e recupere licenças não usadas. Ajude as compras a entender como os produtos são realmente usados.

### Liderança e governança

Os líderes são donos do risco de não conformidade e do gasto. Peça direito de uso e consumo para os maiores produtos, uma visão das assinaturas e um plano para o risco de código aberto e da cadeia de suprimentos. Apoie uma rota de compra rápida o bastante para que as pessoas a usem.

### Clientes e usuários

Clientes e usuários se beneficiam quando o software está disponível e seguro. Peça o que precisa pela rota adequada, devolva o que não usa mais e avise a equipe sobre ferramentas que achou úteis. Os clientes dos seus produtos podem pedir listas de materiais; espere que lhe peçam.

## Modos de falha comuns

- **Contar só as instalações.** A métrica da licença é por núcleo ou usuário. Em vez disso, registre a métrica e conte a coisa certa.
- **Prova do direito de uso perdida.** Contratos e faturas não são achados. Em vez disso, guarde-os junto com o registro do produto.
- **Shelfware.** Licenças são compradas e não usadas. Em vez disso, compare direito de uso e uso e recupere.
- **Compras na sombra.** Assinaturas compradas em cartões escapam do processo. Em vez disso, torne rápida a rota aprovada e revise os gastos em busca de exceções.
- **Componentes de código aberto desconhecidos.** Ninguém consegue listá-los. Em vez disso, gere listas de materiais automaticamente nos builds.
- **Ignorar os termos de licença do código aberto.** As obrigações do copyleft são perdidas. Em vez disso, confira as licenças contra o uso e a distribuição, com aconselhamento jurídico.
- **Confiar cegamente nas ferramentas.** As ferramentas perdem componentes ou listam os errados. Em vez disso, valide a saída numa amostra e pergunte aos fornecedores sobre as lacunas.
- **Pânico de auditoria.** Os registros são montados depois da notificação. Em vez disso, mantenha-os atualizados e nomeie um contato de auditoria.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Direito de uso e uso | Os registros são dispersos; o uso é desconhecido | Os produtos principais têm registros de direito de uso | Direito de uso e uso são registrados para os produtos principais e comparados regularmente | Distâncias e licenças não usadas são medidas e tratadas | Direito de uso e uso são compartilhados com finanças, compras e fornecedores |
| Aquisição e assinaturas | Qualquer um compra software | Existe uma rota aprovada para algumas compras | Compras e assinaturas seguem uma só rota, com responsáveis e datas de renovação | Gastos e uso de licenças são revisados antes da renovação | Compras, uso e contratos são coordenados em toda a organização |
| Código aberto e cadeia de suprimentos | Os componentes são desconhecidos | Algumas equipes listam bibliotecas | Listas de materiais são geradas nos builds e as licenças são revisadas | Achados de vulnerabilidades e licenças são acompanhados até o encerramento | Listas de materiais são compartilhadas com clientes e fornecedores conforme exigido |
| Auditoria e conformidade | As notificações de auditoria causam pânico | Existe um contato | Os registros são mantidos atualizados e há uma rotina de auditoria | O risco de conformidade é medido e revisado | A prática de conformidade é alinhada entre fornecedores e jurisdições |

## Lista de verificação

- [ ] Para os nossos maiores produtos de software, conhecemos o direito de uso, a métrica da licença e o uso.
- [ ] Contratos, faturas e termos de licença são guardados junto com os registros dos produtos.
- [ ] Direito de uso e uso são comparados ao menos trimestralmente para os produtos principais.
- [ ] As licenças não usadas são recuperadas depois de consultar os responsáveis.
- [ ] Compras e assinaturas seguem uma só rota, com responsáveis e datas de renovação registrados.
- [ ] Geramos uma lista de materiais no build dos produtos que enviamos ou operamos.
- [ ] As licenças de código aberto dos nossos componentes são revisadas contra o nosso uso, com aconselhamento jurídico.
- [ ] Conseguimos achar quais serviços usam um dado componente ou produto.
- [ ] Uma pessoa nomeada cuida das notificações de auditoria de fornecedores.
- [ ] O software aposentado é removido dos sistemas e dos registros.

## Prompts de IA

**Finalidade: comparar direito de uso e consumo de um produto.**

```text
Help me compare entitlement and usage for [product].

License metric (how the vendor counts, with the exact wording from the contract): [paste].
Entitlement (what we purchased, with dates): [paste].
Usage data (installations, users, cores, or whatever the metric requires): [paste real data].

Using only this information, compute the difference between entitlement and usage, in the vendor's unit, and say whether it indicates a shortfall or a surplus. List what is unclear in the contract wording as questions for the vendor or legal. Do not interpret legal terms beyond the text. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: revisar uma lista de componentes de código aberto quanto a questões de licença.**

```text
Here is a list of open-source components in our product with name, version, and license as reported by our tooling: [paste].
How we use and distribute the product: [for example internal use only, hosted service, shipped to customers].

Group the licenses into permissive and copyleft families based on the license names. For each group, list the types of question we should put to our legal team given how we use and distribute the product. Flag components with missing or unknown licenses. Do not give legal advice or say what the licenses require; list questions only. List what you are unsure of.
```

**Finalidade: preparar uma consulta de resposta a vulnerabilidades usando uma lista de materiais.**

```text
Help me plan how we would answer: "Do we use [component name and version range] and where?"

What we have today: [for example bills of materials in a repository, a spreadsheet, nothing].
Systems and services in scope: [list].

Describe the steps to find out, who does each, what data they need, what could go wrong, and how long each step might take (leave durations as [to be measured]). Propose one improvement that would shorten the answer. Do not invent our tools. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: montar uma revisão de assinaturas para o próximo trimestre.**

```text
Here is a list of our subscriptions with owner, monthly cost, paid seats, active users in the last 90 days, renewal date, and data held: [paste real data].

Using only this data, list renewals in the next 90 days, compute unused seats and their cost for each, and highlight subscriptions with no owner. For each, suggest a question for the owner before renewal. Do not recommend canceling anything; flag candidates for review. List what you are unsure of.
```

## Skills de IA

- [vendor-management](../../../../skills/vendor-management/SKILL.md): use para gerir contratos, renovações e relacionamentos com fornecedores de software.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): use para se preparar para uma auditoria de fornecedor ou de conformidade.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): use para prever os custos de software e de assinaturas.
- [risk-register](../../../../skills/risk-register/SKILL.md): use para registrar riscos de licenças, vulnerabilidades e cadeia de suprimentos.
- [security-testing](../../../../skills/security-testing/SKILL.md): use para conferir dependências e builds em busca de fraquezas conhecidas.

## Fontes principais

- **Software asset management** (Wikipedia): a definição, os objetivos, as tecnologias e as partes da ISO/IEC 19770.
- **Software supply chain** (Wikipedia): riscos, a lista de materiais de software, cifras de adoção e contexto regulatório.
- **Open-source software** (Wikipedia): a definição, as famílias de licenças e notas sobre riscos e obrigações.
- **ISO/IEC 19770** (International Organization for Standardization): a própria família de normas; leia as partes atuais para os requisitos exatos.

## Referências

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
