# Princípios Ágeis

**Os doze princípios por trás do Manifesto Ágil transformam quatro enunciados de valor em hábitos que se pode conferir, e cada um pode ser lido como uma pergunta a fazer a um serviço em produção tanto quanto a um projeto de software.**

## Por que isso importa

Os quatro valores do Manifesto dizem a uma equipe para que lado se inclinar (veja Tópico 1.1 — O Manifesto Ágil). Os doze princípios dizem como é, no trabalho diário, inclinar-se para esse lado: com que frequência entregar, como tratar requisitos que mudam, quem fala com quem, o que conta como progresso e como uma equipe continua aprendendo. São curtos o bastante para serem memorizados e específicos o bastante para serem testados contra o que a equipe fez na semana passada.

Para uma equipe que opera serviços, os princípios são úteis porque atravessam a divisão habitual entre construir e operar. Vários deles, como um ritmo constante, atenção à qualidade técnica e reflexão regular, descrevem o que mantém um serviço saudável ao longo de anos, e não apenas o que faz um recurso sair pela porta. Outros princípios puxam contra hábitos que se formaram em torno da gestão de serviços de TI (ITSM), como tratar toda mudança como um risco a ser controlado antes que aconteça. Ler os dois lado a lado mostra onde a tensão é real e onde ela vem de suposições antigas.

Os princípios foram escritos em 2001 sobre desenvolvimento de software, de modo que não mencionam incidentes, níveis de serviço nem escalas de plantão. É uma lacuna que você preenche por interpretação, e a interpretação é o trabalho deste tópico. Trate as leituras abaixo como propostas a testar no seu próprio contexto, não como a opinião dos autores.

## Conceitos centrais

### De onde vêm os princípios

