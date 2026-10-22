# Governança, Risco e Conformidade

**Governança, risco e conformidade definem a direção, os limites e a evidência do trabalho de uma organização, e numa organização ágil funcionam melhor como proteções embutidas no modo como as equipes entregam, e não como barreiras postas no fim.**

## Por que isso importa

Toda organização que presta serviços responde perante alguém: clientes, um conselho, um regulador, o público. Essa responsabilização assume algumas formas familiares. Deve haver direção clara e direitos de decisão (governança). Deve haver uma visão honesta do que pode dar errado e do que está sendo feito a respeito (risco). E deve haver evidência de que a organização segue as leis, contratos e políticas que se aplicam a ela (conformidade).

As equipes ágeis e as funções de governança muitas vezes se encontram num estado de suspeita mútua. As equipes veem conselhos de aprovação, formulários longos e regras cujo motivo não enxergam. O pessoal de governança e auditoria vê equipes que mudam a produção depressa e deixam pouco registro. Os dois lados têm razão. O caminho não é um dos dois vencer, mas desenhar uma governança compatível com mudanças frequentes: limites claros, controles baseados em risco e evidência produzida pelo próprio trabalho.

O [artigo da Wikipédia sobre governança, gestão de riscos e conformidade](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) descreve o GRC como uma abordagem holística da governança, da gestão de riscos e da conformidade regulatória, desenvolvida na década de 2000 para gerir requisitos de conformidade financeira cada vez mais complexos. Não nomeia críticas nem frameworks específicos de TI. Este tópico o combina com os artigos sobre gestão de riscos e conformidade regulatória, com os tópicos anteriores sobre mudança, segurança e continuidade e com a orientação do DORA sobre aprovação. Não dá aconselhamento jurídico; as regras que se aplicam a você dependem do seu país, setor e contratos, e a fonte certa é o texto da regra.

## Conceitos centrais

### Governança

O artigo sobre GRC descreve a governança corporativa como os processos definidos pelo conselho que moldam a estrutura e atribuem papéis. Em TI, a governança trata de quem decide o quê, com que base e como as decisões são conferidas. O COBIT, descrito na Wikipédia como um framework da ISACA para gestão e governança de TI, é uma referência (veja Tópico 2.7 — Frameworks e Normas de ITSM). O sistema de valor de serviço do ITIL inclui a governança como componente (veja Tópico 2.3 — O Sistema de Valor de Serviço do ITIL).

A boa governança numa organização ágil é explícita sobre:

- **Direção:** metas e prioridades, e quem as define.
- **Limites:** o que as equipes podem decidir sozinhas e o que precisa de escalonamento (veja Tópico 1.9 — Gestão Ágil).
- **Responsabilização:** quem responde por cada serviço (veja Tópico 5.5 — Propriedade de Produtos e Serviços).
- **Evidência:** como a organização sabe que sua direção e seus limites estão sendo seguidos.

### Gestão de riscos

A Wikipédia descreve a gestão de riscos como a identificação, avaliação e priorização de riscos, seguidas de minimizar, monitorar e controlar seu impacto ou probabilidade. O artigo nomeia quatro opções de tratamento:

| Opção | Significado | Exemplo |
|---|---|---|
| **Evitação** | Não fazer a atividade arriscada (o que também abre mão de ganhos potenciais) | Decidir não guardar certos dados |
| **Redução** | Diminuir a gravidade ou a probabilidade | Testes automatizados, rollouts em etapas, monitoramento extra |
| **Compartilhamento** | Transferir o ônus ou o benefício, como por seguro ou terceirização; o artigo observa que "transferência de risco" muitas vezes é um nome impróprio, já que a parte original em geral mantém a responsabilidade legal | Seguro, contratar um fornecedor |
| **Retenção** | Aceitar a perda, tipicamente para riscos pequenos ou não seguráveis | Uma decisão de conviver com um risco menor |

