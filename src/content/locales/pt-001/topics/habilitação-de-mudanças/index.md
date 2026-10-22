# Habilitação de Mudanças

**A habilitação de mudanças existe para deixar que mudanças benéficas aconteçam com segurança e rapidez, e as evidências da pesquisa sobre entrega de software são de que o risco é melhor controlado por mudanças pequenas, revisão por pares e verificações automatizadas do que por enviar toda mudança a um comitê.**

## Por que isso importa

A mudança é onde a entrega contínua e a gestão de serviços mais colidem. As equipes de entrega querem lançar com frequência, porque mudanças pequenas e frequentes são mais fáceis de entender e reverter. Operações e governança querem evitar quedas e manter registros, porque mudanças passadas quebraram serviços. Ambos têm razão. A divergência costuma ser sobre como controlar o risco: pela aprovação antes da mudança ou pela qualidade da mudança e pela rapidez da recuperação.

A prática se chama habilitação de mudanças no ITIL 4. O novo nome é uma declaração de propósito. O objetivo é permitir que mudanças benéficas aconteçam, não impedir mudanças. Versões mais antigas do ITIL chamavam a prática de gestão de mudanças e davam a ela um papel forte em aprovações e agendas, que muitas equipes viveram como um portão.

Este tópico usa as melhores evidências disponíveis: a orientação do programa de pesquisa DORA sobre aprovação de mudanças e suas métricas de entrega de software, lidas nas páginas do próprio programa. As páginas do DORA relatam que a aprovação externa pesada está associada a pior desempenho de entrega. Também não dão tamanhos de efeito nem detalhes estatísticos e remetem a um relatório de 2019 para a pesquisa subjacente, então trate a orientação como forte mas não final e teste-a no seu contexto. O vocabulário do ITIL aqui vem de descrições amplamente publicadas que este guia não pôde conferir no texto do titular do framework (veja Tópico 2.2 — ITIL).

## Conceitos centrais

### O que a habilitação de mudanças faz

Uma **mudança** é a adição, modificação ou remoção de qualquer coisa que possa afetar um serviço. A habilitação de mudanças é a prática de garantir que as mudanças sejam avaliadas, autorizadas e agendadas de modo que o risco seja gerido e as mudanças benéficas avancem. A prática também guarda um registro do que mudou, o que é vital para a resposta a incidentes, porque muitos incidentes começam com uma mudança recente (veja Tópico 3.2 — Gestão de Incidentes).

### Tipos de mudança

O ITIL 4 é amplamente descrito como reconhecendo três tipos de mudança, cada um com um caminho diferente:

| Tipo | O que é | Caminho típico |
|---|---|---|
| **Mudança padrão (standard change)** | Uma mudança de baixo risco e bem compreendida que segue um procedimento documentado | Pré-autorizada; registrada, sem aprovação caso a caso |
| **Mudança normal (normal change)** | Uma mudança que precisa de avaliação e autorização | Avaliada quanto a risco e impacto, depois autorizada pela pessoa ou grupo apropriado |
| **Mudança emergencial (emergency change)** | Uma mudança que precisa ser feita com urgência, por exemplo para restabelecer o serviço | Autorização acelerada, com revisão mais completa depois |

Os nomes e as definições exatas devem ser conferidos nas publicações do titular. O princípio é estável: ajuste o nível de controle ao risco.

### Autoridade de mudanças

Cada tipo de mudança precisa de alguém com autoridade para aprová-la. Na prática mais antiga, era muitas vezes um comitê consultivo de mudanças (CAB). A página do DORA não abole o CAB; sugere um papel "estratégico", de coordenar entre equipes, apoiar a melhoria de processos e tomar decisões de compromisso de negócio, como tempo de chegada ao mercado contra risco. Para mudanças de rotina, diz, a aprovação é melhor implementada por revisão de pares durante o desenvolvimento, apoiada por automação.

### O que o DORA relata sobre a aprovação

