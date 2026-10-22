# Gestão da Segurança da Informação

**A gestão da segurança da informação protege a confidencialidade, a integridade e a disponibilidade da informação por meio de controles baseados em risco, e numa organização ágil os controles funcionam melhor quando embutidos no pipeline de entrega e nos hábitos diários das equipes, em vez de acrescentados como uma barreira no fim.**

## Por que isso importa

Todo serviço guarda informação que alguém valoriza: dados de clientes, registros de pagamento, dados de saúde, planos internos. Uma falha de segurança prejudica as pessoas que a informação descreve, danifica a reputação da organização e pode trazer penalidades legais e financeiras. As equipes de gestão de serviços costumam ser as primeiras a ver a falha, como um incidente, e as que precisam restabelecer a operação normal depois.

Segurança e entrega contínua costumam ser pintadas como opostos: a segurança diz para desacelerar, a entrega diz para acelerar. Essa visão não ajuda. A segurança que chega só no fim de um release produz surpresas tardias e exceções apressadas. A segurança embutida no trabalho, com verificações que rodam automaticamente e riscos discutidos cedo, protege o serviço sem travá-lo. O mesmo vale para a gestão de serviços: as práticas que tornam a mudança segura também tornam seguras as mudanças de segurança.

Este tópico usa o [artigo da Wikipédia sobre segurança da informação](https://en.wikipedia.org/wiki/Information_security) e o [artigo sobre a ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001) como fontes principais. Ambos são gerais. O primeiro é um artigo longo, e este guia leu apenas os primeiros 100.000 de seus cerca de 243.000 caracteres. Este tópico não dá aconselhamento jurídico; leis, regulamentos e obrigações contratuais diferem por país e setor, e a fonte certa é o texto da regra que se aplica a você.

## Conceitos centrais

### O que é a segurança da informação

A Wikipédia define a segurança da informação como a proteção da informação pela mitigação de riscos de informação, visando prevenir ou reduzir o acesso, uso, divulgação, interrupção, exclusão, corrupção, modificação ou desvalorização não autorizados da informação e reduzir o impacto dos incidentes. Aplica-se à informação eletrônica, física e intangível e faz parte da gestão de riscos de informação.

### A tríade CIA

As metas centrais são **confidencialidade**, **integridade** e **disponibilidade**, equilibradas com a eficiência das políticas e a produtividade organizacional. O artigo as descreve assim:

| Meta | Significado | Exemplo num serviço |
|---|---|---|
| **Confidencialidade** | A informação é protegida de divulgação não autorizada | Só pessoal autorizado vê os prontuários de pacientes |
| **Integridade** | A informação é exata e completa e não pode ser alterada de modo não autorizado ou não detectado | Um valor de pagamento não pode ser alterado sem deixar rastro |
| **Disponibilidade** | A informação é acessível quando necessária | O serviço permanece no ar e resiste a ataques de negação de serviço |

O artigo observa que a confidencialidade difere da privacidade, que chama de conceito mais amplo. Observa também que as organizações podem acrescentar metas como autenticidade, responsabilização, irretratabilidade e confiabilidade, e que o Hexágono de Parker, um modelo estendido, tem méritos debatidos. A disponibilidade se liga diretamente à gestão de serviços (veja Tópico 3.11 — Disponibilidade, Capacidade e Desempenho).

### Gestão de riscos

O artigo descreve o risco como a probabilidade de dano a um ativo de informação. **Vulnerabilidades** são fraquezas, **ameaças** são causas potenciais de dano e **impacto** é a perda resultante. A gestão de riscos é um processo contínuo e iterativo em que a gestão pode aceitar, mitigar, transferir (por exemplo, por seguro) ou evitar um risco. O que sobra é chamado de **risco residual**. O artigo lista seis passos: identificar ativos, avaliar ameaças, avaliar vulnerabilidades, calcular o impacto, selecionar e implementar controles e avaliar esses controles.

### Controles e defesa em profundidade

Os controles protegem a confidencialidade, a integridade ou a disponibilidade. O artigo descreve a **defesa em profundidade**, a sobreposição em camadas de controles, com tipos de controle descritos como administrativos (políticas, procedimentos), lógicos (medidas técnicas como controle de acesso e criptografia) e físicos (fechaduras, instalações). Nenhum controle isolado basta; as camadas cobrem as falhas umas das outras.

### Incidentes de segurança

O artigo descreve a gestão de incidentes de segurança computacional como monitorar, detectar e responder a eventos de segurança, com planos de resposta a incidentes ativados quando violações são detectadas, normalmente conduzidos por uma equipe de resposta a incidentes. Os incidentes de segurança são um tipo de incidente e se beneficiam dos mesmos papéis, da mesma comunicação e do mesmo aprendizado sem atribuição de culpa (veja Tópico 3.2 — Gestão de Incidentes), além de passos específicos como preservar evidências e notificar reguladores ou pessoas afetadas onde exigido.

### ISO/IEC 27001 e 27002

Segundo a Wikipédia, a **ISO/IEC 27001** estabelece requisitos para estabelecer, implementar, manter e melhorar continuamente um sistema de gestão da segurança da informação (SGSI), incluindo avaliar e tratar riscos de segurança da informação. Seus requisitos são genéricos e destinados a organizações de qualquer tipo, tamanho ou natureza. A primeira edição saiu em outubro de 2005 a partir da norma britânica BS 7799-2, a segunda em 2013 e a terceira em outubro de 2022, alinhada com a ISO/IEC 27002:2022; uma emenda de fevereiro de 2024 acrescentou uma consideração sobre mudança climática.

Fatos-chave do artigo:

- Os requisitos do SGSI estão nas cláusulas 4 a 10: contexto, liderança, planejamento, apoio, operação, avaliação de desempenho e melhoria.
- O Anexo A da edição de 2022 tem 93 controles de referência em quatro temas: organizacional, pessoas, físico e tecnológico. A edição de 2013 listava 114. O Anexo A é um conjunto de referência e não uma lista de verificação obrigatória: as organizações produzem uma **Declaração de Aplicabilidade** que justifica quais controles incluem e excluem.
- A certificação é opcional, a menos que uma lei, contrato ou esquema a exija. A ISO não certifica organizações; organismos independentes de certificação o fazem, em etapas, seguidas de auditorias de vigilância e recertificação num ciclo de três anos. Um certificado se aplica apenas dentro do seu escopo declarado.
- A **ISO/IEC 27002** dá orientação sobre os controles do Anexo A. É orientação e não se pode certificar contra ela.

O artigo observa que uma revisão de literatura de 2021 achou poucos estudos empíricos sobre os resultados da certificação. Um certificado mostra que existe um sistema de gestão; não é prova de que uma violação específica não possa acontecer.

### Outros frameworks e leis

O artigo de segurança da informação nomeia muitas outras normas e esquemas, como o NIST Cybersecurity Framework, o Cyber Essentials no Reino Unido, o Essential Eight na Austrália e a norma da indústria de cartões de pagamento. Lista também leis, incluindo o Computer Misuse Act (1990) e o Data Protection Act (1998) do Reino Unido e o HIPAA (1996), o Gramm-Leach-Bliley Act (1999) e o Sarbanes-Oxley Act (2002) dos Estados Unidos. A lista mostra quão variadas são as regras. Quais se aplicam a você depende de onde você opera, do setor e dos dados que guarda; pergunte à sua função jurídica ou de conformidade (veja Tópico 5.7 — Governança, Risco e Conformidade).

### Segurança no pipeline de entrega

Práticas que combinam com a entrega contínua incluem:

- **Discussão de ameaças cedo:** pergunte no planejamento o que poderia dar errado com uma funcionalidade e quem gostaria de usá-la indevidamente.
- **Verificações automatizadas:** varrer código, dependências e configuração a cada mudança, com os resultados visíveis para a equipe (veja Tópico 3.4 — Habilitação de Mudanças).
- **Privilégio mínimo:** dar a pessoas e sistemas só o acesso de que precisam.
- **Gestão de segredos:** manter credenciais fora do código e rotacioná-las.
- **Testes de segurança:** testes de intrusão e testes automatizados como parte do ciclo (veja a skill de testes de segurança abaixo).
- **Registro e monitoramento:** detectar atividade suspeita (veja Tópico 3.10 — Monitoramento e Gestão de Eventos).

A orientação do DORA, citada em outras partes deste guia, lista a segurança difusa entre as práticas que apoiam a entrega contínua (veja Tópico 3.5 — Gestão de Releases e Implantações).

### Cultura e pessoas

O artigo de segurança da informação menciona pesquisas sobre cultura de segurança, incluindo sete dimensões de cultura identificadas por Roer e Petric (2017). Seja qual for o modelo, o ponto é que muitas violações começam com pessoas: uma mensagem de phishing, um erro, um atalho sob pressão. Treinamento, rotas claras de comunicação e uma atitude sem atribuição de culpa diante de erros honestos melhoram a segurança mais que a culpa.

### Limites das fontes

O artigo da Wikipédia não declara críticas específicas à tríade CIA e foi lido só em parte. O artigo sobre a ISO/IEC 27001 não discute a relação com a ISO/IEC 20000 nem com o ciclo Plan-Do-Check-Act. Este tópico não dá instruções técnicas; use orientação especializada para as suas plataformas e o texto das normas se precisar alegar conformidade.

## Boas práticas

1. **Saiba que informação você guarda e onde.** Faça uma lista dos principais tipos de informação, de quem é dono de cada um, onde está armazenado e quão sensível é. Você não consegue proteger o que não identificou.
2. **Faça avaliações de risco em linguagem simples.** Para cada serviço importante, pergunte o que poderia dar errado com confidencialidade, integridade e disponibilidade, com que probabilidade e quão grave. Registre as decisões de aceitar, reduzir, transferir ou evitar cada risco (veja Tópico 5.7 — Governança, Risco e Conformidade).
3. **Coloque os controles em camadas.** Combine políticas, controles técnicos e controles físicos para que uma falha não baste. Revise quais camadas protegem a sua informação mais sensível.
4. **Embuta verificações no pipeline.** Execute verificações automatizadas de segurança em código, dependências e configuração a cada mudança e torne visíveis as verificações que falham. Corrija os problemas no ponto da mudança.
5. **Dê privilégio mínimo por padrão.** Conceda acesso por papel e necessidade, revise-o regularmente e remova-o prontamente quando as pessoas saírem ou mudarem de papel (veja Tópico 3.6 — Gestão de Requisições de Serviço).
6. **Gerencie bem os segredos.** Mantenha as credenciais fora do código-fonte, guarde-as num cofre gerenciado e rotacione-as. Teste que consegue rotacioná-las depressa depois de um incidente.
7. **Trate incidentes de segurança como incidentes.** Use os mesmos papéis, a mesma comunicação e a mesma revisão dos demais incidentes e acrescente passos para evidências, contenção e notificação. Pratique o plano.
8. **Conheça seus deveres de notificação.** Descubra, com a sua função jurídica ou de conformidade, quais leis ou contratos exigem que você notifique autoridades ou pessoas afetadas depois de uma violação e com que rapidez. Escreva isso no plano de incidentes, citando o texto da fonte.
9. **Inclua os fornecedores.** Pergunte aos fornecedores críticos como protegem a sua informação e ponha expectativas nos contratos (veja Tópico 3.14 — Gestão de Fornecedores).
10. **Treine e converse.** Ofereça treinamento curto e regular baseado em exemplos reais e facilite relatar um erro ou uma mensagem suspeita sem culpa.
11. **Use as normas como fonte de estrutura.** Se adotar a ISO/IEC 27001, trate o Anexo A como conjunto de referência, escreva uma Declaração de Aplicabilidade justificada e mantenha o SGSI leve. A certificação é opcional, a menos que exigida.
12. **Aprenda com quase acidentes.** Revise quase acidentes e eventos de baixa gravidade em busca de padrões e alimente com eles o backlog e o registro de riscos.

## Perguntas para discutir com a equipe

**Que informação guardamos que machucaria pessoas se vazasse, e onde está?**

Peça a cada pessoa que nomeie os dados mais sensíveis que manipula e onde vivem. Compare. As surpresas são comuns: cópias em ambientes de teste, exportações em pastas compartilhadas, logs contendo dados pessoais. Quem facilita pode perguntar qual cópia é a menos protegida. Escolha uma para reduzir ou proteger melhor.

**Quando foi a última vez que decidimos aceitar um risco de segurança, e quem decidiu?**

Peça um exemplo. Os riscos aceitos muitas vezes são aceitos em silêncio, por atraso. Discuta quem deveria decidir, de que informação precisa e onde isso é registrado. A lista de modos de tratar o risco do artigo (aceitar, mitigar, transferir, evitar) é um enquadramento útil. Acorde um lugar simples para registrar a próxima decisão.

**Que verificações de segurança rodam automaticamente a cada mudança, e o que ignoramos?**

Liste as verificações do pipeline e os resultados. Pergunte quais achados são rotineiramente ignorados e por quê. Achados ignorados costumam significar ruído, falta de responsável ou falta de tempo. Decida quais corrigir, quais suprimir com um motivo e quem é dono da lista.

**Quem tem acesso a quê, e quando foi a última revisão?**

Escolha um sistema sensível e liste quem pode alcançá-lo. Compare com quem precisa dele. Muitas vezes o acesso se acumulou. Pergunte com que rapidez o acesso é removido quando alguém sai. Acorde uma data de revisão e um responsável.

**O que faríamos na primeira hora de uma suspeita de violação?**

Percorra os passos: quem é avisado, o que é preservado, o que é desligado, quem fala com quem. As lacunas costumam aparecer em torno de autoridade e evidências. Pergunte onde está o plano e quando foi usado pela última vez. Agende um exercício de mesa.

**Que regras de segurança ou privacidade se aplicam a nós, e como sabemos?**

Pergunte quem é responsável por saber. Se a resposta for "o jurídico" ou "ninguém", pergunte como a engenharia fica sabendo dos requisitos. As regras diferem por país e setor, então liste os lugares em que você opera. Acorde pedir à função jurídica ou de conformidade uma lista curta, com o texto da fonte.

## Na prática: um exemplo de ITIL ágil

O serviço de computação de pesquisa de uma universidade guarda conjuntos de dados de estudos médicos e dá aos pesquisadores acesso a servidores de análise. Uma equipe de oito pessoas o opera. Depois de um incidente em que um pesquisador copiou um conjunto de dados desprotegido para uma pasta de nuvem pessoal, o oficial de segurança da universidade exige que toda mudança e todo pedido de acesso passem por uma revisão de segurança de três semanas. Os pesquisadores objetam que isso tornará o serviço inutilizável.

O gerente do serviço propõe uma abordagem diferente e se reúne com o oficial de segurança e dois pesquisadores. Listam a informação guardada, agrupando os conjuntos de dados em públicos, internos e sensíveis. Para os dados sensíveis, acordam controles mais rígidos: acesso por papel e projeto nomeados, nenhuma cópia fora do serviço e registro da exportação de dados. Para os demais dados, aplicam-se regras mais leves. A equipe acrescenta ao pipeline de entrega verificações automatizadas de armazenamento mal configurado e de segredos no código, e o oficial de segurança revisa os resultados semanalmente em vez de revisar cada mudança. Os pedidos de acesso a conjuntos de dados sensíveis seguem um modelo de requisição com aprovação do curador de dados do projeto e uma data de expiração. Uma breve sessão de treinamento baseada no incidente anterior é feita para os pesquisadores.

Seis meses depois, nenhuma outra cópia fora do serviço foi encontrada, e as revisões de acesso levam uma tarde por trimestre. Algumas dificuldades permanecem. Um grupo de pesquisadores usa uma ferramenta que exporta dados de um jeito que o registro não captura, e as verificações automatizadas produzem alarmes falsos que a equipe passou a ignorar. Acordam com o oficial de segurança acrescentar a ferramenta ao escopo do registro, ajustar as verificações e revisar os alertas mensalmente. Pedem também ao jurídico uma declaração escrita dos deveres de notificação que se aplicam aos conjuntos de dados sensíveis, para que o plano de incidentes possa citar a fonte.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega tornam a segurança real no código e na configuração. Discuta ameaças cedo, mantenha os segredos fora do código, responda aos achados automatizados e evite compartilhar dados sensíveis em testes. Avise a segurança e a operação sobre mudanças que alteram a exposição.

### Equipes de serviço e operações

As equipes de operações conduzem os controles: acesso, monitoramento, aplicação de patches e backups. Trate eventos de segurança como incidentes, preserve evidências e participe de exercícios. Devolva os padrões de incidentes à entrega e ao registro de riscos.

### Liderança e governança

Os líderes são donos das decisões de risco e da cultura em torno delas. Peça resumos de risco em linguagem simples, apoie o tempo para treinamento e exercícios e garanta que alguém responda por cada decisão de aceitar um risco. Não exija a certificação como rótulo sem motivo.

### Clientes e usuários

Clientes e usuários confiam ao serviço a sua informação. Use autenticação forte onde oferecida, relate mensagens suspeitas e pergunte aos provedores como protegem seus dados e como o avisariam de uma violação. Espere honestidade e rapidez se algo der errado.

## Modos de falha comuns

- **Segurança como barreira final.** As revisões chegam no fim e atrasam os releases. Em vez disso, discuta ameaças cedo e automatize as verificações no pipeline.
- **Conformidade como meta.** Um certificado esconde prática fraca. Em vez disso, use as normas para estrutura e meça a proteção real.
- **Dados sem rastreio.** Cópias se espalham por sistemas de teste e armazenamento pessoal. Em vez disso, saiba onde vivem os dados sensíveis e limite as cópias.
- **Acesso em excesso.** Os direitos se acumulam e nunca são removidos. Em vez disso, revise o acesso regularmente e faça-o expirar.
- **Segredos no código.** As credenciais são guardadas em repositórios. Em vez disso, use um cofre e rotacione os segredos.
- **Nenhum plano de incidentes testado.** O primeiro uso é uma violação real. Em vez disso, pratique o plano e escreva os deveres de notificação.
- **Culpa por erros.** As pessoas escondem erros. Em vez disso, facilite o relato e responda com aprendizado.
- **Ignorar os fornecedores.** Terceiros guardam dados sem proteções claras. Em vez disso, pergunte, contrate e revise.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Informação e risco | Os dados sensíveis não são listados; os riscos são implícitos | Alguns serviços registram tipos de dados e riscos | Dados e riscos são registrados por serviço, com responsáveis e decisões | Os riscos são revisados contra incidentes e métricas | As visões de risco são compartilhadas com clientes e fornecedores e alinhadas |
| Controles na entrega | A revisão de segurança acontece no fim, se acontece | Algumas equipes executam varreduras de segurança | As verificações de segurança são automatizadas num pipeline comum, com responsáveis pelos achados | Achados, correções e escapes são medidos e revisados | Os controles são aprimorados entre equipes a partir de evidências compartilhadas |
| Acesso e segredos | O acesso é concedido ad hoc; segredos no código | Existem algumas revisões e cofres | Acesso baseado em papéis com expiração e segredos gerenciados são padrão | Revisões de acesso e rotação são medidas | As práticas de acesso e segredos são coordenadas com parceiros |
| Resposta a incidentes e cultura | Os incidentes de segurança são improvisados | Existem alguns planos | Os incidentes de segurança seguem o processo de incidentes com passos extras definidos e são praticados | Os tempos de detecção e resposta são medidos e o aprendizado é compartilhado | A resposta é coordenada com fornecedores, clientes e autoridades |

## Lista de verificação

- [ ] Listamos os principais tipos de informação, seus responsáveis, locais e sensibilidade.
- [ ] Os riscos à confidencialidade, integridade e disponibilidade são avaliados para os serviços importantes, e as decisões são registradas.
- [ ] Verificações automatizadas de segurança rodam a cada mudança, e os achados têm responsáveis.
- [ ] O acesso é por papel e necessidade, revisado regularmente e removido quando não é mais necessário.
- [ ] Os segredos ficam num cofre gerenciado e podem ser rotacionados depressa.
- [ ] Existe um plano de incidentes de segurança, já praticado, que inclui os deveres de notificação com o texto da fonte.
- [ ] Os fornecedores que guardam nossa informação foram questionados sobre suas proteções.
- [ ] A equipe recebe treinamento curto e regular e pode relatar erros sem culpa.
- [ ] Se usamos a ISO/IEC 27001, temos uma Declaração de Aplicabilidade justificada e um SGSI leve.
- [ ] Os quase acidentes são revisados em busca de padrões.

## Prompts de IA

**Finalidade: inventariar a sua informação e classificá-la por sensibilidade.**

```text
Help me make a simple inventory of the information our service holds.

What the service does: [describe].
Data we know about (types, where stored, who can access): [paste a list; remove any real personal data].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a table with: information type, where it lives, who owns it, a suggested sensitivity level (public, internal, sensitive) with a one-sentence reason from my text, and one question to ask about protection. Mark guesses. Do not state that any law applies unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: conduzir uma breve discussão de ameaças para uma nova funcionalidade.**

```text
Help me run a 30-minute threat discussion for this new feature: [describe what it does, what data it handles, who uses it, and what it connects to].

Provide questions to ask under these headings: who might misuse it and how; what data could be exposed, changed, or made unavailable; what could go wrong through dependencies or suppliers; what we would see if it went wrong; and what safeguards we already have. Then give a template for recording risks with an owner and a decision (accept, reduce, transfer, or avoid). Do not invent attacks or vulnerabilities in my system. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: revisar os achados de segurança automatizados quanto a ruído e prioridade.**

```text
Here are findings from our automated security checks in the last [period]: [paste, with counts and short descriptions; remove sensitive details].
What we did about each (fixed, suppressed, ignored): [paste, or write "unknown"].

Group the findings by type. For each group, suggest a question to ask about whether it is noise, a real risk, or a tool configuration issue, using only the text. Identify which groups are most often ignored. Do not state that a finding is exploitable or harmless. Suggest how to assign owners. List what you are unsure of.
```

**Finalidade: preparar um exercício de incidente de segurança.**

```text
Design a 60-minute tabletop exercise on a suspected data breach in [service].

Scenario basis: [describe, using facts you choose, for example "a laptop with access to production data is reported lost"].
Roles taking part: [list].
Notification duties that apply, with source text from legal or compliance: [paste, or write "not yet confirmed"].

Give a timed plan, prompts for each role (contain, preserve evidence, communicate, decide who is told), a list of decisions that need authority, and a closing step that records gaps with owners. Do not use real data or systems. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [security-testing](../../../../skills/security-testing/SKILL.md): use para planejar testes de segurança como parte do ciclo de entrega.
- [risk-register](../../../../skills/risk-register/SKILL.md): use para registrar riscos de segurança, decisões e responsáveis.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): use para escolher medidas de alerta precoce para riscos de segurança.
- [data-governance](../../../../skills/data-governance/SKILL.md): use para definir quem é dono dos dados e como podem ser usados e compartilhados.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): use para preparar perguntas para o pessoal jurídico ou de conformidade sobre deveres de privacidade.

## Fontes principais

- **Information security** (Wikipedia): a tríade CIA, a gestão de riscos, os controles e a resposta a incidentes, com uma longa lista de normas e leis relacionadas.
- **ISO/IEC 27001** (Wikipedia, e a própria norma, da ISO): os requisitos para um sistema de gestão da segurança da informação, com os controles do Anexo A e o processo de certificação.
- **Computer security incident management** (Wikipedia): contexto sobre a resposta a eventos de segurança.
- **Defense in depth** (Wikipedia): contexto sobre controles em camadas.

## Referências

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defense in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
