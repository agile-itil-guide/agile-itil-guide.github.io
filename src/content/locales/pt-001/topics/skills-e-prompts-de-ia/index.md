# Skills e Prompts de IA

**Um bom prompt dá a um assistente de IA o material, a tarefa e as verificações de que ele precisa, e uma boa skill empacota esse saber para que uma equipe o reutilize, o que faz dos prompts e skills de IA deste guia pontos de partida que você adapta e verifica.**

## Por que isso importa

Todo tópico deste guia termina com prompts e skills. Existem porque muitas das tarefas da gestão de serviços se prestam bem a um assistente que consegue ler uma pilha de tickets, redigir um runbook ou transformar anotações em um plano. Existem também porque um pedido vago a uma IA produz resultados vagos, às vezes errados. A diferença entre uma resposta útil e uma plausível mas vazia muitas vezes está em como o pedido foi escrito e que material veio com ele.

Este tópico explica como usar os prompts e skills do guia, por que são escritos como são e como escrever os seus para a sua equipe. Trata de hábitos mais que de truques: fornecer material real, dizer o que você quer, pedir ao assistente que marque o que não sabe e conferir o que volta. Apoia-se nos cuidados do tópico anterior, que descreve onde a IA ajuda e onde pode prejudicar (veja Tópico 6.2 — IA na Gestão de Serviços de TI).