A página do DORA sobre simplificar a aprovação de mudanças diz:

- A aprovação externa pesada, como um CAB ou a assinatura de um gerente sênior, está associada a pior desempenho de entrega de software.
- A página não relata evidência de que mais revisão externa formal reduza as taxas de falha de mudanças.
- Ela argumenta que a aprovação pesada retarda a entrega, levando a releases maiores e menos frequentes, com risco maior, e diz que seus dados sustentaram essa hipótese.

A página nomeia armadilhas: confiar num CAB central para pegar erros, aplicar o mesmo processo de aprovação a todas as mudanças, seja qual for o risco, não melhorar o processo contra métricas e acrescentar processo e aprovações em resposta à instabilidade da produção, o que, diz, tende a piorar as coisas. "Nenhuma evidência foi encontrada" significa que não se encontrou evidência de benefício; não prova que a revisão externa não tenha efeito. A página não dá critérios para o que conta como mudança de alto risco, nem orientação para regulações específicas, nem plano de transição para setores regulados.

### A alternativa: controle no pipeline

O DORA sugere atender à segregação de funções por meio de revisão de pares registrada na plataforma de desenvolvimento e usar testes contínuos, integração contínua e monitoramento para detectar, prevenir e corrigir cedo as mudanças ruins. Sugere também tratar a plataforma como produto que dá aos desenvolvedores feedback rápido sobre segurança, desempenho, estabilidade e defeitos, marcar mudanças de alto risco para escrutínio extra e tornar o processo normal de mudanças rápido o bastante para tratar emergências. O controle está nas evidências que o pipeline produz: quem revisou, que testes passaram, o que foi implantado e como pode ser desfeito.

### Medindo a mudança

A página do DORA sobre as métricas de desempenho de entrega de software lista cinco medidas:

| Medida | O que é | Grupo |
|---|---|---|
| Lead time de mudanças (change lead time) | Tempo desde uma mudança ser commitada no controle de versões até a implantação em produção | Vazão |
| Frequência de implantação | Com que frequência as implantações ocorrem | Vazão |
| Tempo de recuperação de implantação com falha | Quanto tempo leva para se recuperar de uma implantação que falha e exige intervenção imediata | Vazão |
| Taxa de falha de mudanças | A parcela de implantações que exigem intervenção imediata, como um rollback ou hotfix | Instabilidade |
| Taxa de retrabalho de implantação | A parcela de implantações não planejadas que resultam de um incidente de produção | Instabilidade |

A página diz que rapidez e estabilidade não são compromissos opostos: as medidas são correlacionadas na maioria das equipes, e os melhores desempenhos vão bem nas cinco. Adverte contra definir as medidas como metas (lei de Goodhart), contra se apoiar numa só métrica, contra comparar aplicações muito diferentes e contra competir com outras equipes. Sugere que as equipes melhorem em relação ao próprio desempenho passado. A página não dá limiares de referência nem fórmulas, então defina cada medida para o seu contexto antes de usá-la (veja Tópico 5.6 — Métricas e Medição).

### Registros e a visão de configuração

Um registro de mudança deve dizer o que mudou, por quê, quem aprovou e quando foi feito, e idealmente ligar-se aos serviços afetados. As ferramentas de controle de versões, de build e de implantação podem produzir boa parte disso automaticamente. Ligar as mudanças à configuração dos serviços apoia a análise de impacto e a resposta a incidentes (veja Tópico 4.4 — Gestão de Configuração).

### Mudança e release

A habilitação de mudanças decide se uma mudança pode prosseguir. A gestão de releases e implantações a leva à produção (veja Tópico 3.5 — Gestão de Releases e Implantações). Na entrega contínua, as duas se fundem na prática, com as aprovações embutidas no pipeline.

## Boas práticas

