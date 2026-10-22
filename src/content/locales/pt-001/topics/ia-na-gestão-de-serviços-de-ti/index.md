# IA na Gestão de Serviços de TI

**A inteligência artificial pode acelerar a detecção, a triagem e o trabalho de conhecimento na gestão de serviços de TI, e só é seguro usá-la onde uma pessoa continua responsável, as respostas se baseiam no seu próprio material e os riscos de erro, viés e exposição de dados são geridos.**

## Por que isso importa

A gestão de serviços envolve muita linguagem e reconhecimento de padrões: ler tickets, resumir incidentes, buscar conhecimento, redigir respostas, perceber sinais incomuns em dados de monitoramento. São as tarefas em que os sistemas de IA recentes parecem mais capazes, e os fornecedores correram para acrescentá-las a service desks e ferramentas de operações. As equipes serão chamadas, se já não foram, a decidir se vão usá-las.

A oportunidade é real, e os perigos também. Os sistemas de IA podem afirmar falsidades com confiança, refletir vieses de seu treinamento e dos dados que recebem, expor informação confidencial se alimentados sem cuidado e levar as pessoas a confiar numa saída que não conferiram. Vários casos amplamente noticiados mostram o custo da confiança fora de lugar. Uma organização de serviço que adota IA sem pensar pode prejudicar seus clientes e a própria reputação.

Em 2026, a IA também entrou no framework. A página pública de certificação da PeopleCert descreve o novo ITIL como "prático e nativo de IA por desenho" e lista um módulo ITIL AI Governance (Versão 5) que trata de governar a IA "de forma responsável e em escala" (veja Tópico 2.2 — ITIL). Este guia não pôde verificar, a partir das publicações do titular, o que o ITIL 5 diz em detalhe sobre IA, então este tópico não descreve a posição do framework além dessas declarações. Apoia-se nos artigos da Wikipédia sobre AIOps e sobre alucinação de IA, na página do AI Risk Management Framework do NIST e em raciocínio prático, e rotula a prática como tal.

## Conceitos centrais

### Onde a IA ajuda na gestão de serviços

A maioria dos usos cai em poucos grupos. A tabela mostra exemplos e o tipo de risco de cada um, segundo a leitura deste guia.

| Uso | O que a IA faz | Principais riscos |
|---|---|---|
| **Detecção e correlação (AIOps)** | Acha anomalias, agrupa eventos relacionados, sugere causas prováveis | Alarmes falsos, eventos perdidos, raciocínio opaco |
| **Assistência ao service desk** | Sugere respostas, resume tickets, redige respostas, roteia requisições | Respostas erradas ou inventadas, tom, privacidade |
| **Trabalho de conhecimento** | Redige e melhora artigos, busca conhecimento | Conteúdo fabricado, fontes desatualizadas |
| **Análise de incidentes e problemas** | Resume linhas do tempo, sugere hipóteses, redige revisões | Causas plausíveis mas infundadas |
| **Apoio a mudanças e releases** | Revisa mudanças, redige notas, sugere risco | Excesso de confiança, contexto perdido |
| **Código e automação** | Escreve scripts e configuração | Código inseguro ou incorreto, dependências ocultas |
| **Análise e relatórios** | Resume dados, redige relatórios | Cálculos errados, cifras inventadas |

### AIOps

O artigo da Wikipédia descreve o AIOps como o uso de IA, aprendizado de máquina e análise de big data para automatizar e melhorar a gestão de data centers, visando detectar, diagnosticar e resolver problemas de TI com mais eficiência que os métodos tradicionais. Diz que o Gartner definiu o AIOps pela primeira vez em 2016. O artigo lista capacidades que incluem correlação de eventos, detecção de anomalias, análise de causa-raiz, determinação de causalidade, análise preditiva, gestão de incidentes, remediação automatizada, predição de desempenho, alocação de recursos e gestão de capacidade. Diz que o AIOps se apoia em dados observacionais, como logs e monitoramento, e em dados de interação, como tickets, eventos e registros de incidentes.