O artigo trata também de oportunidades, eventos incertos positivos, com estratégias paralelas. Observa que a avaliação de risco pesa a gravidade e a probabilidade e que os dados de taxas costumam ser escassos, especialmente para eventos catastróficos. Cita críticas: Douglas Hubbard (2009) é citado dizendo que algumas normas não mostram melhoria mensurável do risco, embora a confiança nas decisões pareça subir; pesquisas posteriores sugerem que os benefícios financeiros dependem mais de com que frequência e por qual método os riscos são avaliados do que da fórmula usada; e a distinção de Benoit Mandelbrot entre risco "brando" e "selvagem", sendo comum o erro de subestimar a selvageria. O artigo cita a ISO 31000, "Risk management - Guidelines", e está ele próprio marcado como carente de mais citações.

### O registro de riscos

Um **registro de riscos (risk register)** é um registro dos riscos identificados, com descrição, avaliação, responsável, tratamento escolhido e situação. O trecho do artigo lido para este guia não o menciona, então é prática comum. Mantenha-o curto, com responsáveis e revisado. Os riscos de serviços incluem segurança, disponibilidade, falha de fornecedor, dependência de pessoas-chave e conformidade (veja Tópico 3.13 — Gestão da Segurança da Informação, Tópico 3.12 — Gestão da Continuidade de Serviço e Tópico 3.14 — Gestão de Fornecedores).

### Conformidade

O artigo da Wikipédia sobre conformidade regulatória a descreve como a meta que as organizações aspiram a alcançar ao se manterem cientes das leis, políticas e regulamentos relevantes e segui-los, e observa que as organizações combinam cada vez mais controles em frameworks compartilhados para reduzir o trabalho duplicado. Diz que a definição de um plano de conformidade eficaz tem sido elusiva e menciona normas como a ISO 37301 e a ISO 19600. Nomeia regimes incluindo o Sarbanes-Oxley Act (2002), o HIPAA, o GDPR, o PCI-DSS, o Gramm-Leach-Bliley Act e outros. Registra críticas: a pesquisa psicológica citada no artigo argumenta que recompensas ou multas podem enfraquecer a motivação intrínseca e minar a conformidade, defensores da privacidade questionam os requisitos de retenção de dados, a aplicação difere entre jurisdições e requisitos que mudam depressa são difíceis de acompanhar.

Um ponto prático: a conformidade não é uma coisa só. Cada regime tem seu próprio escopo e seus próprios requisitos. Descubra com a sua função jurídica ou de conformidade quais se aplicam a quais dos seus serviços e obtenha o texto.

### O GRC como uma só visão

O artigo sobre GRC diz que o GRC cobre três facetas relacionadas: governança corporativa, gestão de riscos empresariais e conformidade, e menciona variantes como o GRC financeiro, jurídico e operacional. Credita o termo ao artigo de Scott Mitchell de 2007 e ao Open Compliance and Ethics Group e observa que existe software para GRC desde 2002 e que algumas empresas começaram a usar ferramentas de IA para GRC em 2025. A vantagem da visão combinada é que as três estão ligadas: a governança define o que importa, a gestão de riscos acha o que o ameaça e a conformidade mostra o que está sendo feito.

### Proteções, não barreiras

Uma **barreira (gate)** é um ponto de controle, em geral manual, onde o trabalho espera por aprovação. Uma **proteção (guardrail)** é um limite embutido no caminho que impede o trabalho de sair do curso sem pará-lo. Exemplos: testes automatizados que precisam passar, verificações de política no pipeline que bloqueiam configurações inseguras, orçamentos com alertas e acesso baseado em papéis. A orientação do DORA sobre aprovação de mudanças diz que a aprovação é mais bem alcançada por revisão por pares e automação, que a aprovação externa pesada está associada a pior desempenho de entrega e que acrescentar aprovações em resposta à instabilidade tende a piorar as coisas (veja Tópico 3.4 — Habilitação de Mudanças). As proteções aplicam a mesma ideia à governança: o controle está no sistema e produz a própria evidência.

### Evidência como subproduto