1. **Classifique as mudanças por risco.** Defina uma lista curta de tipos de mudança, com critérios e exemplos. Ajuste o caminho ao risco, de modo que as mudanças de rotina sejam rápidas e as arriscadas recebam atenção.
2. **Pré-autorize mudanças de baixo risco.** Para mudanças bem compreendidas, testadas e reversíveis, acorde um procedimento padrão e deixe-as prosseguir sem aprovação caso a caso. Registre-as automaticamente.
3. **Faça da revisão por pares a aprovação padrão.** Exija que uma segunda pessoa revise as mudanças antes da mescla e registre a revisão na plataforma de desenvolvimento. Isso atende à segregação de funções na maioria das mudanças, como descreve a página do DORA.
4. **Automatize as verificações.** Rode testes, varreduras de segurança e verificações de política em toda mudança e faça dos resultados parte do registro. Uma aprovação baseada em evidências é mais forte que uma baseada em formulário.
5. **Mantenha as mudanças pequenas.** Mudanças pequenas são mais fáceis de revisar, testar e reverter. Se uma mudança parece arriscada, pergunte se pode ser dividida.
6. **Torne o rollback fácil e ensaiado.** Para cada tipo de mudança, saiba como desfazê-la e pratique. A capacidade de se recuperar depressa reduz a necessidade de prever toda falha.
7. **Marque as mudanças de alto risco.** Defina sinais, como mudanças na lógica de pagamento ou na infraestrutura compartilhada, que disparam revisão extra. Aplique o caminho mais pesado apenas a elas.
8. **Dê à autoridade de mudanças um papel estratégico.** Use qualquer comitê central para coordenar entre equipes, resolver conflitos e tomar decisões de compromisso de negócio. Não o use como ponto de controle de toda mudança.
9. **Trate emergências pelo caminho normal.** Torne o processo regular rápido e confiável o bastante para que as mudanças emergenciais o sigam, com revisão depois. Rotas de emergência usadas com frequência sinalizam que o caminho normal é lento demais.
10. **Não acrescente aprovações após um incidente por padrão.** A página do DORA diz que acrescentar processo em resposta à instabilidade tende a piorar as coisas. Pergunte primeiro se a correção é melhores testes, mudanças menores ou recuperação mais rápida.
11. **Meça o processo.** Acompanhe o lead time, o tempo de espera por aprovação, a parcela de mudanças que passam sem aprovação manual e a taxa de falha de mudanças. Use as medidas para melhorar, não para classificar equipes.
12. **Explique o processo.** A página do DORA observa que comunicar com clareza o processo existente e ajudar as equipes a navegá-lo está ligado a melhor desempenho mesmo antes de você mudá-lo. Publique um guia de uma página com exemplos.

## Perguntas para discutir com a equipe

**Que proporção das nossas mudanças é de baixo risco e bem compreendida, e como são aprovadas hoje?**

Tome um mês de mudanças e classifique-as. A maioria das equipes descobre que a grande maioria é de rotina. Pergunte quanto tempo as mudanças de rotina esperam por aprovação e o que o aprovador acrescenta. Quem facilita pode perguntar se alguém se lembra de uma mudança de rotina que a aprovação impediu de falhar. Use a resposta para identificar um primeiro candidato à pré-autorização.

**O que o nosso passo de aprovação de fato pega?**

Liste as últimas dez mudanças rejeitadas ou atrasadas na aprovação e por quê. Compare com os problemas que chegaram à produção apesar da aprovação. Se a aprovação pega pouco, pergunte o que pegaria as mesmas questões mais cedo, como testes ou revisão por pares. Lembre-se de que a página do DORA não relata evidência de que mais revisão externa formal reduza as taxas de falha de mudanças. Acorde uma mudança a experimentar.

**Como desfaríamos uma mudança ruim, e com que rapidez?**

Escolha uma mudança recente e descreva o rollback. Se for pouco claro, não testado ou manual, esse é o risco. Pergunte quanto tempo levaria e quem o faria. Acorde ensaiar um rollback neste mês. Uma equipe que se recupera em minutos pode aceitar mais mudança.