O artigo alega benefícios, como o tempo médio de detecção melhorando de 15 a 20% e os incidentes críticos caindo mais de 50%, mas observa que isso vem de um único artigo de consultoria e não é verificado de forma independente no texto. Não declara críticas, casos de falha nem limitações. Trate as alegações de fornecedores de acordo e teste qualquer ferramenta contra os seus próprios incidentes (veja Tópico 3.10 — Monitoramento e Gestão de Eventos).

### IA generativa e alucinação

O artigo da Wikipédia sobre alucinação em IA a define como uma resposta que contém informação falsa ou enganosa apresentada como fato e observa que o termo é criticado por antropomorfizar o software. Dá causas: o pré-treinamento na predição da palavra seguinte premia o palpite quando o modelo carece de informação, os conjuntos de dados podem ser incompletos ou não representativos e pesquisadores da OpenAI argumentam que o treinamento e a avaliação premiam o palpite em vez de reconhecer a incerteza. Os exemplos que registra incluem:

- **Mata v. Avianca (maio de 2023):** um advogado apresentou seis casos falsos gerados pelo ChatGPT; o juiz impôs uma multa de US$ 5.000 em 23 de junho de 2023.
- **Moffatt v. Air Canada (fevereiro de 2024):** um tribunal obrigou uma companhia aérea a cumprir uma política de luto que seu chatbot havia inventado.
- Relatórios de uma consultoria que continham citações falsas e um estudo que achou que 69 de 178 referências do GPT-3 tinham identificadores incorretos ou inexistentes.

São as consequências de confiar em saídas não verificadas: responsabilidade legal, exposição financeira e confiança danificada. Na gestão de serviços, um chatbot que inventa uma política ou um procedimento cria a mesma classe de risco.

### Mitigação: ancoragem e verificações

O artigo descreve a geração aumentada por recuperação (RAG) como permitir que o modelo acesse fontes externas antes de responder. Lista também métodos relacionados aos dados, métodos de modelo e de inferência e propostas como software de proteção (guardrails) e pontuação de confiança, e observa que nenhuma fonte que cita quantifica quanto qualquer um deles reduz a alucinação. Para uma equipe de serviço, as mitigações práticas são:

- **Ancore as respostas no seu próprio material aprovado,** como a base de conhecimento, e mostre a fonte.
- **Mantenha uma pessoa no circuito** para tudo o que afete um cliente, um compromisso ou a produção.
- **Peça que a IA diga do que não tem certeza** e trate as afirmações sem respaldo como não verificadas.
- **Teste regularmente** em casos reais, inclusive casos em que a resposta certa é "não sei".

### Frameworks de gestão de riscos

O National Institute of Standards and Technology (NIST) publicou o AI Risk Management Framework (AI RMF 1.0) em 26 de janeiro de 2023, que descreve como destinado a uso voluntário, para ajudar a gerir riscos da IA para indivíduos, organizações e a sociedade e a melhorar a capacidade de incorporar considerações de confiabilidade ao desenho, desenvolvimento, uso e avaliação de produtos, serviços e sistemas de IA. A página do NIST nomeia quatro funções, Govern, Map, Measure e Manage, mas não as descreve. Divulgou também um Generative Artificial Intelligence Profile (NIST-AI-600-1) em 26 de julho de 2024 para ajudar as organizações a identificar riscos exclusivos da IA generativa e diz que o framework está sendo revisado. Leia o próprio framework para os detalhes. Outras regras sobre IA, como leis e normas, diferem por país e setor; pergunte às suas funções jurídica e de conformidade e obtenha o texto (veja Tópico 5.7 — Governança, Risco e Conformidade).

### Proteção de dados e privacidade

Tudo o que é dado a um serviço de IA pode ser armazenado, usado para treinamento ou exposto, dependendo do serviço e dos termos. Tickets, logs e transcrições de chats muitas vezes contêm dados pessoais, credenciais e informação confidencial do negócio. Antes de usar qualquer ferramenta de IA com dados reais, descubra para onde vão os dados, quem pode vê-los, por quanto tempo são guardados e se são usados para treinar modelos, e aplique a sua política de segurança da informação (veja Tópico 3.13 — Gestão da Segurança da Informação). Remova ou substitua dados pessoais e secretos antes de colá-los numa ferramenta que você não aprovou.

