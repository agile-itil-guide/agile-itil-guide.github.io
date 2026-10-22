# Engenharia de Confiabilidade de Sites

**A engenharia de confiabilidade de sites trata as operações como um problema de engenharia, usando objetivos de nível de serviço, orçamentos de erro e um teto para o trabalho manual repetitivo para manter os serviços confiáveis sem deixar de mudar depressa.**

## Por que isso importa

Muitas práticas de gestão de serviços foram desenhadas para um mundo em que o pessoal de operações rodava software escrito por outros e o custo de operar crescia com o tamanho do serviço. A engenharia de confiabilidade de sites (SRE) é a resposta de uma organização ao que acontece quando esse modelo chega a uma escala muito grande: pedir a engenheiros de software que desenhem e conduzam a função de operações e fazer o sistema executar o trabalho que as pessoas fariam à mão.

Para os leitores deste guia, a SRE é útil por três razões. Torna explícito o compromisso entre rapidez e confiabilidade, com números que equipes de produto e de operações conseguem ler. Dá uma ideia firme de quanto trabalho manual é demais. E mostra como muitas práticas do ITIL, como gestão de incidentes, problemas, mudanças e capacidade, podem ser feitas em termos de engenharia. A SRE não é o único modo de fazê-las e vem das circunstâncias de uma empresa de internet muito grande, então o que se transfere depende da sua situação.

Este tópico se baseia principalmente em três capítulos do livro *Site Reliability Engineering* do Google, complementados pelo artigo da Wikipédia sobre SRE. O livro descreve a prática numa organização e defende sua abordagem; o artigo da Wikipédia dá um retrato mais amplo, porém mais magro, e não nomeia críticas. Leia os dois como fontes de ideias a testar, não como padrão.

## Conceitos centrais

### O que é a SRE

