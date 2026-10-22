# Gestão do Conhecimento

**A gestão do conhecimento torna disponível a outros, quando precisam, o que as pessoas sabem, e a abordagem que funciona para equipes ágeis é capturar o conhecimento como subproduto do trabalho, mantê-lo curto e com responsável e combinar escrita com conversa.**

## Por que isso importa

Todo serviço depende de conhecimento: como funciona, o que já deu errado, como consertar e por que foi construído daquele jeito. Quando esse conhecimento vive só em poucas cabeças, o serviço é frágil. Um feriado, uma demissão ou uma noite ruim de plantão podem transformar um conserto de dez minutos numa queda de dez horas. A gestão do conhecimento é a prática de garantir que quem precisa saber consiga descobrir.

A tradição ágil se inclina pela conversa e pelo software funcionando em vez da documentação, e os autores do Manifesto Ágil foram criticados por isso (veja Tópico 1.1 — O Manifesto Ágil). Uma leitura justa é que a documentação precisa merecer seu lugar. A gestão do conhecimento dá um modo de decidir o que o merece: o conhecimento que é muito usado, é caro de redescobrir ou está com pouca gente. Para o resto, conversa e programação em par podem servir melhor.

O [artigo da Wikipédia sobre gestão do conhecimento](https://en.wikipedia.org/wiki/Knowledge_management) é amplo e descreve o campo como o processamento de conhecimento para atingir metas organizacionais, distinto da gestão de conteúdo ou de informação. Registra história, modelos, abordagens, facilitadores, barreiras e críticas, e nada diz de específico sobre serviços de TI. Este tópico usa as ideias gerais do artigo e as aplica a equipes de serviço, sinalizando onde está aplicando e não relatando.

## Conceitos centrais

### O que é a gestão do conhecimento

A Wikipédia descreve a gestão do conhecimento (GC) como abrangendo processos de consciência organizacional, aprendizagem, colaboração e inovação, usando e compartilhando conhecimento para apoiar as metas de uma organização. Observa que práticas como aprendizados, bibliotecas corporativas e mentoria antecedem muito o termo. A GC surgiu como disciplina no início da década de 1990, com acadêmicos como Ikujiro Nonaka, Hirotaka Takeuchi, Thomas H. Davenport e Baruch Lev ajudando a desenvolver o campo. O artigo diz que a ISO 9001:2015 acrescentou uma especificação para "conhecimento organizacional".

### Conhecimento tácito e explícito

O artigo distingue duas formas. O **conhecimento tácito** é internalizado e muitas vezes não é conscientemente sabido. O **conhecimento explícito** é mantido conscientemente e pode ser facilmente comunicado. O modelo SECI de Nonaka (socialização, externalização, combinação, internalização), que o artigo atribui ao livro de Nonaka e Takeuchi de 1995, descreve uma espiral entre os dois. O artigo observa também que pesquisadores posteriores chamaram a divisão de simplificação excessiva.

Para uma equipe de serviço a distinção é prática. Um engenheiro experiente muitas vezes sente que um alarme é provavelmente ruído ou que um release específico é arriscado, e não consegue escrever facilmente por quê. Parte desse senso pode ser transformada em runbooks e verificações; parte só pode ser compartilhada trabalhando juntos.

### Codificação e personalização

Seguindo Hansen e colegas (1999), o artigo distingue duas estratégias. A **codificação** armazena o conhecimento em repositórios para que outros possam reutilizá-lo. A **personalização** compartilha o conhecimento pelo contato direto entre pessoas. Cada uma serve a um conhecimento diferente:

| Estratégia | Serve a | Exemplos numa equipe de serviço |
|---|---|---|
| Codificação | Tarefas repetidas e bem compreendidas | Runbooks, registros de erros conhecidos, descrições de serviço, artigos de passo a passo |
| Personalização | Assuntos complexos, mutáveis ou que exigem julgamento | Plantão em par, acompanhamento (shadowing), comunidades de prática, discussões de design |

A maioria das equipes precisa das duas. Uma base de conhecimento de receitas não ensina julgamento, e a conversa sozinha não escala para o turno da noite.

### Comunidades de prática

O artigo lista as comunidades de prática entre as perspectivas sobre a GC. Numa organização de serviço, podem ser tão simples quanto uma reunião informal regular de pessoas que trabalham em problemas semelhantes entre equipes, como engenheiros de banco de dados ou analistas do desk. Espalham conhecimento e normas e dão às pessoas um lugar para perguntar.

### O que capturar

Nem tudo merece um registro. Candidatos úteis numa equipe de serviço incluem:

- **Como restaurar um serviço:** runbooks e passos de recuperação (veja Tópico 3.2 — Gestão de Incidentes).
- **Erros conhecidos e soluções de contorno:** sintoma, solução de contorno e responsável (veja Tópico 3.3 — Gestão de Problemas).
- **Descrições de serviço:** o que um serviço faz, quem é o responsável e do que depende (veja Tópico 3.8 — Gestão do Catálogo de Serviços).
- **Decisões e seus motivos:** por que um design foi escolhido, para que mudanças futuras não o desfaçam às cegas.
- **Lições de incidentes:** postmortems que outros possam ler.
- **Respostas a perguntas comuns dos usuários:** artigos curtos para o service desk e para o autosserviço.

### Facilitadores e barreiras

O artigo nomeia pessoas e cultura, processos e estrutura e tecnologia como componentes centrais. Observa que as motivações incluem inovação, ciclos de desenvolvimento mais curtos e aproveitamento de especialistas, e que as organizações usam incentivos como a submissão obrigatória de conteúdo, mas diz que não há consenso sobre se os incentivos funcionam. Lista barreiras como conhecimento que não se transfere, educação insuficiente e a perda de conhecimento quando trabalhadores experientes saem. Para as equipes de serviço, as barreiras que mais importam são a pressão de tempo, a responsabilidade pouco clara pelo conteúdo, ferramentas incômodas de usar e uma cultura que premia o heroísmo em vez do compartilhamento.

### Conhecimento no fluxo de trabalho

Um princípio prático, amplamente usado em service desks, é capturar o conhecimento como parte do trabalho e não como tarefa separada. Quando um analista resolve um problema novo, a solução vira um rascunho de artigo antes de o ticket ser encerrado. Quando um engenheiro corrige um incidente, os passos vão para o runbook. Isso transforma cada trabalho numa pequena contribuição. As fontes lidas para este guia não descrevem um método específico para isso, então trate o princípio como prática comum a testar e veja o que funciona com as suas ferramentas.

### Críticas e limites

O artigo registra críticas: que a relevância prática da pesquisa acadêmica em GC foi questionada, que a distinção entre tácito e explícito foi criticada, que a eficácia dos incentivos é contestada e que proteger o conhecimento traz riscos como superproteção e apropriação indevida. Não relata evidência medida da eficácia ou do retorno sobre o investimento da GC. Para uma equipe de serviço a lição é de ambição modesta: comece pelo conhecimento cuja falta machucou, meça se ele é usado e abandone o que não for.

### Conhecimento e aprendizagem organizacional

O artigo diz que a GC é semelhante à aprendizagem organizacional, mas dá mais ênfase ao conhecimento como ativo estratégico e ao compartilhamento de informação, e que a GC facilita a aprendizagem organizacional. Isso se liga à aprendizagem ágil (veja Tópico 1.10 — Aprendizagem Ágil) e à melhoria contínua (veja Tópico 3.15 — Melhoria Contínua).

## Boas práticas

1. **Comece pelo conhecimento cuja falta machucou.** Liste os últimos incidentes ou atrasos causados por conhecimento faltante. Comece por esses temas, e não por uma tentativa de documentar tudo.
2. **Capture o conhecimento no momento do trabalho.** Faça de escrever uma nota curta parte de encerrar um incidente, uma requisição ou uma mudança. Uma nota rápida escrita agora vale mais que um artigo polido planejado para depois.
3. **Mantenha os artigos curtos e estruturados.** Use uma forma consistente: sintoma, causa se conhecida, passos, quando escalar, responsável, data da última revisão. Quem está sob pressão lê títulos e passos numerados.
4. **Dê a cada artigo um responsável e uma data de revisão.** O conteúdo sem responsável apodrece. Mostre a data de revisão no artigo para que os leitores julguem a confiança.
5. **Apague e funda.** Aposente os artigos que ninguém usa e funda duplicatas. Uma base menor e atual é melhor que uma grande e desatualizada.
6. **Facilite achar.** Ponha o conhecimento onde as pessoas já trabalham, teste a busca com consultas reais e ligue os artigos a partir de tickets, do catálogo de serviços (o ITIL, em inglês, grafa "service catalogue") e de runbooks.
7. **Teste os runbooks usando-os.** Peça a quem usará um runbook que o siga num caso de teste. Corrija o que não estiver claro. Isso transforma um documento em conhecimento que funciona.
8. **Faça par e acompanhe para o tácito.** Faça as pessoas menos experientes trabalharem com as experientes em incidentes e mudanças reais. Planeje o pareamento, pois ele não acontecerá quando todos estiverem ocupados.
9. **Apoie as comunidades de prática.** Dê às pessoas tempo e um lugar para se encontrar entre equipes. Deixe os temas virem dos membros.
10. **Registre decisões e motivos.** Mantenha um breve registro das decisões importantes de design e de processo e de por que foram tomadas. Evita a redescoberta e ajuda os recém-chegados.
11. **Compartilhe as lições.** Publique postmortems e resumos de problemas amplamente, em linguagem simples, e pergunte a outras equipes o que se aplica a elas (veja Tópico 3.2 — Gestão de Incidentes).
12. **Fique atento ao risco de conhecimento.** Uma vez por trimestre, liste as habilidades e sistemas que dependem de uma só pessoa e planeje espalhá-los. Trate as saídas como um estímulo para revisar.

## Perguntas para discutir com a equipe

**O que não conseguiríamos fazer se uma pessoa específica estivesse fora por um mês?**

Peça à equipe que nomeie as pessoas cuja ausência doeria e por quê. Liste as tarefas que dependem delas. Costuma ser uma lista longa, e desconfortável para as pessoas nomeadas. Enquadre-a como um risco para o serviço, não um julgamento. Quem facilita pode perguntar qual tarefa é mais urgente compartilhar e como. Escolha uma para começar.

**O que escrevemos, e alguém lê?**

Peça os três últimos documentos que as pessoas usaram e os três últimos que escreveram. Compare. A distância mostra onde o esforço de documentação está mal aplicado. Pergunte como seria uma versão útil dos documentos não lidos, ou se devem ser apagados. Acorde aposentar ou consertar um.

**Quando consertamos algo novo, para onde vai o conhecimento?**

Rastreie o último problema novo: quem o corrigiu, quem sabe como e onde foi registrado. Se a resposta for "num ticket" ou "na minha cabeça", discuta como seria um caminho melhor. Muitas vezes um pequeno hábito, como um modelo no encerramento, faz diferença. Experimente um por um mês.

**Que conhecimento é melhor compartilhado trabalhando juntos, e não escrevendo?**

Pergunte onde o julgamento importa: ler um gráfico, decidir quando escalar, conhecer um cliente. Discuta como os recém-chegados aprendem isso hoje. Respostas típicas são sorte e tempo. Planeje um arranjo deliberado, como acompanhar o plantão. Acorde quem fará par com quem.

**Como sabemos se um artigo de conhecimento ainda é verdadeiro?**

Escolha um artigo e teste-o. Confira o responsável, a data de revisão e se os passos funcionam. Muitos reprovam no teste. Pergunte que ciclo de revisão é realista e quem pode aposentar artigos. O objetivo é um sinal visível de confiança em cada artigo.

**O que nos impede de compartilhar o que sabemos?**

Colete respostas honestas: falta de tempo, medo de parecer tolo, nenhum lugar óbvio, nenhum reconhecimento. O artigo da Wikipédia observa que a eficácia dos incentivos é contestada, então evite respostas fáceis. Pergunte qual obstáculo a equipe poderia mudar e qual exige a gestão. Comprometa-se com uma mudança visível.

## Na prática: um exemplo de ITIL ágil

A equipe de informação ao passageiro de uma ferrovia nacional, com quatorze pessoas, opera os sistemas por trás dos painéis das estações e do aplicativo de horários. O engenheiro mais experiente, que construiu o controlador dos painéis, anuncia sua aposentadoria em seis meses. Ninguém mais entende como o controlador lida com falhas, e a documentação é um documento de design de 200 páginas escrito dez anos atrás.

O líder da equipe lista o que o engenheiro sabe e os outros não. Obtém três grupos: como restaurar o controlador depois de uma falha (explícito e repetível), por que certos comportamentos estranhos existem (em parte escrito, em parte de memória) e como julgar quando uma falha é grave (tácito). Para o primeiro, a equipe escreve runbooks com o engenheiro e testa cada um pedindo a um colega que o siga numa unidade de teste. Para o segundo, uma dupla de engenheiros o entrevista toda semana e escreve notas curtas de decisão numa pasta compartilhada, cada uma com um responsável. Para o terceiro, um engenheiro menos experiente o acompanha em todo incidente de plantão por seis meses e assume a frente em alguns enquanto ele observa.

Ao fim de seis meses, três engenheiros sabem tratar falhas do controlador, o documento de 200 páginas é substituído por onze runbooks curtos e vinte notas de decisão, e a equipe tem uma sessão mensal em que uma pessoa explica algo que sabe. Problemas permanecem. Dois runbooks falharam quando testados numa versão diferente do hardware e tiveram de ser reescritos, e o julgamento tácito só foi transferido em parte: o engenheiro que acompanhou diz que algumas decisões ainda parecem palpites. A equipe planeja uma segunda rodada de acompanhamento com o sucessor do engenheiro que se aposenta e acorda revisar os runbooks a cada trimestre.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega guardam boa parte do conhecimento de como os serviços são construídos. Escreva runbooks curtos e notas de decisão como parte da sua definição de pronto e teste-os com as pessoas que os usarão. Compartilhe os motivos do design com a operação para que as mudanças não os desfaçam.

### Equipes de serviço e operações

As equipes de operações geram e usam boa parte do conhecimento do dia a dia. Capture as soluções ao encerrar tickets, mantenha atualizados os erros conhecidos e peça às equipes de entrega o que você precisa. Facilite achar os artigos para o desk e para o autosserviço.

### Liderança e governança

Os líderes moldam se o compartilhamento é premiado ou desencorajado. O artigo da Wikipédia diz que os incentivos são contestados, então concentre-se em remover obstáculos: dê tempo, facilite as ferramentas e premie quem ajuda os outros. Acompanhe o risco de conhecimento, como pontos únicos de especialização, do mesmo modo que outros riscos de serviço.

### Clientes e usuários

Clientes e usuários se beneficiam de respostas claras e de artigos de autosserviço. Avise a equipe quando um artigo estiver errado ou faltar. Pergunte aos provedores como aprendem com os incidentes e como compartilham com você o que aprendem.

## Modos de falha comuns

- **Documentar tudo.** A base fica grande e desatualizada. Em vez disso, comece pelo conhecimento cuja falta machucou e acrescente conforme a necessidade.
- **Escrever separado de trabalhar.** A captura é uma tarefa chata depois do fato. Em vez disso, faça de uma nota curta parte de encerrar o trabalho.
- **Sem responsáveis.** Ninguém atualiza os artigos. Em vez disso, nomeie um responsável e uma data de revisão para cada um.
- **Busca ruim.** As pessoas não acham o que existe e escrevem duplicatas. Em vez disso, teste a busca com consultas reais e ligue os artigos de onde as pessoas trabalham.
- **Ignorar o tácito.** Presume-se que tudo pode ser escrito. Em vez disso, planeje pareamento, acompanhamento e comunidades de prática.
- **Runbooks não testados.** Os passos falham quando necessários. Em vez disso, peça a um usuário que siga cada runbook num caso de teste.
- **Acumular como status.** As pessoas protegem o conhecimento para proteger sua posição. Em vez disso, reconheça o compartilhamento e espalhe a dependência.
- **Impor conteúdo.** Metas de quantidade produzem artigos magros. Em vez disso, foque no uso e na qualidade e lembre que o efeito dos incentivos é contestado.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Capturar conhecimento | O conhecimento vive em cabeças e no chat | Algumas equipes mantêm notas e runbooks | Capturar uma nota é parte de encerrar o trabalho | As taxas de captura e a utilidade são revisadas | A captura de conhecimento é compartilhada entre equipes e fornecedores |
| Qualidade e responsabilidade | Sem responsáveis; o conteúdo apodrece | Alguns artigos têm responsáveis | Todo artigo tem um responsável e uma data de revisão | A exatidão e o uso são medidos; o conteúdo antigo é removido | As práticas de qualidade são compartilhadas e aprimoradas em toda a organização |
| Facilidade de achar e uso | A busca é ruim; as pessoas perguntam umas às outras | Algum conteúdo é ligado a partir de tickets | O conhecimento é ligado a partir de tickets, catálogo e runbooks | O uso e as falhas de busca são medidos e corrigidos | O conhecimento está disponível a usuários, fornecedores e parceiros conforme apropriado |
| Compartilhar o tácito | O compartilhamento é ao acaso | Acontecem algum pareamento e acompanhamento | Pareamento, acompanhamento e comunidades de prática são planejados | O risco de conhecimento é acompanhado e reduzido | Comunidades e rodízio movem o conhecimento entre equipes rotineiramente |

## Lista de verificação

- [ ] Listamos o conhecimento cuja falta nos machucou e começamos por ele.
- [ ] Encerrar um incidente, requisição ou mudança inclui uma nota curta quando algo era novo.
- [ ] Os artigos seguem uma estrutura comum curta, com responsável e data de revisão.
- [ ] Os runbooks foram testados por alguém que não os escreveu.
- [ ] A busca funciona para consultas reais, e os artigos são ligados a partir de tickets e do catálogo de serviços.
- [ ] Artigos não usados e duplicados são aposentados.
- [ ] Temos um plano para espalhar o conhecimento mantido por uma só pessoa.
- [ ] Pareamento ou acompanhamento é planejado para o trabalho que exige julgamento.
- [ ] As lições de incidentes são compartilhadas além da equipe.
- [ ] Revisamos o risco de conhecimento ao menos trimestralmente.

## Prompts de IA

**Finalidade: transformar um ticket resolvido num rascunho de artigo de conhecimento.**

```text
Turn this resolved ticket into a draft knowledge article for service desk analysts.

The ticket (symptom, steps taken, resolution; remove personal data): [paste].

Write a short article with: a one-line symptom, likely cause (mark as "suspected" if the ticket does not say), numbered steps to check and fix, when to escalate and to whom (use [ROLE] if unknown), and a place for owner and review date. Use only what the ticket says. Mark any step that you inferred with [CHECK]. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Finalidade: achar o risco de conhecimento na sua equipe.**

```text
Here is a list of the systems and tasks our team handles and who can do each: [paste as a table, one row per system or task, with the names or roles of people who can do it].

Using only this list, identify those that only one person can do, and those with two. Rank by how critical the task is, if I have marked it, otherwise leave unranked. For each single-person item, suggest one low-effort way to spread the knowledge (for example pairing or a tested runbook). Do not invent tasks or people. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: revisar a clareza de um runbook antes de testá-lo.**

```text
Here is a runbook: [paste].

Act as a tired on-call engineer who has not seen this system before. List every place where you would be unsure what to do, every term or tool not explained, and every step that assumes knowledge. Suggest clearer wording for each. Do not add technical steps that are not in the runbook; mark questions for the author as [ASK AUTHOR]. List what you are unsure of.
```

**Finalidade: planejar a passagem de conhecimento de alguém que está saindo.**

```text
Help me plan a knowledge handover for [role] who leaves in [time].

What they own or do that others do not: [list].
Where it is written down now: [list, or write "nowhere"].
Who will take over, and their current experience: [describe].

Sort the items into: repeatable tasks to turn into tested runbooks, reasons and decisions to record as short notes, and judgment to share by shadowing or pairing. Propose a week-by-week plan, including testing each runbook with the successor. Do not invent items. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [runbook](../../../../skills/runbook/SKILL.md): use para escrever procedimentos passo a passo que outra pessoa consiga seguir sob pressão.
- [postmortem](../../../../skills/postmortem/SKILL.md): use para registrar lições de incidentes numa forma que outros possam ler.
- [architecture-decision-record](../../../../skills/architecture-decision-record/SKILL.md): use para registrar por que uma decisão de design foi tomada.
- [decision-records](../../../../skills/decision-records/SKILL.md): use para manter um registro curto de decisões importantes não arquiteturais.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): use para achar lacunas de habilidades que o compartilhamento de conhecimento deva atender.

## Fontes principais

- **Knowledge management** (Wikipedia): um panorama amplo da história, dos modelos, das abordagens e das críticas ao campo.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): como uma organização compartilha lições de incidentes.
- **Tacit knowledge** (Wikipedia): contexto sobre o conhecimento difícil de escrever.
- **Community of practice** (Wikipedia): contexto sobre grupos entre equipes que compartilham conhecimento.

## Referências

1. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Tacit knowledge — Wikipedia — https://en.wikipedia.org/wiki/Tacit_knowledge
4. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
5. SECI model of knowledge dimensions — Wikipedia — https://en.wikipedia.org/wiki/SECI_model_of_knowledge_dimensions
6. Organizational learning — Wikipedia — https://en.wikipedia.org/wiki/Organizational_learning
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Ikujiro Nonaka — Wikipedia — https://en.wikipedia.org/wiki/Ikujiro_Nonaka
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