### Responsabilização e transparência

Uma pessoa ou equipe deve continuar responsável pelas decisões a que uma IA contribui. Quando a IA redige uma resposta, quem a envia é responsável. Quando a IA sugere uma causa-raiz, quem investiga é responsável por testá-la. Diga aos clientes quando estiverem falando com um sistema automatizado onde a lei, um contrato ou a justiça o exigirem e dê uma rota até uma pessoa. Guarde registros do que se pediu à IA e do que ela produziu para as decisões significativas, como faria com outras ferramentas (veja Tópico 5.1 — Gestão Ágil de Serviços para evidência).

### Viés e justiça

Os sistemas de IA aprendem com dados que refletem decisões passadas e lacunas. Um assistente de triagem treinado em tickets históricos pode tratar alguns grupos de usuários ou alguns tipos de problema como de menor prioridade. Confira as saídas entre grupos, envolva pessoas com perspectivas diferentes nos testes e fique atento a padrões. As fontes lidas para este guia não detalham o viés, então isto é um cuidado geral e não um achado.

### Medir a IA

Meça a qualidade e o efeito de qualquer passo de IA, e não apenas seu volume: com que frequência os humanos o sobrepõem, com que frequência está errado, quanto tempo as tarefas levam com ele e sem ele e o que os usuários dizem (veja Tópico 5.6 — Métricas e Medição). Tenha cautela com cifras de fornecedores; as próprias alegações de benefício do artigo sobre AIOps se apoiam numa só fonte.

### Skills e prompts

A habilidade prática de trabalhar com IA inclui escrever instruções claras, fornecer o material certo, pedir a incerteza e verificar a saída. O Tópico 6.3 — Skills e Prompts de IA trata disso em detalhe.

### Limites das fontes

O artigo sobre AIOps não contém críticas e suas cifras de benefício vêm de uma só fonte; o artigo sobre alucinação está sinalizado como carente de atualização e foi lido em parte; a página do NIST não descreve as funções do framework; e a página da PeopleCert não explica o que o ITIL 5 diz sobre IA. Este tópico dá, portanto, um relato cauteloso e deixa os detalhes às fontes primárias.

## Boas práticas

1. **Comece com um uso de baixo risco e uma pergunta clara.** Escolha uma tarefa em que os erros sejam baratos e fáceis de pegar, como redigir um resumo para uso interno, e defina o que significa sucesso.
2. **Mantenha uma pessoa responsável.** Nomeie quem responde pelo que a IA contribui e exija revisão para tudo o que chegue a um cliente, mude a produção ou assuma um compromisso.
3. **Ancore as respostas em material aprovado.** Onde usar IA para respostas, ligue-a à sua própria base de conhecimento e mostre a fonte. Faça-a dizer "não sei" quando faltar uma.
4. **Proteja os dados.** Decida que dados podem ir a que ferramenta, remova dados pessoais e secretos e use ferramentas aprovadas com termos que você leu. Envolva cedo a segurança e o jurídico.
5. **Teste com casos reais.** Reúna um conjunto de tickets e incidentes reais com respostas conhecidas, execute a IA neles e registre onde falha. Repita depois de qualquer mudança de ferramenta ou de ajustes.
6. **Verifique afirmações e referências.** Confira nomes, números, citações e procedimentos contra fontes, como mostram os casos de citações judiciais inventadas. Nunca aceite referências que você não viu.
7. **Seja honesto com os clientes.** Diga quando um sistema automatizado está respondendo, onde isso importa, e dê uma rota fácil até uma pessoa.
8. **Fique atento ao viés.** Revise as saídas entre grupos de usuários e tipos de problema e envolva pessoas que possam notar lacunas. Ajuste ou pare o uso onde aparecer dano.
9. **Meça qualidade e efeito.** Acompanhe taxas de sobreposição, taxas de erro, tempo economizado e opiniões dos usuários. Compare com o processo sem IA e seja cético quanto a cifras de fornecedores.
10. **Guarde registros.** Para decisões significativas, guarde o que foi pedido e produzido, quem revisou e o que foi decidido. Isso apoia a responsabilização e a auditoria.
11. **Use um framework de riscos.** Adote uma abordagem reconhecida, como o AI RMF do NIST ou uma política organizacional de IA, para estruturar decisões sobre onde a IA é permitida. Trate-o como guia de raciocínio.
12. **Treine as pessoas.** Ensine à equipe como as ferramentas funcionam, onde falham e o que é permitido. Atualize o treinamento à medida que ferramentas e regras mudam.