A introdução do livro define a SRE como "o que acontece quando você pede a um engenheiro de software que desenhe uma equipe de operações". O [artigo da Wikipédia sobre engenharia de confiabilidade de sites](https://en.wikipedia.org/wiki/Site_reliability_engineering) a descreve como uma disciplina dentro da engenharia de software e do suporte à infraestrutura de TI que monitora e melhora a disponibilidade e o desempenho de software implantado e de grandes serviços, com foco em automação e infraestrutura como código. O artigo chama a SRE de implementação específica do DevOps, mais restrita no escopo porque se concentra em construir sistemas confiáveis (veja Tópico 5.2 — DevOps). O livro descreve o DevOps como um conjunto mais amplo de princípios que a SRE implementa de um modo específico.

Segundo o artigo, a prática de SRE do Google começou em 2003, quando Benjamin Treynor Sloss entrou e formou uma equipe com sete engenheiros de produção; em 2016 a equipe tinha mais de 1.000 SREs, e outras grandes empresas de internet haviam adotado a prática. Uma pesquisa de 2020 com 572 profissionais achou equipes de SRE em 64% das organizações com 10.000 ou mais funcionários, em 44% das de 101 a 1.000 e em 32% das de 100 ou menos. A série de conferências SREcon ocorre anualmente desde 2014.

### O problema que a SRE trata

A introdução descreve o modelo tradicional: desenvolvedores e administradores de sistemas divididos em equipes separadas. Nomeia dois tipos de custo:

- **Custos diretos.** A gestão manual de mudanças e o tratamento de eventos ficam caros, porque a equipe de operações cresce com a carga.
- **Custos indiretos.** As equipes têm vocabulários, incentivos e premissas diferentes sobre risco, o que leva a conflito em torno dos releases. As operações acrescentam portões de lançamento, e os desenvolvedores respondem com soluções de contorno.

A SRE visa evitar essa divisão tratando as operações como um problema de engenharia. O capítulo diz que o tamanho da equipe cresce mais devagar que o sistema, porque a engenharia impede que a carga operacional cresça no mesmo passo que o tráfego.

### Os princípios

A introdução lista as áreas pelas quais as equipes de SRE são responsáveis: disponibilidade, latência, desempenho, eficiência, gestão de mudanças, monitoramento, resposta a emergências e planejamento de capacidade. O artigo da Wikipédia lista práticas centrais que incluem automatizar o trabalho repetitivo, definir metas de confiabilidade por meio de indicadores de nível de serviço (SLIs), objetivos (SLOs) e orçamentos de erro, desenhar sistemas para reduzir o risco, observabilidade e monitoramento, gestão do toil, um processo testado de gestão de incidentes e planejamento de capacidade, gestão de releases e engenharia do caos.

### Objetivos de nível de serviço e orçamentos de erro

A SRE liga a confiabilidade a metas explícitas (veja Tópico 3.7 — Gestão de Níveis de Serviço para o tratamento completo). Em resumo:

- Escolha poucos indicadores que reflitam aquilo com que os usuários se importam.
- Defina um objetivo que não exija perfeição.
- Admita um **orçamento de erro**: o espaço entre o perfeito e o objetivo.
- Use o orçamento para decidir o ritmo dos releases: enquanto resta orçamento, os releases continuam; quando ele se esgota, os releases desaceleram e o esforço passa para a confiabilidade.

O capítulo "Embracing Risk" explica por quê: as equipes de produto são medidas pela velocidade e as de confiabilidade pela confiabilidade, o que cria tensão, e o orçamento dá às duas uma medida comum e objetiva. O mesmo capítulo diz que os custos de confiabilidade sobem acentuadamente e que a meta é casar o risco de um serviço com o que o negócio aceita (veja Tópico 3.11 — Disponibilidade, Capacidade e Desempenho).

### Toil

O capítulo "Eliminating Toil" define o **toil** como o trabalho operacional ligado a executar um serviço de produção e diz que não é simplesmente trabalho de que alguém não gosta e é distinto de sobrecargas como reuniões. O toil tende a ser:

| Característica | Significado |
|---|---|
| **Manual** | Exige esforço humano direto, mesmo que um script execute os passos |
| **Repetitivo** | Feito uma vez após outra, não um problema novo |
| **Automatizável** | Uma máquina poderia fazê-lo, ou a necessidade poderia ser eliminada no design |
| **Tático** | Guiado por interrupções e reativo, como responder a chamadas |
| **Sem valor duradouro** | O serviço está no mesmo estado depois |
| **Linear com o crescimento** | O esforço escala com o tamanho do serviço, o tráfego ou os usuários |

O livro diz que os SREs visam manter o toil abaixo de 50% do seu tempo, com ao menos metade gasta em trabalho de projetos de engenharia, e a introdução coloca um teto de 50% no trabalho agregado de "ops", devolvendo o excesso às equipes de desenvolvimento. Diz que toil demais causa estagnação na carreira, moral baixo e esgotamento, retarda o trabalho de funcionalidades e gera evasão; "o toil se torna tóxico quando experimentado em grandes quantidades", embora pequenas quantidades possam ser calmantes e alguma seja inevitável. O capítulo dá um modo de calcular o piso que o plantão impõe (por exemplo, um limite inferior de 33% para uma escala de seis pessoas sob as suposições do seu exemplo) e relata que as interrupções foram a maior fonte de toil, seguidas da resposta ao plantão e depois dos releases. Define o trabalho de engenharia como novo, exigindo julgamento, produzindo melhoria permanente e seguindo uma estratégia.

### Resposta a emergências e monitoramento

A introdução diz que o monitoramento não deve exigir que um humano interprete alertas: o software interpreta os dados e os humanos só são avisados quando é preciso agir (veja Tópico 3.10 — Monitoramento e Gestão de Eventos). Diz que os SREs de plantão devem receber no máximo cerca de dois eventos por turno. Afirma que os playbooks produzem uma melhoria de aproximadamente três vezes no tempo médio de reparo em comparação com improvisar. O tratamento de incidentes segue uma abordagem de comando de incidentes, e os postmortems são sem atribuição de culpa e escritos para todos os incidentes significativos (veja Tópico 3.2 — Gestão de Incidentes).

### Gestão de mudanças

A introdução afirma que cerca de 70% das quedas vêm de mudanças num sistema em operação e recomenda rollouts progressivos, detecção rápida de problemas e rollbacks seguros. É afirmação do próprio livro, a partir da experiência do Google, e pode não valer para toda organização. Sua mensagem é coerente com a orientação do DORA sobre mudanças (veja Tópico 3.4 — Habilitação de Mudanças e Tópico 3.5 — Gestão de Releases e Implantações).

### SRE e ITIL

A SRE pode ser lida como um modo de engenharia de executar várias práticas do ITIL:

| Prática do ITIL | Abordagem da SRE |
|---|---|
| Gestão de incidentes | Papéis de comando de incidentes, um registro vivo do incidente, postmortems sem atribuição de culpa |
| Gestão de problemas | Ações de postmortem no backlog, remoção do toil na causa |
| Habilitação de mudanças | Rollouts progressivos, detecção rápida, rollback seguro, verificações automatizadas |
| Gestão de níveis de serviço | SLIs, SLOs, orçamentos de erro |
| Monitoramento e gestão de eventos | Alertas baseados em sintomas, os quatro sinais dourados |
| Gestão de capacidade | Planejamento de capacidade como tarefa de engenharia, com testes de carga |
| Melhoria contínua | Um teto para o toil, projetos de engenharia como trabalho principal |

O mapeamento é deste guia, não das fontes. Nem o livro nem o artigo da Wikipédia alegam implementar o ITIL.

### Modelos de implantação

O artigo da Wikipédia descreve seis modelos organizacionais para a SRE: "Kitchen Sink" (pia de cozinha), infraestrutura, ferramentas, produto ou aplicação, embutido e consultoria. Diz que um híbrido é comum em grandes organizações, mas marca essa afirmação como carente de citação. Qual modelo serve a você depende do seu tamanho e do número de serviços.

### Limites e críticas

O artigo da Wikipédia não declara críticas, custos nem modos de falha, e o livro descreve o sucesso de uma organização. Os limites práticos são bem conhecidos pela experiência e oferecidos aqui como tal: a SRE precisa de engenheiros que saibam escrever software e estejam dispostos a fazer operações; o teto de 50% precisa do respaldo da gestão; os orçamentos de erro só funcionam se as equipes de produto os respeitam; e a abordagem é difícil de copiar sem a escala e as ferramentas que a produziram. As organizações menores podem adotar as ideias, como objetivos, orçamentos, medição do toil e revisão sem atribuição de culpa, sem criar uma equipe.

## Boas práticas

1. **Escolha um serviço e defina um objetivo.** Escolha de dois a quatro indicadores que reflitam a experiência do usuário, defina um primeiro objetivo frouxo e meça por alguns meses antes de apertá-lo.
2. **Acorde uma política de orçamento de erro.** Escreva o que acontece quando o orçamento está quase gasto e quando se esgota e quem pode sobrepor-se. Faça disso uma regra comum de produto e operações.
3. **Meça o toil.** Peça às pessoas que registrem quanto do seu tempo vai para o trabalho operacional manual e repetitivo. Use as seis características para classificá-lo. Olhe as principais fontes.
4. **Ponha um teto no trabalho manual.** Defina um teto para o toil, como metade do tempo de uma pessoa, e revise-o. Quando o teto for excedido, devolva o trabalho em excesso às equipes que são donas das causas ou reduza o escopo.
5. **Automatize primeiro o maior toil.** Escolha o item que custa mais tempo e é mais repetível, automatize-o com testes e meça a economia. Prefira eliminar a necessidade no design a automatizá-la.
6. **Proteja o tempo de engenharia.** Planeje o trabalho de projetos para os engenheiros de operações como trabalho real, com responsáveis e datas. Sem isso, o toil se expande.
7. **Limite as interrupções.** Vise poucos eventos por turno de plantão, ajuste os alertas para que as chamadas sejam acionáveis e corrija as causas recorrentes. A orientação do livro é de cerca de dois eventos por turno, no máximo.
8. **Escreva playbooks.** Para as falhas comuns, escreva passos de resposta curtos e testados. O livro afirma que melhoram o tempo de reparo em comparação com improvisar.
9. **Torne as mudanças progressivas e reversíveis.** Lance gradualmente, detecte problemas depressa e reverta com segurança. Como as mudanças são a causa mais comum de quedas na experiência do livro, invista aqui primeiro.
10. **Faça postmortems sem atribuição de culpa para incidentes significativos,** inclusive quase acidentes que não chamaram ninguém. Transforme as ações em itens de backlog.
11. **Comece pelas ideias, não pela equipe.** As organizações menores podem adotar objetivos, orçamentos, medidas de toil e postmortems com o pessoal existente antes de criar uma equipe dedicada.
12. **Escolha de propósito um modelo organizacional.** Se você criar uma função de SRE, decida se ela fornece ferramentas, se integra às equipes de produto ou presta consultoria e revise a escolha à medida que crescer.

## Perguntas para discutir com a equipe

**Em que serviço poremos primeiro um objetivo, e qual seria o objetivo?**

Peça a cada pessoa que nomeie o serviço e o indicador que melhor reflete a experiência do usuário. Compare. As diferenças mostram prioridades pouco claras. Quem facilita pode perguntar o que acontece hoje quando o serviço é mais lento ou menos disponível do que os usuários esperam. Acorde um serviço para começar e o que medir.

**O que faríamos se gastássemos todo o nosso orçamento de erro neste mês?**

Peça à equipe e a um representante de produto que descrevam as ações, quem decide e o que é protegido. Muitas equipes nunca concordaram. Discuta se uma pausa nos releases arriscados seria aceita. Redija uma política de uma página.

**Quanto da nossa semana é toil, e quais são as três principais fontes?**

Peça às pessoas que estimem e depois mantenham um registro por duas semanas. Compare as estimativas com os registros. O objetivo é ver a forma do trabalho, não culpar. Escolha a maior fonte e pergunte se pode ser removida pelo design.

**Que tarefa manual recorrente um script ou uma mudança de design poderia remover?**

Liste as tarefas que as pessoas temem. Para cada uma, estime a frequência e o tempo. Os melhores candidatos são frequentes, estáveis e de baixo risco. Pergunte o que tornaria segura a automação, como limites e logs. Escolha uma para automatizar.

**Quantos eventos cada turno de plantão recebe, e quantos exigem ação?**

Conte para o último trimestre. Se o número for alto, discuta de onde vem. A introdução sugere visar cerca de dois eventos por turno. Escolha uma fonte de alertas para corrigir.

**O que perderíamos e ganharíamos se criássemos uma equipe dedicada de confiabilidade?**

Peça opiniões honestas. Os ganhos podem ser foco e habilidades; as perdas podem ser um novo silo ou o despejo de trabalho operacional. Discuta alternativas como engenheiros embutidos ou um rodízio. Decida o que tentar em pequena escala.

## Na prática: um exemplo de ITIL ágil

Uma distribuidora regional de eletricidade opera um aplicativo de relato de quedas e um sistema de despacho de equipes de campo. Uma equipe combinada de dezoito pessoas constrói e opera ambos. O pessoal de operações da equipe gasta a maior parte do tempo em trabalho manual: reiniciar jobs travados, ajustar alimentações de dados e responder a chamadas. O chefe do grupo observa que lhes sobra pouco tempo para melhoria, e dois deles pediram para ir para outras equipes.

O líder da equipe propõe uma abordagem inspirada na SRE. Para o aplicativo de relato de quedas, a equipe define dois indicadores: a parcela de envios de relatos que têm êxito e o tempo para mostrar uma confirmação. Acorda com o gerente de atendimento ao cliente um objetivo frouxo e um orçamento de erro mensal e escreve uma política de uma página: quando mais de três quartos do orçamento estiverem gastos, os releases arriscados esperam. A equipe pede aos engenheiros que registrem o toil durante um mês. O registro mostra que um terço do tempo deles vai para reiniciar um job de importação de dados que falha e para ajustes manuais depois de tempestades, quando a demanda dispara. Definem um teto de metade do tempo para o toil, decidem corrigir primeiro a causa do job de importação e automatizar os ajustes das tempestades com um script que tem limites e um registro. As chamadas são ajustadas para que só sintomas visíveis ao usuário alertem o engenheiro de plantão.

Quatro meses depois, o toil cai para cerca de um terço do tempo da equipe, o job de importação não falha mais e a política de orçamento de erro foi usada uma vez, num mês com uma queda de fornecedor, para adiar um release de funcionalidade. Dificuldades permanecem. O sistema de despacho ainda não tem objetivos, e o gerente de atendimento ao cliente foi tentado duas vezes a sobrepor-se à política do orçamento por funcionalidades urgentes. O líder da equipe e o gerente acordam revisar as exceções mensalmente e definir objetivos para o despacho em seguida. Aprendem também que o "teto" é um guia, não uma promessa: depois de uma grande tempestade, o toil subiu bem além da metade por duas semanas, e eles têm de decidir o que cortar.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega participam da definição dos objetivos e respeitam o orçamento. Embuta a operabilidade nas funcionalidades, aceite que o toil volta à equipe que o causa e ajude a automatizar. Trate um orçamento esgotado como informação sobre o serviço, não como punição.

### Equipes de serviço e operações

As equipes de operações podem fazer o trabalho de SRE ou adotar suas ideias. Meça o toil, proteja o tempo para engenharia e devolva o trabalho repetido à sua origem. Use os objetivos para explicar por que parte do trabalho deve ser recusada.

### Liderança e governança

Os líderes precisam respaldar o teto do toil e a regra do orçamento de erro; sem respaldo, eles fracassam. Peça objetivos e a situação do orçamento, não uma contagem de incidentes. Dê tempo para o trabalho de engenharia e esteja pronto a dizer não a funcionalidades quando o orçamento estiver gasto.

### Clientes e usuários

Clientes e usuários ganham com níveis de serviço claros e com recuperação mais rápida quando as coisas falham. Diga à equipe o que mais importa, para que os objetivos reflitam a sua experiência. Espere conversas honestas sobre os compromissos entre novas funcionalidades e confiabilidade.

## Modos de falha comuns

- **Copiar o título.** As operações são renomeadas e nada muda. Em vez disso, adote primeiro objetivos, orçamentos e medidas de toil.
- **Um orçamento de erro que ninguém respeita.** As funcionalidades o sobrepõem sempre. Em vez disso, acorde a regra com os product owners e revise as exceções.
- **Nenhum tempo para engenharia.** O toil preenche a semana. Em vez disso, ponha um teto nele e proteja o tempo de projetos.
- **Automatizar a coisa errada.** Uma tarefa rara é automatizada enquanto a frequente permanece. Em vez disso, ordene por tempo e frequência.
- **Metas de perfeição.** Os objetivos exigem 100%. Em vez disso, defina metas frouxas a partir das necessidades dos usuários e aperte com dados.
- **Uma equipe de confiabilidade como depósito.** O desenvolvimento manda a ela todo o trabalho operacional. Em vez disso, devolva o excesso de trabalho à origem.
- **Copiar a escala do Google.** Práticas que exigem uma grande organização são adotadas por uma pequena. Em vez disso, tome as ideias que servem, como objetivos e postmortems.
- **Ignorar as pessoas.** A carga de plantão esgota as pessoas. Em vez disso, limite os eventos por turno e divida a escala.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Objetivos e orçamentos | As metas de confiabilidade são informais | Alguns serviços têm objetivos | Os serviços-chave têm objetivos e uma política acordada de orçamento de erro | Os orçamentos orientam os releases e as exceções à política são revisadas | Objetivos e orçamentos são alinhados entre serviços dependentes |
| Toil e automação | O toil não é medido | Algumas equipes estimam o toil | O toil é medido e limitado; o trabalho de automação é planejado | Fontes e economias de toil são acompanhadas e reduzidas | A automação é compartilhada e o toil é reduzido entre equipes |
| Resposta a emergências | A resposta é improvisada | Existem alguns playbooks e uma escala | Papéis, playbooks e postmortems sem atribuição de culpa são padrão | A carga de eventos e os tempos de reparo são medidos e melhorados | A resposta é ensaiada e coordenada entre equipes e fornecedores |
| Mudança e capacidade | As mudanças são arriscadas e manuais | Alguns rollouts são em etapas | Rollout progressivo e planejamento de capacidade são rotina | A falha de mudanças e as previsões de capacidade são medidas | As práticas de mudança e capacidade são compartilhadas em toda a organização |

## Lista de verificação

- [ ] Ao menos um serviço tem indicadores e um objetivo frouxo, medidos ao longo do tempo.
- [ ] Uma política de orçamento de erro foi acordada com os product owners e escrita.
- [ ] O toil é medido com uma definição consistente, e as principais fontes são conhecidas.
- [ ] Existe um teto para o toil, que é revisado.
- [ ] O tempo para projetos de engenharia é planejado e protegido.
- [ ] A carga de plantão é medida, e as chamadas são acionáveis.
- [ ] Existem playbooks para as falhas mais comuns, e eles foram testados.
- [ ] Os rollouts são progressivos e os rollbacks são testados.
- [ ] Incidentes significativos e quase acidentes recebem postmortems sem atribuição de culpa, com ações que têm responsáveis.
- [ ] Escolhemos de propósito como o trabalho de confiabilidade é organizado.

## Prompts de IA

**Finalidade: classificar o seu trabalho como toil, engenharia ou sobrecarga.**

```text
Here is a list of what our operations engineers did in the last two weeks, with the time spent on each: [paste real data].

Classify each item as toil, engineering work, or overhead, using these definitions. Toil: manual, repetitive, automatable, tactical, without enduring value, and growing linearly with the service. Engineering work: novel, requires judgment, produces permanent improvement. Overhead: administrative work not tied to running a service. Give a one-sentence reason from my text for each. Compute the share of time in each class from my numbers only, and list the three largest toil items. Mark items you could not classify. Do not invent time figures. List what you are unsure of.
```

**Finalidade: redigir uma política de orçamento de erro.**

```text
Draft a one-page error budget policy for [service].

Objective and period: [for example, "99.9% of purchase requests succeed, per month"].
Release rhythm and who decides: [describe].
Customer and product concerns: [list].

Write sections: how the budget is calculated and shown, what happens at three stages of consumption (leave thresholds as [to be agreed]), who can override and how overrides are recorded, how the policy is reviewed, and what we do after an exhausted budget. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: escolher um item de toil para automatizar primeiro.**

```text
Here are our top toil items with how often each occurs, time per occurrence, risk if the automation fails, and whether the cause could be designed away: [paste].

Rank them by total time saved per month (computed from my numbers only). For the top three, say whether I should design the need away or automate it, and what safeguards the automation needs (tests, limits, logs). Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: escrever uma entrada de playbook.**

```text
Write a playbook entry for this recurring failure: [describe symptom and impact].

What I know about causes and fixes: [paste].
Who to escalate to: [role, or "unknown"].

Provide a short entry: how to confirm the failure, the first checks, the usual fix, how to confirm recovery, when to escalate, and what to record. Mark any step you inferred with [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): use para desenhar uma escala justa com limites de eventos por turno.
- [runbook](../../../../skills/runbook/SKILL.md): use para escrever os playbooks que aceleram o reparo.
- [postmortem](../../../../skills/postmortem/SKILL.md): use para conduzir revisões sem atribuição de culpa e acompanhar as ações.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): use para testar que os desenhos de confiabilidade funcionam, causando falhas com segurança.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): use para planejar a capacidade como tarefa de engenharia ligada à demanda.

## Fontes principais

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): a definição de SRE, o teto de 50%, os princípios e a divisão entre dev e ops que ela visa evitar.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): a definição de toil e as razões para pôr um teto nele.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): a economia da confiabilidade e o orçamento de erro.
- **Site reliability engineering** (Wikipedia): um resumo mais amplo da disciplina, dos modelos de implantação, da pesquisa de adoção e de leituras adicionais.

## Referências

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
