# Gestão de Incidentes

**A gestão de incidentes restabelece um serviço degradado o mais depressa que for seguro, e o hábito ágil que a faz funcionar são papéis claros sob pressão, seguidos de uma revisão sem atribuição de culpa que transforma cada incidente em uma mudança.**

## Por que isso importa

Os incidentes são o momento em que um serviço é julgado. Os usuários não se lembram de meses de boa disponibilidade; lembram-se da queda e de como foi tratada. Uma equipe que definiu de antemão quem faz o quê, como se comunica e quando pede ajuda restabelece o serviço mais depressa e erra menos que uma que improvisa.

As equipes ágeis que operam o que constroem costumam tratar os incidentes de modo informal. Funciona até que um incidente seja grande, atravesse várias equipes ou aconteça de madrugada. Então a falta de papéis e de registros aparece: os engenheiros se amontoam no problema técnico, ninguém avisa os clientes e duas pessoas fazem mudanças conflitantes. A prática de ITSM da gestão de incidentes, junto com práticas da engenharia de confiabilidade de sites, oferece maneiras testadas de evitar isso.

O [artigo da Wikipédia sobre gestão de incidentes](https://en.wikipedia.org/wiki/Incident_management) cobre vários campos, da resposta a emergências à segurança da computação. Para a gestão de serviços de TI, diz que o objetivo é restabelecer o serviço normal dentro do nível de serviço acordado o mais depressa possível, cita o ITIL 2011 ao definir um incidente como uma interrupção não planejada de um serviço de TI ou uma redução de sua qualidade e lista três desafios: ruído de alertas, resolução demorada de problemas e dificuldade de prever quedas. Para os detalhes, este tópico se apoia muito em dois capítulos do livro *Site Reliability Engineering* do Google, que descrevem uma abordagem de comando de incidentes e postmortems sem atribuição de culpa a partir da prática de uma grande organização. Trate esses capítulos como uma abordagem bem documentada, não como a única.

## Conceitos centrais

### O que é um incidente

Um **incidente**, no uso da ITSM, é uma interrupção não planejada de um serviço ou uma redução de sua qualidade. O artigo sobre ITSM inclui também uma interrupção "potencial". Um incidente não é o mesmo que um **problema**, que é a causa subjacente, nem que uma **requisição de serviço**, que é um pedido de rotina (veja Tópico 3.3 — Gestão de Problemas e Tópico 3.6 — Gestão de Requisições de Serviço). Manter os três separados importa porque cada um é gerido para um objetivo diferente: restabelecer o serviço, remover causas e atender à demanda de rotina.

### O objetivo: restabelecer o serviço, preservar as evidências

O primeiro objetivo da gestão de incidentes é restabelecer o serviço. O capítulo de SRE sobre gerir incidentes acrescenta um segundo: preservar as evidências necessárias para encontrar depois a causa-raiz. As próprias boas práticas do capítulo dizem para priorizar o restabelecimento do serviço e a preservação de evidências, nesse espírito. Corrigir a causa pode vir depois, na gestão de problemas.

### Por que incidentes não geridos dão errado

O capítulo de SRE, escrito por Andrew Stribblehill, usa um longo exemplo de um engenheiro de plantão cuja queda cresce até virar uma falha total. Nomeia três perigos dos incidentes não geridos:

- **Foco estreito no problema técnico.** Engenheiros absorvidos numa correção perdem de vista a mitigação e o quadro mais amplo.
- **Comunicação ruim.** Ninguém sabe o que os outros fazem, e as partes interessadas permanecem desinformadas.
- **Ação independente (freelancing).** Mudanças não coordenadas, como uma implantação de última hora, pioram a situação.

### Papéis sob pressão

O capítulo baseia sua abordagem no Incident Command System, que veio da resposta a emergências (o artigo da Wikipédia sobre gestão de incidentes também o menciona). Suas principais ideias:

| Papel | O que faz |
|---|---|
| **Comandante do incidente (incident commander)** | Mantém o estado de alto nível, estrutura a resposta, remove obstáculos e assume qualquer papel ainda não delegado |
| **Líder de operações** | Aplica ferramentas ao problema; só a equipe de operações altera o sistema durante um incidente |
| **Líder de comunicação** | É o rosto público da resposta; emite atualizações periódicas e mantém atualizado o documento do incidente |
| **Líder de planejamento** | Trata de questões de prazo mais longo, como abrir bugs, organizar passagens de bastão e acompanhar o desvio do normal para que as mudanças possam ser revertidas |

O capítulo chama o princípio de uma separação recursiva de responsabilidades. Papéis claros dão autonomia às pessoas, porque elas não precisam duvidar dos colegas, e uma pessoa sobrecarregada pede mais pessoal e delega partes do trabalho. As passagens de bastão entre comandantes são explícitas e reconhecidas.

### O documento vivo do incidente

O capítulo diz que o dever mais importante do comandante é manter um documento vivo do estado do incidente, de preferência editável por várias pessoas ao mesmo tempo. Pode ser bagunçado, mas deve continuar útil, com as informações-chave perto do topo, e é guardado para análise posterior. Um canal compartilhado ou uma sala física serve de posto de comando.

### Quando declarar um incidente

O capítulo recomenda declarar um incidente cedo, e não horas depois de um problema que piora. Sugere tratar um evento como incidente se uma segunda equipe precisa ser envolvida para corrigi-lo, se a queda é visível aos clientes ou se continua sem solução depois de uma hora de análise concentrada. São regras práticas de uma organização. Os seus próprios limiares devem refletir seus serviços e usuários.

### Prioridade e severidade

As fontes lidas para este guia não definem níveis de prioridade ou severidade, e o artigo da Wikipédia não estabelece nenhum. Na prática, as equipes definem níveis a partir do impacto nos usuários e da urgência da necessidade e decidem de antemão quem é chamado em cada nível. Mantenha o esquema curto, com exemplos, e confira-o aplicando-o a incidentes passados.

### Comunicação

A comunicação tem dois públicos. Quem responde precisa saber o estado e quem faz o quê. As partes interessadas e os usuários precisam saber o que está afetado, o que está sendo feito e quando esperar a próxima atualização. O líder de comunicação do capítulo de SRE atende ao segundo público e mantém o registro para o primeiro. Para quedas voltadas ao público, um plano de comunicação em crise é útil (veja a skill de comunicação de crise abaixo).

### Postmortems sem atribuição de culpa

O capítulo de SRE sobre cultura de postmortem apresenta a metade do aprendizado. Um postmortem registra o incidente, seu impacto, a mitigação, as causas-raiz e as ações de acompanhamento. Seus objetivos são documentar o incidente, entender todas as causas-raiz contribuintes e implantar ações preventivas eficazes. É sem atribuição de culpa: identifica causas contribuintes sem culpar indivíduos ou equipes e parte do princípio de que todos "tinham boas intenções e fizeram a coisa certa com a informação que tinham". Nas palavras do capítulo, "Não dá para 'consertar' pessoas, mas dá para consertar sistemas e processos".

O capítulo sugere definir de antemão os gatilhos do postmortem, como indisponibilidade visível aos usuários além de um limiar, qualquer perda de dados, uma intervenção do plantão como um rollback, tempo de resolução acima de um limiar ou uma falha de monitoramento. Diz também que "um postmortem não revisado é como se nunca tivesse existido" e por isso recomenda sessões regulares de revisão e um repositório compartilhado. Descreve atividades de construção de cultura, como um boletim mensal, clubes de leitura e uma "Roda da Desgraça" (Wheel of Misfortune), em que incidentes passados são reencenados.

### Incidentes graves

Muitas práticas de ITSM definem um **incidente grave** (major incident) como um que exige uma resposta mais formal que o habitual. As fontes lidas aqui não o definem, então faça-o com suas palavras: por exemplo, um incidente que afeta muitos usuários ou um serviço crítico e exige resposta coordenada entre equipes. O que importa é que as pessoas saibam de antemão o que muda: quem comanda, quem é chamado, com que frequência saem as atualizações.

### Incidentes e entrega contínua

Os incidentes muitas vezes nascem de mudanças recentes. As equipes ágeis estão bem situadas para aprender com eles porque lançam com frequência e têm laços de feedback curtos. O aprendizado precisa de um caminho: as ações do postmortem vão para o backlog com responsáveis e datas, e os incidentes recorrentes vão para a gestão de problemas. Sem esse caminho, o tratamento de incidentes vira uma rotina de reparo.

## Boas práticas

1. **Decida de antemão o que conta como incidente.** Escreva uma definição curta com exemplos e baixe a barra para declarar um. A regra prática do capítulo de SRE é declarar cedo quando uma segunda equipe é necessária, os clientes veem o problema ou uma hora de análise não o resolveu.
2. **Defina poucos níveis de severidade com exemplos.** Baseie-os no impacto nos usuários e diga quem é chamado em cada nível. Teste o esquema em incidentes passados e ajuste.
3. **Atribua papéis no início de cada incidente.** Nomeie um comandante do incidente, um líder de operações e um líder de comunicação. Em equipes pequenas, uma pessoa pode ter mais de um papel; diga-o em voz alta.
4. **Separe consertar de coordenar.** As pessoas que alteram o sistema não devem também responder perguntas. Deixe o comandante coordenar e o líder de comunicação informar.
5. **Mantenha um registro vivo.** Use um documento ou canal compartilhado com horários, decisões e mudanças feitas. Ele apoia as passagens de bastão e dá ao postmortem o seu material.
6. **Permita apenas mudanças autorizadas.** O capítulo de SRE diz que só a equipe de operações deve modificar o sistema durante um incidente. Declare quem pode mudar o quê e peça aos demais que falem com o comandante.
7. **Comunique num calendário.** Acorde o intervalo de atualização para cada severidade e cumpra-o, mesmo quando não há novidade. O silêncio gera preocupação e perguntas repetidas.
8. **Passe o bastão de forma explícita.** Quando um comandante ou responsável for substituído, diga-o em voz alta e peça à outra pessoa que reconheça. Passagens pouco claras perdem contexto.
9. **Pratique.** Rode o processo de incidentes em eventos pequenos e em exercícios, para que os papéis sejam familiares antes de uma queda grave. Faça as pessoas circularem pelos papéis.
10. **Faça um postmortem sem atribuição de culpa quando seus gatilhos forem atingidos.** Escreva-o com os envolvidos, concentre-se nas causas contribuintes e nas correções do sistema e compartilhe-o amplamente (veja a skill de postmortem abaixo).
11. **Transforme ações em itens de backlog.** Dê a cada acompanhamento um responsável e uma data e revise-os numa reunião regular. Um postmortem não revisado não produz mudança.
12. **Alimente a gestão de problemas com as evidências.** Ligue incidentes repetidos a um registro de problema, para que as causas sejam removidas e não apenas reparadas (veja Tópico 3.3 — Gestão de Problemas).

## Perguntas para discutir com a equipe

**O que fazemos nos primeiros dez minutos de um incidente, e quem decide?**

Percorra o último incidente significativo minuto a minuto. Note quem assumiu a liderança, quem se comunicou e quem mudou o quê. Muitas equipes descobrem que os papéis foram presumidos e não acordados. Quem facilita pode perguntar o que teria acontecido se o líder habitual estivesse ausente. Em seguida, acorde como os papéis serão atribuídos da próxima vez.

**Quando chamamos algo de incidente, e quando esperamos?**

Reúna exemplos de eventos que foram declarados tarde. Pergunte o que segurou as pessoas: não querer incomodar os outros, incerteza ou medo de culpa. Compare com os gatilhos do capítulo de SRE. Acorde um limiar e um modo de declarar um incidente sem alarde.

**Como os nossos usuários descobrem o que está acontecendo durante uma queda, e com que frequência?**

Olhe a última queda do lado do usuário. Pergunte quem os avisou, o que lhes foi dito e quanto durou o intervalo. Muitas vezes a resposta é um longo silêncio seguido de uma nota breve. Pergunte quem deve ser responsável pela comunicação e o que deve dizer a primeira mensagem. Acorde um modelo e um ritmo de atualização.

**O que mudou o nosso último postmortem, e como sabemos?**

Peça as ações, os responsáveis e o estado. Se nenhuma foi concluída, pergunte por quê: falta de responsável, de tempo ou valor pouco claro. Descubra se os postmortems são lidos por alguém além da equipe. Acorde uma sessão regular para revisar as ações em aberto.

**As pessoas se sentem seguras para dizer o que fizeram de errado?**

Esta pergunta testa a ausência de culpa. Peça às pessoas que descrevam como se sentiriam escrevendo sobre o próprio erro num postmortem. Ouça o medo de consequências e exemplos de quando houve culpa. Não exija abertura; pergunte o que a equipe e os líderes precisariam fazer para torná-la segura. Escolha um passo visível.

**Como praticamos, e quando foi a última vez?**

Pergunte se a equipe já fez um exercício ou um incidente simulado e o que aprendeu. Se nunca, discuta um começo pequeno, como reencenar um incidente passado em uma hora. O capítulo de SRE menciona praticar o processo em mudanças de rotina e exercícios de recuperação de desastres. Planeje um para o próximo trimestre.

## Na prática: um exemplo de ITIL ágil

O portal de clientes de uma empresa regional de energia permite que as famílias relatem quedas de energia e vejam suas contas. Uma equipe de onze pessoas o constrói e o opera, com uma escala de plantão de quatro. Durante uma tempestade, o tráfego de relatos dispara, o portal fica lento e depois falha. O engenheiro de plantão tenta reiniciar o banco de dados, um segundo engenheiro implanta ao mesmo tempo uma correção de configuração e um terceiro reverte um release anterior. O portal volta depois de três horas, e a central de atendimento, que nunca foi avisada, recebeu milhares de ligações irritadas.

No postmortem, a equipe vê os três perigos do capítulo de SRE: todos focados na correção técnica, ninguém se comunicou e as mudanças colidiram. Escrevem um processo de incidentes de uma página. Qualquer pessoa pode declarar um incidente, e uma segunda equipe envolvida, visibilidade para os clientes ou uma hora sem progresso significam que devem declará-lo. O engenheiro de plantão passa a ser o líder de operações, e uma escala nomeia um comandante do incidente e um líder de comunicação da equipe mais ampla. Só o líder de operações altera a produção. O líder de comunicação envia uma atualização a cada 30 minutos à central de atendimento e à sala de controle. Um canal compartilhado guarda o registro vivo.

Na tempestade seguinte, o portal fica lento de novo, um incidente é declarado em dez minutos e o serviço é restabelecido em 70 minutos, com atualizações indo à central o tempo todo. Problemas permanecem. A escala de comandantes tem lacunas nos feriados, e a equipe descobre que uma dependência, um provedor de mensagens de texto, não tem contato de escalonamento. O postmortem produz duas ações com responsáveis: completar a escala com um substituto e acordar um caminho de escalonamento com o provedor. A equipe agenda uma reencenação do incidente da tempestade para os novos integrantes da escala.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega causam e corrigem muitos incidentes. Participe da escala de plantão ou dê apoio direto a ela e trate as ações do postmortem como itens de backlog. Embuta nos seus releases os meios de detectar e reverter problemas. Participe dos exercícios para que os papéis sejam familiares.

### Equipes de serviço e operações

As equipes de operações são donas do processo. Mantenha-o curto e praticado, dê às pessoas a autoridade para agir e mantenha registros que outros possam usar. Compartilhe o que aprende com as equipes de entrega e leve as lições à gestão de problemas e ao planejamento.

### Liderança e governança

Os líderes definem a cultura. Peça postmortems e leia-os, elogie quem relata problemas e recuse-se a caçar um culpado. Proteja o tempo para praticar e para concluir as ações. Decida quem pode gastar dinheiro ou acionar o nível mais alto de resposta.

### Clientes e usuários

Clientes e usuários precisam de atualizações oportunas e honestas e de um modo claro de relatar problemas. Pergunte ao seu provedor o que esperar durante uma queda e como será avisado. Quando um postmortem for compartilhado com você, leia-o para ver o que o provedor vai mudar.

## Modos de falha comuns

- **Sem papéis.** Todos trabalham na correção técnica e ninguém coordena nem comunica. Em vez disso, nomeie sempre um comandante do incidente, um líder de operações e um líder de comunicação.
- **Declarar tarde.** As pessoas esperam até o problema ficar ruim. Em vez disso, defina limiares baixos e claros e normalize o declarar.
- **Ação independente.** Várias pessoas alteram o sistema ao mesmo tempo. Em vez disso, permita mudanças apenas por meio do líder de operações.
- **Silêncio.** Usuários e partes interessadas não ouvem nada. Em vez disso, acorde um intervalo de atualização e um modelo.
- **Culpa.** Um postmortem procura a pessoa culpada. Em vez disso, pergunte o que no sistema permitiu o erro e corrija isso.
- **Postmortems que não levam a lugar nenhum.** As ações não têm responsáveis. Em vez disso, ponha-as no backlog com datas e revise-as regularmente.
- **Nunca praticar.** A primeira vez que o processo é usado é num incidente grave. Em vez disso, ensaie em eventos pequenos e em exercícios.
- **Tratar o reparo como resolução.** O mesmo incidente volta. Em vez disso, ligue as repetições à gestão de problemas e corrija a causa.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Detecção e declaração | Os incidentes são notados por reclamações dos usuários | Existem alguns alertas e alguns incidentes são declarados | Limiares escritos e um esquema simples de severidade são usados de forma consistente | O tempo de detecção e o de declaração são acompanhados e reduzidos | Detecção e declaração são compartilhadas entre equipes e fornecedores |
| Resposta e papéis | Quem responde improvisa | Algumas equipes nomeiam um líder | Papéis, passagens de bastão e um registro vivo são padrão | Tempos de resposta e desempenho nos papéis são revisados | A resposta é coordenada entre equipes e fornecedores, com exercícios conjuntos |
| Comunicação | As atualizações são ad hoc | Algumas atualizações vão para alguns públicos | Existem ritmo de atualização e modelos para cada severidade | A pontualidade da comunicação é medida e os usuários são consultados | A comunicação é coordenada com clientes e parceiros |
| Aprendizagem | As revisões seguem apenas os piores incidentes | Alguns postmortems são escritos | Postmortems sem atribuição de culpa seguem gatilhos definidos, com ações acompanhadas | A conclusão das ações e a recorrência são medidas | As lições são compartilhadas entre equipes e alimentam mudanças em toda a organização |

## Lista de verificação

- [ ] Temos uma definição curta de incidente com exemplos.
- [ ] Temos um pequeno esquema de severidade com exemplos de impacto nos usuários e listas de chamada.
- [ ] Cada incidente começa nomeando um comandante do incidente, um líder de operações e um líder de comunicação.
- [ ] Um registro vivo é mantido para cada incidente.
- [ ] Só o líder de operações nomeado altera a produção durante um incidente.
- [ ] Os intervalos de atualização são acordados para cada severidade.
- [ ] Os gatilhos do postmortem estão escritos.
- [ ] Os postmortems são sem atribuição de culpa, compartilhados e revisados.
- [ ] Toda ação de postmortem tem um responsável e uma data, e as ações em aberto são revisadas.
- [ ] Praticamos o processo nos últimos seis meses.

## Prompts de IA

**Finalidade: redigir um processo de incidentes de uma página a partir da sua prática atual.**

```text
Help me draft a one-page incident process for a team of [number] people who run [service].

How we handle incidents today: [describe in a few sentences].
Our on-call arrangement: [describe].
Who needs to be told during an incident: [list audiences].
Rules we must follow (contracts, regulations), with source text if you have it: [paste, or write "none known"].

Produce a short process with: what counts as an incident, a simple severity scheme with user-impact examples (leave numeric thresholds as [to be agreed]), the roles and what each does, how to communicate, and when to hold a postmortem. Mark every item that is an assumption. Do not invent obligations. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: transformar um registro de incidente num rascunho de postmortem sem atribuição de culpa.**

```text
Below is the log of an incident: [paste timestamps, messages, and actions; remove personal data].
Impact as we know it: [describe users affected and for how long, using only facts].

Draft a blameless postmortem with: summary, impact, timeline, how it was detected, how it was mitigated, contributing causes (separate known from suspected), what went well, what went badly, and proposed actions with a suggested type (prevent, detect, respond) but no owners or dates. Describe actions of people neutrally, as roles. Do not invent facts or causes. Mark gaps with [UNKNOWN], and list what you are unsure of.
```

**Finalidade: escrever uma atualização de status do incidente para partes interessadas não técnicas.**

```text
Write a status update for stakeholders who are not technical about this incident.

Facts: what is affected: [describe]; since when: [time]; what we know about the cause: [what is known, or "not yet known"]; what we are doing: [describe]; when the next update will come: [time].

Write under 120 words in plain language. State what we know and what we do not, without guessing at the cause or the time of recovery. Do not promise a resolution time unless I gave one. Offer two versions: one for customers and one for internal staff. List what you are unsure of.
```

**Finalidade: desenhar um pequeno exercício de incidente.**

```text
Design a 60-minute incident exercise for [number] people who run [service].

Scenario basis: [describe a past incident or a plausible failure, using only facts you want to use].
Roles to practice: incident commander, operations lead, communications lead.
Constraints: [for example no use of production systems].

Give a timed plan: briefing, the scenario released in three stages, prompts for each role, and a short review with questions on roles, communication, and records. Do not use real production access. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): use para escrever o plano que define papéis, limiares e comunicação da sua equipe.
- [postmortem](../../../../skills/postmortem/SKILL.md): use para conduzir uma revisão sem atribuição de culpa e registrar ações após um incidente.
- [runbook](../../../../skills/runbook/SKILL.md): use para transformar correções conhecidas em procedimentos curtos para quem responde.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): use para desenhar uma escala justa com reserva e passagens de bastão.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): use para planejar o que você diz a usuários, funcionários e ao público durante uma queda grave.

## Fontes principais

- **Managing Incidents** (Andrew Stribblehill, em *Site Reliability Engineering*, Google, sre.google): o relato público mais claro de comando de incidentes para equipes de serviço.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): o argumento a favor de postmortems sem atribuição de culpa, com gatilhos e ideias para construir cultura.
- **Incident management** (Wikipedia): um panorama de vários campos com uma seção sobre gestão de serviços de TI.
- **IT service management** (Wikipedia): a definição de incidente e o lugar do tratamento de incidentes no service desk.

## Referências

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