## Perguntas para discutir com a equipe

**Onde já usamos IA, oficialmente ou não?**

Pergunte com honestidade. A equipe muitas vezes usa ferramentas públicas com tickets reais. O objetivo não é punir, mas entender. Liste os usos e os dados envolvidos. Discuta quais são aceitáveis e quais precisam de uma rota mais segura. Acorde uma política curta.

**Com que tarefa mais gostaríamos de ajuda, e o que acontece se a IA errar?**

Escolha uma tarefa e percorra o caso de falha. Se a resposta é um e-mail de desculpas, o risco é pequeno; se é uma instrução errada a um cliente, o risco é maior. Isso ajuda a ordenar os usos por risco. Escolha um primeiro piloto com dano limitado.

**Como saberíamos que uma resposta da IA está errada?**

Pergunte quem confere as respostas e como. Respostas comuns: ninguém, ou quem perguntou. Discuta fontes, testes e segundas revisões. Acorde uma verificação mínima para cada tipo de uso.

**Que dados nos sentimos à vontade para pôr numa ferramenta de IA, e quais não?**

Reúna os tipos: tickets, logs, nomes de clientes, credenciais, contratos. Marque cada um como aceitável, aceitável depois de remover as partes sensíveis ou nunca. Confira com a segurança e o jurídico. Escreva como um guia de uma página.

**Quem responde quando uma decisão assistida por IA dá errado?**

Use um exemplo passado de decisão assistida por uma ferramenta. Pergunte quem respondeu. Acorde que uma pessoa nomeada continua responsável e que evidência deve guardar. Anote qualquer lacuna em que ninguém responderia.

**O que nos convenceria de que uma ferramenta vale a pena manter?**

Peça à equipe que descreva a evidência que aceitaria: tempo economizado com qualidade igual ou melhor, menos erros, satisfação dos usuários. Discuta como colhê-la num teste. Acorde uma data de revisão.

## Na prática: um exemplo de ITIL ágil

O service desk de TI de uma autoridade tributária nacional trata cerca de 1.200 contatos por semana de funcionários, muitos sobre perguntas de rotina. O gerente do desk propõe um assistente de IA para sugerir respostas a partir da base de conhecimento e redigir respostas. O oficial de segurança da autoridade se preocupa com dados pessoais nos tickets e com respostas erradas chegando aos funcionários.

Acordam um piloto limitado. O assistente trabalha apenas com artigos de conhecimento aprovados, mostra de que artigo vem cada sugestão e diz quando não acha nada relevante. Os analistas revisam toda resposta sugerida antes de enviar, e a ferramenta não pode enviar sozinha. Os tickets são varridos em busca de dados pessoais e credenciais, que são removidos antes de o assistente vê-los. Um conjunto de teste de 200 tickets passados com respostas conhecidas é usado antes do piloto, e a equipe registra onde o assistente falha. O gerente do desk e o oficial de segurança acordam as medidas: com que frequência os analistas editam ou rejeitam sugestões, o tempo até a primeira resposta e uma breve pergunta de satisfação para os funcionários. O piloto dura três meses, e o gerente relata a uma revisão conjunta que inclui um analista e um representante dos funcionários.

