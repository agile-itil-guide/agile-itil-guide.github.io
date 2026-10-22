# O Manifesto Ágil

**O Manifesto para o Desenvolvimento Ágil de Software reúne quatro enunciados de valor curtos que dizem a uma equipe o que privilegiar quando duas coisas boas puxam em direções opostas, e essas escolhas importam tanto para operar um serviço em produção quanto para construí-lo.**

## Por que isso importa

O Manifesto Ágil é a raiz de quase tudo o mais neste guia. Scrum, Kanban, Extreme Programming e DevOps são maneiras de agir de acordo com os valores que ele enuncia. Quem conhece apenas as práticas copia os rituais e perde a razão de ser deles, e, quando um ritual deixa de funcionar, não tem nada pelo qual se orientar.

Ele importa para a gestão de serviços de TI (ITSM) por um motivo prático. A maioria das equipes que operam serviços hoje também os constrói, e as duas tarefas puxam em direções diferentes. Construir premia mudança e velocidade. Operar premia estabilidade e previsibilidade. O Manifesto não elimina essa tensão, mas dá à equipe uma forma comum de falar sobre ela: que valor estamos privilegiando aqui, e o que estamos pagando por isso?

Também ajuda saber o que o Manifesto não é. Ele não é um processo, uma certificação nem uma promessa de que segui-lo faz os projetos darem certo. O [artigo da Wikipédia sobre desenvolvimento ágil de software](https://en.wikipedia.org/wiki/Agile_software_development) observa que as evidências dos benefícios dos métodos ágeis são limitadas e pouco conclusivas. Trate o Manifesto como um conjunto de hipóteses bem argumentadas, que você testa no seu próprio contexto, e não como escritura sagrada.

## Conceitos centrais

### De onde veio

Dezessete praticantes se reuniram na estação de esqui de Snowbird, nas montanhas Wasatch, em Utah, de 11 a 13 de fevereiro de 2001, e escreveram o Manifesto em conjunto. Segundo o [relato em agilemanifesto.org](https://agilemanifesto.org/history.html), eles vinham de métodos como Extreme Programming, Scrum e Crystal e queriam uma alternativa aos processos pesados, guiados por documentação. O rótulo "Light" (leve) chegou a ser cogitado, e Alistair Cockburn se opôs a ele; o grupo passou a se chamar Agile Alliance.

Os signatários foram Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland e Dave Thomas. Vários deles já haviam criado os métodos que levaram: Beck e Cunningham trabalharam no [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), e Schwaber e Sutherland no [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

O Manifesto foi uma reação a um modo de trabalhar em que a equipe planeja o projeto inteiro de antemão, constrói em fases longas e só tarde descobre se o resultado é desejado. Esse estilo costuma ser chamado de [modelo em cascata](https://en.wikipedia.org/wiki/Waterfall_model). Os autores não inventaram o trabalho iterativo (o artigo da Wikipédia remonta os métodos iterativos e incrementais a 1957), mas deram a ele um nome comum e uma declaração curta de valores.

### Os quatro valores

O Manifesto enuncia seus valores por inteiro da seguinte forma. Seu aviso de direitos autorais permite copiá-lo livremente, em qualquer forma, mas apenas na íntegra, por isso ele é citado aqui por completo:

> Estamos descobrindo maneiras melhores de desenvolver software, fazendo-o nós mesmos e ajudando outros a fazê-lo. Por meio desse trabalho, passamos a valorizar:
>
> **Indivíduos e interações** mais que processos e ferramentas
> **Software em funcionamento** mais que documentação abrangente
> **Colaboração com o cliente** mais que negociação de contratos
> **Responder a mudanças** mais que seguir um plano
>
> Ou seja, mesmo havendo valor nos itens à direita, valorizamos mais os itens à esquerda.

Três detalhes da redação passam facilmente despercebidos e mudam o sentido:

- **"Mais que" não é "em vez de".** A última frase diz que os itens à direita continuam tendo valor. Uma equipe que abandona toda a documentação ou todo o planejamento leu mal o Manifesto.
- **É uma preferência para quando é preciso escolher.** Os valores não dizem o que fazer todos os dias. Dizem para que lado inclinar-se quando um processo, um documento, um contrato ou um plano atrapalha um resultado melhor.
- **"Fazendo-o nós mesmos."** A frase de abertura diz que os autores encontraram esses valores na prática. A afirmação é empírica, e é por isso que você é convidado a conferi-la com a sua própria experiência.

### Lendo cada valor para o trabalho com serviços

Os valores foram escritos sobre desenvolvimento de software. Veja o que cada um pode significar para uma equipe que também opera serviços.

| Valor | Contra o que protege | O que pode significar no trabalho com serviços |
|---|---|---|
| Indivíduos e interações mais que processos e ferramentas | Um processo que funciona no papel, mas que ninguém consegue seguir sob pressão | Durante um incidente grave, as pessoas que conhecem o sistema conversam diretamente. O processo de incidentes apoia essa conversa e não a substitui. |
| Software em funcionamento mais que documentação abrangente | Documentos que descrevem um sistema que já não existe | Um runbook testado pelo engenheiro de plantão que o usa vale mais que um manual extenso que ninguém abriu. |
| Colaboração com o cliente mais que negociação de contratos | Discutir um acordo de nível de serviço (SLA) enquanto a necessidade real do cliente fica sem atendimento | Revisar os níveis de serviço com os clientes regularmente e alterá-los quando as necessidades deles mudam. |
| Responder a mudanças mais que seguir um plano | Congelar um plano depois que a situação já mudou | Um processo de mudanças que consegue aprovar em minutos uma mudança pequena e de baixo risco permite à equipe responder. Um processo que trata toda mudança do mesmo modo não consegue. |

### Os doze princípios

O Manifesto é acompanhado de doze princípios que explicitam os valores. Eles são o assunto do próximo tópico (veja Tópico 1.2 — Princípios Ágeis). Juntos, valores e princípios às vezes são chamados de mentalidade ágil.

### Críticas que vale conhecer

Críticos objetaram que o Manifesto mina a disciplina da engenharia. O artigo da Wikipédia cita Stephen Rakitin, que, em carta à *IEEE Computer*, chamou o ágil de "mais uma tentativa de minar a disciplina da engenharia de software" e leu "software em funcionamento mais que documentação abrangente" como licença para dispensar a documentação. Os defensores respondem que a documentação deve ser "apenas suficientemente boa", expressão usada por Scott Ambler, e que documentação demais ou de menos prejudica a manutenção e o compartilhamento de conhecimento.

Para uma equipe de serviço, a crítica tem fundamento. A equipe de operações herda o que as equipes de entrega deixam, e documentação escassa aparece como resposta lenta a incidentes e passagens de bastão demoradas. Uma leitura justa do Manifesto é que a documentação precisa merecer seu lugar, não que ela não exista.

## Boas práticas

1. **Trate os valores como auxílio à decisão, não como conjunto de regras.** Quando a equipe discordar, pergunte qual valor está em tensão e para que lado a equipe deve se inclinar. Isso transforma uma discussão de preferências numa conversa sobre compromissos.
2. **Leia a frase que vem depois dos valores.** Lembre a equipe com frequência de que os itens à direita continuam tendo valor. Registre quais processos, documentos, contratos e planos você mantém e por quê.
3. **Teste cada valor contra um evento recente.** Escolha um incidente ou release real e pergunte como o trabalho teria se desenrolado se a equipe tivesse se inclinado para o outro lado. Evidências do seu próprio trabalho convencem mais que uma citação.
4. **Mantenha a documentação e mantenha-a viva.** Prefira documentos curtos, usados, testados e com responsável, como runbooks e descrições de serviço, a documentos longos escritos uma só vez. Apague o que ninguém lê.
5. **Torne rotineira a colaboração com o cliente.** Mantenha conversas regulares com as pessoas que usam seus serviços e leve o que aprender para o backlog. Não espere a revisão do contrato.
6. **Faça planos que esperam mudar.** Planeje em horizontes curtos, com pontos de revisão explícitos. Mantenha uma direção de mais longo prazo e aceite que os passos até ela vão se mover.
7. **Dê responsáveis aos processos e deixe-os evoluir.** Cada processo do seu sistema de gestão de serviços deve ter um responsável nomeado e um meio de as pessoas que o usam proporem mudanças. Um processo que ninguém pode alterar será contornado.
8. **Use os valores na contratação e na integração.** Descreva-os aos novos integrantes com exemplos da sua própria equipe, para que vejam como os valores aparecem nas escolhas do dia a dia.
9. **Revisite os valores depois de escalar.** Organizações maiores tendem a derivar para processos e ferramentas. Promova uma conversa periódica, talvez duas vezes por ano, perguntando se o equilíbrio ainda serve aos clientes.
10. **Não use o Manifesto como arma.** Citar "indivíduos mais que processos" para descartar a preocupação de um colega com auditoria ou segurança encerra uma conversa que deveria ter começado. Use-o para abrir a discussão, não para vencê-la.

## Perguntas para discutir com a equipe

**Qual dos quatro valores nossa equipe já privilegia na prática, e qual só afirmamos privilegiar?**

Comece listando decisões recentes: um release adiado por causa de papelada, um pedido recusado porque não estava no contrato, um plano mantido depois de deixar de fazer sentido. Associe cada uma a um valor. As equipes costumam encontrar uma distância entre o que dizem e o que fazem, e essa distância é a descoberta útil. Quem facilita deve evitar culpar e perguntar que pressão produziu cada escolha. Em seguida, pergunte quais dessas pressões a equipe pode mudar.

**Onde nossos processos e ferramentas ajudam as pessoas a conversar, e onde atrapalham?**

Peça às pessoas que nomeiem um processo que lhes poupa esforço e outro que lhes custa esforço. O custoso costuma ser um bom processo aplicado com rigidez, como um fluxo de tickets que exige quatro aprovações para uma mudança trivial. Procure os lugares em que as pessoas evitam a ferramenta e recorrem ao chat ou à conversa de corredor, porque isso costuma sinalizar um descompasso. Feche com um processo a simplificar neste mês.

**Que documentação lamentaríamos perder, e o que poderíamos apagar amanhã?**

Esta pergunta testa o valor "software em funcionamento mais que documentação abrangente" sem levá-lo ao extremo. Pergunte quais documentos as pessoas usaram no último mês. Runbooks, diagramas de arquitetura e descrições de serviço voltadas ao cliente costumam aparecer. Documentos que ninguém menciona são candidatos a exclusão ou fusão. Lembre à equipe que apagar é uma decisão, então atribua um responsável a ela.

**Como nossos clientes participam da definição dos nossos serviços, e como sabemos que é o bastante?**

Reúna exemplos de contribuições de clientes que mudaram uma decisão. Se a lista for curta, pergunte por quê. As causas costumam ser estruturais: um gerente de contas no meio do caminho, uma revisão de SLA por ano ou um service desk que registra reclamações mas não as repassa. Pergunte aos clientes diretamente, se puder, o que mudariam. A orientação para quem facilita é buscar uma maneira concreta de encurtar o caminho entre um cliente e a equipe.

**O que seria necessário para aprovarmos uma mudança pequena e de baixo risco dentro de uma hora, e deveríamos?**

Esta pergunta liga o quarto valor ao controle de mudanças (veja Tópico 3.4 — Habilitação de Mudanças). Pergunte o que atrasa as mudanças pequenas hoje: uma reunião semanal, um formulário manual de risco, um teste que falta. Pergunte que evidência deixaria a equipe confortável, como testes automatizados ou um rollback rápido. Não force um "sim". O objetivo é descobrir o que a equipe acredita que precisaria, que é o começo de um plano.

**Se um órgão regulador, um auditor ou um grande cliente lesse o Manifesto, com o que se preocuparia, e teria razão?**

Algumas preocupações são justas. Auditores querem evidências, e clientes querem compromissos. Convide a equipe a levar essas preocupações a sério e a perguntar que evidências e compromissos leves os satisfariam. As equipes que conseguem mostrar como o trabalho ágil produz uma trilha de auditoria costumam ganhar mais liberdade, não menos. Registre as preocupações para a discussão de governança no Tópico 5.7 — Governança, Risco e Conformidade.

## Na prática: um exemplo de ITIL ágil

Um varejista online de porte médio tem uma equipe de plataforma de oito pessoas que constrói e opera seu serviço de checkout. A equipe passou recentemente de releases trimestrais para semanais e agora tem um problema: o service desk reclama que as mudanças chegam sem aviso, e a equipe de plataforma reclama que a reunião de aprovação de mudanças leva uma semana para aprovar mudanças que estão prontas na segunda-feira.

O líder da equipe conduz uma sessão de uma hora usando os quatro valores como moldura. Eles listam eventos recentes numa parede. Uma correção de código de desconto esperou nove dias por aprovação. Uma mudança de banco de dados foi aprovada rapidamente e causou uma queda. Um runbook para falhas de pagamento descrevia um sistema desativado no ano anterior. O grupo coloca cada evento junto a um valor. A maioria dos casos de atraso fica sob "processos e ferramentas mais que indivíduos e interações", ou seja, o processo era executado por si mesmo. A queda fica sob "responder a mudanças mais que seguir um plano", já que a reunião de aprovação tratou todas as mudanças como iguais e não examinou de perto a arriscada.

Eles concordam com três alterações. Primeiro, mudanças que se enquadrem numa lista curta de padrões de baixo risco, com testes automatizados aprovados e rollback testado, serão pré-aprovadas e registradas automaticamente. Segundo, mudanças arriscadas serão revisadas por um colega e por um representante de operações em até um dia. Terceiro, cada runbook terá um responsável nomeado e será conferido toda vez que for usado durante um incidente.

Dois meses depois, o líder analisa o resultado com o service desk. As mudanças pré-aprovadas fluem rápido, e o service desk agora vê todas as mudanças num feed compartilhado. Um problema permanece: dois dos padrões pré-aprovados foram traçados de forma ampla demais, e um incidente menor se seguiu. A equipe estreita os padrões e mantém a abordagem. Também percebe que o feed compartilhado não substitui a conversa, de modo que o líder do service desk passa a participar do planejamento semanal da equipe de plataforma.

## Quatro perspectivas

### Equipes de produto e entrega

Para as equipes de entrega, o Manifesto é um lembrete de que software em funcionamento inclui operação em funcionamento. Um recurso que não pode ser monitorado, suportado ou revertido não está concluído. Use os valores para defender o trabalho operacional que torna os releases seguros e convide o pessoal de operações para o planejamento desde cedo.

### Equipes de serviço e operações

O pessoal de operações muitas vezes sente que o Manifesto fala em nome dos desenvolvedores. Leia-o de outro modo: os valores favorecem pessoas conversando, artefatos testados e respostas rápidas à mudança, tudo o que combina com boas operações. Leve as práticas do ITIL à mesa como experiência acumulada sobre o que dá errado e proponha versões mais leves que mantenham o propósito.

### Liderança e governança

Líderes criam as condições para que os valores funcionem. Se todo release exige cinco assinaturas, uma equipe não consegue privilegiar a resposta à mudança, por mais cartazes que pendurem na parede. Pergunte às suas equipes onde as suas próprias regras as atrasam e esteja pronto para mudar uma regra quando o propósito puder ser atendido de outro modo.

### Clientes e usuários

Os clientes são nomeados em dois dos quatro valores. Para eles, o Manifesto promete colaboração, não apenas entrega. Espere ser perguntado sobre o que precisa, ver mudanças funcionando com frequência e poder mudar de ideia. Em troca, a equipe precisa de feedback e decisões oportunos da sua parte.

## Modos de falha comuns

- **Usar "mais que" como "em vez de".** As equipes abandonam por completo a documentação, o planejamento ou os contratos e depois sofrem. Em vez disso, decida o que cada um deles precisa alcançar e mantenha a forma mais leve que o alcance.
- **Tratar os valores como licença para dispensar a disciplina.** "Somos ágeis" vira desculpa para não testar, não registrar e não passar o bastão. Em vez disso, ligue cada valor a uma prática concreta e verifique se a prática está acontecendo.
- **Recitar o Manifesto sem conferi-lo.** Lemas substituem o pensamento. Em vez disso, revise eventos reais à luz dos valores em intervalos regulares.
- **Usá-lo contra colegas.** Citar um valor para descartar a preocupação de auditoria, segurança ou operações prejudica a confiança. Em vez disso, pergunte o que a preocupação protege e como atendê-la de forma leve.
- **Adotar práticas sem os valores.** Reuniões diárias e quadros aparecem, mas as decisões continuam esperando cadeias de aprovação. Em vez disso, pergunte quais decisões devem se aproximar das pessoas que fazem o trabalho.
- **Supor que o Manifesto responde a questões operacionais.** Ele foi escrito sobre desenvolvimento de software em 2001 e diz pouco sobre operar serviços. Em vez disso, combine-o com as práticas de gestão de serviços e adapte ambos.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Entendimento compartilhado dos valores | Poucas pessoas leram o Manifesto | Algumas equipes o discutem, com leituras divergentes | As equipes compartilham uma leitura escrita e curta dos valores para o seu contexto | As equipes conferem decisões recentes com os valores em revisões regulares | Equipes, fornecedores e clientes usam um vocabulário comum de compromissos |
| Equilíbrio entre processo e pessoas | Processos são seguidos ou ignorados, conforme a pessoa | Algumas equipes simplificam alguns processos | Cada processo tem um responsável e um caminho para pedidos de mudança | O atrito dos processos é medido, por exemplo o tempo de espera por mudança | Processos são ajustados entre equipes com base em evidências compartilhadas |
| Colaboração com o cliente | O feedback chega por reclamação | Algumas equipes se reúnem regularmente com clientes | Cada serviço tem um modo definido de colher a opinião do cliente | A contribuição do cliente é acompanhada e ligada às mudanças feitas | Clientes ajudam a definir prioridades entre serviços |
| Documentação e planos | Documentos são raros ou desatualizados | As equipes mantêm os documentos que consideram úteis | Os documentos exigidos são poucos, têm responsável e são revisados | O uso dos documentos é observado e os não usados são removidos | A documentação é gerada ou verificada como parte da entrega |

## Lista de verificação

- [ ] Todo integrante da equipe leu o Manifesto e seus doze princípios uma vez.
- [ ] A equipe sabe enunciar cada valor com suas próprias palavras, com um exemplo do seu próprio trabalho.
- [ ] Listamos quais processos, documentos, contratos e planos mantemos, e por quê.
- [ ] Todo processo em uso tem um responsável nomeado e um meio de propor mudanças.
- [ ] Runbooks e descrições de serviço têm responsáveis e data de revisão.
- [ ] Mantemos uma conversa regular com os clientes de pelo menos um serviço.
- [ ] Revisamos ao menos um incidente ou release recente à luz dos quatro valores.
- [ ] As regras definidas pela liderança que atrasam a equipe foram listadas e discutidas.
- [ ] Registramos como mostraremos a auditores e reguladores o que fazemos.

## Prompts de IA

**Finalidade: transformar os quatro valores numa leitura curta para a sua própria equipe.**

```text
You are helping a team of [team size and type, e.g. "eight engineers who build and run a payments service"] write a plain-language reading of the four values of the Agile Manifesto for their own context.

Here are the four values as written:
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

Context about our team and work: [paste 3-5 sentences about what you build, what you run, who your customers are, and any rules you must follow, such as audit or safety rules].

For each value, write two or three sentences on what it could mean for us, and one example drawn only from the context above. Mark clearly any point where you are guessing. Ask me up to three clarifying questions first if the context is too thin. Do not invent statistics or quote sources. List what you are unsure of.
```

**Finalidade: revisar um evento recente à luz dos valores.**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**Finalidade: preparar-se para responder à preocupação de um auditor sobre modos de trabalho ágeis.**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**Finalidade: desenhar uma sessão de equipe de uma hora sobre o Manifesto.**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## Skills de IA

- [agile-principles](../../../../skills/agile-principles/SKILL.md): use quando quiser conferir uma prática da equipe ou uma decisão de processo com os princípios do Manifesto.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use para conduzir uma retrospectiva que revise eventos recentes à luz dos valores e leve a uma mudança real.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): use ao iniciar uma nova equipe ou um novo projeto e querer uma leitura compartilhada dos valores desde o primeiro dia.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): use quando for a pessoa que ajuda uma equipe a passar de copiar rituais a compreender as razões deles.

## Fontes principais

- **Manifesto for Agile Software Development** (agilemanifesto.org): o texto primário. Leia-o por inteiro; leva dois minutos.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): os doze princípios, o complemento mais útil dos valores.
- **History: The Agile Manifesto** (agilemanifesto.org): o breve relato dos próprios autores sobre a reunião de Snowbird.
- **Agile software development** (Wikipedia): um panorama amplo com história, métodos, práticas e críticas, útil como mapa para leituras adicionais.

## Referências

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