Os auditores precisam de evidência de que os controles operam. Um pipeline que registra quem revisou, o que testou e o que foi implantado dá evidência para cada mudança. Um catálogo de serviços (o ITIL, em inglês, grafa "service catalogue") com responsáveis dá evidência de responsabilização. Os postmortems dão evidência de aprendizado. É muito mais forte que um documento trimestral escrito para uma auditoria. Converse cedo com os auditores sobre o que aceitarão (veja Tópico 5.1 — Gestão Ágil de Serviços).

### Ambientes regulados

O artigo da Wikipédia sobre desenvolvimento ágil de software relata que domínios regulados como dispositivos médicos, farmacêutica, finanças, nuclear, automotivo e aviônica foram primeiro considerados inadequados para o ágil e que hoje existem adaptações, com preocupações de garantia da qualidade, segurança física e digital, rastreabilidade e verificação e validação (veja Tópico 1.3 — Desenvolvimento Ágil de Software). O padrão que funciona é tipicamente manter os controles exigidos, automatizar sua evidência e torná-los parte da definição de pronto, em vez de removê-los.

### Limites das fontes

O artigo sobre GRC não nomeia frameworks nem críticas e foi lido para este guia numa forma curta. O artigo sobre gestão de riscos foi lido apenas em parte e está marcado como carente de citações. O artigo sobre conformidade não dá custos nem procedimentos de auditoria. Use-os como mapas e vá às fontes primárias para os detalhes.

## Boas práticas

1. **Escreva os direitos de decisão.** Para cada equipe ou serviço, diga o que pode decidir sozinho, o que exige consulta e o que precisa de aprovação. Publique-os e revise-os com as equipes.
2. **Defina direção e limites, não instruções detalhadas.** Declare os resultados, os orçamentos, os limites de risco e as regras inegociáveis. Deixe as equipes decidirem como trabalhar dentro deles.
3. **Mantenha um registro de riscos curto.** Para cada serviço importante, liste os principais riscos com responsável, tratamento e data de revisão. Revise-o numa reunião regular e abandone os riscos que passaram.
4. **Escolha o tratamento de propósito.** Para cada risco, decida evitar, reduzir, compartilhar ou reter e registre quem tomou a decisão. Lembre que compartilhar um risco não remove a sua própria responsabilidade.
5. **Avalie com frequência, com métodos simples.** O artigo relata que os benefícios dependem mais da frequência e do método que da fórmula. Revise os riscos regularmente com um método que a equipe entenda.
6. **Saiba que regras se aplicam a que serviços.** Peça à sua função jurídica ou de conformidade uma lista dos regimes aplicáveis, com o texto da fonte. Registre-a para cada serviço.
7. **Embuta proteções no pipeline.** Automatize testes, varreduras de segurança, verificações de política e limites de acesso para que o trabalho inseguro seja barrado cedo. Trate os controles como código com responsáveis.
8. **Capture a evidência como subproduto.** Garanta que as ferramentas registrem revisões, aprovações, resultados de testes, implantações e incidentes. Acorde com os auditores o que aceitarão.
9. **Mapeie os controles uma vez.** Se precisar atender a vários frameworks, descreva seus controles uma vez e mapeie-os a cada requisito, como diz o artigo sobre conformidade que as organizações fazem cada vez mais.
10. **Use caminhos baseados em risco para a mudança.** Faça rápidas as mudanças de baixo risco, sinalize as de alto risco para revisão e mantenha um órgão central para coordenação e compromissos (veja Tópico 3.4 — Habilitação de Mudanças).
11. **Inclua a governança nas retrospectivas.** Pergunte periodicamente quais controles ajudaram e quais só acrescentaram atraso. Remova ou redesenhe estes últimos, com o responsável e o auditor.
12. **Planeje a mudança nas regras.** Nomeie alguém para acompanhar mudanças em leis, normas e contratos e relatar o que importa para os seus serviços.

## Perguntas para discutir com a equipe