Os princípios são publicados em [agilemanifesto.org](https://agilemanifesto.org/principles.html) sob o título "Principles behind the Agile Manifesto", introduzidos pelas palavras "Seguimos estes princípios". Acompanham o Manifesto escrito pelo grupo que se reuniu em Snowbird, Utah, em fevereiro de 2001. O [artigo da Wikipédia sobre desenvolvimento ágil de software](https://en.wikipedia.org/wiki/Agile_software_development) os lista como os doze princípios por trás do Manifesto.

Somente os quatro valores levam as assinaturas do Manifesto. Os princípios são a elaboração desses valores feita pelo grupo e são o que a maioria das equipes cita quando quer conferir uma prática. O texto de cada princípio está disponível na fonte; este tópico resume cada um com suas próprias palavras e cita apenas expressões curtas.

### Os doze princípios num relance

A tabela agrupa os princípios por tema e dá uma reformulação simples de cada um. A numeração segue a ordem de agilemanifesto.org.

| # | Em resumo | O que pode significar para uma equipe que opera serviços |
|---|---|---|
| 1 | Satisfazer o cliente por meio da entrega antecipada e contínua de valor | Lance melhorias úteis de um serviço em pequenos passos, em vez de guardá-las para um grande lançamento. Julgue o sucesso pelo que os usuários ganham, não pelo que o plano dizia. |
| 2 | Acolher mudanças de requisitos, mesmo tardias | Trate uma mudança no que o cliente precisa como informação, não como ofensa ao plano. Torne o seu processo de mudanças rápido o bastante para que acolher uma mudança seja possível. |
| 3 | Entregar software em funcionamento com frequência, preferindo o prazo mais curto | Mantenha curto o intervalo entre releases, de dias a algumas semanas. Releases pequenos carregam menos risco cada um e são mais fáceis de reverter. |
| 4 | Pessoas de negócio e desenvolvedores trabalham juntas diariamente | Coloque as pessoas que entendem a necessidade do negócio nas mesmas conversas das que constroem e operam o serviço, todos os dias, não em revisões trimestrais. |
| 5 | Construir em torno de indivíduos motivados, dar-lhes apoio e confiar neles | Dê à equipe o acesso, as ferramentas e a autoridade para resolver problemas sem uma cadeia de permissões. A confiança precisa vir acompanhada de responsabilização clara. |
| 6 | A conversa face a face é a melhor forma de transmitir informação | Quando um serviço está falhando, converse. Escreva o resultado depois. Use vídeo ou uma chamada compartilhada se as pessoas não estiverem no mesmo lugar. |
| 7 | Software em funcionamento é a principal medida de progresso | Meça o que roda e funciona para os usuários, como um recurso em uso ou um incidente que deixou de se repetir, não documentos produzidos nem tarefas encerradas. |
| 8 | Desenvolvimento sustentável: um ritmo constante, indefinidamente | Proteja as pessoas de heroísmos permanentes. Uma escala que depende de poucas pessoas exaustas é um risco para o serviço. |
| 9 | Atenção contínua à excelência técnica e ao bom design | Corrija as causas de falhas repetidas e mantenha a plataforma sustentável. O trabalho de qualidade de hoje é o que permite mudar rápido depois. |
| 10 | Simplicidade: maximizar a quantidade de trabalho não realizado | Remova serviços, passos, aprovações e documentos que já não servem a um propósito. Todo item que você mantém precisa ser operado, atualizado e explicado. |
| 11 | As melhores arquiteturas e designs emergem de equipes autoorganizadas | Deixe as pessoas mais próximas do trabalho decidirem como fazê-lo, dentro de limites claros. Dê proteções (guardrails), não instruções detalhadas. |
| 12 | Refletir em intervalos regulares e ajustar | Faça revisões regulares de como a equipe trabalha, inclusive depois de incidentes, e extraia ao menos uma mudança real de cada uma. |

### Quatro temas

Os princípios se dividem em quatro grupos úteis quando você planeja uma conversa.

- **Valor e mudança (1, 2, 3):** entregar cedo e com frequência e tratar a mudança como normal. São os princípios que mais entram em tensão com o controle pesado de mudanças.
- **Pessoas e comunicação (4, 5, 6):** colaboração diária, confiança e conversa direta. São os princípios que mais importam durante incidentes e passagens de bastão.
- **Qualidade e sustentabilidade (7, 8, 9, 10):** resultados em funcionamento como medida de progresso, um ritmo que as pessoas consigam manter, qualidade técnica e simplicidade. Esses princípios protegem um serviço ao longo de anos.
- **Aprendizagem e autoorganização (11, 12):** equipes que decidem como trabalhar e melhoram o modo como trabalham. Esses princípios se ligam à melhoria contínua (veja Tópico 3.15 — Melhoria Contínua).

### Princípios e práticas não são a mesma coisa

Um princípio indica uma direção. Uma prática é uma maneira de segui-la. Scrum, Kanban e Extreme Programming são pacotes de práticas que seus usuários dizem seguir os princípios (veja Tópico 1.4 — Previsões de Entrega e Métricas de Planejamento, Tópico 1.5 — Kanban e Tópico 1.6 — Extreme Programming). Uma equipe pode seguir uma prática e quebrar o princípio que está por trás dela. Uma reunião diária em pé que se torna um relatório de status para um gerente mantém o ritual e perde o sentido dos princípios 4 e 5.

### Onde os princípios são omissos ou contestados

Os princípios não dizem nada sobre segurança, auditoria, regulação ou o custo de uma queda. Não dizem quem está de plantão às três da manhã. Uma equipe de serviço precisa trazer esse conhecimento do ITSM e do seu próprio contexto. Críticos também apontam que o princípio 6 pode ser difícil de cumprir quando as equipes estão espalhadas por fusos horários e que "software em funcionamento como principal medida" pode ser lido como ignorando a documentação. O artigo da Wikipédia sobre desenvolvimento ágil de software registra críticas desse tipo e observa que as evidências dos benefícios dos métodos ágeis são limitadas. Teste os princípios contra os seus próprios resultados.

## Boas práticas

1. **Use os princípios como lista de verificação de revisão.** Escolha dois ou três princípios por mês e pergunte, sobre um release, incidente ou projeto recente, se o comportamento da equipe correspondeu. Use eventos reais, não discussão geral. O valor está nas lacunas que você encontra.
2. **Encurte o intervalo entre releases antes de automatizar.** O princípio 3 prefere o prazo mais curto. Pergunte o que impede você de lançar toda semana em vez de todo mês, liste os bloqueios e remova-os em ordem. A automação então sustenta um ritmo que você já tem.
3. **Crie um caminho para mudanças tardias.** O princípio 2 pede que se acolha a mudança, o que só funciona se houver um modo rápido e seguro de aceitá-la. Defina um caminho leve para mudanças de baixo risco e mantenha uma revisão mais completa para as arriscadas (veja Tópico 3.4 — Habilitação de Mudanças).
4. **Reúna pessoas de negócio e técnicas todos os dias.** O princípio 4 pede trabalho conjunto diário. Numa equipe de serviço, isso pode significar um responsável pelo serviço que participa da reunião diária ou um representante de produto que se senta com o service desk uma vez por semana.
5. **Equilibre a confiança com a responsabilização.** O princípio 5 pede que se confie em pessoas motivadas. Declare com clareza o que cada equipe possui, o que pode decidir sozinha e o que deve escalar. A confiança cresce quando as decisões e seus resultados são visíveis.
6. **Converse primeiro, registre depois.** Durante um incidente, reúna as pessoas certas numa única conversa, presencial ou em chamada, e peça a alguém que anote decisões e horários à medida que acontecem. Isso atende ao princípio 6 e lhe dá um registro para revisão posterior (veja Tópico 3.2 — Gestão de Incidentes).
7. **Conte resultados, não atividade.** O princípio 7 faz do software em funcionamento a medida de progresso. Para um serviço, escolha medidas como o tempo para restabelecer o serviço, quantos usuários usam um novo recurso e com que frequência uma falha se repete. Evite medidas que premiam encerrar tickets depressa sem consertar nada (veja Tópico 5.6 — Métricas e Medição).
8. **Proteja o ritmo.** O princípio 8 pede um ritmo que a equipe poderia manter para sempre. Revise a carga de plantão, as horas extras e o número de interrupções urgentes, e trate uma tendência de alta como risco para o serviço, não como falha pessoal.
9. **Pague a dívida técnica segundo um calendário.** O princípio 9 liga qualidade a agilidade. Reserve uma fatia visível de cada ciclo para reparos, atualizações e testes e ligue-a aos registros de problemas, de modo que o trabalho se baseie em evidências (veja Tópico 3.3 — Gestão de Problemas).
10. **Apague coisas.** O princípio 10 valoriza o trabalho não realizado. Uma vez por trimestre, liste serviços, relatórios, formulários e etapas de aprovação e desative os que ninguém usa ou que já não reduzem risco.
11. **Dê às equipes proteções, não roteiros.** O princípio 11 sustenta que bons designs vêm de equipes autoorganizadas. Defina os limites, como regras de segurança, orçamentos e níveis de serviço, e deixe a equipe escolher como cumpri-los.
12. **Termine toda reflexão com uma mudança.** O princípio 12 pede que a equipe reflita e depois ajuste. Depois de cada retrospectiva ou revisão pós-incidente, acorde uma mudança, nomeie um responsável e confira na revisão seguinte.

## Perguntas para discutir com a equipe

**Qual dos doze princípios seguimos melhor hoje, e qual seguimos menos?**

Dê a lista a cada pessoa e peça que marque um princípio que acha que a equipe segue bem e um que segue mal, depois compare. A divergência é útil porque mostra onde as pessoas veem o trabalho de forma diferente. Peça um exemplo recente por trás de cada marca. Quem facilita deve manter a conversa nos eventos e longe do caráter. Termine escolhendo um princípio para a equipe trabalhar.

**Quanto tempo leva para colocarmos uma melhoria pequena e útil diante dos nossos usuários, e o que a atrasa?**

Esta pergunta testa os princípios 1 e 3. Rastreie uma mudança pequena recente do pedido ao release, anotando cada espera. Respostas típicas incluem reuniões de aprovação, testes manuais e janelas de release. Algumas dessas esperas protegem contra um risco real, então pergunte o que cada uma protege. Em seguida, escolha uma espera para encurtar.

**Quando uma mudança tardia no que o cliente queria nos prejudicou por último, e o que nos teria permitido aceitá-la?**

Peça um caso real e evite generalidades. As pessoas costumam citar cláusulas contratuais, escopo fixo ou um release já congelado. Procure o ponto em que dizer sim teria custado pouco e pergunte o que teria tornado isso possível. Esta pergunta liga o princípio 2 ao modo como a equipe planeja.

**Quem do negócio conversa todos os dias com as pessoas que operam e constroem nossos serviços, e quem deveria?**

Mapeie as pessoas envolvidas num serviço: o responsável, os usuários, o pessoal de suporte, os construtores. Marque com que frequência cada par conversa. Lacunas costumam aparecer entre o pessoal de suporte e os construtores, ou entre os usuários e qualquer pessoa com autoridade para decidir. Quem facilita pode perguntar qual lacuna causou mais problemas nos últimos seis meses e propor um contato pequeno e regular para fechá-la.

**O que seria preciso para trabalharmos neste ritmo por mais cinco anos?**

Esta pergunta testa o princípio 8. Pergunte sobre a carga de plantão, o trabalho de fim de semana e como a equipe se sente ao tirar licença. Atenção às respostas que tratam o heroísmo como normal. Peça fatos, como quantas chamadas fora do expediente a última escala produziu, e mantenha a discussão no sistema, não nas pessoas. Termine com uma mudança que reduziria a carga.

**O que estamos fazendo que poderíamos deixar de fazer sem prejudicar um cliente?**

Esta pergunta aplica o princípio 10. Convide as pessoas a nomear relatórios que ninguém lê, reuniões que se repetem e aprovações que nunca recusam nada. Pergunte quem perceberia se cada uma fosse removida. As respostas precisam ser conferidas antes da ação, então dê a alguém a tarefa de descobrir. As equipes costumam encontrar ganhos rápidos aqui, e o exercício cria o hábito de questionar regras antigas.

## Na prática: um exemplo de ITIL ágil

O departamento de TI de um hospital regional dá suporte a cerca de quarenta aplicações clínicas e administrativas, com um service desk de seis pessoas e uma pequena equipe de desenvolvedores que mantém ferramentas internas. A equipe clínica reclama que correções na ferramenta de agendamento de consultas levam meses, e os desenvolvedores dizem que a maior parte desse tempo é gasta esperando o comitê mensal de mudanças e um fim de semana tranquilo para implantar.

O chefe do departamento conduz um workshop de meio dia usando os doze princípios como lista de verificação. O grupo examina as últimas seis mudanças na ferramenta de agendamento. Cinco eram correções pequenas, e cada uma esperou em média cinco semanas pelo comitê de mudanças. O grupo percebe que os princípios 2 e 3 não estão sendo seguidos na prática e que o princípio 4 também está fraco, porque o responsável clínico pela ferramenta de agendamento só vê as mudanças depois de construídas.

O departamento acorda um teste. Correções que tocam apenas uma tela, têm testes automatizados aprovados e podem ser revertidas em minutos serão tratadas como mudanças padrão e aprovadas com antecedência, com o responsável clínico notificado automaticamente. Uma reunião semanal de dez minutos entre o responsável clínico, um desenvolvedor e um analista do service desk escolherá o que corrigir em seguida. A equipe acrescenta uma revisão mensal de como os tipos de mudança estão funcionando, o que atende ao princípio 12.

Depois de três meses, as correções pequenas chegam aos usuários em cerca de uma semana. O service desk relata menos chamadas repetidas sobre defeitos conhecidos. Uma dificuldade permanece: duas das reuniões semanais foram puladas quando o responsável clínico estava nas enfermarias, e uma decisão que precisava da aprovação dele esperou uma semana. O departamento concorda em nomear um substituto. Descobrem também que parte do pessoal lê "confie na equipe" como licença para pular a etapa de notificação, então tornam a notificação automática em vez de depender de as pessoas a enviarem.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega podem usar os princípios como teste do próprio trabalho. Pergunte se um recurso é pequeno o bastante para ser lançado logo, se pode ser monitorado e revertido e se o pessoal de suporte sabe dele. Os princípios 3, 7 e 9 são os que mais decidem se um release é um presente ou um fardo para quem precisa operá-lo.

### Equipes de serviço e operações

As equipes de operações reconhecerão vários princípios como verdades antigas: conversar durante um incidente, manter um ritmo sustentável e manter as coisas simples. Use-os para pedir tempo para corrigir problemas recorrentes, escalas com que as pessoas consigam viver e participação precoce no design. Esteja pronto para explicar quais controles do ITSM existem por boas razões, de modo que a conversa seja sobre propósito e não sobre lemas.

### Liderança e governança

Os líderes moldam até onde os princípios podem ser seguidos. Acolher a mudança significa aceitar que os planos se movem, e confiar nas equipes significa aceitar que você não aprovará todas as decisões. Pergunte que evidências você precisa para se sentir confortável com essa confiança, como relatórios de nível de serviço, trilhas de auditoria ou revisões de incidentes, e garanta que a equipe consiga produzi-las sem muito trabalho manual.

### Clientes e usuários

Para os clientes, os princípios prometem mudanças frequentes e úteis e voz no que vem a seguir. Pedem também algo em troca: contato diário ou ao menos regular, decisões rápidas e disposição de experimentar releases pequenos. Clientes que só aparecem no início e no fim de um projeto receberão a forma mais lenta dos benefícios.

## Modos de falha comuns

- **Tratar os princípios como um regulamento.** As equipes discutem a redação e perdem a intenção. Em vez disso, use um princípio para iniciar uma conversa sobre um evento real e decidir o que mudar.
- **Ler "acolher a mudança" como "aceitar qualquer coisa".** Sem limites, um serviço é desestabilizado por todo pedido. Em vez disso, acolha a mudança por um caminho definido que verifique rapidamente risco, custo e valor.
- **Lançar com frequência sem qualidade.** Releases frequentes com testes fracos produzem quedas frequentes. Em vez disso, trate o princípio 9 como condição do princípio 3 e invista em testes e rollback antes de acelerar.
- **Confundir ritmo constante com ritmo lento.** Uma equipe que usa "sustentável" para evitar trabalho duro perde a confiança. Em vez disso, acorde como é um ritmo estável e ambicioso e meça-o ao longo de meses.
- **Substituir a conversa face a face por uma ferramenta.** Canais de chat e tickets se enchem de detalhes que ninguém lê. Em vez disso, converse quando um assunto for urgente ou obscuro e registre as decisões depois.
- **Medir o progresso pela atividade.** Contar tickets encerrados ou releases entregues premia o movimento. Em vez disso, acompanhe resultados que os usuários veem, como serviço restabelecido, recursos adotados e menos incidentes repetidos.
- **Fazer retrospectivas que não mudam nada.** A equipe conversa e o ciclo seguinte é igual. Em vez disso, acorde uma mudança em cada retrospectiva e confira-a primeiro na seguinte.
- **Ignorar o silêncio dos princípios sobre risco.** As equipes pulam segurança e conformidade porque os princípios não as mencionam. Em vez disso, inclua-as como restrições explícitas e discuta como cumpri-las em passos pequenos.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Ritmo de entrega (princípios 1 a 3) | Os releases são raros e grandes | Algumas equipes lançam em pequenos passos | As equipes compartilham um ritmo curto de release e um caminho para mudanças tardias | O intervalo de release e o lead time são acompanhados e revisados | Os ritmos de release são coordenados entre serviços e fornecedores |
| Colaboração (princípios 4 a 6) | Pessoas de negócio e técnicas se encontram em marcos | Algumas equipes se reúnem diariamente com representantes do negócio | Cada serviço tem um responsável nomeado e contato regular com seus usuários | As lacunas de colaboração são encontradas em revisões e corrigidas | Clientes e fornecedores participam do planejamento e das revisões de incidentes |
| Sustentabilidade e qualidade (princípios 7 a 10) | A pressão é tratada com horas extras; problemas de qualidade são tolerados | Algumas equipes acompanham a carga de plantão e a dívida técnica | Tempo para reparos e uma escala justa estão embutidos no planejamento | Resultados, carga e falhas recorrentes são medidos e tratados | A simplificação é rotina em toda a organização |
| Aprendizagem e autoorganização (princípios 11 e 12) | As revisões ocorrem só após falhas graves | Algumas equipes fazem retrospectivas regulares | Toda equipe revisa seu trabalho num ritmo fixo e registra uma mudança | As ações de revisão são acompanhadas até a conclusão e os resultados conferidos | As melhorias de uma equipe se espalham para outras sem direção central |

## Lista de verificação

- [ ] Todo integrante da equipe leu os doze princípios em agilemanifesto.org.
- [ ] Revisamos um release ou incidente recente à luz de ao menos três princípios.
- [ ] Conhecemos o nosso intervalo de release e listamos o que nos impede de encurtá-lo.
- [ ] As mudanças de baixo risco têm um caminho rápido de aprovação, e as arriscadas têm um mais completo.
- [ ] Cada serviço tem um responsável nomeado que conversa regularmente com seus usuários.
- [ ] Os incidentes reúnem as pessoas certas numa só conversa, com as decisões registradas.
- [ ] Acompanhamos a carga de plantão e a revisamos ao menos uma vez por trimestre.
- [ ] Uma fatia visível de cada ciclo vai para reparos e dívida técnica.
- [ ] Desativamos ao menos um relatório, etapa ou serviço no último trimestre.
- [ ] Toda retrospectiva termina com uma mudança acordada, um responsável e uma data para conferi-la.

## Prompts de IA

**Finalidade: revisar um release ou incidente recente à luz dos doze princípios.**

```text
You are helping a team review a recent event against the twelve principles behind the Agile Manifesto.

The twelve principles, in short: (1) satisfy the customer through early and continuous delivery; (2) welcome changing requirements; (3) deliver frequently, preferring shorter timescales; (4) business people and developers work together daily; (5) build around motivated individuals and trust them; (6) face-to-face conversation; (7) working software is the primary measure of progress; (8) a sustainable, constant pace; (9) attention to technical excellence and good design; (10) simplicity, maximizing the work not done; (11) self-organizing teams; (12) regular reflection and adjustment.

Event: [paste a factual, blameless description of a release, incident, or delayed change, in the order things happened].

Pick the three principles most relevant to this event. For each, say in two or three sentences whether the team's behavior matched the principle, citing only details from the event text. Then suggest two questions for the team to discuss. Ask me up to three clarifying questions first if the event description is too thin. Mark assumptions, and list what you are unsure of.
```

**Finalidade: descobrir o que atrasa as mudanças pequenas, usando os princípios 2 e 3.**

```text
I want to understand why small changes take a long time to reach our users. Here is the sequence of steps for one recent small change, with how long each step took: [paste the steps and durations; for example "request raised, 1 day; waiting for change board, 9 days"].

Our change process is described as: [paste a short description of the change approval process, including who approves what].

List the waits in order of length. For each wait, suggest what risk it may be protecting against and one lighter way to manage that risk. Do not claim that any standard or regulation requires a step unless I have pasted its text. Mark where you are guessing, and list what you are unsure of.
```

**Finalidade: transformar os princípios em perguntas para uma retrospectiva.**

```text
Create a 45-minute retrospective plan for a team of [number and type of people, e.g. "seven people who build and run an internal payroll service"]. The retrospective should use the twelve Agile Manifesto principles to look at the last [period, e.g. "four weeks"].

Context: [paste 3-5 sentences about what happened in the period, including any incident, release, or conflict].

Include a timed agenda, one activity that surfaces facts, one that groups them by principle, and a closing step where the team agrees exactly one change with an owner and a date to review. Keep it free of any specific tool. If information is missing, ask me clarifying questions first, and list what you are unsure of.
```

**Finalidade: verificar a simplicidade de um processo proposto (princípio 10).**

```text
Here is a process we use: [paste the steps, who does them, and the forms or approvals involved].

For each step, ask what purpose it serves, who benefits, and what would happen if it were removed. Then propose a shorter version that keeps the purposes that matter. Flag any step that exists because of an external requirement I have named: [list any laws, contracts, or standards you are certain apply, or write "none known"]. Do not invent requirements. List your assumptions and what you are unsure of.
```

## Skills de IA

- [agile-principles](../../../../skills/agile-principles/SKILL.md): use para conferir uma prática ou decisão da equipe com os princípios e conversar sobre o que cada um significa no contexto.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): use para conduzir a reflexão regular que o princípio 12 pede e transformá-la numa mudança real.
- [kaizen](../../../../skills/kaizen/SKILL.md): use para planejar melhorias pequenas e contínuas depois de uma reflexão ou revisão.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): use para planejar releases frequentes e pequenos, de acordo com os princípios 1 e 3.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): use ao ajudar uma equipe a passar de seguir rituais a compreender os princípios por trás deles.

## Fontes principais

- **Principles behind the Agile Manifesto** (agilemanifesto.org): o texto primário dos doze princípios; leia-o por inteiro.
- **Manifesto for Agile Software Development** (agilemanifesto.org): os quatro valores que os princípios elaboram.
- **History: The Agile Manifesto** (agilemanifesto.org): o relato dos autores sobre como o grupo se reuniu e o que queria mudar.
- **Agile software development** (Wikipedia): um panorama com história, práticas e críticas, útil para encontrar leituras adicionais.

## Referências

1. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
6. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
7. Technical debt — Wikipedia — https://en.wikipedia.org/wiki/Technical_debt
8. Self-organization — Wikipedia — https://en.wikipedia.org/wiki/Self-organization
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
