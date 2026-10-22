# Gestão de Ativos de Hardware

**A gestão de ativos de hardware acompanha o equipamento físico da compra ao descarte, e seus riscos silenciosos são o dispositivo de que ninguém sabe, o dispositivo mantido por tempo demais e o dispositivo que sai com dados ainda nele.**

## Por que isso importa

O hardware ainda importa num mundo que prioriza a nuvem. As pessoas trabalham em notebooks, celulares e tablets. As redes rodam em switches e pontos de acesso. Muitas organizações mantêm servidores, armazenamento e equipamento especializado no local. Quando um notebook é perdido, um servidor sai da garantia ou um lote de dispositivos precisa ser substituído, as perguntas são as mesmas: o que temos, onde está, quem o tem, quanto vale e o que guarda?

A má gestão de hardware aparece de modos familiares. A equipe espera por equipamento porque ninguém sabe o que há no almoxarifado. Dispositivos antigos continuam em serviço porque ninguém tem os dados para justificar a substituição e depois falham num momento ruim. Dispositivos são jogados fora com dados ainda neles. Pedidos de garantia são perdidos. Para uma equipe ágil o efeito é uma integração mais lenta de novos funcionários, releases fracassados em hardware de teste sem manutenção e exposições de segurança que nenhum pipeline consegue ver.