**Quais das nossas mudanças precisam de escrutínio extra, e como as reconheceríamos?**

Reúna exemplos de mudanças que causaram incidentes graves. Procure traços que compartilham: infraestrutura compartilhada, controles de segurança, migrações de dados. Rascunhe três sinais que marcariam uma mudança como de alto risco. Pergunte quem deve revisar as mudanças marcadas e com que rapidez.

**Quando acrescentamos um controle após um incidente, e ele ajudou?**

Peça exemplos. Liste o que foi acrescentado, os problemas que tratou e se o problema voltou. A página do DORA nomeia como armadilha acrescentar aprovações em resposta à instabilidade. Discuta se uma resposta diferente, como melhores testes ou mudanças menores, teria funcionado. Registre uma lição.

**Que evidência um auditor aceitaria do nosso pipeline no lugar de uma assinatura?**

Peça a um auditor ou colega de conformidade que participe. Liste as evidências que o pipeline já produz: revisões, resultados de testes, registros de implantação. Pergunte o que falta. Muitos auditores aceitam revisão por pares registrada e evidências automatizadas quando confiáveis. Acorde uma breve descrição do controle e um período de teste.

## Na prática: um exemplo de ITIL ágil

O departamento de TI de um hospital regional dá suporte a um sistema de agendamento clínico que é atualizado por uma equipe interna de sete pessoas. Toda mudança, de uma correção de erro de digitação a uma migração de banco de dados, vai a um comitê consultivo de mudanças semanal. Correções pequenas esperam até oito dias. Os clínicos reclamam, e os desenvolvedores começaram a juntar correções em releases maiores para evitar a fila, o que torna cada release mais arriscado.

O chefe de TI e o presidente do comitê revisam um ano de mudanças. A maioria era pequena, duas tinham causado incidentes e nenhuma das duas fora pega pelo comitê. Desenham uma abordagem de três faixas. As mudanças padrão, como mudanças de texto e de configuração dentro de limites acordados, com testes automatizados aprovados e rollback testado, são pré-autorizadas e registradas automaticamente. As mudanças normais precisam de uma revisão de pares registrada na plataforma de desenvolvimento e de uma conferência contra uma lista curta de sinais de alto risco, como mudanças no tratamento de dados de pacientes. As mudanças marcadas como de alto risco vão ao comitê, que se reúne duas vezes por semana. As mudanças emergenciais seguem o caminho normal com uma revisão pós-implementação.

Depois de quatro meses, as mudanças padrão entram no ar em um dia e o comitê vê cerca de um quinto do volume que via. A taxa de falha de mudanças não sobe. Problemas permanecem. Dois desenvolvedores aplicam os sinais de alto risco de modo inconsistente e uma mudança marcada chegou tarde ao comitê, e a auditoria interna pede evidências de que as revisões de pares não são carimbos. A equipe escreve exemplos dos sinais, acrescenta uma revisão por amostragem das revisões de pares feita por um engenheiro sênior e acorda com a auditoria rever as evidências na próxima reunião trimestral.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega carregam a maior parte do controle: revisão, testes, mudanças pequenas e rollback. Embuta-os no pipeline e torne visíveis as evidências. Mantenha as mudanças pequenas e avise a operação do que vem por aí. Use o processo de mudanças como lugar para compartilhar informações de risco, e não só para obter permissão.

### Equipes de serviço e operações

As equipes de operações sabem que mudanças já prejudicaram serviços. Compartilhe esse conhecimento como sinais para revisão extra e ajude a construir verificações que as detectem cedo. Apoie caminhos mais leves para mudanças de baixo risco e mantenha os registros que aceleram a resposta a incidentes.

### Liderança e governança

Os líderes decidem quanta aprovação a organização exige. A orientação do DORA sugere pedir evidências de controle e não assinaturas em toda mudança. Apoie a medição do lead time e da taxa de falha de mudanças e evite acrescentar processo após incidentes sem examinar as causas. Acorde com a auditoria que evidências são aceitáveis.

