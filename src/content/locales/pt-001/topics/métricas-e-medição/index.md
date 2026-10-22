# Métricas e Medição

**Uma boa medição ajuda a equipe a ver se seu trabalho está ajudando os usuários e melhorando, e o modo mais seguro de usar qualquer medida é como uma pergunta para discutir, nunca como uma meta a atingir.**

## Por que isso importa

As equipes precisam de números para se orientar. Sem eles, as decisões dependem da memória, das vozes mais altas e de quem falou por último. Com os números errados, as decisões podem ser piores que nenhuma: uma equipe que conta tickets encerrados aprende a encerrar tickets depressa, quer os problemas dos usuários sejam resolvidos ou não. A medição é poderosa e muda o comportamento de modos que seus desenhistas nem sempre pretendem.

Este guia já usou muitas medidas: as medidas de entrega de software do DORA (veja Tópico 3.4 — Habilitação de Mudanças), as quatro medidas de fluxo do Kanban Guide (veja Tópico 1.5 — Kanban), indicadores e objetivos de nível de serviço (veja Tópico 3.7 — Gestão de Níveis de Serviço) e a carga do pager (veja Tópico 3.10 — Monitoramento e Gestão de Eventos). Este tópico as reúne, acrescenta a definição de metas com objetivos e resultados-chave e medidas de satisfação do cliente e as confronta com o mais antigo aviso do campo: a lei de Goodhart.