**Que aprovações precisamos obter, e contra o que cada uma protege?**

Liste as aprovações de uma mudança ou compra típica. Para cada uma, pergunte que risco trata e se alguma vez recusou algo. Aprovações que não protegem nada são candidatas à remoção. Aprovações que protegem contra um risco real podem ser atendidas de um modo mais leve. Quem facilita pode perguntar que evidência o aprovador aceitaria no lugar de uma assinatura.

**Quais são os cinco principais riscos do nosso serviço principal, e quem é dono de cada um?**

Peça às pessoas que listem riscos de forma independente e depois compare. As diferenças mostram o que a equipe vê. Confira que cada um tem um responsável e um tratamento. Discuta quais estão sendo aceitos por omissão e não por decisão.

**Que regras se aplicam a nós, e onde está o texto?**

Peça a lista de leis, normas e contratos aplicáveis. Se ninguém sabe dizer, descubra quem pode. Confira que a engenharia sabe o que cada um exige dela. Acorde um modo de manter a lista atualizada.

**Que evidência as nossas ferramentas já produzem que um auditor poderia usar?**

Liste os registros: revisões, resultados de testes, histórico de implantações, revisões de incidentes. Pergunte o que um auditor pediu recentemente e se as ferramentas poderiam fornecê-lo. Identifique um registro a automatizar. Convide um auditor a olhar.

**Onde acrescentamos um controle depois de um problema, e ajudou?**

Peça exemplos. Compare com o aviso do DORA de que acrescentar aprovações em resposta à instabilidade tende a piorar as coisas. Pergunte se uma resposta diferente, como testes melhores ou mudanças menores, teria funcionado. Registre uma lição.

**Como seria uma proteção para algo que hoje bloqueamos com uma barreira?**

Escolha uma barreira. Pergunte o que ela deve impedir e como isso poderia ser impedido automaticamente. Por exemplo, uma verificação de política que bloqueie uma configuração arriscada. Acorde um teste com o responsável pela barreira.

## Na prática: um exemplo de ITIL ágil

Um fundo nacional de previdência opera uma calculadora online de benefícios e um serviço de pagamentos. É regulado, auditado anualmente e sujeito a regras estritas de tratamento de dados. O escritório de governança do fundo exige que toda mudança em produção seja revisada por um conselho de mudanças que se reúne semanalmente e que todo projeto conclua uma avaliação de risco de 30 páginas antes do release. Os desenvolvedores lançam raramente e em grandes lotes. Um release recente causou um cálculo incorreto para um pequeno grupo de associados, e a resposta do conselho foi acrescentar mais uma aprovação.

A chefe de risco e o chefe de engenharia decidem tentar outro caminho. Começam com uma lista dos regimes que se aplicam à calculadora e ao serviço de pagamentos, obtida da equipe jurídica do fundo com o texto de cada um, e mapeiam uma vez os controles do fundo a eles. O papel do conselho de mudanças muda: as mudanças rotineiras e bem testadas, com testes automatizados e revisão por pares, prosseguem sem ele, as mudanças de alto risco (as que tocam regras de cálculo ou pagamentos) são sinalizadas por uma lista curta de indicadores e revisadas por um especialista de risco em dois dias, e o conselho se reúne para coordenar e tratar exceções. O pipeline registra quem revisou e que testes passaram, e uma verificação de política bloqueia releases que falham na suíte de testes de cálculo. A avaliação de risco é substituída por uma entrada de uma página no registro, por serviço, revisada mensalmente.