As fontes são práticas. A própria skill `skills/prompt-engineering` do guia descreve a escrita de prompts como a prática deliberada de desenhar e iterar as instruções dadas a um modelo de linguagem, tratando um prompt como um pequeno software que é escrito, testado contra casos reais e revisado. A documentação do Claude Code descreve como as skills são estruturadas como diretórios com um arquivo `SKILL.md`. O [artigo da Wikipédia sobre modelos de linguagem de grande porte](https://en.wikipedia.org/wiki/Large_language_model) dá o contexto. Nenhuma fonte lida para este guia oferece evidência de quais técnicas de prompting funcionam melhor; trate as técnicas aqui como hábitos a testar.

## Conceitos centrais

### Prompts, skills e para que servem

Um **prompt** é a instrução e o material que você dá a um assistente de IA para uma tarefa. Uma **skill**, no formato usado na pasta `skills/` deste guia, é um pacote reutilizável de saber para um tipo de tarefa: um diretório contendo um arquivo `SKILL.md` que diz quando usá-la e como fazer o trabalho. Na documentação do Claude Code, uma skill é um diretório com um arquivo `SKILL.md` obrigatório, cujo frontmatter tem um nome e uma descrição e cujo corpo dá as instruções; o assistente usa a descrição para decidir quando aplicar a skill e só carrega o corpo inteiro quando ela é usada.

| | Prompt | Skill |
|---|---|---|
| **Escopo** | Uma tarefa, agora | Um tipo de tarefa, reutilizado |
| **Onde vive** | Num chat ou num documento | Numa pasta, como `skills/` ou o diretório de skills de um projeto |
| **Quem muda** | Você, a cada vez | A equipe, com revisão |
| **Melhor para** | Análise específica do seu próprio material | Métodos repetíveis, como conduzir uma retrospectiva |

### Como os prompts do guia são construídos

Os prompts deste guia seguem um padrão simples, estabelecido no guia de estilo:

1. **Uma finalidade em negrito, de uma linha,** diz para que serve o prompt.
2. **Um bloco cercado** contém texto que você pode copiar e colar.
3. **Marcadores entre colchetes** assinalam o que você deve fornecer, com uma dica do que pôr ali.
4. **Uma tarefa** que nomeia a saída desejada.
5. **Limites**: não invente números, fontes, citações nem alegações de conformidade; use apenas o material colado.
6. **Um pedido para perguntar primeiro** quando faltar informação e para marcar as premissas.
7. **Uma verificação final**: "List what you are unsure of." (liste do que você não tem certeza).

Essas partes existem por razões. Os marcadores obrigam você a trazer material real. O limite impede o assistente de preencher lacunas com invenção. O pedido de perguntas de esclarecimento transforma um palpite único numa breve conversa. A última linha faz o assistente sinalizar seus próprios pontos fracos, o que ajuda você a decidir o que conferir.

### Padrões que ajudam

A skill `prompt-engineering` do guia lista técnicas, que este guia resume com suas próprias palavras:

- **Seja específico sobre a saída que você quer,** como uma tabela com colunas nomeadas, ou uma lista numerada de no máximo cinco itens, para que o assistente não adivinhe a forma.
- **Dê exemplos quando as instruções forem ambíguas,** mostrando o padrão desejado numa amostra curta.
- **Forneça o contexto que o assistente não pode saber,** como a sua terminologia, as restrições e o documento em questão, e diga o que ele não deve presumir.
- **Itere contra casos de teste reais,** executando o prompt numa gama de entradas reais e revisando onde falha, em vez de julgá-lo por um bom exemplo.

Um prompt ajustado a uma entrada pode falhar em outras. A skill faz o ponto de que uma entrada curta, de redação estranha ou sem um campo pode quebrar um prompt que tratava bem o exemplo original.

### Hábitos de verificação

Toda saída precisa de conferência proporcional ao custo de estar errada. Hábitos que ajudam:

- **Confira os fatos contra a fonte que você colou.** Peça ao assistente que cite a parte do seu material que sustenta cada afirmação.
- **Nunca aceite referências que você não viu.** Os casos descritos no tópico anterior incluem citações judiciais inventadas; não os repita.
- **Separe o que o assistente viu do que presumiu.** Os prompts do guia pedem isso.
- **Teste você mesmo os cálculos,** ou peça o passo a passo e confira.
- **Use uma segunda olhada para tudo o que sai da equipe,** como uma resposta a cliente ou uma política.
- **Guarde registros dos usos significativos,** como descrito no Tópico 6.2 — IA na Gestão de Serviços de TI.

### Proteger os dados

Antes de colar qualquer coisa num prompt, pergunte o que contém e para onde vai. Remova dados pessoais, credenciais e detalhes comerciais confidenciais, a menos que a ferramenta e seus termos tenham sido aprovados para eles (veja Tópico 3.13 — Gestão da Segurança da Informação). Os prompts do guia pedem que você anonimize, mas a responsabilidade é sua. Na dúvida, descreva a situação em termos gerais.

### Como é uma skill

Segundo a documentação do Claude Code e as skills deste guia, uma skill é um diretório como `skills/runbook/` contendo `SKILL.md`. O arquivo começa com um frontmatter YAML entre marcadores `---`, contendo ao menos um `name` e uma `description`. A documentação diz que a descrição diz ao assistente o que a skill faz e quando usá-la e recomenda pôr primeiro o caso de uso principal. O corpo dá o método em markdown. Outros arquivos, como documentos de referência ou scripts, podem ficar ao lado e ser carregados quando necessário; a documentação aconselha manter o próprio `SKILL.md` curto, com menos de 500 linhas.

As skills copiadas neste guia seguem a mesma forma. Suas descrições começam com "Use when asked to…" (use quando for pedido para…), o que deixa claro quando cada uma se aplica.

### Onde vivem as skills

A documentação descreve skills pessoais no diretório de skills do diretório pessoal do usuário, skills de projeto no diretório de skills de um repositório que pode ser versionado e compartilhado com uma equipe e outros locais, como plugins. Para uma equipe, uma pasta de projeto sob controle de versões é o lugar natural: as skills são revisadas, mudadas pelo mesmo processo que outro trabalho e disponíveis para todos.

### Escrever as suas próprias skills de equipe

Uma skill de equipe captura uma prática que a equipe repete e quer ver feita de modo consistente. Exemplos para a gestão de serviços: como escrever um postmortem no estilo da casa, como fazer a triagem de um certo tipo de ticket, como preparar um pedido de mudança, como conduzir a sua revisão de sexta-feira. Para escrever uma:

1. **Escolha uma tarefa que você repete** e que tem um modo conhecido de ser bem feita.
2. **Escreva primeiro a descrição,** começando com "Use when…" e o caso de uso principal, para que o assistente e seus colegas saibam quando se aplica.
3. **Escreva o método** em passos curtos, com o formato de saída, as verificações e o que evitar.
4. **Acrescente exemplos** de um bom resultado, com detalhes sensíveis removidos.
5. **Diga o que ela não deve fazer,** como inventar cifras ou enviar algo sem revisão.
6. **Teste-a em casos reais** e revise.
7. **Dê a ela um responsável e uma data de revisão,** como qualquer outro documento compartilhado.

### Skills neste guia

A pasta `skills/` deste repositório guarda cópias de skills da coleção skills-on-ai, listadas em `skills/README.md`, e duas skills escritas para este guia: uma para leitores e outra para mantenedores. Cada tópico liga às skills mais úteis para o seu assunto, com uma frase sobre quando usar cada uma. As skills copiadas são genéricas, não específicas do conteúdo deste guia, então use-as como pontos de partida e adapte a saída ao seu contexto.

### Limites

Nenhuma fonte lida para este guia mede quão bem funciona qualquer técnica de prompting, e as ferramentas de IA mudam depressa. A documentação do Claude Code lida era longa e foi lida só em parte. O que se segue é conselho prático que se mostrou válido no uso geral, oferecido como hábitos a testar e não como garantias.

## Boas práticas

1. **Parta de uma tarefa real e de material real.** Escolha algo que você precisa fazer e cole os fatos reais, e não uma descrição deles. Preencha todos os marcadores com detalhes específicos.
2. **Declare a finalidade em uma linha.** Diga para que serve a saída e quem a usará. Isso ajuda o assistente a escolher o nível certo de detalhe.
3. **Especifique a saída.** Nomeie o formato, o tamanho e a estrutura que você quer. Peça uma tabela quando quiser comparar, uma lista quando quiser passos.
4. **Defina limites.** Diga o que o assistente não deve fazer: inventar números, fontes ou citações; presumir fatos não dados; alegar que uma regra se aplica sem o texto.
5. **Peça primeiro perguntas de esclarecimento.** Diga ao assistente que pergunte o que precisa antes de responder. Responda brevemente e depois peça que prossiga.
6. **Peça que separe fatos de premissas.** Faça-o marcar o que tirou do seu material e o que supôs. Os prompts deste guia terminam com "List what you are unsure of."
7. **Peça evidências.** Peça citações do seu material que sustentem cada afirmação, para que você confira depressa.
8. **Itere.** Trate a primeira resposta como rascunho. Diga o que está errado e peça uma revisão, ou mude o prompt e tente de novo.
9. **Teste os prompts em vários casos.** Antes de confiar num prompt, execute-o em três ou quatro entradas reais, inclusive uma incomum. Anote onde falha.
10. **Proteja os dados.** Remova detalhes pessoais e confidenciais antes de colar. Use ferramentas aprovadas. Siga a política da sua organização.
11. **Confira antes de usar.** Verifique fatos, números e referências. Peça a uma pessoa que revise tudo o que vai a clientes ou muda um sistema.
12. **Compartilhe o que funciona.** Ponha os prompts que se mostrarem úteis, com suas notas, numa skill de equipe ou num documento sob controle de versões, com um responsável.

## Perguntas para discutir com a equipe

**Que tarefas repetimos com as quais um assistente poderia ajudar, e o que precisaríamos conferir?**

Peça a cada pessoa que liste tarefas e marque o risco se a saída estivesse errada. Agrupe-as em risco baixo, médio e alto. Comece por uma de baixo risco. Quem facilita pode perguntar qual seria o passo de conferência. Escolha uma tarefa para um teste.

**O que colamos hoje em ferramentas de IA, e deveríamos?**

Seja honesto e sem julgamentos. Liste exemplos. Compare com a política de dados e as ferramentas aprovadas. Acorde uma verificação rápida que as pessoas possam aplicar antes de colar: "isto contém dados pessoais, segredos ou detalhes confidenciais?"

**Qual dos prompts deste guia tentaríamos primeiro, e com que material real?**

Folheiem juntos os prompts e escolham um. Identifiquem o material real a colar, removam o detalhe sensível e executem. Comparem os resultados e discutam o que mudar no prompt. É um modo rápido de aprender o padrão.

**Como saberíamos que um prompt funciona?**

Peça um conjunto de teste: algumas entradas reais com boas saídas conhecidas. Discuta como pontuar as respostas e quem decide. Um prompt sem conjunto de teste é uma esperança. Acorde um pequeno conjunto para um prompt.

**Que prática repetimos que merece ser uma skill de equipe?**

Liste candidatas: um formato de revisão, uma rotina de triagem, um modelo de relatório. Escolha uma e redijam juntos a descrição e os passos. Decida quem é o responsável e quando será revisada.

**O que nunca gostaríamos que uma IA fizesse sozinha?**

Liste ações: enviar a clientes, mudar a produção, aprovar acesso, decidir uma prioridade. Discuta por quê. As respostas são os limites a escrever nos seus prompts e skills. Acorde uma lista curta.

## Na prática: um exemplo de ITIL ágil

O service desk de TI de um hospital regional tem catorze analistas. O chefe do desk notou que os colegas usam um assistente de IA de modos diferentes: um cola tickets inteiros, com nomes de pacientes, num chatbot público; outro escreve prompts elaborados e obtém resumos úteis; a maioria não o usa de modo algum. Um artigo de conhecimento recente, redigido por um assistente, continha um passo de procedimento que não existia.

O chefe do desk faz uma sessão de uma hora usando a abordagem deste guia. Começa pelos dados: o grupo acorda uma regra de que nenhum dado de paciente nem credencial vai a qualquer ferramenta e de que o assistente aprovado, que o hospital licenciou com termos adequados, é o único usado com texto de tickets. Escolhe uma tarefa, redigir um artigo de conhecimento a partir de um ticket resolvido, e usa o padrão dos prompts deste guia: uma finalidade de uma linha, um marcador para o ticket anonimizado, instruções para usar apenas o conteúdo do ticket, marcar com uma etiqueta qualquer passo inferido e listar do que não tem certeza. Dois analistas executam o prompt em cinco tickets passados, e o grupo lê os resultados em conjunto. O prompt inventa um passo num caso; acrescentam uma linha pedindo uma citação do ticket para cada passo.

O chefe do desk escreve o prompt melhorado como uma skill de equipe na pasta compartilhada do desk, com uma descrição que começa com "Use when…", um responsável e uma data de revisão, e acrescenta a regra de que todo artigo redigido é conferido por um segundo analista antes da publicação. Depois de dois meses, o número de artigos redigidos por semana dobrou e os revisores acham menos erros que antes. Algumas questões permanecem. Dois analistas ainda colam detalhes numa ferramenta pública quando pressionados, a skill produz uma redação formal demais que os analistas reescrevem e um revisor admite que dá só uma olhada rápida. O chefe do desk repete a regra de dados em cada reunião da equipe, acrescenta um exemplo de estilo à skill e pede aos revisores que marquem uma breve lista de verificação.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega usam assistentes para código, testes e documentação. Aplique os mesmos hábitos: material real, limites claros, verificação e revisão. Mantenha os segredos fora dos prompts e guarde os prompts e skills úteis junto com o código.

### Equipes de serviço e operações

As equipes de operações podem usar prompts para analisar tickets, redigir runbooks e preparar revisões. Mantenha dados pessoais de fora, confira as saídas contra logs e registros e escreva skills para rotinas que a equipe repete, como postmortems e passagens de turno.

### Liderança e governança

Os líderes definem as regras do que pode ser usado, com que dados e quem responde. Peça um inventário, uma política de dados e evidências de pilotos. Apoie o tempo para as equipes escreverem e testarem prompts e skills e garanta que as skills compartilhadas tenham responsáveis.

### Clientes e usuários

Clientes e usuários podem ver os resultados de prompts e skills em respostas, artigos e resumos. Espere que os provedores os conferam e que lhe digam quando usam ferramentas automatizadas, onde importa. Relate erros, que ajudam a melhorar o material subjacente.

## Modos de falha comuns

- **Pedidos vagos.** O assistente adivinha. Em vez disso, forneça o material, a finalidade e a saída desejada.
- **Colar dados sensíveis.** Detalhes pessoais ou confidenciais saem da organização. Em vez disso, remova-os e use ferramentas aprovadas.
- **Aceitar conteúdo inventado.** Passos, números ou referências fabricados são usados. Em vez disso, defina limites, peça citações e verifique.
- **Ajuste a um só exemplo.** Um prompt funciona uma vez e falha em outros lugares. Em vez disso, teste em várias entradas reais.
- **Skills sem responsáveis.** Os prompts compartilhados envelhecem. Em vez disso, atribua um responsável e uma data de revisão e guarde-os em controle de versões.
- **Confiança excessiva em prompts copiados.** Um prompt da internet ou deste guia é usado sem mudança. Em vez disso, adapte ao seu contexto e confira os resultados.
- **Nenhuma segunda olhada.** A saída da IA vai direto a clientes. Em vez disso, peça a uma pessoa que revise tudo o que sai da equipe.
- **Tratar o assistente como autoridade.** Sua confiança é tomada por correção. Em vez disso, pergunte do que ele não tem certeza e confira.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Prática de prompts | As pessoas escrevem prompts ad hoc | Algumas pessoas compartilham prompts | As equipes usam um padrão comum com finalidade, material, limites e verificações | A qualidade dos prompts é testada em conjuntos de casos reais | Os prompts são aprimorados entre equipes a partir de resultados de testes compartilhados |
| Skills | Nenhuma skill compartilhada | Existem algumas skills pessoais | Skills de equipe com responsáveis e datas de revisão vivem em controle de versões | O uso e os resultados das skills são revisados | As skills são compartilhadas e mantidas entre equipes e parceiros |
| Verificação e dados | A saída é tomada como confiável; os dados são colados livremente | Algumas verificações e regras de dados | Hábitos de verificação e uma política de dados são rotina | Erros e incidentes de dados são acompanhados e tratados | Verificação e prática de dados são coordenadas em toda a organização |
| Aprendizado | O aprendizado é individual | Algumas dicas são compartilhadas | As equipes fazem sessões regulares para melhorar prompts e skills | As melhorias são acompanhadas e medidas | O aprendizado se espalha continuamente entre equipes |

## Lista de verificação

- [ ] A equipe tem uma regra curta sobre que dados podem ir a que ferramentas de IA.
- [ ] Os prompts em que confiamos têm uma finalidade declarada, material real, limites e um pedido de que o assistente diga do que não tem certeza.
- [ ] Cada prompt em que confiamos foi testado em ao menos três entradas reais.
- [ ] A saída que vai para fora da equipe é revisada por uma pessoa.
- [ ] Referências e números da saída da IA são conferidos contra fontes.
- [ ] Os prompts úteis são guardados com notas num lugar compartilhado, sob controle de versões.
- [ ] As skills de equipe têm uma descrição clara "Use when…", um responsável e uma data de revisão.
- [ ] A equipe listou ações que a IA nunca deve fazer sozinha.
- [ ] A equipe sabe que ferramentas são aprovadas.
- [ ] Revisamos nossos prompts e skills ao menos duas vezes por ano.

## Prompts de IA

**Finalidade: melhorar um prompt que você já usa.**

```text
Here is a prompt I use: [paste it].
Here is an example of an input I give it, with sensitive details removed: [paste].
Here is what I got: [paste].
Here is what I wanted: [describe].

Diagnose why the output fell short, using only the text above. Suggest a revised prompt that: states the purpose, names the output format, sets boundaries (no invented facts, numbers, or sources), asks for clarifying questions first, requests quotes from the supplied material as evidence, and ends by asking you to list what you are unsure of. Keep placeholders in [square brackets]. Do not change the task. List what you are unsure of.
```

**Finalidade: transformar uma tarefa repetida num rascunho de skill de equipe.**

```text
Help me draft a team skill in SKILL.md format for this task: [name and describe the task].

How we do it today, step by step: [paste].
What a good result looks like (an example with sensitive details removed): [paste].
What must never happen (for example inventing figures or sending without review): [list].

Write a SKILL.md with YAML frontmatter containing a name and a description that starts with "Use when" and puts the key use case first, then a body with the purpose, short method steps, output format, checks, and things to avoid. Keep it under 150 lines. Mark every item you added as an assumption. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: montar um pequeno conjunto de teste para um prompt.**

```text
I have a prompt that [describe what it does]: [paste it].

Help me design a test set of 5 to 10 inputs: typical cases, an unusual case, a case with a missing field, and a case where the right answer is "not enough information." Tell me what to collect from real examples (with sensitive details removed), how to record the expected output, and how to score results (correct, partly correct, wrong, confidently wrong, correctly declined). Do not invent test content; give me the categories and what to look for. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: conferir um rascunho escrito por IA contra a sua fonte.**

```text
Here is the source material: [paste].
Here is a draft produced by an AI tool from that material: [paste].

List every statement in the draft, say whether the source supports it (quote the supporting text), contradicts it, or does not mention it, and suggest edits to remove unsupported statements. Do not add facts of your own. Give a short summary of how reliable the draft is. List what you are unsure of.
```

## Skills de IA

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): use para escrever, testar e melhorar prompts de modo que deem resultados confiáveis.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): use para documentar para que serve um modelo e quais são seus limites quando a sua equipe depende de um.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): use ao ajudar uma equipe a construir hábitos em torno de prompts e skills ao longo do tempo.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): use para achar tópicos deste guia, conduzir uma conversa de equipe a partir das suas perguntas ou adaptar um dos seus prompts.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): use ao escrever ou conferir um tópico, prompt ou link de skill deste guia.

## Fontes principais

- **Claude Code skills documentation** (code.claude.com): a descrição de como as skills são estruturadas como diretórios com um arquivo `SKILL.md`.
- **Prompt engineering** (a `skills/prompt-engineering/SKILL.md` deste guia): uma declaração curta de técnicas e a defesa de testar prompts em entradas reais.
- **Large language model** (Wikipedia): contexto sobre como esses sistemas são construídos e onde podem falhar.
- **AI Risk Management Framework** (NIST): o framework voluntário para gerir riscos de IA, útil para a política da equipe.

## Referências

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
