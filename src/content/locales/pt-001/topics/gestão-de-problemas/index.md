# Gestão de Problemas

**A gestão de problemas encontra e remove as causas por trás de incidentes recorrentes, e sua forma ágil é um fluxo constante de pequenas correções baseadas em evidências no backlog, em vez de investigações grandes e ocasionais.**

## Por que isso importa

Uma equipe que trata bem os incidentes, mas nunca remove suas causas, está numa esteira. Cada queda é reparada, a mesma falha volta e os engenheiros de plantão se cansam. A gestão de problemas é a prática que sai da esteira: pergunta por que o incidente aconteceu, se acontecerá de novo e o que o impediria.

As equipes ágeis estão bem situadas para isso. Têm um backlog em que uma correção pode competir com um recurso, trabalham em ciclos curtos que tornam baratas as pequenas correções e fazem retrospectivas em que padrões podem ser notados. O que muitas vezes lhes falta é o hábito de ligar os incidentes entre si e a disciplina de procurar as causas direito. A gestão de problemas fornece as duas coisas.

O [artigo da Wikipédia sobre análise de causa-raiz](https://en.wikipedia.org/wiki/Root_cause_analysis) é a principal fonte lida para este tópico, porque a Wikipédia em inglês não tem artigo intitulado "Problem management" no endereço verificado. Esse artigo descreve a análise de causa-raiz (RCA) como um método de resolução de problemas usado nas operações de TI e em outros campos e traz etiquetas de manutenção por citações ausentes. O vocabulário do ITIL usado aqui, como erro conhecido e solução de contorno, vem de descrições amplamente publicadas da prática, que este guia não pôde confirmar no texto do titular do framework. Leia as publicações atuais do titular quando as definições exatas importarem (veja Tópico 2.2 — ITIL).

## Conceitos centrais

### Incidente, problema, erro conhecido

Três termos são usados juntos, e as distinções importam:

| Termo | Significado, como amplamente usado na ITSM | Exemplo |
|---|---|---|
| **Incidente** | Uma interrupção não planejada de um serviço ou redução de sua qualidade | A página de agendamento fica fora do ar por vinte minutos |
| **Problema** | A causa subjacente, ou suspeita, de um ou mais incidentes | Um vazamento de memória no serviço de agendamento |
| **Erro conhecido (known error)** | Um problema cuja causa foi identificada, em geral com uma solução de contorno registrada | Um vazamento de memória é compreendido; reiniciar o serviço toda noite evita quedas até que seja corrigido |

Uma **solução de contorno (workaround)** é um modo de reduzir ou evitar o impacto de um incidente ou problema sem remover sua causa. A gestão de problemas trata de remover a causa, e a gestão de incidentes trata de restabelecer o serviço (veja Tópico 3.2 — Gestão de Incidentes).

### Reativa e proativa

O artigo sobre análise de causa-raiz distingue abordagens reativas e proativas em termos gerais. O trabalho reativo trata os sintomas com rapidez. O trabalho proativo visa prevenir problemas e põe a precisão do diagnóstico à frente da rapidez. Na prática da ITSM, existem as duas: a gestão reativa de problemas investiga problemas depois dos incidentes, e a gestão proativa procura padrões e fraquezas antes que causem incidentes.

### O que é uma causa-raiz

O artigo define uma causa-raiz com um teste prático: um fator é a causa-raiz de um problema se removê-lo impede que o problema se repita. Distingue a causa-raiz de outros fatores causais. É uma regra útil. Se você remove um fator e o problema ainda pode voltar, encontrou um contribuinte, não a raiz.

O artigo também adverte quanto a limites. Diz que a falta de dados de monitoramento, volumes muito altos de eventos, causas-raiz múltiplas e investigadores que param numa raiz superficial complicam a análise. Em TI, observa, a RCA muitas vezes carece de árvores de falhas ou de especificações de projeto, de modo que "não há causa-raiz" virou um ditado comum. Em sistemas complexos, espere várias causas contribuintes e não um único culpado.

### Princípios da análise de causa-raiz

O artigo lista passos gerais:

1. Descreva o problema com clareza.
2. Construa uma linha do tempo da operação normal até a falha.
3. Separe a causa-raiz de outros fatores causais.
4. Trace um grafo causal ligando a causa-raiz ao problema.

Acrescenta que os investigadores devem olhar as defesas que falharam ou estavam ausentes (análise de barreiras), evitar viés nas linhas de investigação, decidir sobre ações corretivas e avaliar se essas ações foram eficazes.

### Métodos

O artigo diz que, segundo a ISO/IEC 31010, a RCA pode usar os cinco porquês, a análise de modos de falha e efeitos (FMEA), a análise de árvore de falhas, os diagramas de Ishikawa (espinha de peixe) e a análise de Pareto. Atribui a Kaoru Ishikawa o diagrama causal que leva seu nome. Chama também os métodos de espinha de peixe e dos cinco porquês de "não rigorosos o bastante", uma opinião que não sustenta com fonte. Uma leitura prática: métodos simples são bons pontos de partida para a discussão da equipe, e falhas complexas ou de alto risco podem exigir métodos mais rigorosos.

| Método | O que faz | Quando ajuda |
|---|---|---|
| **Cinco porquês** | Pergunta "por quê" repetidamente para ir de um sintoma até uma causa | Discussão rápida, no nível da equipe, de cadeias simples de causa |
| **Diagrama de Ishikawa (espinha de peixe)** | Agrupa as causas possíveis por categoria | Levantar muitas causas possíveis |
| **Análise de Pareto** | Ordena causas por frequência ou impacto | Escolher que problema recorrente atacar primeiro |
| **Análise de árvore de falhas** | Mapeia combinações de falhas que levam a um resultado | Falhas críticas para a segurança ou complexas |
| **FMEA** | Antecipa como as partes poderiam falhar e qual seria o efeito | Revisão proativa de projeto |

### Ações corretivas eficazes

O artigo diz que ações corretivas que apenas acrescentam papelada ou treinamento são menos eficazes. Na prática, isso sugere favorecer ações que mudam o sistema: automatizar uma verificação, remover um modo de falha, acrescentar uma salvaguarda, melhorar o monitoramento. Uma ação como "lembrar os engenheiros de terem cuidado" é fraca.

### O princípio da ausência de culpa

A investigação de problemas compartilha o princípio de ausência de culpa descrito para os postmortems no livro de SRE do Google: identificar causas contribuintes sem culpar indivíduos, pois as pessoas podem ser ensinadas e os sistemas podem ser consertados (veja Tópico 3.2 — Gestão de Incidentes). Uma investigação que encontra "erro humano" e para costuma ter parado cedo demais. Pergunte o que tornou o erro possível e o que o tornaria mais difícil.

### A gestão de problemas num fluxo ágil

Uma abordagem ágil prática é assim:

- Incidentes e postmortems criam problemas candidatos.
- Uma revisão curta e regular agrupa incidentes repetidos e ordena os problemas por impacto e frequência.
- Os problemas escolhidos entram no backlog como itens comuns, com um responsável, uma hipótese e um limite de tempo para investigação.
- As soluções de contorno são registradas como erros conhecidos para que o service desk e os engenheiros de plantão possam usá-las (veja Tópico 3.9 — Gestão do Conhecimento).
- As correções são pequenas e testadas, lançadas do modo normal e conferidas depois para ver se os incidentes cessaram.

## Boas práticas

1. **Ligue incidentes a problemas.** Registre quais incidentes parecem ter a mesma causa. Sem ligações, você não vê o padrão, e sem o padrão você não consegue defender uma correção.
2. **Revise os incidentes em busca de padrões num calendário.** Uma vez por mês, agrupe os incidentes recentes por serviço e causa provável e escolha os primeiros. Use o pensamento de Pareto: poucas causas costumam responder por boa parte da dor.
3. **Trate os problemas como itens de backlog.** Dê a cada problema escolhido um responsável, uma declaração e um limite de tempo para investigação e deixe-o competir com outro trabalho. Uma fila separada de "problemas" que ninguém agenda é um cemitério.
4. **Comece com uma declaração clara do problema.** Escreva o que acontece, onde, com que frequência e qual o impacto, com fatos. Declarações vagas levam a correções vagas.
5. **Monte uma linha do tempo.** Reúna logs, mudanças e eventos da operação normal à falha. O artigo lista a linha do tempo como passo central, e muitas surpresas vêm de mudanças que ninguém havia ligado.
6. **Procure a causa que, se removida, impede a recorrência.** Use o teste do artigo. Quando a equipe propuser uma causa, pergunte se removê-la impediria o problema de voltar.
7. **Espere mais de uma causa.** Procure fatores contribuintes no projeto, no monitoramento, no processo e no conhecimento das pessoas. Não pare na primeira plausível.
8. **Escolha métodos que se ajustem ao problema.** Use os cinco porquês ou uma espinha de peixe para discussão rápida da equipe e ferramentas mais rigorosas para falhas graves ou complexas.
9. **Prefira ações que mudem o sistema.** Favoreça automação, salvaguardas e melhor monitoramento em vez de lembretes e treinamento. Registre o efeito esperado para poder conferi-lo.
10. **Registre soluções de contorno como erros conhecidos.** Escreva como é o sintoma, a solução de contorno e quem é responsável pela correção. Compartilhe o registro com o service desk e o pessoal de plantão.
11. **Confira se a correção funcionou.** Depois de uma correção, observe a recorrência por um período acordado e relate o resultado. Uma correção nunca conferida é uma esperança.
12. **Compartilhe o que descobrir.** Publique resumos curtos de problemas e correções para que outras equipes reconheçam padrões semelhantes.

## Perguntas para discutir com a equipe

**Que incidente continua voltando, e o que achamos que o causa?**

Peça às pessoas que nomeiem o incidente de que mais se cansaram. Compare as respostas. Depois pergunte o que cada pessoa acredita ser a causa e como sabe. As crenças muitas vezes diferem, o que mostra quão pouca evidência compartilhada existe. Quem facilita pode perguntar que dados resolveriam a questão. Escolha um para investigar, com limite de tempo.

**Como sabemos se dois incidentes têm a mesma causa?**

Olhe como os incidentes são registrados e pergunte se alguém conseguiria achar depressa incidentes relacionados. Respostas típicas são texto livre, memória ou sorte. Pergunte que pequena mudança nos registros ajudaria, como um campo para serviço e causa provável. Acorde uma.

**O que fazemos quando encontramos "erro humano" numa revisão?**

Peça um exemplo recente. A pergunta é se a revisão parou ali. Discuta o que no sistema tornou o erro possível: instruções pouco claras, uma ferramenta confusa, pressão de tempo. Compare com a ideia de que não se consertam pessoas, mas se consertam sistemas. Acorde uma pergunta a fazer sempre, como "O que tornou isso fácil de fazer?".

**Quais ações de revisões passadas realmente mudaram o sistema, e quais só acrescentaram um lembrete?**

Liste as ações das últimas cinco revisões e marque cada uma como mudança de sistema ou lembrete. O artigo diz que lembretes e papelada são menos eficazes. Pergunte por que os lembretes são tão comuns: são rápidos, baratos e parecem ação. Escolha um lembrete para trocar por uma correção mais forte.

**Onde temos soluções de contorno que ninguém escreveu?**

Pergunte aos engenheiros de plantão e analistas do desk que truques usam. Cada solução de contorno não escrita é um risco. Registre-as como erros conhecidos com sintoma, solução de contorno e responsável. Quem facilita pode perguntar quem se beneficia de cada registro. Faça uma lista curta esta semana.

**Como saberíamos que uma correção funcionou?**

Escolha uma correção recente e pergunte que evidência a mostrou. Se a resposta for "não houve mais reclamações", pergunte quanto tempo você esperou e o que mediu. Discuta uma verificação simples: observar o sintoma específico por um período definido. Acorde registrar a verificação com toda correção.

## Na prática: um exemplo de ITIL ágil

Uma empresa de logística de porte médio opera um serviço de planejamento de rotas usado por seus motoristas e despachantes. A equipe de plataforma, de nove pessoas, trata o mesmo incidente mais ou menos a cada duas semanas: os cálculos de rotas expiram por dez a quinze minutos de manhã e depois se recuperam. Toda vez, o engenheiro de plantão reinicia um processo de trabalho e o incidente é encerrado. Os despachantes reclamam que não se pode confiar no planejamento da manhã.

A líder da equipe inicia uma revisão mensal de incidentes, agrupando-os por serviço e causa provável. Os estouros de tempo da manhã encabeçam a lista. Ela escreve uma declaração do problema a partir dos registros de incidentes: os estouros ocorrem em dias úteis entre 7h00 e 7h30, duram de dez a quinze minutos e afetam todos os despachantes. A equipe monta uma linha do tempo que inclui uma importação de dados agendada para as 7h00 e uma mudança recente que aumentou o tamanho da importação. Uma discussão dos cinco porquês sugere que a importação satura o banco de dados. Tentam a correção óbvia, acrescentar capacidade, mas os incidentes continuam numa taxa menor, então concluem que a capacidade era um contribuinte e não a raiz.

Uma segunda olhada descobre que a importação trava uma tabela que os cálculos de rota também leem. A equipe move a importação para uma réplica separada e acrescenta um alerta para esperas por travas. Registra o reinício como erro conhecido, com o sintoma e a solução de contorno, até que a correção entre no ar, e acorda observar o sintoma por seis semanas. Os incidentes cessam. Algumas questões permanecem: outra importação de um parceiro ainda roda no horário de pico, e a equipe ainda não convenceu o parceiro a mudar seu horário. Põem o horário do parceiro na pauta do próximo planejamento e mantêm o alerta de travas.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega têm o conhecimento para corrigir causas. Leve os principais problemas para o seu backlog e trate-os como trabalho que gera confiança. Acrescente monitoramento e testes que teriam revelado a causa e escreva o erro conhecido na linguagem que o desk consiga usar.

### Equipes de serviço e operações

As equipes de operações veem os incidentes e guardam os registros. Ligue incidentes, conduza a revisão mensal e registre soluções de contorno como erros conhecidos. Leve as evidências às equipes de entrega de uma forma que sustente o argumento, com frequência, impacto e linha do tempo.

### Liderança e governança

Os líderes decidem se a correção de problemas ganha tempo. Peça os principais problemas recorrentes e o que está sendo feito a respeito. Resista a contar incidentes encerrados como medida de sucesso, já que isso premia o reparo. Apoie correções que dão trabalho mas removem a dor.

### Clientes e usuários

Clientes e usuários se beneficiam quando as falhas repetidas cessam. Relate problemas recorrentes com datas e efeitos, já que os padrões ajudam a equipe. Pergunte aos provedores o que fizeram sobre as causas de quedas repetidas e espere uma resposta além de "reiniciamos".

## Modos de falha comuns

- **Reparo sem remoção.** Os incidentes são encerrados e voltam. Em vez disso, ligue as repetições a um problema e corrija a causa.
- **Uma fila de problemas que ninguém agenda.** Os problemas esperam para sempre. Em vez disso, ponha os problemas escolhidos no backlog com responsáveis e limites de tempo.
- **Parar no erro humano.** A revisão termina com alguém a culpar. Em vez disso, pergunte o que tornou o erro possível e corrija o sistema.
- **Ações fracas.** Lembretes e treinamento substituem mudanças de sistema. Em vez disso, prefira automação, salvaguardas e melhor monitoramento.
- **Procurar uma causa-raiz única.** A equipe insiste num único culpado. Em vez disso, aceite várias causas contribuintes e trate as mais eficazes.
- **Nenhuma conferência de que a correção funcionou.** O problema é encerrado no release. Em vez disso, defina um modo de ver se o sintoma volta.
- **Soluções de contorno não escritas.** O conhecimento vive com indivíduos. Em vez disso, registre os erros conhecidos e compartilhe-os.
- **Culto aos métodos.** As equipes discutem técnicas. Em vez disso, escolha métodos que se ajustem ao problema e gaste o esforço em evidências.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Ligação e priorização | Os incidentes não são ligados | Algumas equipes notam repetições | Os incidentes são ligados a problemas e revisados em busca de padrões num calendário | Os problemas são ordenados por impacto e frequência medidos | As prioridades de problemas são compartilhadas entre equipes e fornecedores |
| Investigação | A investigação é informal | Algumas equipes usam métodos simples | Usa-se uma abordagem escrita com linhas do tempo e evidências | A qualidade e o tempo das investigações são revisados | As investigações atravessam equipes e fornecedores com dados compartilhados |
| Ação corretiva | As correções são ad hoc ou lembretes | Algumas correções mudam o sistema | As ações são escolhidas pelo efeito, com responsáveis e datas | Os efeitos são conferidos e a recorrência é medida | As correções se espalham por sistemas semelhantes em toda a organização |
| Erros conhecidos e conhecimento | As soluções de contorno não estão escritas | Algumas são registradas por indivíduos | Os erros conhecidos são registrados e compartilhados com o desk e o plantão | O uso e a exatidão dos erros conhecidos são acompanhados | Os erros conhecidos são compartilhados com usuários, fornecedores e parceiros |

## Lista de verificação

- [ ] Incidentes que parecem compartilhar uma causa estão ligados.
- [ ] Uma revisão regular agrupa incidentes e escolhe os principais problemas recorrentes.
- [ ] Os problemas escolhidos estão no backlog com responsáveis e limites de tempo.
- [ ] Cada problema tem uma declaração escrita com fatos.
- [ ] Uma linha do tempo é montada para cada investigação.
- [ ] As revisões perguntam o que no sistema permitiu qualquer erro humano.
- [ ] As ações favorecem mudanças de sistema em vez de lembretes, com o efeito esperado registrado.
- [ ] As soluções de contorno são registradas como erros conhecidos e compartilhadas com o desk e o pessoal de plantão.
- [ ] Cada correção tem uma verificação de recorrência por um período acordado.
- [ ] Resumos de problemas e correções são compartilhados com outras equipes.

## Prompts de IA

**Finalidade: encontrar incidentes repetidos e problemas candidatos nos seus registros.**

```text
Below are descriptions of [number] incidents from the last [period], with dates and the service affected: [paste anonymized descriptions, one per line].

Group the incidents that look as if they might share a cause, based only on what is written. For each group, list the incidents, give a one-sentence description of the common symptom, and say how confident you are and why (low, medium, high). List incidents that do not fit any group. Do not guess at technical causes beyond the text. Suggest three questions for the team to ask to test each group. List what you are unsure of.
```

**Finalidade: escrever uma declaração clara do problema a partir de evidências.**

```text
Help me write a problem statement.

What we observe, with dates and counts: [paste facts].
What is affected and who is affected: [describe].
What we know about when it started and what changed around then: [paste, or write "unknown"].
What we have already tried: [paste].

Write a problem statement of three to five sentences that describes what happens, where, how often, and the impact, without naming a cause. Then list the facts we still need and where to find them. Mark anything that is an assumption. Do not suggest causes as facts. List what you are unsure of.
```

**Finalidade: preparar uma sessão dos cinco porquês e registrar a cadeia de raciocínio.**

```text
Help me prepare a five whys discussion for this problem: [paste the problem statement].

Facts we have: [list evidence such as logs, timelines, and changes].

Prepare: a first "why" question grounded in the evidence, a template where each answer records the evidence for it, and a reminder to branch when there is more than one possible answer. Warn me against stopping at human error. After the session I will paste the notes: do not invent answers yourself. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: avaliar se as ações corretivas propostas mudam o sistema.**

```text
Here are the actions proposed after our review: [paste a list].

For each, say whether it changes the system (for example automates a check, removes a failure mode, adds a safeguard, improves monitoring) or relies on people remembering or on training, and give one sentence of reasoning from the text only. For each reminder-type action, suggest a stronger alternative as a question for the team. Suggest how we could check whether each action worked, without inventing numbers. List what you are unsure of.
```

## Skills de IA

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): use para conduzir uma investigação de uma declaração clara do problema até uma causa testada.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): use para levantar com uma equipe as causas possíveis por categoria.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): use para dispor como causas e efeitos se conectam numa falha complicada.
- [postmortem](../../../../skills/postmortem/SKILL.md): use para conduzir a revisão que identifica problemas candidatos.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): use quando precisar de métodos baseados em dados para analisar variação ou defeitos recorrentes.

## Fontes principais

- **Root cause analysis** (Wikipedia): um panorama geral do método, dos princípios e dos limites, com a ISO/IEC 31010 listada para os métodos.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): a abordagem sem atribuição de culpa para aprender com falhas.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): como o tratamento de incidentes alimenta a análise posterior.
- **Ishikawa diagram** e **Five whys** (Wikipedia): contexto sobre dois métodos simples comuns.

## Referências

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