Um auditor interno vê os registros do pipeline e o registro de riscos e pede uma amostra de revisões para testar se a revisão por pares é genuína; o chefe de engenharia organiza uma amostragem trimestral por um engenheiro sênior. Depois de seis meses, os releases são semanais, a taxa de falha de mudanças é menor e a auditoria acha suficiente a evidência. Algumas dificuldades permanecem. Duas equipes aplicam de modo inconsistente os indicadores de alto risco, a orientação de um regulador exige uma aprovação explícita para certas mudanças de cálculo que o novo caminho não captura e as entradas do registro são escritas com pouco cuidado em algumas equipes. A chefe de risco acrescenta o passo de aprovação para essas mudanças, emite exemplos dos indicadores e pede às equipes que levem uma entrada do registro a uma revisão mensal.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega executam os controles por meio de seus pipelines e práticas. Aprenda que regras se aplicam ao seu serviço e por quê, ofereça modos de produzir evidência automaticamente e traga o risco ao planejamento. Trate as proteções como parte do produto.

### Equipes de serviço e operações

As equipes de operações são donas de muitos controles: acesso, monitoramento, continuidade e registros. Mantenha a evidência em ferramentas, diga à governança o que funciona na prática e ajude a redesenhar barreiras que só acrescentam atraso. Participe de revisões de risco com dados reais de incidentes.

### Liderança e governança

Os líderes definem direção, limites e responsabilização e decidem que riscos aceitar. Peça visões de risco em linguagem simples e evidência, não volume de documentos. Esteja disposto a trocar uma barreira por uma proteção quando a finalidade puder ser atendida. Mantenha o papel do conselho focado em coordenação e compromissos reais.

### Clientes e usuários

Clientes e usuários contam com que a organização trate bem seus dados e seu dinheiro. Pergunte aos provedores que normas e regras seguem e como o demonstram. Espere honestidade depois de uma falha. Se você tem requisitos especiais, como uma regra de regulador, avise cedo o provedor.

## Modos de falha comuns

- **Governança como barreira final.** As revisões chegam no fim e retardam tudo. Em vez disso, embuta proteções no trabalho e revise por risco.
- **Documentos como evidência.** Os relatórios são escritos para o auditor. Em vez disso, produza evidência a partir das ferramentas usadas no trabalho.
- **Um só caminho para toda mudança.** As mudanças rotineiras esperam junto com as arriscadas. Em vez disso, classifique por risco.
- **Um registro de riscos que ninguém lê.** Vira uma lista longa. Em vez disso, mantenha-o curto, com responsáveis e revisado.
- **Tratar a transferência de risco como remoção de risco.** Presume-se que seguro ou terceirização acabam com a responsabilidade. Em vez disso, lembre que a parte original em geral mantém a responsabilidade.
- **Regras desconhecidas.** As equipes não sabem que leis e normas se aplicam. Em vez disso, obtenha a lista e o texto do jurídico ou da conformidade.
- **Controle acrescentado depois de cada incidente.** O processo cresce e a rapidez cai. Em vez disso, procure a causa e corrija-a com testes, mudanças menores ou recuperação mais rápida.
- **Conformidade como punição.** Dominam multas e medo. Em vez disso, explique a finalidade das regras e faça do caminho seguro o caminho fácil.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Governança e direitos de decisão | As decisões seguem o hábito e a hierarquia | Algumas equipes têm limites escritos | Direitos de decisão, limites e responsáveis são escritos e compartilhados | A eficácia da governança é revisada contra os resultados | A governança é alinhada entre equipes, fornecedores e parceiros |
| Gestão de riscos | Os riscos são discutidos informalmente | Alguns serviços têm listas de riscos | Registros curtos de riscos, com responsáveis e tratamentos, são revisados regularmente | Medidas e eventos de risco informam a avaliação e o tratamento | As visões de risco são compartilhadas e consolidadas em toda a organização |
| Conformidade e evidência | A evidência é montada para as auditorias | Alguma evidência é produzida por ferramentas | As regras aplicáveis são listadas; os controles são mapeados uma vez; a evidência vem das ferramentas | A operação dos controles e a qualidade da evidência são medidas | A evidência é compartilhada continuamente com auditores e parceiros |
| Proteções e caminhos de mudança | Os controles são barreiras manuais | Existem algumas verificações automatizadas | Caminhos baseados em risco e proteções no pipeline são padrão | A eficácia das proteções e os bloqueios falsos são acompanhados e ajustados | As proteções são compartilhadas e aprimoradas entre equipes |