A [seção da Wikipédia sobre gestão de ativos de TI](https://en.wikipedia.org/wiki/IT_asset_management), que fica dentro do artigo sobre gestão de data centers, descreve a gestão de ativos de hardware como cobrindo os componentes físicos de computação e de rede da aquisição ao descarte, com práticas de requisição e aprovação, compras, gestão do ciclo de vida, redistribuição e descarte, e diz que capturar a informação financeira ao longo do ciclo de vida é um componente-chave. É curta. Este tópico acrescenta os artigos sobre lixo eletrônico e apagamento de dados para o descarte, e orientação prática tirada da prática comum, dizendo-o quando o faz.

## Conceitos centrais

### Escopo

Os ativos de hardware incluem dispositivos de usuário final (notebooks, desktops, celulares, tablets), servidores e armazenamento, equipamento de rede, periféricos e tecnologia especializada ou operacional. Incluem também os acessórios que os tornam utilizáveis. Para cada um, a organização quer saber o básico: o que é, quem é responsável por ele, onde está, quanto custou e em que estado está.

### O ciclo de vida do hardware

A seção da Wikipédia lista requisição e aprovação, compras, gestão do ciclo de vida, redistribuição e descarte. Uma expansão prática, amplamente usada e oferecida aqui como tal:

| Etapa | Perguntas a responder | Registros típicos |
|---|---|---|
| **Requisição e aprovação** | O que é necessário e quem aprova? | Requisição, aprovação, código orçamentário |
| **Compras** | O que compramos, de quem, em que termos? | Pedido, fatura, garantia, fornecedor |
| **Receber e preparar** | Chegou? Está configurado e etiquetado? | Número de série, etiqueta de ativo, configuração |
| **Atribuir e operar** | Quem o tem? Para que é usado? | Responsável ou usuário, local, serviço apoiado |
| **Manter** | Qual é sua condição, garantia e situação de correções? | Reparos, fim da garantia, situação do firmware |
| **Redistribuir** | Outra pessoa pode usá-lo? | Apagamento, registro de reatribuição |
| **Aposentar e descartar** | Os dados foram removidos? Para onde foi? | Evidência de apagamento, registro de descarte |

### Informação financeira

A seção da Wikipédia enfatiza capturar a informação financeira sobre o ciclo de vida do hardware. Fatos úteis incluem custo de compra, depreciação, custo de garantia e suporte e o custo de mantê-lo funcionando. Eles alimentam decisões de substituição e orçamentos (veja Tópico 4.5 — Gestão Financeira de TI e FinOps). Um dispositivo que custa mais para dar suporte do que para substituir é candidato à aposentadoria.

### Substituição e renovação

As organizações costumam substituir equipamento num ciclo, como a cada poucos anos no caso de notebooks. As fontes lidas para este guia não declaram períodos recomendados, e o intervalo certo depende do equipamento, do trabalho e do custo da falha. Uma abordagem baseada em dados olha as taxas de falha, o custo de suporte, o suporte de segurança e o desempenho e substitui quando a evidência o diz. Um ciclo fixo é mais fácil de planejar, e um baseado em evidências pode economizar dinheiro ou evitar falhas.

### Segurança de dados no fim da vida

O descarte é onde a gestão de hardware encontra a segurança da informação (veja Tópico 3.13 — Gestão da Segurança da Informação). O artigo da Wikipédia sobre apagamento de dados descreve o apagamento de dados como um método de software que sobrescreve cada setor de uma unidade para que os dados armazenados sejam irrecuperáveis; a exclusão comum de arquivos remove apenas ponteiros, e ferramentas comuns muitas vezes conseguem recuperar os dados. Pontos-chave do artigo:

- **Sobrescrever** deixa a unidade utilizável. A **desmagnetização (degaussing)** e a **destruição física** tornam a mídia inutilizável e acrescentam ao lixo eletrônico.
- **Unidades de estado sólido e mídias flash** podem reter dados remanescentes que o apagamento perde. O artigo cita um estudo de 2011 que achou que os comandos de sanitização embutidos funcionam quando bem implementados, enquanto as técnicas de software funcionam na maior parte das vezes, mas não em todas.
- **A criptografia** oferece outro caminho: destruir as chaves de uma unidade autocriptografada torna seus dados inacessíveis.
- **Verificação e certificados:** um bom software deve verificar se a sobrescrita alcançou o dispositivo todo, inclusive áreas ocultas, e emitir um certificado de validação e um registro dos setores que não puderam ser sobrescritos.
- **Normas:** o artigo lista muitas, incluindo a NIST Special Publication 800-88 (2006, revisada em 2014), que cita como dizendo que uma única passagem de sobrescrita com um padrão fixo, como zeros binários, normalmente dificulta a recuperação. Declara que uma única passagem em geral basta para discos rígidos modernos.

O artigo está marcado como carente de citações e algumas afirmações estão sinalizadas. Confira as normas que o seu setor ou país exige e o estado da arte atual para o seu equipamento; não se apoie num resumo da Wikipédia para uma decisão de conformidade.

### Lixo eletrônico

O artigo da Wikipédia sobre lixo eletrônico o define como dispositivos elétricos ou eletrônicos descartados, incluindo itens destinados a reutilização, revenda, aproveitamento, reciclagem ou descarte. Relata cerca de 62 milhões de toneladas geradas globalmente em 2022, 82% a mais que em 2010, com apenas 22,3% formalmente coletados e reciclados segundo um estudo de 2024; cita também outras cifras que conflitam e traz marcações de manutenção por afirmações não verificadas, então confira os números em fontes primárias antes de citá-los. Descreve perigos de materiais como chumbo, cádmio, mercúrio e retardantes de chama, e do processamento informal, com exemplos de Guiyu, na China, e Agbogbloshie, em Gana. Observa que a Convenção de Basileia, adotada em março de 1989, regula o movimento transfronteiriço de resíduos perigosos, e que os recicladores certificados sob esquemas como R2 e E-Stewards devem destruir todos os dados guardados em eletrônicos. A reutilização estende a vida do dispositivo e adia a reciclagem.

Para uma organização, as lições são práticas: escolha parceiros de descarte certificados e que possam mostrar para onde vão os dispositivos, prefira a reutilização onde for seguro e mantenha registros. As leis sobre lixo eletrônico diferem por país e região; pergunte à sua função de conformidade quais se aplicam.

### Hardware e gestão de serviços

Os registros de hardware se ligam aos serviços: este switch carrega aquele serviço, este servidor hospeda aquela aplicação. Essas ligações transformam um registro de ativos numa ferramenta de resposta a incidentes, planejamento de mudanças e avaliação de riscos (veja Tópico 4.4 — Gestão de Configuração). Sem elas, um dispositivo que falha é um ticket; com elas, é uma declaração de impacto.

### Ágil e hardware

As equipes ágeis tratam o hardware como uma restrição a contornar no design, não como o evento principal. A nuvem e a virtualização reduzem o parque físico, mas não a zero. Dispositivos de teste para aplicativos móveis, agentes de build, equipamento de laboratório e dispositivos de borda precisam todos ser acompanhados. Trate-os como ativos com responsáveis e ciclos de vida e não os deixe num armário.

## Boas práticas

1. **Etiquete e registre todo dispositivo que importa.** Atribua uma etiqueta única de ativo ou registro de série no recebimento e registre tipo, responsável, local e status. Faça disso o primeiro passo depois da entrega.
2. **Ligue os dispositivos a pessoas e serviços.** Registre quem tem cada dispositivo e que serviço ele apoia e atualize nas movimentações e mudanças. Use o processo de desligamento para recuperar equipamento e remover o acesso.
3. **Mantenha os dados financeiros junto com o ativo.** Registre custo, garantia, termos de suporte e depreciação. Use-os para comparar reparo, suporte e substituição.
4. **Use a descoberta para achar o desconhecido.** Compare o registro com a descoberta de rede e de dispositivos finais e investigue prontamente os dispositivos desconhecidos (veja Tópico 4.1 — Gestão de Ativos de TI).
5. **Monitore a condição e a situação de suporte.** Acompanhe as datas de fim de garantia, a situação do firmware e do suporte de segurança e o histórico de falhas. Planeje a substituição antes que os dispositivos falhem ou percam o suporte.
6. **Substitua com base em evidências.** Olhe os dados de falhas e de suporte, o desempenho e o suporte de segurança para decidir a substituição, e não só a idade. Revise a política uma vez por ano.
7. **Prepare os dispositivos de forma consistente.** Use uma configuração-padrão e inscrição automatizada para que os novos dispositivos cheguem prontos, com controles de segurança no lugar.
8. **Redistribua onde for seguro.** Apague e reatribua dispositivos que ainda atendem às necessidades, com um registro do apagamento. Evite estoques de equipamento sem uso.
9. **Apague os dados corretamente e guarde a evidência.** Use um método adequado ao tipo de dispositivo e à sensibilidade dos dados, verifique-o e guarde um certificado ou registro. Para armazenamento flash, use comandos de sanitização suportados pelo dispositivo ou destruição de chaves conforme apropriado (veja as notas sobre apagamento de dados acima).
10. **Escolha com cuidado os parceiros de descarte.** Prefira recicladores certificados, pergunte para onde vão os dispositivos e materiais e guarde registros. Inclua no contrato termos de destruição de dados.
11. **Planeje para dispositivos perdidos e roubados.** Tenha um modo rápido de relatar, um bloqueio ou apagamento remoto onde disponível e uma regra sobre quando tratar uma perda como incidente de segurança (veja Tópico 3.2 — Gestão de Incidentes).
12. **Revise regularmente.** Ao menos duas vezes por ano, confira uma amostra do registro com a realidade física nas principais classes de dispositivos e corrija o processo por trás de qualquer distância.

## Perguntas para discutir com a equipe

**Se contássemos hoje cada dispositivo que possuímos, bateria com o registro?**

Escolha um andar, uma equipe ou um almoxarifado e faça uma contagem rápida contra o registro. As diferenças são a lição. Pergunte quais divergências mais importam: dispositivos com dados, dispositivos sem correções. Quem facilita pode perguntar o que impede as pessoas de atualizar o registro no momento da mudança. Escolha um processo para apertar.

**O que fazemos com um notebook quando alguém sai?**

Percorra os passos: quem o recolhe, para onde vai, quem o apaga, quem atualiza o registro. As lacunas costumam aparecer entre equipes. Peça o último exemplo e rastreie-o. Acorde um responsável e uma lista de verificação.

**Como decidimos quando substituir equipamento?**

Peça a regra atual e sua fonte. Muitas vezes é uma idade fixa que alguém definiu há muito tempo. Discuta que dados você tem sobre falhas, custo de suporte e suporte de segurança. Compare com o custo de substituir cedo ou tarde. Acorde que dados coletar.

**Como provaríamos que os dados de um dispositivo que descartamos foram destruídos?**

Tome um descarte recente e pergunte que evidência existe. Se a resposta for "o reciclador disse que sim", discuta o que um certificado ou registro deve conter. Pergunte que método foi usado para o armazenamento de estado sólido. Acorde um padrão mínimo e a evidência.

**Quais dos nossos dispositivos estão fora da garantia ou do suporte de segurança, e o que depende deles?**

Liste os dispositivos perto do fim do suporte. Pergunte o que cada um apoia. Dispositivos sem suporte por trás de serviços importantes são riscos. Planeje a substituição em ordem de impacto e decida onde são necessárias medidas compensatórias.

**Quem cuida de um dispositivo perdido ou roubado, e com que rapidez?**

Pergunte como um usuário relata uma perda e o que acontece em seguida. Confira se o bloqueio ou apagamento remoto está disponível e se alguém já o tentou. Discuta quando uma perda vira um incidente de segurança. Acorde um primeiro passo claro para os usuários.

## Na prática: um exemplo de ITIL ágil

Uma autoridade provincial de saúde fornece cerca de 4.000 notebooks e tablets a enfermeiros comunitários, que visitam pacientes em casa. Os dispositivos são perdidos ou danificados com frequência. Os registros da autoridade mostram 4.300 dispositivos, mas o service desk acredita gerir menos. Uma revisão de segurança descobre que vários notebooks listados como aposentados foram vistos em uso e que um estoque de dispositivos antigos num armário ainda contém dados de pacientes.

O chefe dos serviços de usuário final monta um pequeno programa. Cada dispositivo recebe uma etiqueta única e um registro ligado a um enfermeiro nomeado e a uma equipe. Uma ferramenta de descoberta compara o registro com os dispositivos que se conectam à rede, e uma lista mensal de dispositivos sem correspondência vai aos gestores das equipes, que têm duas semanas para explicá-los ou devolvê-los. Os dispositivos são inscritos automaticamente com criptografia ligada e software padrão, de modo que um notebook perdido revele pouco. Uma lista de verificação de desligamento acrescenta a devolução do dispositivo como passo que o gestor assina. Para a aposentadoria, a autoridade contrata um reciclador certificado que apaga as unidades, destrói as que não podem ser apagadas e fornece um certificado para cada lote. O armário é esvaziado e seu conteúdo apagado e registrado.

Em seis meses, o registro e a descoberta coincidem com uma pequena margem, e um notebook perdido é bloqueado remotamente em uma hora na maioria dos casos. Alguns problemas permanecem. Os enfermeiros às vezes compartilham dispositivos em turnos cheios, então o campo do responsável está errado, e os certificados do reciclador listam lotes mas não dispositivos individuais, o que o auditor questiona. O chefe dos serviços de usuário final introduz um registro de dispositivos compartilhados com retirada diária assinada e pede ao reciclador que inclua os números de série nos certificados. Decide também rever a política de substituição usando os dados de falhas do primeiro ano, em vez de manter uma idade fixa.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega guardam dispositivos de teste, servidores de build e equipamento de laboratório. Registre-os, dê-lhes responsáveis e aposente-os do modo certo. Avise a gestão de ativos quando precisar de dispositivos, para que o suprimento corresponda aos projetos.

### Equipes de serviço e operações

Operações e o service desk conduzem a maior parte do ciclo de vida: construir, implantar, dar suporte e aposentar. Mantenha os registros atualizados em cada passo, use a descoberta para pegar as lacunas e guarde a evidência de descarte. Compartilhe os dados de condição e de falhas com quem planeja a substituição.

### Liderança e governança

Os líderes decidem os orçamentos de substituição e o apetite de risco. Peça o número de dispositivos fora de suporte, o processo para dispositivos perdidos e a evidência de destruição de dados. Apoie a renovação baseada em evidências e os pequenos controles, como etiquetas e listas de verificação, que mantêm os registros verdadeiros.

### Clientes e usuários

Os usuários guardam o equipamento no dia a dia. Cuide dele, relate rapidamente perdas ou danos e devolva o equipamento ao sair. Avise o desk se você compartilha um dispositivo ou muda para outro local, para que os registros estejam certos.

## Modos de falha comuns

- **Equipamento sem etiqueta.** Os dispositivos não se distinguem. Em vez disso, etiquete e registre no recebimento.
- **Registros desatualizados.** Movimentações e desligamentos não são capturados. Em vez disso, ligue as atualizações a eventos como os processos de admissão, mudança e desligamento.
- **Renovação por idade fixa sem dados.** Os dispositivos são substituídos cedo ou tarde demais. Em vez disso, revise os dados de falhas, custo e suporte.
- **Descarte fraco.** Restam dados em dispositivos descartados. Em vez disso, apague e verifique com um método adequado à mídia, guarde a evidência e use um parceiro certificado.
- **Ignorar o armazenamento flash.** Presume-se que sobrescrever funciona. Em vez disso, use comandos de sanitização ou destruição de chaves e verifique.
- **Estoques.** Dispositivos sem uso se acumulam. Em vez disso, redistribua ou aposente num calendário.
- **Nenhuma ligação com serviços.** Um dispositivo que falha é só um ticket. Em vez disso, registre o serviço que cada dispositivo apoia.
- **Reciclagem sem certificação.** O equipamento acaba onde ninguém sabe. Em vez disso, escolha parceiros certificados e pergunte para onde vão os materiais.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Inventário e acompanhamento | Os dispositivos são conhecidos informalmente | Um registro cobre os dispositivos principais | Todo dispositivo é etiquetado e registrado, reconciliado com a descoberta | A exatidão e as lacunas são medidas e corrigidas | O inventário cobre dispositivos próprios, alugados e de parceiros, com dados compartilhados |
| Ciclo de vida e renovação | A substituição acontece na falha | Alguns dispositivos seguem um plano de renovação | As etapas do ciclo de vida e uma política de renovação são definidas | Dados de falhas e custo orientam as decisões de substituição | A renovação é planejada em toda a organização com fornecedores e finanças |
| Descarte e proteção de dados | O descarte é ad hoc | Alguns dispositivos são apagados | Um método padrão de apagamento e descarte certificado, com evidência | A evidência de descarte é auditada e as lacunas fechadas | O descarte é coordenado com parceiros e programas de reutilização |
| Ligação com serviço e finanças | Os dispositivos não são ligados a serviços nem a custos | Alguns dados de custo são mantidos | Os dispositivos são ligados a responsáveis, serviços e custos | Os dados de custo e suporte são revisados e usados nos orçamentos | Os dados de ativos são compartilhados continuamente com finanças, segurança e fornecedores |

## Lista de verificação

- [ ] Todo dispositivo que acompanhamos tem uma etiqueta única ou registro de série e um responsável ou usuário nomeado.
- [ ] Os dispositivos são ligados ao serviço que apoiam.
- [ ] A descoberta é comparada com o registro ao menos mensalmente para os principais tipos de dispositivos.
- [ ] As datas de fim de garantia e de suporte são registradas e revisadas.
- [ ] Nossa política de substituição se baseia em dados e é revisada anualmente.
- [ ] Os processos de desligamento e mudança recuperam ou reatribuem dispositivos.
- [ ] O apagamento de dados usa um método adequado à mídia, com verificação e um registro.
- [ ] Os parceiros de descarte são certificados e fornecem evidência por dispositivo ou lote.
- [ ] Dispositivos perdidos e roubados podem ser relatados rapidamente e bloqueados ou apagados remotamente onde disponível.
- [ ] Uma amostra do registro é conferida com a realidade física duas vezes por ano.

## Prompts de IA

**Finalidade: reconciliar uma contagem física com o registro.**

```text
I have a physical count of devices in [location or team] and the register entries for the same scope.

Physical count (tag or serial, type, who has it): [paste].
Register (tag or serial, type, owner, status): [paste]. 

Using only these lists, identify items present physically but missing from the register, items in the register but not found, and items where the owner or status differs. For each group, suggest a question to ask. Do not guess about items that cannot be matched. List what you are unsure of.
```

**Finalidade: preparar uma revisão de substituição baseada em dados.**

```text
Help me prepare a replacement review for [device class, e.g. "field laptops"].

Data we have (age, repairs, failures, support tickets, warranty end, security support end, cost): [paste a table of real data].
Current replacement rule and its source: [paste, or write "unknown"].
Budget limits: [describe, or write "unknown"].

Using only this data, describe patterns by age group (for example failure and repair counts), identify devices near end of support, and suggest questions about whether the current rule fits. Do not invent failure rates or costs. If the data are too thin, say what to collect. List what you are unsure of.
```

**Finalidade: escrever uma lista de verificação de descarte de dispositivos com requisitos de evidência.**

```text
Help me write a disposal checklist for [device type, e.g. "laptops and phones"].

Data sensitivity: [describe].
Storage types: [for example hard drives, SSDs, phones with encrypted storage].
Disposal partner and what they provide: [describe, or write "not yet chosen"].
Rules we must follow, with source text: [paste, or write "none known"].

Produce a checklist covering authorization, removal of accounts and licenses, data erasure or destruction method by storage type, verification, evidence kept (certificate content, serial numbers), disposal route, and register update. Mark steps that are assumptions. Do not state that any law or standard requires a method unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: planejar a resposta a um dispositivo perdido.**

```text
Draft a short response procedure for a lost or stolen [device type].

What controls exist today (encryption, remote lock, remote wipe, location): [describe, or write "unknown"].
Data the device may hold: [describe].
Who is told today: [list].

Write steps for the user, the service desk, and security: how to report, what to do in the first hour, when to treat the loss as a security incident, and how to record it. Leave any notification duty as [CHECK WITH LEGAL] unless I give the source text. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [configuration-management](../../../../skills/configuration-management/SKILL.md): use para ligar os dispositivos aos serviços que apoiam.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use para planejar quanto equipamento é necessário e quando.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): use para prever os custos de renovação e de suporte.
- [data-governance](../../../../skills/data-governance/SKILL.md): use para decidir quem é dono dos dados nos dispositivos e como são protegidos na aposentadoria.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use para selecionar e revisar fornecedores de hardware e parceiros de descarte.

## Fontes principais

- **IT asset management** (Wikipedia): a definição e uma descrição da gestão de ativos de hardware, dentro do artigo sobre gestão de data centers.
- **Data erasure** (Wikipedia): métodos, normas, verificação e o caso especial do armazenamento de estado sólido.
- **Electronic waste** (Wikipedia): escala, perigos, reciclagem e a Convenção de Basileia, com ressalvas sobre cifras conflitantes.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88): a orientação primária que o artigo da Wikipédia cita; leia a revisão atual antes de definir um padrão.

## Referências

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