O [artigo da Wikipédia sobre a lei de Goodhart](https://en.wikipedia.org/wiki/Goodhart%27s_law) dá o adágio em sua forma usual, "Quando uma medida se torna uma meta, deixa de ser uma boa medida", e o credita ao economista britânico Charles Goodhart, que escreveu num artigo de 1975 sobre a política monetária do Reino Unido que qualquer regularidade estatística observada tende a desabar quando se exerce pressão sobre ela para fins de controle. A redação usual é posterior, e o artigo a atribui a Keith Hoskin (1996) e ao artigo de Marilyn Strathern de 1997. A ideia tem longa história em diferentes campos e é o ponto de partida certo para este tópico.

## Conceitos centrais

### Medidas, metas e a lei de Goodhart

Uma **medida** descreve algo. Uma **meta** é um número que se espera que alguém atinja. A passagem da primeira para a segunda é onde começa o problema. Quando as pessoas são premiadas ou punidas por um número, acham modos de mover o número que não são o mesmo que melhorar aquilo que ele descreve. O artigo dá exemplos da política monetária, de sistemas escolares e da área da saúde. Numa organização de serviço, exemplos fáceis são: o tempo para encerrar tickets cai porque os tickets são encerrados cedo, as contagens de implantações sobem porque as mudanças são divididas e a disponibilidade parece subir porque as quedas são reclassificadas.

O remédio não é evitar medir, mas medir com cuidado:

- Use várias medidas que puxem em sentidos opostos, como rapidez e qualidade.
- Discuta os números com as pessoas cujo trabalho descrevem.
- Não ligue prêmios ou disciplina individuais a um único número.
- Mude as medidas quando deixarem de ser informativas.

### Tipos de medida

| Tipo | Pergunta a que responde | Exemplos |
|---|---|---|
| **Resultado** | Os usuários e o negócio estão melhor? | Satisfação do usuário, êxito em tarefas, receita, incidentes que prejudicam usuários |
| **Fluxo** | Quão bem o trabalho se move? | Tempo de ciclo, vazão, idade do item de trabalho, trabalho em andamento |
| **Desempenho de entrega** | Quão bem as mudanças chegam à produção? | Lead time de mudanças, frequência de implantação, taxa de falha de mudanças, tempo de recuperação |
| **Nível de serviço** | O serviço atende às necessidades dos usuários? | Disponibilidade, latência, taxa de erros contra objetivos |
| **Saúde e sustentabilidade** | Isto pode continuar? | Carga do pager, toil, horas extras, sentimento da equipe |
| **Custo** | Quanto custa por unidade de valor? | Custo por transação ou por usuário |

Um conjunto equilibrado tira de várias linhas, para que melhorar uma não seja comprado à custa de outra.

### Medidas do DORA

As medidas de desempenho de entrega de software do DORA são lead time de mudanças, frequência de implantação, tempo de recuperação de implantações com falha, taxa de falha de mudanças e taxa de retrabalho de implantações. O guia do DORA sobre as métricas diz que rapidez e estabilidade não são compromissos opostos, pois as medidas são correlacionadas para a maioria das equipes. Adverte contra defini-las como metas, depender de uma só, comparar aplicações muito diferentes e competir com outras equipes, e aconselha melhorar contra o seu próprio desempenho passado. O artigo da Wikipédia sobre DevOps acrescenta que alguns especialistas criticaram a metodologia e as métricas da pesquisa do DORA, então trate-as como perguntas úteis com limites (veja Tópico 5.2 — DevOps).

### Medidas de fluxo

O Kanban Guide define quatro medidas: trabalho em andamento, vazão, idade do item de trabalho e tempo de ciclo. Observa que as equipes podem renomeá-las e devem acrescentar outras conforme a necessidade e diz que as medidas só importam quando informam as práticas de definir o fluxo de trabalho, gerir os itens nele e melhorá-lo. A idade do item de trabalho é especialmente útil porque mostra o problema enquanto ainda há tempo de agir (veja Tópico 5.4 — Gestão do Fluxo de Valor).

### Medidas de nível de serviço

Os indicadores e objetivos de nível de serviço (veja Tópico 3.7 — Gestão de Níveis de Serviço) dão a visão mais direta do que os usuários experimentam. O livro de SRE defende poucos indicadores escolhidos entre aquilo com que os usuários se importam, percentis e não só médias e objetivos que não são a perfeição. Os orçamentos de erro transformam a distância numa regra de decisão comum (veja Tópico 5.3 — Engenharia de Confiabilidade de Sites).

### Objetivos e resultados-chave

**Objetivos e resultados-chave (OKRs)** são um framework de definição de metas. O artigo da Wikipédia descreve um OKR como um objetivo, uma meta significativa, concreta e claramente definida, emparelhado com três a cinco resultados-chave, que são critérios de sucesso mensuráveis. Credita a Andrew Grove a popularização da abordagem na Intel na década de 1970 e sua documentação em *High Output Management* (1983) e a John Doerr o ato de levá-la ao Google em 1999. O artigo diz que os OKRs são pontuados de 0,0 a 1,0, que resultados-chave aspiracionais visam cerca de 0,7 e que Doerr recomenda uma taxa-alvo de sucesso de cerca de 70%, de modo que um resultado-chave sempre atingido deve ser reavaliado. Aconselha evitar objetivos de rotina do negócio e preferir indicadores antecedentes aos retardados.

O artigo registra também críticas: a maioria das organizações deixou de definir OKRs de contribuintes individuais, que tendem a parecer listas de tarefas e se confundir com avaliações de desempenho, e OKRs em vários níveis podem criar uma abordagem em cascata. Não dá evidência independente de eficácia e traz uma marcação de manutenção sobre depender de fontes próximas ao assunto. Para equipes de serviço, os OKRs podem ligar resultados (por exemplo, "os usuários completam o cadastro sem ajuda") a resultados-chave mensuráveis, desde que não sejam transformados em metas individuais.

### Satisfação do cliente

Medir o que os usuários pensam é difícil de fazer bem. Um instrumento comum é o **net promoter score (NPS)**. Segundo a Wikipédia, baseia-se numa pergunta sobre quão provável é que os respondentes recomendem uma empresa, produto ou serviço, com os promotores pontuando 9 ou 10, os passivos 7 ou 8 e os detratores 6 ou menos; a nota é a porcentagem de promotores menos a porcentagem de detratores. Fred Reichheld, da Bain & Company, o popularizou num artigo da *Harvard Business Review* de 2003. O artigo registra limites: os acadêmicos questionam se ele prevê de forma confiável o crescimento da empresa, um único item exige grande número de respostas, diz pouco sobre problemas específicos, pesquisas em excesso geram reclamações e ligá-lo à remuneração pode distorcer o comportamento, de modo que Reichheld recomendou desvinculá-los. Existem outros instrumentos, como as notas de satisfação do cliente e as de esforço do cliente, mas o artigo não os discute.

Seja qual for o instrumento, faça uma pergunta curta, sempre permita uma resposta em texto livre, leia os comentários e dê seguimento ao que aprender.

### Medir pessoas e sustentabilidade

As medidas de carga e saúde da equipe, como carga do pager, toil, horas extras e sentimento, são medidas da sustentabilidade do serviço (veja Tópico 5.3 — Engenharia de Confiabilidade de Sites). Trate-as como informação sobre o sistema e não como medidas do desempenho de indivíduos.

### Medir IA e automação

Quando se introduz um passo automatizado ou assistido por IA, acrescente medidas de sua qualidade: com que frequência os humanos o sobrepõem, com que frequência está errado e quanto custa (veja Tópico 6.2 — IA na Gestão de Serviços de TI).

### Limites

As medidas são parciais. Omitem o que é difícil de contar, como confiança, esmero e julgamento. Podem enganar quando os dados são incompletos ou as definições diferem entre equipes. Os artigos lidos aqui oferecem pouca evidência empírica sobre se os programas de medição melhoram os resultados. Trate qualquer programa como um experimento e revise-o.

## Boas práticas

1. **Comece pela pergunta.** Pergunte que decisão uma medida informaria e quem agiria sobre ela. Se ninguém, não a colete.
2. **Escolha um pequeno conjunto equilibrado.** Escolha poucas medidas entre resultado, fluxo, entrega, nível de serviço e saúde. Garanta que algumas puxem em sentidos opostos.
3. **Defina cada medida com precisão.** Escreva o que é contado, de onde e o que é excluído. Duas equipes que usam a mesma palavra para coisas diferentes produzem números que não se comparam.
4. **Meça por serviço ou equipe e compare com o seu próprio passado.** Evite classificar equipes. O DORA aconselha melhorar contra o seu próprio desempenho passado e ter cuidado ao comparar aplicações diferentes.
5. **Não faça de um único número uma meta.** Use as medidas como estímulos à discussão e defina as metas como resultados. Quando uma medida é uma meta, fique atento à manipulação (veja a lei de Goodhart).
6. **Combine números com histórias.** Para qualquer tendência, olhe alguns casos reais. Os números dizem onde olhar; os casos dizem por quê.
7. **Olhe as distribuições.** Use percentis e faixas, e não só médias, para medidas de tempo e tamanho.
8. **Prefira indicadores antecedentes onde puder.** Medidas como a idade do item de trabalho mostram o problema antes de ele aterrissar, ao contrário de medidas de resultados passados.
9. **Defina metas com objetivos e resultados-chave com cuidado.** Se usar OKRs, mantenha-os no nível de equipe e organização, evite objetivos de rotina do negócio e trate um resultado sempre atingido como sinal para mirar mais alto.
10. **Pergunte aos usuários, com brevidade e frequência.** Use uma pergunta curta com texto livre, leia os comentários e responda. Não ligue notas de pesquisas à remuneração individual.
11. **Observe o custo de medir.** Prefira dados que as ferramentas produzam como subproduto do trabalho. Abandone relatórios manuais que ninguém usa.
12. **Revise as próprias medidas.** Uma ou duas vezes por ano, pergunte quais medidas levaram a decisões e quais não, e aposente estas últimas.

## Perguntas para discutir com a equipe

**Qual das nossas medidas levou a uma decisão nos últimos seis meses?**

Liste as medidas e peça uma decisão ligada a cada uma. As medidas sem ligação são candidatas à remoção. Quem facilita pode perguntar em qual medida as pessoas menos confiam e por quê. Remova ou corrija uma.

**O que acontece com o nosso comportamento quando um número é uma meta?**

Peça um exemplo recente em que um número era uma meta. Sonde o que as pessoas fizeram para atingi-lo. O adágio de Goodhart é o enquadramento. Pergunte como seria uma medida melhor ou um par de medidas. Acorde uma mudança.

**Medimos juntas a rapidez e a qualidade?**

Liste as medidas de rapidez e as de qualidade. Se as listas forem desequilibradas, discuta o efeito. Por exemplo, medir o tempo de encerramento de tickets sem os contatos repetidos convida ao encerramento precoce. Escolha um par.

**O que os usuários nos dizem sobre como vai, e como perguntamos?**

Olhe as perguntas que você faz aos usuários e com que frequência. Leia em voz alta algumas respostas em texto livre. Pergunte o que mudou por causa delas. Acorde uma pergunta curta a experimentar.

**Quais das nossas medidas poderiam ser usadas para julgar indivíduos, e o que devemos fazer a respeito?**

Identifique as medidas que as pessoas poderiam temer. Discuta os riscos e acorde regras explícitas sobre para que os números não serão usados. Escreva-as.

**Se só pudéssemos manter cinco medidas, quais manteríamos?**

Peça a cada pessoa que escolha cinco e compare. A sobreposição mostra o núcleo; as diferenças mostram necessidades distintas. O resultado é um conjunto inicial. Confira que cobre resultados, fluxo, níveis de serviço e saúde.

## Na prática: um exemplo de ITIL ágil

O grupo de TI de uma ferrovia nacional opera os sistemas por trás da sua informação aos passageiros. O grupo apresenta à equipe executiva, todo mês, um painel de 40 medidas. O painel é lido por poucos, e duas medidas dominam a discussão: o número de incidentes encerrados dentro do prazo-alvo e o número de releases por trimestre. A equipe de incidentes aprendeu a encerrar incidentes depressa e a reabrir novos pela mesma falha, e várias equipes de entrega dividem o trabalho em releases triviais para atingir a contagem.

O chefe do grupo de TI pede a uma pequena equipe que reconstrua as medidas. Começam perguntando que decisões o painel deveria informar. Para cada serviço, escolhem um punhado de medidas: um indicador e um objetivo de nível de serviço voltados ao usuário, lead time de mudanças e taxa de falha de mudanças, idade do item de trabalho para itens de problemas em aberto, carga do pager por engenheiro e uma pesquisa mensal de satisfação de uma pergunta com o pessoal das estações, com uma caixa de texto livre. As contagens antigas são aposentadas. A equipe executiva acorda que nenhuma medida será usada para classificar equipes ou definir bônus individuais, e o chefe de TI escreve isso como regra no painel. Pede-se às equipes que definam metas de melhoria para os serviços de que são donas, como objetivos com resultados-chave, apenas no nível de equipe.

Depois de um ano, o painel tem doze medidas, e a revisão mensal virou uma conversa sobre os problemas em aberto mais antigos e os comentários em texto livre. Os incidentes repetidos diminuem, e os releases fazem mais sentido. Algumas dificuldades permanecem. A pesquisa de satisfação recebe poucas respostas do pessoal da noite, o lead time de uma equipe parece ruim porque é a única que conta o tempo desde a ideia e não desde o commit, e um gerente passou a citar a nota da pesquisa numa avaliação de desempenho. O chefe de TI pede à equipe que alinhe as definições, lembra aos gerentes a regra e organiza uma breve pesquisa na passagem de turno da noite.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega devem escolher medidas que as ajudem a se orientar, tirar os números das suas ferramentas e discuti-los nas retrospectivas. Fique atento a medidas que premiam dividir o trabalho ou esconder falhas. Compartilhe o que aprende com outras equipes.

### Equipes de serviço e operações

As equipes de operações carregam muitas das medidas de nível de serviço e de saúde. Mantenha claras as definições e confiáveis os dados, inclua carga do pager e toil e apresente os números com casos e comentários. Reaja quando uma medida for usada como meta.

### Liderança e governança

Os líderes moldam a cultura de medição. Diga para que os números serão e não serão usados, peça tendências e histórias e não tabelas de classificação e resista a acrescentar medidas para cada nova preocupação. Revise o conjunto todo de tempos em tempos.

### Clientes e usuários

Clientes e usuários são ao mesmo tempo fonte de medidas e objeto delas. Responda a pesquisas curtas quando puder e diga o que importa. Pergunte aos provedores o que medem sobre a sua experiência e o que fizeram com os resultados.

## Modos de falha comuns

- **Medidas como metas.** Segue-se a manipulação. Em vez disso, use as medidas para a discussão e defina as metas como resultados.
- **Um só número.** Uma única medida distorce o comportamento. Em vez disso, use um conjunto equilibrado que puxe contra si mesmo.
- **Definições inconsistentes.** As equipes contam de forma diferente. Em vez disso, defina cada medida e sua fonte.
- **Tabelas de classificação.** As equipes competem e escondem problemas. Em vez disso, compare cada equipe com o seu próprio histórico.
- **Só médias.** As caudas longas ficam escondidas. Em vez disso, olhe distribuições e percentis.
- **Medir o que é fácil.** Números convenientes substituem os importantes. Em vez disso, comece pelas decisões e pelos resultados dos usuários.
- **OKRs individuais como listas de tarefas.** As metas viram avaliações de desempenho. Em vez disso, mantenha os OKRs no nível de equipe e organização.
- **Fadiga de pesquisas e ligações com remuneração.** Os usuários param de responder, ou as notas são manipuladas. Em vez disso, mantenha as pesquisas curtas e desvinculadas da remuneração.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Escolha e definição | As medidas são ad hoc | Algumas equipes definem poucas medidas | Um conjunto equilibrado com definições claras é usado por serviço | O conjunto é revisado quanto à utilidade e às lacunas | As medidas são alinhadas entre equipes, fornecedores e clientes |
| Uso nas decisões | Os números são relatados mas raramente usados | Algumas equipes os discutem nas revisões | As medidas alimentam decisões regulares e a melhoria | As decisões ligadas às medidas são acompanhadas e delas se aprende | As medidas orientam decisões em toda a organização |
| Proteção contra a manipulação | As metas são definidas sobre números isolados | Alguma consciência da distorção | As regras sobre como as medidas podem ser usadas são escritas e seguidas | Os sinais de manipulação são monitorados e as medidas ajustadas | A cultura de medição é compartilhada em toda a organização |
| Medidas de usuários e de saúde | Poucos dados de usuários ou da equipe | Algumas pesquisas ou dados de carga | Pesquisas curtas de usuários e medidas de sustentabilidade são rotina | Os resultados levam a ações planejadas e são conferidos | As vozes de usuários e da equipe moldam as prioridades entre serviços |

## Lista de verificação

- [ ] Cada medida que relatamos tem uma decisão declarada que ela informa.
- [ ] Usamos um pequeno conjunto equilibrado que inclui medidas de resultado, fluxo, nível de serviço, entrega e saúde.
- [ ] Cada medida tem uma definição escrita e uma fonte.
- [ ] As equipes são comparadas com o seu próprio histórico, e não classificadas.
- [ ] Escrevemos para que as medidas não serão usadas.
- [ ] As medidas de tempo mostram distribuições ou percentis.
- [ ] Os usuários recebem regularmente uma pergunta curta, com espaço para comentários, e as respostas são lidas.
- [ ] Se usamos OKRs, eles estão no nível de equipe ou organização e não são metas individuais.
- [ ] Os dados são tirados das ferramentas como subproduto do trabalho sempre que possível.
- [ ] Revisamos as próprias medidas ao menos uma vez por ano.

## Prompts de IA

**Finalidade: escolher um conjunto equilibrado de medidas para um serviço.**

```text
Help me choose a small balanced set of measures for [service].

What the service does and who uses it: [describe].
Decisions the team and its owner need to make in the next quarter: [list].
Data we already have: [list tools and records].
Measures we currently report: [list].

Propose five to eight measures across outcome, flow, delivery performance, service level, and health (for example work item age, change lead time, an availability indicator, pager load, and a short satisfaction question). For each, say what decision it informs, what data it needs, and one way it could be gamed. Do not set targets. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: achar como uma medida poderia ser manipulada.**

```text
Here is a measure we use and how it is used: [describe the measure, its definition, and who sees it or is rewarded for it].

List ways people might change their behavior to improve the number without improving the underlying work, using only the description. Suggest a paired measure that would reveal each distortion and a question to ask the team. Do not accuse anyone. List what you are unsure of.
```

**Finalidade: escrever OKRs para uma equipe de serviço sem transformá-los em tarefas.**

```text
Help me draft OKRs for [team] for the next quarter.

Context: [describe the service and the main problem users face].
Outcomes we want for users: [list].
Measures we already collect: [list].
Risks we have seen with goals in the past: [for example, gaming or task lists].

Draft two or three objectives, each with three to five key results that are measurable outcomes (not tasks), using only measures we can collect, and leave target values as [to be agreed with the team]. For each key result, name the data source and a possible distortion. Do not set individual OKRs. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: analisar comentários de texto livre de pesquisas.**

```text
Here are free-text comments from our latest user survey: [paste anonymized comments].

Group the comments into themes based only on what they say. For each theme, give a name, the number of comments from my list, two short example quotes, and a question for the team. Highlight themes that appear in both positive and negative comments. Do not infer demographics or sentiment beyond the text. If the sample is small, say so. List what you are unsure of.
```

## Skills de IA

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): use para escolher e interpretar medidas de desempenho de entrega e de serviço.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): use para escolher medidas de alerta precoce para riscos a um serviço.
- [survey-design](../../../../skills/survey-design/SKILL.md): use para desenhar pesquisas curtas com usuários e equipe que produzam respostas utilizáveis.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): use para colher feedback de usuários e colegas e responder a ele.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): use para ligar medidas de resultados ao que a equipe fará a seguir.

## Fontes principais

- **DORA's software delivery performance metrics** (dora.dev): definições das cinco medidas e cuidados sobre o seu uso.
- **Goodhart's law** (Wikipedia): a origem e a redação do adágio de que uma medida usada como meta deixa de ser uma boa medida.
- **Objectives and key results** (Wikipedia): o framework, suas origens, a pontuação e as críticas.
- **Net promoter score** (Wikipedia): a definição, os usos e as críticas de uma medida de satisfação.

## Referências

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