### Clientes e usuários

Clientes e usuários se beneficiam de melhorias pequenas e frequentes e de menos grandes interrupções. Espere ser avisado das mudanças que o afetam, em linguagem simples e com antecedência. Se você tem necessidades especiais, como períodos de congelamento, diga ao provedor cedo para que possam ser planejados.

## Modos de falha comuns

- **Um caminho para toda mudança.** As mudanças de rotina esperam atrás das arriscadas. Em vez disso, classifique por risco e dê a cada classe seu próprio caminho.
- **A aprovação como único controle.** Uma assinatura substitui a qualidade. Em vez disso, embuta testes, revisão e rollback no pipeline.
- **Um comitê que revisa o que não consegue avaliar.** Os membros aprovam mudanças que não entendem. Em vez disso, envie as mudanças a quem tem o conhecimento e use o comitê para coordenação.
- **Juntar para evitar a fila.** As equipes combinam mudanças, tornando cada release mais arriscado. Em vez disso, torne a fila curta o bastante para que as mudanças pequenas sejam o caminho fácil.
- **Acrescentar controles após todo incidente.** O processo cresce e a rapidez cai. Em vez disso, procure a causa e corrija com testes, mudanças menores ou recuperação mais rápida.
- **Revisão de pares de carimbo.** As revisões são formais, mas superficiais. Em vez disso, faça amostragem das revisões, compartilhe exemplos de boas revisões e mantenha as mudanças pequenas o bastante para serem revisadas.
- **Sem rollback.** As mudanças não podem ser desfeitas. Em vez disso, exija e ensaie um rollback para cada tipo de mudança.
- **Manipular as métricas.** As equipes dividem mudanças ou escondem falhas para parecer bem. Em vez disso, use várias medidas, revise-as em conjunto e concentre-se na melhoria ao longo do tempo.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Classificação e caminhos | Todas as mudanças seguem um caminho ou nenhum | Algumas equipes têm um caminho rápido para mudanças simples | Tipos de mudança com critérios e caminhos distintos são padrão | A parcela de mudanças por caminho e os tempos de espera são medidos e ajustados | Os caminhos são ajustados entre equipes com base em evidências compartilhadas |
| Aprovação e evidências | A aprovação é por assinatura ou não registrada | Algumas mudanças têm revisão de pares | Revisão de pares e verificações automatizadas são registradas para a maioria das mudanças | A qualidade das revisões e as evidências são amostradas e melhoradas | As evidências fluem automaticamente para a auditoria e os parceiros |
| Recuperação | O rollback é ad hoc | Algumas mudanças têm passos de rollback | O rollback é definido e ensaiado para cada tipo de mudança | O tempo de recuperação é medido e reduzido | As práticas de recuperação são compartilhadas e testadas entre equipes e fornecedores |
| Medição e melhoria | Poucas medidas | Algumas equipes acompanham o lead time | Lead time, frequência, taxa de falha e tempo de recuperação são acompanhados por serviço | As medidas impulsionam melhorias planejadas e não são usadas como metas | As equipes aprendem com as medidas umas das outras e melhoram em toda a organização |

## Lista de verificação

- [ ] Definimos tipos de mudança com critérios e exemplos.
- [ ] As mudanças de baixo risco e bem compreendidas são pré-autorizadas e registradas automaticamente.
- [ ] A revisão de pares é registrada na plataforma de desenvolvimento para as mudanças normais.
- [ ] Testes e verificações automatizados rodam em toda mudança.
- [ ] Cada tipo de mudança tem um rollback que foi ensaiado.
- [ ] Temos sinais que marcam mudanças de alto risco para escrutínio extra.
- [ ] Qualquer comitê central tem um papel claro em coordenação e compromissos.
- [ ] Acompanhamos lead time de mudanças, frequência de implantação, tempo de recuperação de implantação com falha e taxa de falha de mudanças para cada serviço.
- [ ] Nossos auditores disseram que evidências aceitam no lugar de assinaturas.
- [ ] Temos um guia de uma página do processo de mudanças com exemplos.