No fim, os analistas aceitam a maioria das sugestões para as perguntas comuns, e o tempo de resposta para elas cai. O conjunto de teste mostra que o assistente dá uma resposta confiante, mas errada, para perguntas sobre uma política alterada recentemente, porque o artigo de conhecimento estava desatualizado. Alguns problemas permanecem. Dois analistas passaram a enviar sugestões com pouca conferência quando estão ocupados, uma funcionária com uma pergunta fora do padrão recebeu uma resposta insossa que não captou o ponto e os termos do fornecedor sobre retenção de dados eram pouco claros. O gerente acrescenta uma regra de que as mudanças de política devem atualizar o artigo de conhecimento antes de entrarem em vigor, usa uma conferência por amostragem das respostas enviadas por um analista sênior e pede às compras e ao oficial de segurança que esclareçam os termos antes de estender o piloto.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega podem acrescentar funcionalidades de IA aos produtos e usar IA para escrever código e testes. Confira se o código gerado está correto e seguro, mantenha segredos fora dos prompts e seja claro com os usuários quando a IA estiver envolvida. Embuta no seu serviço o monitoramento do comportamento da IA.

### Equipes de serviço e operações

As equipes de operações encontrarão IA no monitoramento, nas ferramentas do desk e na análise. Trate as sugestões da IA como hipóteses, teste-as e guarde registros. Ajude a definir que dados podem ser usados e dê feedback para melhorar o material de ancoragem.

### Liderança e governança

Os líderes definem a política, o apetite de risco e a responsabilização para a IA. Peça um inventário de usos, um framework de riscos e evidências de pilotos, e não alegações de fornecedores. Garanta que o pessoal jurídico, de segurança e de privacidade esteja envolvido desde o início.

### Clientes e usuários

Clientes e usuários devem ser informados de quando estão lidando com um sistema automatizado, onde importa, e ter uma rota até uma pessoa. Relate respostas erradas ou estranhas, pois são evidência. Pergunte aos provedores como protegem seus dados e conferem a saída da IA.

## Modos de falha comuns

- **Confiar em saída não verificada.** Fatos fabricados chegam aos clientes. Em vez disso, ancore as respostas em material aprovado e verifique antes de enviar.
- **IA na sombra (shadow AI).** A equipe cola dados reais em ferramentas públicas. Em vez disso, forneça ferramentas aprovadas e uma política clara de dados.
- **Nenhuma pessoa responsável.** Ninguém responde por decisões assistidas por IA. Em vez disso, nomeie um responsável e exija revisão.
- **Acreditar em cifras de fornecedores.** As alegações de benefício ficam sem conferência. Em vez disso, teste nos seus próprios casos e meça.
- **Ancoragem desatualizada.** A base de conhecimento está errada e a IA a repete. Em vez disso, mantenha os artigos atuais e com responsáveis.
- **Viés oculto.** Alguns usuários ou questões são tratados pior. Em vez disso, teste entre grupos e revise as saídas.
- **Automatizar antes de entender.** A IA age na produção sem verificações. Em vez disso, comece por sugestão e revisão e passe à ação só com fortes salvaguardas.
- **Nenhum registro.** As decisões não podem ser auditadas. Em vez disso, guarde logs do que foi pedido, produzido e decidido.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Política e responsabilização | O uso é ad hoc e não registrado | Algumas equipes têm regras | Uma política escrita, um inventário de usos e responsáveis nomeados | A conformidade com a política e os incidentes são revisados | A política é alinhada entre equipes, fornecedores e reguladores |
| Qualidade e ancoragem | A saída é confiável por padrão | Algumas verificações nos usos importantes | As respostas são ancoradas em fontes aprovadas e testadas em casos reais | As taxas de erro e de sobreposição são medidas e tratadas | Ancoragem e testes são compartilhados e aprimorados entre equipes |
| Proteção de dados e justiça | Os dados são colados livremente | Existem algumas regras de dados | Regras de tratamento de dados e verificações de viés são rotina | Incidentes de dados e achados de justiça são acompanhados e corrigidos | As práticas de dados e justiça são coordenadas em toda a organização e com fornecedores |
| Valor e aprendizado | O valor é presumido | Alguns testes são feitos | Os pilotos têm medidas e decisões acordadas | Benefícios e custos são medidos contra linhas de base | O aprendizado com o uso de IA se espalha continuamente entre serviços |

## Lista de verificação

