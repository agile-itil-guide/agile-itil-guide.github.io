# Gestão da Continuidade de Serviço

**A gestão da continuidade de serviço prepara uma organização para manter em funcionamento os serviços mais importantes, ou trazê-los de volta depressa, depois de uma interrupção grave, e seu valor só se prova por exercícios, não pelo plano na prateleira.**

## Por que isso importa

A maioria dos incidentes é pequena e local. Alguns não são: um incêndio num data center, a falha de uma região de nuvem, um ataque de ransomware, o colapso de um fornecedor, uma pandemia, uma enchente. Esses eventos ameaçam a capacidade da organização de entregar o que quer que seja, e tratá-los exige um planejamento que a gestão comum de incidentes não cobre. Uma equipe que pensou de antemão no que mais importa e em como seguirá em frente tem chance muito maior de atravessar a crise.

As equipes ágeis encontram o assunto com um desafio particular. Seus sistemas mudam toda semana, então um plano de continuidade escrito uma vez e arquivado fica desatualizado em meses. Os passos de recuperação que dependiam de um servidor ou script específico podem já não valer. A resposta ágil não é desistir de planejar, mas fazer da continuidade uma parte viva de como os serviços são construídos e operados: recuperação desenhada desde o início, testada com frequência e mantida em controle de versões junto com o código.

