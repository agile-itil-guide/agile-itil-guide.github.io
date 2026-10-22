# Gestão de Requisições de Serviço

**A gestão de requisições de serviço trata das coisas de rotina que os usuários pedem, como acesso, equipamento e informação, e o objetivo ágil é tornar cada requisição comum rápida, previsível e em boa parte automática, para que pessoas qualificadas gastem seu tempo com problemas.**

## Por que isso importa

Boa parte do trabalho que chega a um service desk não é falha alguma. É um usuário pedindo algo que o serviço deve fornecer: uma nova conta, acesso a uma pasta, um notebook, uma licença, uma redefinição de senha. Essas requisições são previsíveis e repetitivas. Bem tratadas, são rápidas e ninguém repara. Mal tratadas, são a fonte de longas esperas, perguntas repetidas e frustração silenciosa que prejudica a reputação de uma equipe mais que qualquer queda isolada.

O tratamento de requisições é também onde a automação e o autosserviço mais compensam. Uma requisição que segue os mesmos passos toda vez pode ser desenhada uma vez, testada e em boa parte automatizada. O [artigo da Wikipédia sobre gestão de serviços de TI](https://en.wikipedia.org/wiki/IT_service_management) define uma requisição de serviço como um pedido de rotina de um serviço e menciona a automação de processos de TI, que substitui passos manuais de rotina por automatizados para que o pessoal se concentre em trabalho de maior prioridade. É o objetivo desta prática numa frase.

O artigo diz pouco mais sobre requisições. Este tópico, portanto, combina essa definição com orientação prática tirada da prática de gestão de serviços amplamente usada, oferecida como tal, e com os demais tópicos do guia sobre o service desk, o catálogo de serviços e o conhecimento. Onde algo é uma prática comum e não um achado de fonte, o texto diz.

## Conceitos centrais

### O que é uma requisição de serviço

Uma **requisição de serviço** é um pedido de rotina de algo que um serviço normalmente fornece. Difere de um **incidente**, que é uma interrupção ou interrupção potencial de um serviço, e de uma **mudança**, que modifica um serviço (veja Tópico 3.2 — Gestão de Incidentes e Tópico 3.4 — Habilitação de Mudanças). A linha pode se embaçar: "preciso de acesso ao sistema financeiro" é uma requisição; "tenho acesso, mas o sistema mostra um erro" é um incidente; "acrescente um novo campo ao sistema financeiro" provavelmente é uma mudança.

Um teste prático: se o trabalho segue um procedimento conhecido, tem custo e risco conhecidos e a resposta a "isto é permitido?" já está decidida de antemão, é uma requisição. Tudo o que exige juízo novo sobre risco tem mais chance de ser uma mudança ou um projeto.

### Por que a distinção importa

Misturar requisições com incidentes distorce ambos. Contagens de "tickets" embaçam dois tipos diferentes de demanda. As prioridades colidem, já que um incidente que impede o trabalho deve vir antes de uma requisição que pode esperar. As medidas de resposta enganam: um tempo médio longo para encerrar pode esconder que as requisições esperam aprovações enquanto os incidentes são corrigidos depressa. Manter os dois separados permite definir metas adequadas e ver onde está o atraso (veja Tópico 2.1 — Gestão de Serviços de TI).

### Modelos de requisição

Um **modelo de requisição (request model)** é um padrão repetível para um tipo de requisição: que informação é necessária, quem deve aprovar, que passos são feitos por quem ou pela automação e qual o tempo esperado. Os modelos de requisição são uma ideia amplamente usada na gestão de serviços. Dão à equipe um jeito de desenhar as requisições comuns uma vez e executá-las muitas. Um catálogo de serviços lista as requisições disponíveis (veja Tópico 3.8 — Gestão do Catálogo de Serviços).

Um modelo para "notebook para novo funcionário" pode especificar: a informação necessária do gestor, a aprovação (nenhuma, se o papel está numa lista padrão), os passos (pedir, configurar, enviar) e o tempo esperado. Um modelo para "acesso a um sistema restrito" incluirá uma aprovação do dono do sistema e um registro para auditoria.

### Aprovação

Algumas requisições precisam de aprovação antes de prosseguir: gastos, acesso a dados sensíveis ou uso de recursos escassos. A pergunta para o desenho é se a aprovação acrescenta controle real. Uma aprovação que sempre diz sim é um atraso. Onde as aprovações forem necessárias, torne-as rápidas e visíveis, diga ao aprovador exatamente o que está sendo pedido e dê um plano alternativo se ele não responder. Onde a aprovação depende de um papel, como um gestor aprovando o pedido de um integrante da equipe, considere pré-aprovar itens padrão para o papel.

### Atendimento e automação

O atendimento é o trabalho de entregar a requisição. O artigo sobre ITSM descreve a automação de processos de TI como a automação de tarefas de rotina para que o pessoal se concentre em trabalho de maior prioridade. Candidatas à automação são as requisições frequentes, que seguem um procedimento estável e carregam baixo risco: redefinição de senhas, inclusão em grupos, instalações padrão de software. A automação deve ser construída com o mesmo cuidado de qualquer mudança, com testes e um modo de ver o que ela fez.

### Autosserviço

Muitas organizações oferecem um portal em que os usuários podem encontrar o serviço de que precisam, ver que informação é exigida e enviar uma requisição sem falar com ninguém. O bom autosserviço depende de uma lista clara de serviços escrita nas palavras dos usuários e de formulários claros. Um portal que espelha o organograma e pede informação que o usuário não tem faz as pessoas voltarem ao e-mail e ao telefone.

### Gestão de serviços corporativa

O artigo sobre ITSM observa que a gestão de serviços corporativa aplica ferramentas e ideias da ITSM a outras áreas do negócio, como recursos humanos ou instalações. A gestão de requisições é o lugar mais fácil para começar, porque muitas funções recebem requisições de rotina: integração de novos funcionários, viagens, equipamento, mudanças de escritório. Uma plataforma compartilhada de requisições pode servir a várias funções, cada uma com seus modelos de requisição e responsáveis.

### Medidas

Medidas comuns incluem quanto tempo as requisições levam da submissão ao atendimento, com que frequência quem pede precisa voltar com perguntas, quantas requisições são atendidas sem esforço humano e a satisfação de quem pede. Como com qualquer medida, evite metas que premiem encerrar requisições cedo. Procure o tempo de espera, já que a maior parte do tempo decorrido de uma requisição costuma ser espera por aprovação ou informação, não trabalho (veja Tópico 1.7 — Desenvolvimento Lean de Software e Tópico 5.6 — Métricas e Medição).

### Segurança e conformidade

As requisições costumam controlar acesso e gastos, então têm implicações de segurança e de auditoria. Os registros devem mostrar quem pediu, quem aprovou, o que foi feito e quando. Remova o acesso quando não for mais necessário, como parte de um modelo de requisição de desligamento e não como algo posterior (veja Tópico 3.13 — Gestão da Segurança da Informação).

## Boas práticas

1. **Comece pelas requisições mais comuns.** Liste as dez principais requisições por volume a partir dos seus registros. Desenhe-as primeiro. Poucos modelos bem desenhados cobrem boa parte da demanda.
2. **Defina um modelo de requisição para cada uma.** Escreva que informação é necessária, quem aprova, os passos, quem faz cada um e o tempo esperado. Mantenha cada modelo em uma página.
3. **Use as palavras do usuário.** Nomeie as requisições como os usuários nomeariam ("Pedir um notebook novo", não "Tipo 2 de requisição de provisionamento de hardware"). Teste os nomes com usuários.
4. **Peça só o que precisa.** Cada campo de um formulário deve ter um propósito. Busque o que puder em sistemas que você já tem, como o departamento do usuário, em vez de perguntar ao usuário.
5. **Pré-aprove o que é rotina.** Acorde com os aprovadores uma lista padrão de itens e papéis que não precisam de aprovação caso a caso. Revise a lista periodicamente.
6. **Torne as aprovações reais fáceis e rápidas.** Mostre ao aprovador o que está sendo pedido e por quê, permita aprovar pelo celular ou por e-mail e configure um lembrete automático e um substituto para ausências.
7. **Automatize o estável e frequente.** Escolha requisições que seguem os mesmos passos toda vez e carregam baixo risco. Teste a automação e registre o que ela fez.
8. **Mantenha um caminho humano.** Permita que os usuários peçam ajuda quando um formulário não se ajusta à sua necessidade. Trate esses casos como feedback sobre o modelo.
9. **Separe requisições de incidentes e de mudanças.** Dê a cada uma sua própria categoria, fila e medidas. Ensine o desk a reclassificar quando uma requisição se revelar uma falha ou uma mudança.
10. **Observe as esperas.** Meça o tempo gasto esperando aprovação ou informação, e não só o tempo total. Escolha a espera mais longa para reduzir primeiro.
11. **Feche o ciclo com quem pediu.** Confirme a conclusão, pergunte se funcionou e ofereça um modo de dizer se não funcionou. Uma requisição marcada como feita mas não entregue é pior que uma ainda aberta.
12. **Revise regularmente o catálogo de requisições.** Aposente as requisições que ninguém faz, funda quase duplicatas e acrescente novas a partir de evidências (veja Tópico 3.8 — Gestão do Catálogo de Serviços).

## Perguntas para discutir com a equipe

**Quais requisições tratamos com mais frequência, e quanto tempo cada uma leva do início ao fim?**

Tire as dez principais do último trimestre e rastreie o tempo decorrido de cada uma. Marque onde cada requisição espera. A surpresa costuma ser que a maior parte do tempo é espera, não trabalho. Pergunte quem espera por quem. Quem facilita pode perguntar qual requisição seria a mais fácil de melhorar primeiro.

**Quais aprovações das nossas requisições nunca disseram não?**

Revise uma amostra de aprovações e conte as recusas. Uma aprovação que nunca recusa pode ser um atraso sem benefício. Pergunte para que serve a aprovação e quem se beneficia. Algumas aprovações existem por auditoria ou responsabilização, o que é um propósito legítimo que pode ser atendido de modo mais leve, como notificar o aprovador depois do fato. Escolha uma para simplificar.

**O que os usuários precisam nos dizer que já sabemos?**

Olhe um formulário de requisição e marque os campos cujas respostas existem em outro sistema. Cada um desses campos é esforço do usuário e fonte de erro. Pergunte o que seria necessário para preenchê-los de antemão. Escolha um campo para remover ou preencher previamente.

**Quais das nossas requisições poderiam ser atendidas sem que uma pessoa as tocasse?**

Liste as requisições que seguem um procedimento fixo. Para cada uma, pergunte o que impede a automação: ferramentas, acesso, medo de errar. Discuta as salvaguardas que tornariam aceitável a automação, como limites e logs. Escolha uma para automatizar como experimento.

**Como os usuários descobrem o que podem pedir?**

Pergunte a alguns usuários como pediriam algo incomum. Se a resposta for "pergunto a alguém que conheço", a lista de serviços não está funcionando. Discuta como a lista é apresentada e se os nomes fazem sentido para os usuários. Teste um rascunho com dois ou três usuários.

**Quando uma requisição se revela outra coisa, o que acontece?**

Reúna exemplos de requisições que eram na verdade incidentes ou mudanças. Pergunte quanto a classificação errada custou. Discuta como o desk reconhece e reclassifica e se o formulário de requisição ajuda os usuários a escolher corretamente. Acorde um passo simples de reclassificação.

## Na prática: um exemplo de ITIL ágil

Um instituto nacional de estatística tem 3.000 funcionários e um departamento de TI de 80. Os novos funcionários rotineiramente esperam dez dias por um notebook e contas que funcionem, e os gestores reclamam que os recém-chegados ficam ociosos. O service desk trata as requisições de integração como tickets individuais, com cada uma de cinco equipes realizando um passo e passando o ticket adiante.

Uma líder de melhoria mapeia uma requisição de integração. Descobre que o trabalho efetivo leva cerca de três horas e o resto é espera: pelo gestor fornecer detalhes, por uma aprovação orçamentária de um notebook padrão e por cada equipe notar o ticket. A equipe desenha um modelo de requisição para novos funcionários. O gestor preenche um formulário curto três semanas antes da data de início, com a maioria dos campos preenchida a partir do sistema de recursos humanos. Notebooks e contas padrão para o papel são pré-aprovados. Um script cria contas e grupos; o hardware é pedido automaticamente a partir de uma lista de estoque; o desk recebe uma única lista de tarefas. O gestor do novo funcionário recebe atualizações e uma confirmação.

Depois de dois meses, o tempo mediano do pedido ao notebook pronto cai para três dias quando o formulário é enviado no prazo. Algumas dificuldades permanecem. Cerca de um terço dos gestores ainda envia o formulário tarde, então os novos funcionários ainda esperam, e o script falha quando o registro de recursos humanos não tem o código do departamento, produzindo trabalho manual de reparo. A equipe acrescenta um lembrete à lista de verificação de integração dos recursos humanos, monta um alerta para scripts que falham e começa a conversar com os recursos humanos sobre melhorar os dados. Também mantém um caminho humano para papéis que não se ajustam à lista padrão.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega muitas vezes recebem requisições que na verdade são mudanças: um novo campo, um novo relatório. Ajude o desk a reconhecê-las e encaminhá-las ao seu backlog. Onde as requisições do seu serviço são frequentes, como acesso, construa um caminho de autosserviço com limites claros e registro.

### Equipes de serviço e operações

Operações e o desk são donos da maioria dos modelos de requisição. Desenhe primeiro os comuns, remova a espera e automatize onde for seguro. Proteja o tempo para construir e revisar modelos, já que o trabalho de requisições facilmente expulsa o trabalho de melhoria. Compartilhe dados sobre esperas com aprovadores e gestores.

### Liderança e governança

Líderes e aprovadores moldam boa parte da espera. Pergunte quais aprovações acrescentam controle e quais acrescentam atraso e aceite a pré-aprovação onde o risco é baixo. Apoie uma plataforma compartilhada de requisições entre funções e peça medidas de tempo de espera em vez de contagens de tickets.

### Clientes e usuários

Os usuários se beneficiam de nomes claros, formulários curtos e estimativas honestas. Forneça informação completa ao pedir e diga quando é urgente e por quê. Conte à equipe quando uma requisição não entregou o que você precisava, já que isso melhora o modelo para a próxima pessoa.

## Modos de falha comuns

- **Tratar requisições como incidentes ou o inverso.** Prioridades e relatórios se distorcem. Em vez disso, separe-os e ensine a reclassificar.
- **Formulários que pedem demais.** Os usuários abandonam o portal. Em vez disso, peça só o necessário e preencha o resto previamente.
- **Aprovações como ritual.** Toda requisição espera por uma assinatura que nunca recusa. Em vez disso, pré-aprove itens de rotina e mantenha rápidas as aprovações reais.
- **Automação sem salvaguardas.** Um script faz a mudança errada em escala. Em vez disso, teste, limite e registre a automação e monitore as falhas.
- **Nomes internos.** Os usuários não encontram o que precisam. Em vez disso, nomeie as requisições nas palavras dos usuários e teste.
- **Nenhum caminho humano.** Necessidades incomuns escapam. Em vez disso, ofereça ajuda e trate pedidos estranhos como feedback.
- **Contar só a rapidez.** Requisições são encerradas cedo. Em vez disso, confirme com quem pediu e observe requisições repetidas.
- **Nunca aposentar requisições.** A lista envelhece. Em vez disso, revise o uso regularmente e remova o que ninguém pede.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Modelos de requisição | Cada requisição é tratada ad hoc | Existem modelos para algumas requisições frequentes | Existem modelos para as principais requisições, com responsáveis e tempos esperados | O desempenho dos modelos é medido e ajustado | Os modelos são compartilhados entre funções e fornecedores |
| Aprovação | A aprovação é informal ou por hábito | Alguns itens de rotina são pré-aprovados | Listas de pré-aprovação e rotas rápidas de aprovação são padrão | Resultados e esperas das aprovações são revisados | As regras de aprovação são alinhadas entre funções com base em dados de risco |
| Automação e autosserviço | As requisições são tratadas manualmente por e-mail | Algumas requisições estão num portal ou automatizadas | Requisições frequentes de baixo risco são automatizadas e o autosserviço é padrão | O sucesso da automação e o esforço do usuário são medidos | Automação e autosserviço abrangem TI, RH e instalações |
| Aprendizagem e melhoria | As requisições não são analisadas | Algumas contagens são coletadas | Esperas e requisições repetidas são revisadas regularmente | As melhorias são planejadas a partir de dados e os efeitos conferidos | As ideias de melhoria vêm de usuários e equipes em toda a organização |

## Lista de verificação

- [ ] Conhecemos nossas dez requisições mais comuns e quanto tempo cada uma leva.
- [ ] Cada uma tem um modelo de requisição: informação necessária, aprovador, passos, responsável, tempo esperado.
- [ ] As requisições são nomeadas nas palavras dos usuários.
- [ ] Os formulários pedem apenas a informação necessária e preenchem previamente o que sabemos.
- [ ] Itens de rotina são pré-aprovados, e as aprovações reais têm uma rota rápida e um substituto.
- [ ] Requisições frequentes de baixo risco são automatizadas com testes e logs.
- [ ] Requisições, incidentes e mudanças são separados, com um passo de reclassificação.
- [ ] Medimos o tempo de espera além do tempo total.
- [ ] Pede-se a quem fez a requisição que confirme a conclusão.
- [ ] A lista de requisições é revisada ao menos duas vezes por ano.

## Prompts de IA

**Finalidade: encontrar as requisições mais comuns e as esperas mais longas.**

```text
Here is data on service requests from the last [period]: [paste a table with request type, date submitted, date approved if any, date fulfilled, and any notes; remove personal data].

Using only my data, list the ten most common request types with counts, the typical elapsed time for each (give the middle value and the range), and how much of that time was waiting for approval, if the data shows it. Highlight the three requests with the longest waits. Suggest questions to ask the owners. Do not invent numbers or causes. If the data is too thin, tell me what to collect. List what you are unsure of.
```

**Finalidade: escrever um modelo de requisição para uma requisição.**

```text
Help me write a request model for [request, e.g. "access to a shared team folder"].

How it is handled today, step by step, with who does each: [paste].
Information the requester must provide today: [list].
Approvals today and who gives them: [list].
Rules we must follow, with source text if available: [paste, or write "none known"].

Produce a one-page model: purpose, who may request, information needed (mark what could be prefilled from existing systems), approval (and a suggestion for pre-approval where low risk), steps with who or what does each, expected time marked as [to be agreed], and how completion is confirmed. Mark assumptions. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: reescrever um formulário de requisição para ficar mais curto e claro.**

```text
Here is a request form we use: [paste the fields and instructions].
Here is what we already know about the requester from other systems: [list, such as name, department, manager].

For each field, say whether it is needed, could be prefilled, or could be removed, and give a reason from the text. Rewrite the form with clear labels in plain language. Do not remove any field that I have marked as required by a rule: [list, or write "none known"]. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: decidir o que automatizar primeiro.**

```text
Here is a list of our requests with volume per month, steps, and how risky each step is (my judgment): [paste].
Tools we can automate with: [list, or write "unknown"].
Safeguards we can put in place: [list, such as logs, limits, approvals for exceptions].

Rank the requests as automation candidates, using only my data, and explain each ranking in one sentence. For the top two, list what could go wrong and a safeguard for each. Do not invent volumes. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md): use para listar as requisições que os usuários podem fazer, nas suas palavras, com responsáveis.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use para encontrar as requisições mais comuns e seus volumes.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): use para analisar os passos e as esperas de uma requisição.
- [user-story](../../../../skills/user-story/SKILL.md): use para descrever uma requisição do ponto de vista do usuário com critérios de aceitação.
- [runbook](../../../../skills/runbook/SKILL.md): use para documentar os passos das requisições que continuam manuais.

## Fontes principais

- **IT service management** (Wikipedia): define uma requisição de serviço, a gestão de serviços corporativa e a automação de processos de TI.
- **Help desk** (Wikipedia): contexto sobre gerenciamento de filas e roteamento das requisições que chegam a um desk.
- **Business process automation** (Wikipedia): contexto geral sobre a automação do trabalho de rotina.
- **ITIL** (Wikipedia): o contexto da gestão de requisições de serviço no ITIL.

## Referências

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