- [ ] Temos um inventário de onde a IA é usada em nossos serviços ou ao redor deles, inclusive o uso não oficial.
- [ ] Uma pessoa nomeada é responsável por cada uso assistido por IA.
- [ ] Uma política escrita diz que dados podem ir a que ferramentas.
- [ ] Dados pessoais e segredos são removidos ou mascarados antes do uso com ferramentas não aprovadas para eles.
- [ ] As respostas mostradas a clientes ou usadas em decisões são ancoradas em material aprovado e revisadas.
- [ ] Temos um conjunto de teste de casos reais e o executamos de novo depois de mudanças.
- [ ] Os clientes são informados quando um sistema automatizado responde, onde importa, e têm uma rota até uma pessoa.
- [ ] Medimos a taxa de sobreposição, a taxa de erro, o tempo economizado e a opinião dos usuários.
- [ ] Guardam-se registros das decisões significativas assistidas por IA.
- [ ] O pessoal jurídico, de segurança e de privacidade revisou nosso uso e os termos da ferramenta.

## Prompts de IA

**Finalidade: redigir um inventário de uso de IA a partir do que as pessoas dizem.**

```text
Help me structure an inventory of AI use in our service organization.

What people have told us they use AI for (paste notes; remove names): [paste].
Tools mentioned: [list].
Types of data involved, as far as we know: [list].

Produce a table with: use, tool, data involved, who is accountable (use "unknown" if not given), risk if wrong (low, medium, high with a one-sentence reason from my notes), and one question to ask. Do not guess about tools or terms I did not mention. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: desenhar um conjunto de teste para um assistente de IA.**

```text
Design a test set for an AI assistant that suggests answers to service desk questions.

The knowledge sources it will use: [describe].
Types of question we get: [list with rough share if you know].
Cases where the right answer is "not in the knowledge base" or "escalate": [describe].

Propose a structure for 100 to 200 test cases (categories, how to choose real examples, how to record the correct answer and its source), how to score answers (correct, partly correct, wrong, confidently wrong, correctly declined), and how to repeat after changes. Do not invent test content; tell me what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: escrever uma política de uso de IA de uma página para uma equipe.**

```text
Draft a one-page AI use policy for [team].

Tools approved: [list, or write "none yet"].
Data we handle (types and sensitivity): [list].
Rules we must follow, with source text from legal, security, or contracts: [paste, or write "none known"].
Roles: [list].

Write plain-language sections: what AI may be used for, what data may and may not be put into tools, what must be checked by a person before use, who is accountable, how to record significant uses, how to report problems. Mark every item that is an assumption. Do not state that any law requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: revisar uma resposta gerada por IA antes de ela chegar a um usuário.**

```text
Here is a draft answer that an AI tool produced for a user question.

The user's question: [paste, with personal data removed].
The knowledge article(s) the answer should be based on: [paste].
The draft answer: [paste].

Check the draft against the article only. List statements that are supported by the article (quote the part), statements that are not supported, anything missing that the user would need, and the tone. Suggest a corrected version that uses only the article. Do not add facts. List what you are unsure of.
```

## Skills de IA

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): use para escrever prompts claros que forneçam o material certo e peçam a incerteza.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): use para documentar para que serve um modelo, como foi testado e seus limites.
- [data-governance](../../../../skills/data-governance/SKILL.md): use para decidir que dados podem ser usados com que ferramentas.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): use para preparar perguntas ao pessoal jurídico e de privacidade sobre o uso de IA.
- [risk-register](../../../../skills/risk-register/SKILL.md): use para registrar riscos relacionados à IA, responsáveis e tratamentos.

## Fontes principais

- **AIOps** (Wikipedia): uma descrição curta de IA para operações de TI, suas capacidades e seus benefícios alegados, sem críticas.
- **Hallucination (artificial intelligence)** (Wikipedia): causas, exemplos e ideias de mitigação para saída falsa.
- **AI Risk Management Framework** (NIST): o framework voluntário e seu perfil de IA generativa; leia o próprio framework para os detalhes.
- **ITIL certifications** (PeopleCert): as declarações públicas do titular sobre o novo ITIL e seu módulo de governança de IA.

## Referências

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
