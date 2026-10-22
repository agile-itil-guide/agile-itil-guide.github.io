# Service Desk

**O service desk é o lugar onde usuários e provedor de serviço se encontram, e numa organização ágil a sua saída mais valiosa não são os tickets encerrados, mas o que ele aprende sobre como os usuários vivenciam o serviço.**

## Por que isso importa

Para a maioria dos usuários, o service desk é o serviço. Raramente veem os engenheiros, a arquitetura ou o pipeline; veem a pessoa que atende quando algo dá errado. O modo como essa conversa se desenrola molda a confiança deles em tudo o que há por trás. Um desk simpático e competente pode amenizar uma queda ruim, e um desdenhoso pode azedar um bom serviço.

O desk também é o melhor sensor que uma organização tem. Cada contato é uma pequena evidência do que os usuários acham confuso, do que quebra e do que gostariam que o serviço fizesse. As equipes ágeis que lançam com frequência precisam dessa evidência depressa. Um desk isolado das equipes de entrega produz tickets, e um desk conectado produz melhorias.

O [artigo da Wikipédia sobre gestão de serviços de TI](https://en.wikipedia.org/wiki/IT_service_management) descreve o service desk como um ponto único de contato entre provedores e usuários ou clientes, que trata incidentes e requisições de serviço. O [artigo da Wikipédia sobre help desks](https://en.wikipedia.org/wiki/Help_desk) é curto: cobre a definição, o gerenciamento de filas e o roteamento de chamadas e não diz nada sobre história, níveis de suporte, métricas ou a diferença entre um help desk e um service desk. Este tópico, portanto, recorre a esses dois artigos para as definições, e o resto é orientação prática oferecida como tal, não como achados estabelecidos.

## Conceitos centrais

### O que é um service desk

Um **help desk**, segundo a Wikipédia, é um departamento ou pessoa que dá assistência e informação, em geral para problemas eletrônicos ou de computador. Um **service desk**, no uso da ITSM, é mais amplo: o ponto único de contato de usuários e clientes, que trata tanto incidentes (interrupções ou interrupções potenciais de um serviço) quanto requisições de serviço (pedidos de rotina de algo que o serviço normalmente fornece). O artigo sobre help desk lista "service desk" apenas como tópico relacionado, então o limite exato entre os dois termos não é dado ali. Muitas organizações usam as palavras de forma intercambiável; o que importa é o que se espera do seu desk.

### Usuários e clientes

O artigo sobre ITSM distingue os usuários, que usam o serviço, dos clientes, que o pagam ou o encomendam. Um desk ouve principalmente os usuários. Deve também saber quem são os clientes, porque eles decidem prioridades e financiamento. Um bom desk sabe falar com os dois.

### Filas e roteamento

A Wikipédia diz que os grandes help desks têm uma pessoa ou equipe que gerencia os pedidos recebidos, muitas vezes chamada de gestores ou supervisores de fila, que atribui cada questão a uma equipe especializada por tipo. Alguns desks usam sistemas telefônicos com distribuição automática de chamadas que encaminham ligações sobre temas específicos a analistas com a experiência certa. O roteamento é a principal ferramenta do desk para casar o problema com a pessoa que pode resolvê-lo.

### Níveis de suporte

Muitos desks organizam o suporte em níveis, muitas vezes chamados de camadas (tiers). As fontes lidas para este guia não descrevem camadas, então o seguinte é uma prática comum descrita em termos gerais, não uma afirmação de fonte:

| Nível | Papel típico |
|---|---|
| Primeira linha | Recebe contatos, registra-os, resolve questões comuns com conhecimento documentado e encaminha o resto |
| Segunda linha | Trata questões mais difíceis que exigem habilidade técnica mais profunda |
| Terceira linha | Especialistas, muitas vezes os engenheiros que constroem o serviço, que corrigem falhas subjacentes |

O modelo tem uma fraqueza conhecida: pode fazer de cada nível um lugar onde o trabalho espera. As equipes ágeis costumam tentar encurtar o caminho para que um analista do desk possa alcançar um engenheiro diretamente (veja Tópico 3.2 — Gestão de Incidentes).

### Canais

Os contatos chegam por telefone, e-mail, chat, um portal web ou pessoalmente. Cada canal serve a usuários e problemas diferentes. Um portal pode tornar as requisições estruturadas e rápidas. Uma linha telefônica serve a uma queda urgente. Oferecer vários canais é bom, desde que todos alimentem o mesmo registro, de modo que a demanda fique visível num só lugar (veja Tópico 2.1 — Gestão de Serviços de TI sobre a porta de entrada única).

### Autosserviço e conhecimento

Muitos desks oferecem autosserviço: um portal em que os usuários podem encontrar respostas e fazer requisições de rotina sem falar com ninguém. As fontes lidas não descrevem o autosserviço, mas ele se liga a duas práticas deste guia: uma boa base de conhecimento (veja Tópico 3.9 — Gestão do Conhecimento) e uma lista clara de serviços (veja Tópico 3.8 — Gestão do Catálogo de Serviços).

### O desk como fonte de evidências

O que um desk registra pode ser valioso para toda a organização: as perguntas mais comuns, as falhas mais comuns, quanto tempo as coisas levam e o que os usuários dizem. Essa evidência ajuda as equipes de entrega a decidir o que corrigir, ajuda a gestão de problemas a encontrar causas (veja Tópico 3.3 — Gestão de Problemas) e ajuda a gestão de níveis de serviço a acordar metas realistas (veja Tópico 3.7 — Gestão de Níveis de Serviço). Um desk que registra apenas o suficiente para encerrar tickets desperdiça isso.

### Medidas

Os desks costumam ser julgados por contagens: contatos tratados, tempo para atender, tempo para encerrar. Contagens são fáceis de coletar e fáceis de usar mal. O tempo para encerrar pode ser manipulado encerrando tickets cedo, e contagens de contatos podem premiar tratar problemas repetidos em vez de eliminá-los. Medidas melhores incluem a satisfação dos usuários, com que frequência um contato é resolvido no primeiro toque e se os contatos repetidos sobre a mesma questão diminuem com o tempo. Trate qualquer medida como estímulo para uma pergunta e acorde o que fará com ela (veja Tópico 5.6 — Métricas e Medição).

### Críticas e limites

Os artigos da Wikipédia lidos para este guia não nomeiam críticas a help desks ou service desks. Os praticantes costumam levantar algumas preocupações conhecidas: que os desks são tratados como custo a minimizar, que roteiros substituem o julgamento, que as pessoas que atendem não têm poder para consertar nada e que a rotatividade é alta. Elas são amplamente discutidas, mas aparecem aqui como preocupações comuns, não como achados das fontes.

## Boas práticas

1. **Dê ao desk um propósito claro.** Escreva para que o desk serve: a quem atende, o que trata e o que repassa. Um desk sem propósito declarado deriva para tratar o que quer que chegue.
2. **Ofereça poucos canais bons que alimentem um só registro.** Escolha os canais que seus usuários preferem e garanta que cada um crie um registro no mesmo lugar. Canais ocultos, como mensagens pessoais a engenheiros, escondem a demanda.
3. **Separe incidentes de requisições e de perguntas.** Use categorias simples e exemplos, para que os analistas classifiquem de modo consistente. A separação importa para a prioridade e para os relatórios (veja Tópico 3.6 — Gestão de Requisições de Serviço).
4. **Ponha o conhecimento diante do analista.** Forneça orientação curta e pesquisável para os problemas mais comuns e atualize-a quando a resposta mudar. Pergunte aos analistas quais artigos usam e quais estão errados.
5. **Deixe o desk resolver o que puder.** Onde for seguro, dê aos analistas autoridade e ferramentas para resolver questões comuns, como redefinição de senhas e concessão de acessos. Cada escalonamento desnecessário custa tempo ao usuário.
6. **Crie uma linha direta com os engenheiros.** Facilite que os analistas perguntem a uma equipe de entrega sobre uma nova falha, e que a equipe avise o desk de um release. Um canal compartilhado e um contato nomeado bastam para começar.
7. **Avise o desk das mudanças antes que os usuários as sintam.** Compartilhe notas de release e problemas conhecidos com o desk antecipadamente (veja Tópico 3.5 — Gestão de Releases e Implantações). Surpresas fazem o desk parecer desinformado.
8. **Registre o bastante para aprender, e não mais.** Capture a categoria, o serviço afetado, o que aconteceu e como foi resolvido. Revise os campos regularmente e remova os que ninguém usa.
9. **Revise os contatos por temas.** Uma vez por mês, agrupe os contatos recentes por causa e olhe os primeiros. Compartilhe os temas com as equipes de entrega e a gestão de problemas.
10. **Pergunte aos usuários como foi.** Use uma pergunta curta após um contato, como se o problema foi resolvido. Leia os comentários. Combine com outras evidências, já que uma nota de satisfação sozinha é fácil de interpretar mal.
11. **Cuide das pessoas.** Ofereça treinamento, variedade e um caminho para outros papéis. Um desk é tão bom quanto as pessoas que o compõem, e a alta rotatividade é um custo que não aparece nas contagens de tickets.
12. **Trate o desk como parte da entrega.** Inclua um representante do desk nos reviews de sprint e no planejamento e trate o feedback do desk como entrada do backlog (veja Tópico 5.1 — Gestão Ágil de Serviços).

## Perguntas para discutir com a equipe

**O que um usuário vivencia ao nos contatar, do primeiro momento à resposta?**

Percorra um contato típico como o usuário. Note como ele encontra o desk, o que lhe perguntam, quanto espera e o que ouve. Pergunte a alguns usuários, se possível. O objetivo é ver o serviço de fora. Quem facilita pode perguntar onde o usuário tem mais chance de se sentir ignorado. Em seguida, escolha um passo a melhorar.

**O que ouvimos com mais frequência, e o que foi feito a respeito?**

Liste os cinco motivos de contato mais comuns do último mês. Ao lado de cada um, escreva o que, se algo, foi feito para reduzi-lo. Uma lacuna mostra onde a evidência do desk não chega a ninguém que possa agir. Pergunte quem deve receber a lista e com que frequência. Acorde enviar a primeira neste mês.

**Onde um analista não consegue resolver algo que resolveria com a ferramenta, o acesso ou o conhecimento certos?**

Peça aos analistas exemplos de escalonamentos que pareceram desnecessários. Respostas típicas incluem acesso que lhes falta, conhecimento desatualizado e medo de errar. Trate as respostas como uma lista de melhorias. Pergunte quais podem ser feitas com segurança agora e que salvaguardas ajudariam nas demais.

**Como ficamos sabendo de mudanças que afetam os usuários, e com que antecedência?**

Olhe os últimos releases ou quedas e pergunte quando o desk soube de cada um. Informação tardia é comum. Pergunte que canal funcionaria: um feed compartilhado, um breve informe, um contato nomeado. As equipes de entrega devem estar na sala. Acorde uma regra simples, como nenhum release sem uma nota ao desk.

**Quais das nossas medidas nos ajudam a melhorar, e quais apenas reportamos?**

Liste as medidas que o desk produz e pergunte quem usa cada uma. Medidas que ninguém usa são candidatas à remoção. Pergunte de que medida as pessoas têm medo e por quê. Se os analistas manipulam uma medida, ela precisa mudar. Escolha uma medida a trocar ou acrescentar que mostre se os usuários estão melhor.

**Como mantemos as pessoas que trabalham aqui, e o que dizem precisar?**

Pergunte aos analistas o que melhoraria o trabalho e o que os faria sair. Respostas comuns são variedade, treinamento, reconhecimento e um caminho para crescer. Não prometa o que não pode cumprir; comprometa-se com uma mudança visível. Quem facilita deve tratar a rotatividade como risco do serviço e não apenas como questão de pessoal.

## Na prática: um exemplo de ITIL ágil

O service desk de TI interno de uma autoridade tributária nacional dá suporte a cerca de 9.000 funcionários com uma equipe de 25 analistas. Os contatos chegam por telefone, e-mail e um portal. Os funcionários reclamam de terem de explicar o problema várias vezes, e as equipes de entrega reclamam de saber das falhas só quando um gerente irritado liga.

O gerente do desk se reúne com os líderes de três equipes de entrega e propõe três mudanças. Primeiro, um canal de chat compartilhado liga analistas e equipes de entrega, com a regra de que a primeira resposta é esperada em uma hora útil. Segundo, todo release recebe uma nota curta ao desk antes da implantação, escrita pela equipe de entrega num modelo de uma página. Terceiro, o desk produz uma lista mensal dos dez motivos de contato mais comuns e a compartilha com todas as equipes de entrega, que se comprometem a olhar os três primeiros.

Depois de três meses, o desk e as equipes de entrega relatam que várias falhas repetidas foram corrigidas, e os analistas dizem se sentir mais bem informados. Algumas dificuldades permanecem. O canal compartilhado ficou ruidoso e alguns analistas o ignoram, as notas de release atrasam nos dias cheios e uma equipe de entrega não respondeu à lista mensal. O gerente do desk pede às equipes de entrega que indiquem uma pessoa para acompanhar o canal, passa as notas de release tardias para a lista de verificação de release e leva o silêncio da equipe que não responde ao chefe de TI, que pede ao líder da equipe que compareça à próxima revisão mensal.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega devem tratar o service desk como colega e como cliente. Diga ao desk o que está mudando e o que esperar. Leia seus temas mensais e leve os principais para o backlog. Convide um analista aos reviews, para que as pessoas que ouvem os usuários todos os dias informem os próximos passos.

### Equipes de serviço e operações

As equipes de operações compõem o desk ou trabalham de perto com ele. Dê aos analistas o conhecimento e a autoridade para resolver questões comuns e torne o escalonamento rápido e respeitoso. Use a evidência do desk na gestão de problemas e no planejamento de capacidade e proteja as pessoas de serem tratadas como fábrica de tickets.

### Liderança e governança

Os líderes decidem se o desk é um custo a minimizar ou uma fonte de percepção. Peça temas e resultados, não apenas volumes. Proteja o treinamento e as trilhas de carreira. Cuidado com metas que premiam encerrar depressa ou desviar contatos, que baixam a qualidade enquanto melhoram os números.

### Clientes e usuários

Clientes e usuários se beneficiam de um desk fácil de alcançar, que entende o problema e os mantém informados. Descreva o problema com clareza, diga o que estava fazendo e conte ao desk que resultado precisa. Dê feedback após um contato, já que é um dos poucos sinais que chegam à equipe.

## Modos de falha comuns

- **Tratar o desk só como centro de custo.** O desk é dotado do mínimo de pessoal e avaliado por volume. Em vez disso, meça resultados e invista nas habilidades e ferramentas do desk.
- **Canais ocultos.** Os usuários contornam o desk mandando mensagem a engenheiros. Em vez disso, torne fáceis os canais oficiais e encaminhe os pedidos informais ao registro.
- **Escalar por padrão.** Os analistas repassam tudo para evitar culpa. Em vez disso, treine, equipe e confie nos analistas para resolver o que puderem.
- **Conhecimento desatualizado.** Os artigos descrevem sistemas que mudaram. Em vez disso, atribua responsáveis e datas de revisão e pergunte aos analistas quais artigos os decepcionam.
- **O desk descobre por último.** Releases e quedas o pegam de surpresa. Em vez disso, faça do informe ao desk parte da lista de verificação de release.
- **Métricas que convidam à manipulação.** O tempo para encerrar leva a encerramentos precoces. Em vez disso, combine uma medida de rapidez com uma de qualidade e fique atento a padrões.
- **Nenhum retorno à entrega.** A evidência do desk não vai a lugar nenhum. Em vez disso, compartilhe temas mensais e espere uma resposta.
- **Ignorar as pessoas.** Alta rotatividade e moral baixa são aceitas. Em vez disso, ofereça treinamento, variedade e caminhos para outros papéis.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Tratamento de contatos | Os contatos chegam por muitas vias informais | Existe um desk com alguns canais compartilhados | Uma porta de entrada única com categorias e roteamento acordados | Tratamento e resultados são medidos e revisados | O tratamento de contatos é coordenado entre equipes e fornecedores |
| Conhecimento e ferramentas | As respostas vivem na cabeça das pessoas | Existe alguma orientação | Conhecimento mantido e ferramentas comuns apoiam a resolução na primeira linha | O uso e a exatidão do conhecimento são acompanhados | Conhecimento e ferramentas são compartilhados com usuários, equipes de entrega e fornecedores |
| Ligação com a entrega | O desk fica sabendo das mudanças pelos usuários | Algumas equipes de entrega informam o desk | Os releases incluem uma nota ao desk e um contato nomeado | O fluxo de informação é medido e as lacunas fechadas | O desk e as equipes de entrega planejam e revisam em conjunto |
| Aprender com os contatos | Os contatos são encerrados e esquecidos | Alguns temas são notados | Os temas mensais são compartilhados e acompanhados | Os temas levam a correções planejadas cujo efeito é conferido | Os temas alimentam o planejamento entre serviços e com clientes |

## Lista de verificação

- [ ] O desk tem um propósito escrito que diz a quem serve e o que trata.
- [ ] Todos os canais criam um registro num único lugar.
- [ ] Incidentes, requisições e perguntas são classificados de modo consistente.
- [ ] Os analistas têm orientação pesquisável para as questões mais comuns, com responsáveis e datas de revisão.
- [ ] Os analistas conseguem resolver questões comuns sem escalar.
- [ ] Há um caminho direto entre analistas e equipes de entrega.
- [ ] O desk é avisado de releases e problemas conhecidos antes que os usuários os sintam.
- [ ] Os temas mensais são compartilhados com as equipes de entrega e a gestão de problemas.
- [ ] Os usuários são perguntados brevemente como foi um contato.
- [ ] Existem treinamento e trilhas de carreira para o pessoal do desk.

## Prompts de IA

**Finalidade: encontrar temas num mês de contatos.**

```text
Below is a list of contacts to our service desk from the last [period]: [paste short, anonymized descriptions, one per line; remove names and personal data first].

Group them into themes based only on what is written. For each theme, give a name, the number of contacts in my list, one example, and one question that delivery teams or problem management could ask. Highlight the top three themes by count from my list. Mark contacts you could not classify. Do not invent categories beyond the text or estimate counts for contacts I did not provide. List what you are unsure of.
```

**Finalidade: escrever uma nota de release de uma página para o service desk.**

```text
Help me write a one-page release note for a service desk about this change.

What changed (plain words): [describe].
Who is affected and when: [describe].
What users might ask or report: [list, or write "unknown"].
Known issues and workarounds: [list, or write "none known"].
How to roll back or who to call: [describe].

Write the note in short sections: what changed, what users will notice, what to tell users, what to do if it goes wrong, and who to contact. Use only my information. Mark assumptions as such, ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Finalidade: melhorar um artigo de conhecimento que os analistas usam.**

```text
Here is a knowledge article that service desk analysts use: [paste it].
Here is what analysts say is wrong or missing: [paste their comments, or write "none yet"].

Rewrite it so that a first-line analyst can follow it in under two minutes: a one-line symptom, steps to check, the fix, when to escalate and to whom, and the date and owner of the article. Do not add technical facts that are not in the article or the comments. Mark any step you are unsure of with [CHECK], and list what you are unsure of.
```

**Finalidade: planejar uma conversa entre o service desk e uma equipe de entrega.**

```text
Plan a 45-minute conversation between a service desk of [number] analysts and a delivery team of [number] people.

Recent frictions: [describe in a few sentences].
What each side says it needs: [describe, or write "unknown"].

Give a timed agenda, five questions for each side, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md): use para dar ao desk uma lista clara dos serviços que suporta e das requisições que trata.
- [runbook](../../../../skills/runbook/SKILL.md): use para transformar correções comuns em procedimentos curtos que os analistas de primeira linha possam seguir.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): use para desenhar como o desk pede feedback aos usuários.
- [survey-design](../../../../skills/survey-design/SKILL.md): use para desenhar uma breve pesquisa de satisfação que produza respostas utilizáveis.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): use para entender o volume e os tipos de contatos e planejar o dimensionamento de pessoal.

## Fontes principais

- **IT service management** (Wikipedia): a definição do service desk como ponto único de contato, com incidentes e requisições de serviço.
- **Help desk** (Wikipedia): um breve panorama da definição de help desk, do gerenciamento de filas e do roteamento de chamadas.
- **Technical support** (Wikipedia): contexto sobre o campo mais amplo de suporte a que os help desks pertencem.
- **ITIL** (Wikipedia): contexto sobre como a prática de service desk se situa no ITIL.

## Referências

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. Technical support — Wikipedia — https://en.wikipedia.org/wiki/Technical_support
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Customer service — Wikipedia — https://en.wikipedia.org/wiki/Customer_service
6. Issue tracking system — Wikipedia — https://en.wikipedia.org/wiki/Issue_tracking_system
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Call centre — Wikipedia — https://en.wikipedia.org/wiki/Call_centre