## Lista de verificação

- [ ] Direitos de decisão e limites estão escritos para cada equipe ou serviço.
- [ ] Cada serviço importante tem um registro curto de riscos com responsáveis, tratamentos e datas de revisão.
- [ ] Temos uma lista das leis, normas e contratos aplicáveis a cada serviço, com o texto da fonte.
- [ ] Nossos controles são descritos uma vez e mapeados a cada requisito.
- [ ] O pipeline registra revisões, testes e implantações como evidência.
- [ ] Os auditores disseram que evidência aceitam no lugar de assinaturas.
- [ ] Mudanças rotineiras e arriscadas seguem caminhos diferentes, com critérios claros.
- [ ] Cada aprovação tem uma finalidade declarada, e as aprovações que nunca recusam são revisadas.
- [ ] Os controles acrescentados depois de incidentes são revisados quanto ao efeito.
- [ ] Alguém acompanha as mudanças nas regras aplicáveis e as relata.

## Prompts de IA

**Finalidade: transformar uma cadeia de aprovações em opções de proteção.**

```text
Here is an approval chain we use for [type of change or purchase]: [list each approval, who gives it, what they check, how long it takes, and how many times it has refused something in the last year (use real figures or write "unknown")].
Rules we know require some of it, with source text: [paste, or write "none known"].

For each approval, state the purpose as best you can from the text, suggest what evidence or automated check could meet the same purpose, and say what risk would remain. Do not remove anything required by the pasted rules. Do not claim any law or standard requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: redigir uma entrada de registro de riscos.**

```text
Help me write a risk register entry for [service].

The risk, in my words: [describe].
What could cause it and what could result: [describe].
What controls exist: [list].
What I know about likelihood and impact (facts only): [paste, or write "unknown"].

Produce an entry with: a clear statement ("If … then … resulting in …"), causes, consequences, existing controls, a proposed treatment option (avoid, reduce, share, or retain) with reasoning, a suggested owner role, and review date placeholder. Do not invent likelihoods or numbers. Mark assumptions. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: listar a evidência que as suas ferramentas já produzem para um controle.**

```text
An auditor will ask us about this control: [describe the control and how it is described in the requirement; paste the text].

Our tools and records for the activity: [list version control, pipeline, ticketing, monitoring, and what each records].
How the activity works: [describe].

Make a table of what evidence each tool produces for the control, where it is stored, who can alter it, and the gaps. Suggest three lightweight ways to close the gaps. Do not claim the requirement demands anything beyond the pasted text. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: preparar uma conversa de governança entre equipes de entrega e auditoria.**

```text
Plan a 60-minute conversation between [number] delivery team members and [number] audit or governance colleagues about how an agile team shows control.

Concerns from audit, in their words: [paste].
Concerns from teams, in their words: [paste].
Evidence the teams produce today: [list].

Provide a timed agenda, questions for each side, a template to record what evidence is acceptable for each control, and a closing step that records actions with owners and dates. Keep it free of any particular tool. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [risk-register](../../../../skills/risk-register/SKILL.md): use para registrar e revisar riscos, tratamentos e responsáveis.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md): use para manter um registro leve de riscos, ações, problemas e decisões.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): use para escolher medidas de alerta precoce para riscos.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): use para se preparar para auditorias e organizar a evidência.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): use para tornar explícitos os direitos de decisão e as responsabilidades.

## Fontes principais

- **Governance, risk management, and compliance** (Wikipedia): um panorama curto do GRC, de seus componentes e de sua história.
- **Risk management** (Wikipedia): a definição, as opções de tratamento e as ressalvas sobre a avaliação de riscos.
- **Regulatory compliance** (Wikipedia): a definição, os regimes nomeados e as críticas.
- **Streamlining change approval** (DORA, dora.dev): orientação baseada em pesquisa sobre substituir a aprovação pesada por revisão por pares e automação.

## Referências

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes-Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