## Prompts de IA

**Finalidade: classificar as mudanças do mês passado por risco e caminho de aprovação.**

```text
Below is a list of the changes we made last month: [paste one line per change with a short description, who reviewed it, how long it waited for approval, and whether it caused an incident; remove personal data].

Help me sort them into three groups: routine and low risk, needs normal assessment, and needs extra scrutiny. For each group, say what features of the changes in my list led you to the grouping, using only the text. Calculate the share in each group and the average wait for approval from my numbers only. Suggest which routine changes might be pre-authorized and what safeguards I would want first. Do not guess at risks beyond what I wrote. List what you are unsure of.
```

**Finalidade: escrever um procedimento de mudança padrão.**

```text
Help me write a procedure for a standard (pre-authorized) change: [name the change, for example "update a configuration value within agreed limits"].

How it is done today, step by step: [paste].
Checks that exist: [tests, scans, reviews].
How to undo it: [describe, or write "unknown"].
Who owns the procedure: [role].

Write a one-page procedure with: when it applies, the criteria that make a change standard, the steps, the checks that must pass, how it is recorded, how to undo it, and when to treat it as a normal change instead. Mark every statement you added as an assumption. Do not claim any rule requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: preparar-se para discutir com um auditor as evidências que o nosso pipeline produz.**

```text
An auditor asks how we authorize changes. Our pipeline does the following: [describe code review, tests, scans, deployment record, who can approve, and where records are kept].

The auditor's concern in their words: [paste, or write "unknown"].
Rules we know apply, with source text if you have it: [paste, or write "none known"].

Make a table of what evidence each step produces, where it is stored, who can alter it, and what gaps the auditor may notice. Suggest three lightweight ways to strengthen the weakest points. Do not state that any standard requires something unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Finalidade: desenhar um teste de aprovação mais leve.**

```text
Design a three-month trial of lighter approval for [service].

Current process: [describe].
Change volume and types last quarter: [paste counts from your records].
Measures we already have: [list, for example lead time and change fail rate].
Concerns from audit or operations: [list].

Propose: which change types to include, safeguards, what to measure and how often (without inventing targets), what would make us stop or pause the trial, and how to report results. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [change-request](../../../../skills/change-request/SKILL.md): use para redigir registros de mudança que levem o que a operação e os auditores precisam.
- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md): use quando uma mudança for organizacional e precisar de planejamento para pessoas além de sistemas.
- [release-notes](../../../../skills/release-notes/SKILL.md): use para dizer aos usuários e ao service desk o que uma mudança faz.
- [two-way-door-decisions](../../../../skills/two-way-door-decisions/SKILL.md): use para distinguir decisões reversíveis, que podem ser tomadas depressa, das irreversíveis, que exigem mais cuidado.
- [risk-register](../../../../skills/risk-register/SKILL.md): use para registrar e revisar os riscos que a mudança introduz e como são controlados.

## Fontes principais

- **Streamlining change approval** (DORA, dora.dev): a orientação do programa de pesquisa sobre revisão de pares, automação e o papel de um comitê de mudanças.
- **DORA's software delivery performance metrics** (dora.dev): definições e advertências para lead time de mudanças, frequência de implantação, tempo de recuperação, taxa de falha de mudanças e taxa de retrabalho.
- **ITIL** (Wikipedia): contexto sobre as versões do ITIL e a passagem ao ITIL 4.
- **Continuous delivery** (Wikipedia): contexto sobre as práticas que tornam seguras as mudanças pequenas e frequentes.

## Referências

1. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
2. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Separation of duties — Wikipedia — https://en.wikipedia.org/wiki/Separation_of_duties
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