O [artigo da Wikipédia sobre planejamento de continuidade de negócios](https://en.wikipedia.org/wiki/Business_continuity_planning) define continuidade de negócios como a capacidade de uma organização de continuar entregando produtos ou serviços em níveis aceitáveis depois de uma interrupção e trata o planejamento de continuidade como um subconjunto da gestão de riscos. A página "Disaster recovery" da Wikipédia em inglês é apenas uma página de desambiguação, com um aviso de que se deseja um artigo completo, então este tópico usa o artigo de continuidade de negócios para as definições e acrescenta orientação prática dos demais tópicos do guia, anotando onde é prática e não material de fonte relatado.

## Conceitos centrais

### Continuidade, recuperação e resiliência

Os termos são usados de forma frouxa, então use-os com cuidado:

| Termo | Significado, como amplamente usado | Foco |
|---|---|---|
| **Continuidade de negócios** | A capacidade de continuar entregando produtos ou serviços em níveis aceitáveis depois de uma interrupção | Manter a organização em marcha |
| **Planejamento de continuidade de negócios** | Criar sistemas de prevenção e recuperação para ameaças à organização | Os planos e arranjos |
| **Recuperação de desastres de TI** | Manter ou restabelecer a infraestrutura vital de tecnologia da informação (a descrição dada na página de desambiguação da Wikipédia) | A tecnologia |
| **Continuidade de serviço (ITSM)** | Garantir que os serviços de TI possam ser restaurados aos níveis acordados depois de uma interrupção | Os serviços de TI dentro do plano maior |

O artigo da Wikipédia diz que a recuperação de desastres se sobrepõe ao planejamento de continuidade de negócios, particularmente na fase de solução, e que a continuidade é o resultado pretendido de executar ambos. A gestão da continuidade de serviço é a visão de serviço de TI do mesmo objetivo.

### Análise de impacto no negócio

Uma **análise de impacto no negócio (BIA)** é, segundo o artigo, um método de identificar e avaliar como as interrupções afetam as operações e de definir prioridades de recuperação. Seus objetivos incluem identificar atividades e dependências críticas, avaliar impactos financeiros, operacionais, reputacionais e legais, determinar objetivos de recuperação e subsidiar a avaliação de riscos. Para serviços de TI, a BIA pergunta de quais serviços a organização não pode prescindir, em que ordem devem voltar e do que cada um depende (veja Tópico 4.4 — Gestão de Configuração para as dependências).

### Objetivos de recuperação

O artigo define dois termos-chave:

- **Objetivo de tempo de recuperação (RTO):** o tempo aceitável para restaurar uma função.
- **Objetivo de ponto de recuperação (RPO):** a quantidade aceitável de latência de dados, em outras palavras, quanta perda de dados é tolerável.

Lista também o período máximo tolerável de interrupção. O artigo não dá método para escolher esses valores para uma organização específica, então eles precisam vir do negócio: pergunte o que custam uma hora, um dia e uma semana de queda e que dados o negócio pode se dar ao luxo de perder. Defini-los é uma decisão de negócio com preço, pois o custo de atender a um objetivo mais apertado sobe (veja Tópico 3.11 — Disponibilidade, Capacidade e Desempenho).

### Planos

Um plano de continuidade ou de recuperação descreve quem faz o quê, em que ordem, para restaurar os serviços críticos depois de uma interrupção. Deve cobrir: como o plano é acionado e por quem, como as pessoas são informadas e reunidas, a sequência de recuperação dos serviços, onde a recuperação acontecerá, de onde vêm os dados, como se comunicar com clientes e equipe e como voltar ao normal. Os planos para serviços de TI devem ligar a runbooks dos sistemas individuais (veja Tópico 3.9 — Gestão do Conhecimento).

### Testes e exercícios

O artigo cita um livro de 2008 da British Standards Institution que descreve três tipos de exercício: um exercício de **mesa (tabletop)**, em que um pequeno grupo discute um aspecto do plano; um exercício **médio**, em que várias equipes trabalham em múltiplos aspectos com surpresas roteirizadas; e um exercício **complexo**, que acrescenta acionamento sem aviso, evacuação real e uso de um site de recuperação de desastres. Descreve a manutenção num ciclo anual ou bianual, incluindo o teste de soluções técnicas e procedimentos de recuperação, com os achados voltando à fase de análise. Os exercícios são onde os planos descobrem que estão errados.

### Níveis de recuperação

O artigo menciona os sete níveis de recuperação de desastres do SHARE (1992), depois atualizados pela IBM para oito níveis (0 a 7). As fontes lidas aqui não detalham os níveis. Como prática geral, as organizações classificam os serviços em níveis por quão depressa devem ser restaurados e ajustam a abordagem de recuperação e o custo ao nível.

### Normas

O artigo cita a ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, que substituiu a edição de 2012 e exige que as organizações definam objetivos de continuidade, níveis mínimos aceitáveis de serviço e um período máximo tolerável de interrupção. A ISO 22313:2020 dá orientação para usá-la. São normas para um sistema de gestão que uma organização pode adotar; não substituem o planejamento prático. Confira o texto da norma diretamente se seus clientes ou reguladores exigirem conformidade.

### Continuidade ágil

As práticas ágeis e de DevOps ajudam a continuidade:

- **Infraestrutura e configuração como código** permitem reconstruir ambientes a partir do controle de versões, o que torna a recuperação mais rápida e testável.
- **Pipelines automatizados** podem reimplantar serviços num site de recuperação.
- **Releases frequentes** mantêm a equipe treinada em implantar.
- **Exercícios regulares** podem ser tratados como uma forma de teste no backlog.

Também criam riscos: forte dependência de uma única conta de nuvem, um sistema de CI que é ele próprio um ponto único de falha e segredos guardados onde não podem ser alcançados num desastre. Planeje para as ferramentas de que a própria recuperação depende.

### Fatores humanos

O artigo menciona o surto de SARS de 2002 a 2003 como exemplo de equipes compartimentadas e em rodízio, o que é um lembrete de que a continuidade inclui pessoas: habilidades-chave espalhadas entre indivíduos, trabalho remoto, comunicação quando os canais normais falham e cuidado com a equipe sob estresse.

### Limites das fontes

O artigo não dá método para definir objetivos, nem orientação sobre com que frequência testar além do ciclo anual ou bianual de manutenção, nem recomendações de ferramentas. É um artigo geral de negócios, não de TI. Para detalhes técnicos de recuperação, use a documentação das suas próprias plataformas e as skills do guia sobre planejamento e teste de recuperação de desastres.

## Boas práticas

1. **Comece com uma análise de impacto no negócio.** Identifique os serviços de que a organização não pode prescindir, o custo da sua perda ao longo do tempo e do que dependem. Faça-a com os donos do negócio, não por eles.
2. **Defina os objetivos de recuperação com o negócio.** Para cada serviço crítico, acorde um tempo de recuperação e um ponto de recuperação e registre o custo de atendê-los. Revise quando o negócio ou a tecnologia mudar.
3. **Classifique os serviços em níveis.** Agrupe os serviços por quão depressa devem voltar e aplique a abordagem de recuperação que corresponda a cada nível. Não aplique a abordagem mais cara a tudo.
4. **Escreva um plano curto que as pessoas possam usar.** Declare como acionar o plano, quem decide, quem faz o quê, como se comunicar e a ordem de recuperação. Mantenha-o em poucas páginas, com ligações para runbooks.
5. **Mantenha os planos junto com o código e o ambiente.** Guarde scripts de recuperação, configuração e runbooks em controle de versões e revise-os quando os serviços mudarem. Um plano que não é atualizado com o sistema falhará.
6. **Planeje para as ferramentas de que a recuperação depende.** Garanta que o acesso ao pipeline, aos segredos, à documentação e às ferramentas de comunicação sobreviva à perda dos sistemas que eles apoiam.
7. **Faça exercícios regularmente.** Comece com discussões de mesa, passe a testes técnicos de restaurações e failovers e faça exercícios maiores para os serviços mais críticos. Agende-os como outro trabalho qualquer.
8. **Teste as restaurações, não só os backups.** Um backup se prova restaurando a partir dele. Teste que os dados voltam, dentro do ponto de recuperação, e que o serviço funciona com eles (veja a skill de teste de recuperação de desastres abaixo).
9. **Trate os achados como itens de backlog.** Cada exercício produz lacunas. Registre-as com responsáveis e datas e confira que foram feitas antes do próximo exercício.
10. **Planeje a comunicação.** Decida quem diz o quê a clientes, equipe, reguladores e público e prepare modelos. Inclua modos fora de banda de alcançar as pessoas se os canais normais estiverem fora (veja a skill de comunicação de crise abaixo).
11. **Inclua os fornecedores.** Pergunte aos fornecedores críticos sobre seus próprios arranjos de continuidade e inclua-os nos exercícios onde puder (veja Tópico 3.14 — Gestão de Fornecedores).
12. **Revise anualmente, e depois de qualquer incidente grave ou mudança importante.** Atualize a análise, os objetivos e os planos quando o negócio ou a tecnologia mudar, e não apenas por calendário.

## Perguntas para discutir com a equipe

**Quais dos nossos serviços precisam voltar primeiro, e como sabemos?**

Peça a cada pessoa que ordene os serviços por prioridade de recuperação. Compare. O desacordo é informativo: mostra que a ordem nunca foi acordada com o negócio. Quem facilita pode perguntar quanto custaria à organização cada um ficar fora do ar por uma hora, um dia e uma semana. Leve a pergunta aos donos do negócio e acorde uma lista.

**Quantos dados poderíamos perder, e alguém concordou com isso?**

Pergunte quando foi tirado o último backup dos dados-chave e com que frequência. Compare com o que o negócio toleraria. Muitas equipes descobrem que a resposta não é o que presumiam. Discuta quanto custaria um ponto de recuperação mais apertado. Registre a decisão e quem a tomou.

**Quando foi a última vez que restauramos de um backup, e o que aconteceu?**

Peça uma data real e um resultado real. Se a resposta for "nunca", esse é o achado mais importante. Se foi feito, pergunte o que deu errado e o que foi corrigido. Planeje um teste de restauração para um serviço crítico no próximo mês.

**O que precisamos recuperar que depende da coisa que falhou?**

Percorra um cenário como a perda de uma conta de nuvem ou de um data center. Pergunte onde vivem os runbooks, os segredos e o pipeline. As dependências do sistema que falhou são comuns, como um runbook guardado num servidor que está fora do ar. Liste-as e planeje mover ou copiar cada uma.

**Quem tem autoridade para declarar um desastre e iniciar o plano?**

Pergunte às pessoas quem decidiria e se sabem. O atraso em acionar um plano custa tempo. Discuta uma regra clara e um substituto. Confira como a pessoa será alcançada se os canais habituais estiverem fora.

**O que faríamos se as pessoas que mais sabem não estivessem disponíveis?**

Imagine a equipe-chave inalcançável. Pergunte quem mais poderia conduzir a recuperação e do que precisaria. Esta pergunta liga a continuidade à gestão do conhecimento. Planeje uma forma de espalhar o conhecimento crítico.

## Na prática: um exemplo de ITIL ágil

O registro de imóveis de um governo provincial opera um serviço online em que advogados e agrimensores registram transações de propriedade. Uma equipe de doze pessoas o constrói e opera, usando uma única região de um provedor de nuvem. Uma revisão de continuidade de negócios descobre que o serviço é classificado como crítico pelo ministério, com a expectativa de que possa ser restaurado em quatro horas, e que ninguém jamais testou se isso é possível.

A equipe começa com um exercício de mesa. O cenário: a região da nuvem fica indisponível por um dia. Descobrem que os runbooks estão guardados numa wiki hospedada na mesma região, que o código de infraestrutura cobre apenas parte do ambiente e que os backups do banco de dados são copiados para a mesma região. A expectativa de quatro horas do ministério revela-se escrita por um gestor anos atrás e nunca orçada. A equipe e a dona do negócio no ministério se reúnem. A dona explica o que uma queda de um dia significaria para os prazos de registro e concorda que quatro horas são necessárias nos dias de registro de fim de mês, mas oito horas são aceitáveis nas demais ocasiões.

A equipe copia runbooks e backups para uma segunda região, completa o código de infraestrutura e reconstrói o ambiente a partir do código numa região de teste num exercício de um dia. A primeira tentativa leva onze horas, principalmente por causa de passos manuais e de um segredo faltando. Depois das correções, uma segunda tentativa leva cinco. Alguns problemas permanecem. A meta de quatro horas de fim de mês ainda está fora de alcance, o provedor de identidade que a equipe usa para entrar não tem arranjo próprio de recuperação e a equipe percebe que depende de um fornecedor cujo plano de continuidade nunca viu. A equipe põe o provedor de identidade e a questão do fornecedor no backlog, e o ministério concorda com um tempo de recuperação maior fora dos períodos de pico enquanto o trabalho continua.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega tornam a recuperação possível ou impossível pelo design. Construa serviços que possam ser reconstruídos a partir do código, mantenha os dados replicados e escreva os passos de recuperação como parte do pronto. Participe dos exercícios e corrija as lacunas que eles acharem.

### Equipes de serviço e operações

As equipes de operações guardam os planos e conduzem os exercícios. Mantenha os planos curtos e ligados a runbooks, teste restaurações e failovers e torne visíveis as dependências da recuperação. Acompanhe os achados de cada exercício até serem encerrados.

### Liderança e governança

Os líderes definem os objetivos e pagam por eles. Peça a análise de impacto no negócio e os objetivos de recuperação, entenda o que custam e compareça a um exercício. Aceite que alguns serviços levarão mais tempo para se recuperar e tome a decisão de propósito.

### Clientes e usuários

Clientes e usuários dependem de o serviço continuar ou voltar. Diga ao provedor quanto tempo você pode ficar sem ele e que dados não pode perder. Pergunte sobre os arranjos de continuidade dele e o que você deve fazer num desastre, como um modo alternativo de enviar trabalho urgente.

## Modos de falha comuns

- **Um plano que ninguém testou.** O primeiro teste é o desastre. Em vez disso, comece com exercícios de mesa e avance para restaurações técnicas.
- **Objetivos que ninguém acordou.** O tempo de recuperação foi escrito por alguém que saiu. Em vez disso, defina tempo e ponto de recuperação com os donos do negócio e registre o custo.
- **Backups nunca restaurados.** Os backups existem, mas a restauração falha. Em vez disso, teste as restaurações num calendário e meça o tempo.
- **A recuperação depende do que falhou.** Runbooks, segredos e ferramentas ficam no sistema que falhou. Em vez disso, mapeie as dependências da recuperação e mantenha cópias em outro lugar.
- **Um nível para tudo.** Todos os serviços recebem o tratamento mais caro, ou nenhum recebe. Em vez disso, classifique os serviços por necessidade.
- **Planos desatualizados.** Os sistemas mudam e os planos não. Em vez disso, mantenha os planos junto com o código e revise-os quando os serviços mudarem.
- **Ignorar as pessoas.** Os planos presumem que a equipe habitual está disponível. Em vez disso, planeje para a ausência e para a comunicação quando os canais estiverem fora.
- **Ignorar os fornecedores.** Dependências críticas não têm arranjos de continuidade. Em vez disso, pergunte aos fornecedores e inclua-os nos exercícios.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Análise de impacto e objetivos | Os serviços críticos são presumidos | Alguns serviços têm metas aproximadas de recuperação | Os serviços críticos têm tempo e ponto de recuperação acordados, com custos | Os objetivos são revisados contra os resultados de exercícios e as mudanças do negócio | Os objetivos são alinhados com clientes, fornecedores e reguladores |
| Planos e desenho da recuperação | A recuperação é improvisada | Alguns serviços têm notas de recuperação | Existem planos e código de recuperação para os serviços críticos, mantidos com o sistema | A atualidade dos planos e o tempo de recuperação são medidos e melhorados | A recuperação é coordenada entre serviços, equipes e fornecedores |
| Exercícios e testes | Pouco ou nenhum teste | Algumas restaurações são testadas | Testes de mesa e técnicos acontecem num calendário | Os achados são acompanhados até o encerramento e os testes ajustados ao risco | Os exercícios incluem fornecedores e abrangem organizações |
| Comunicação e pessoas | A comunicação é ad hoc | Existem algumas listas de contatos | Os planos cobrem quem avisa quem, com rotas fora de banda e substitutos | As lacunas de comunicação e de pessoal são medidas e fechadas | A comunicação é ensaiada com clientes, fornecedores e reguladores |

## Lista de verificação

- [ ] Identificamos nossos serviços críticos com os donos do negócio.
- [ ] Cada serviço crítico tem um tempo e um ponto de recuperação acordados, com o custo conhecido.
- [ ] Os serviços estão agrupados em níveis que correspondem às suas necessidades de recuperação.
- [ ] Existe um plano curto de recuperação, com quem pode acioná-lo e como alcançá-los.
- [ ] Código de recuperação, configuração e runbooks estão em controle de versões e são revisados com as mudanças.
- [ ] Runbooks, segredos e ferramentas necessários à recuperação sobrevivem à perda do ambiente primário.
- [ ] Uma restauração de backup foi testada para cada serviço crítico no último ano.
- [ ] Um exercício de mesa foi feito no último ano, e os achados são acompanhados.
- [ ] Existem modelos de comunicação e rotas fora de banda.
- [ ] Os fornecedores críticos foram questionados sobre seus próprios arranjos de continuidade.

## Prompts de IA

**Finalidade: redigir as perguntas para uma análise de impacto no negócio.**

```text
Help me prepare a business impact analysis for these services: [list services].

About the organization: [describe sector and who relies on the services].
Peak periods or deadlines: [list, or write "unknown"].
Rules or contracts that set recovery requirements, with source text: [paste, or write "none known"].

Write, for each service, a short set of questions to put to business owners about the impact of an outage after one hour, one day, and one week (financial, operational, reputational, legal), what data loss would be tolerable, what the service depends on, and what workarounds exist. Do not invent impacts or numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: planejar um exercício de mesa.**

```text
Design a 90-minute tabletop exercise for [number] people from [teams] on this scenario: [describe, for example "our cloud region is unavailable for 24 hours"].

Services in scope: [list].
Existing plans and runbooks: [describe, or write "none"].

Give a timed plan with: the scenario released in three stages, prompts for each role, questions on dependencies of recovery (where runbooks, secrets, and tools live), decisions that must be made and who makes them, and a closing step that records gaps with owners and dates. Do not use real production access. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Finalidade: transformar as notas de um exercício numa lista de lacunas.**

```text
Below are the notes from a continuity exercise: [paste what happened, what went wrong, what people said].

List the gaps found, grouped as: plan (what was missing or unclear), technology (what failed or was slow), people (who was missing or unsure), and dependencies (what recovery depended on that was itself unavailable). For each gap, suggest a backlog item title and a question about priority. Use only the notes. Do not invent causes. List what you are unsure of.
```

**Finalidade: escrever um esboço curto de plano de recuperação para um serviço.**

```text
Help me outline a recovery plan for [service].

What it does and who depends on it: [describe].
Agreed recovery time and recovery point, if any: [paste, or write "not agreed"].
Where it runs, where data and backups are kept: [describe].
Dependencies (other services, suppliers, identity, networks): [list].
People who can recover it: [roles].

Write a plan outline of no more than two pages: how it is invoked, who decides, communication, order of recovery steps (with links to runbooks as [LINK]), testing evidence needed, and how to return to normal. Mark each item that is an assumption. Do not invent recovery times. Ask clarifying questions first, and list what you are unsure of.
```

## Skills de IA

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): use para escrever o plano em nível de organização para manter funcionando as funções críticas.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): use para planejar a recuperação técnica de serviços de TI.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): use para desenhar testes de restauração e de failover.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): use para planejar o que dizer a clientes, equipe e público durante uma interrupção.
- [risk-register](../../../../skills/risk-register/SKILL.md): use para registrar riscos de continuidade e como são geridos.

## Fontes principais

- **Business continuity planning** (Wikipedia): definições de continuidade, análise de impacto no negócio, objetivos de recuperação, exercícios e normas.
- **ISO 22301** (International Organization for Standardization): a norma de requisitos para sistemas de gestão de continuidade de negócios; leia a norma para alegações de conformidade.
- **Incident management** (Wikipedia): o panorama multidisciplinar que situa a continuidade ao lado da resposta a incidentes.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): a economia da confiabilidade que enquadra os objetivos de recuperação.

## Referências

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
