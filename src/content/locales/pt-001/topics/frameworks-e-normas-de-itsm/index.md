# Frameworks e Normas de ITSM

**A gestão de serviços de TI tem muitos frameworks e normas que se sobrepõem, e a habilidade útil é saber para que serve cada um: orientação com a qual aprender, uma norma pela qual se pode ser certificado ou um modelo de governança que diz o que controlar.**

## Por que isso importa

Pergunte a cinco pessoas o que significa "seguimos as boas práticas de ITSM" e talvez obtenha cinco respostas: ITIL, ISO/IEC 20000, COBIT, FitSM ou "o que a ferramenta do fornecedor fizer". Os termos são usados com folga, e as diferenças importam. Um cliente que pede a certificação ISO/IEC 20000 não se dá por satisfeito com treinamento em ITIL. Um auditor que pergunta sobre controles do COBIT não será ajudado por um mapa de processos do service desk.

Para as equipes ágeis, a pergunta é prática: com quais destes temos de lidar e quais podemos tratar como fonte de ideias? Muitas equipes se surpreendem ao saber que o ITIL, o mais conhecido, é uma orientação em que indivíduos se certificam e não uma norma para organizações. Outras se surpreendem ao saber que a principal norma de ITSM acrescentou recentemente orientação sobre modos de trabalhar ágeis e DevOps.

Este tópico compara os principais frameworks e normas, usando os [artigos da Wikipédia sobre gestão de serviços de TI](https://en.wikipedia.org/wiki/IT_service_management), [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT) e [FitSM](https://en.wikipedia.org/wiki/FitSM). Esses artigos variam em qualidade, e vários trazem avisos de manutenção. Onde são fracos, este tópico diz. Confira as publicações dos próprios titulares antes de confiar em qualquer detalhe para um contrato ou uma auditoria.

## Conceitos centrais

### Três tipos de coisa

Os nomes deste tópico caem em três grupos. Mantê-los separados evita muitas conversas confusas.

| Tipo | O que lhe dá | Exemplos nomeados no artigo da Wikipédia sobre ITSM |
|---|---|---|
| **Orientação (um framework ou biblioteca)** | Ideias e práticas descritas para adaptar | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **Uma norma certificável** | Requisitos pelos quais uma organização pode ser auditada e certificada | ISO/IEC 20000 |
| **Um modelo de governança ou de capacidade** | Um modo de dirigir, controlar ou avaliar a TI | COBIT, CMMI, TOGAF |

O FitSM fica entre os dois primeiros, como descrito abaixo.

### ITIL

O ITIL é orientação sobre ITSM e gestão de ativos de TI. A certificação é para indivíduos, e não existe avaliação independente da conformidade de uma organização com o ITIL (veja Tópico 2.2 — ITIL). É a fonte de vocabulário mais usada.

### ISO/IEC 20000

A ISO/IEC 20000 é uma norma internacional de gestão de serviços de TI. Segundo a Wikipédia, a Parte 1 estabelece requisitos para um sistema de gestão de serviços que cobre o planejamento, a entrega e a melhoria dos serviços. Foi desenvolvida a partir da BS 15000, criada pelo BSI Group, e publicada pela primeira vez em dezembro de 2005. Seguiram-se atualizações: a Parte 1 em junho de 2011 e uma segunda revisão, a ISO/IEC 20000-1:2018, lançada em 15 de julho de 2018, após a qual as organizações certificadas tiveram um período de transição de três anos. A edição de 2018 tem dez cláusulas que seguem a estrutura de alto nível da ISO.

A norma tem muitas partes. O artigo lista, entre outras: orientação sobre a aplicação de um sistema de gestão de serviços (Parte 2); orientação sobre escopo e aplicabilidade (Parte 3); orientação de implementação (Parte 5); requisitos para organismos de certificação (Parte 6); conceitos e vocabulário (Parte 10); e uma especificação técnica sobre a relação com o ITIL 4 (Parte 11). Lista também partes publicadas recentemente, de 2023 a 2025, com orientação sobre integração e gestão de serviços (SIAM), sobre ágil e DevOps e sobre sustentabilidade. A Wikipédia não diz qual número de parte cobre qual tema, então confira o catálogo da ISO antes de citar uma.

As organizações podem ser certificadas, e os indivíduos podem obter qualificações em organismos como APMG-International, EXIN e PECB. O artigo relata que a pesquisa da ISO de 2024 contou 27.332 certificados, dos quais 24.056 na China. Isso mostra como a certificação se distribui de forma desigual entre os países, então não suponha que um cliente de outro lugar a pedirá.

A Wikipédia diz que a norma foi originalmente desenvolvida para refletir as boas práticas do ITIL, mas marca essa afirmação com "citação necessária". Trate a relação como próxima, mas não idêntica. O artigo diz também que a norma apoia outros frameworks, como o Microsoft Operations Framework e partes do COBIT.

### COBIT

O COBIT, segundo a Wikipédia, é um framework criado pela ISACA para a gestão e a governança de TI. Liga metas de negócio a metas de TI e define responsabilidades para as equipes de negócio e de TI. O artigo descreve cinco áreas de processo: Avaliar, Dirigir e Monitorar; Alinhar, Planejar e Organizar; Construir, Adquirir e Implementar; Entregar, Servir e Suportar; e Monitorar, Avaliar e Aferir. Dá estas datas: lançado em 1996, versão 5 em 2012, e diz que a ISACA oferece certificação sobre o COBIT 2019 e o COBIT 5. O artigo liga o COBIT ao ITIL, à ISO 27000, ao CMMI, ao TOGAF e ao PMBOK Guide do Project Management Institute.

O próprio artigo traz avisos de manutenção sobre fontes primárias e citações ausentes, e uma afirmação, a de que o framework ajuda as empresas a cumprir a lei e a ser mais ágeis, repousa numa única fonte. Use as publicações do próprio COBIT como autoridade.

### FitSM

O FitSM é uma família de normas leves. A Wikipédia diz que nasceu do FedSM, um projeto financiado pela UE para melhorar a gestão de serviços em e-infraestruturas federadas, e que entregas revisadas foram publicadas com o nome FitSM a partir de maio de 2013. O FitSM-1 contém cerca de 85 requisitos auditáveis que cobrem requisitos gerais e 14 processos, e é muito mais curto que a Parte 1 da ISO/IEC 20000, embora semelhante em escopo e estilo. Todas as partes são publicadas sob licenças Creative Commons. As organizações não podem ser certificadas como conformes ao FitSM, embora a conformidade possa ser auditada, e um esquema de certificação de pessoal começou em 2013.

O FitSM é útil para equipes pequenas que querem um conjunto curto de requisitos. O artigo não informa a versão atual nem a situação do grupo que o mantém, então confira isso antes de confiar nele.

### Outros nomes

O artigo sobre ITSM lista também os seguintes. Este guia não os trata além disso.

- **CMMI:** um modelo para estabelecer, gerir e melhorar serviços e processos.
- **TOGAF:** um framework que liga metas de negócio a objetivos de arquitetura.
- **Microsoft Operations Framework:** orientação de gestão de serviços baseada em tecnologias da Microsoft.
- **Application Services Library e Business Information Services Library:** frameworks para a gestão de aplicações e para a gestão da informação.
- **USM:** um sistema baseado em princípios adotado pelo governo holandês.

O artigo acrescenta que os frameworks de ITSM se apoiaram na ISO 9000, na ISO/IEC 27000 e no CMMI. A gestão da segurança tem sua própria família de normas (veja Tópico 3.13 — Gestão da Segurança da Informação).

### Ágil e DevOps nas normas

O artigo sobre a ISO/IEC 20000 lista uma parte recente da norma com orientação sobre ágil e DevOps. É notável porque mostra que o organismo de normalização trata os modos de trabalhar ágeis como algo que um sistema de gestão de serviços deve acomodar. O artigo não dá detalhes do conteúdo, então leia a própria norma se precisar dele. Enquanto isso, o ITIL 4 se descreve como alinhado ao ágil, ao DevOps e ao lean (veja Tópico 2.2 — ITIL), e o artigo da Wikipédia sobre ITSM não menciona o ágil de modo algum. As fontes diferem no quanto se atualizaram.

### Escolhendo

Não existe um único framework certo. Um modo sensato de escolher é perguntar do que você precisa:

| Se você precisa de… | Considere… |
|---|---|
| Um vocabulário comum e ideias de práticas | ITIL |
| Certificação do seu sistema de gestão de serviços para clientes ou licitações | ISO/IEC 20000 |
| Um conjunto curto e auditável de requisitos para uma equipe pequena | FitSM |
| Governança e controle da TI na empresa, ligados a metas de negócio | COBIT |
| Avaliação da capacidade dos processos | CMMI |

Esta tabela é o resumo do guia, não uma recomendação de qualquer titular de framework.

## Boas práticas

1. **Comece pela pergunta que você precisa responder.** Escreva do que precisa: vocabulário, certificação, controle ou avaliação. Escolha o framework que responde a isso, e não o de melhor marketing.
2. **Aprenda a diferença entre orientação e normas.** Ensine à equipe que a certificação em ITIL é para indivíduos, a certificação ISO/IEC 20000 é para organizações e o COBIT é um modelo de governança. Muitas confusões de contrato e auditoria começam aqui.
3. **Descubra o que clientes e reguladores realmente exigem.** Peça a cláusula ou o requisito exato. Muitas vezes o pedido é por um "framework reconhecido", e uma descrição curta e honesta da sua prática basta.
4. **Use o texto da norma, não resumos, para a conformidade.** Ao alegar conformidade, trabalhe a partir da norma ISO ou da publicação do titular do framework. Resumos, inclusive este, servem só para orientação.
5. **Mapeie sua prática uma vez, não quatro.** Se você precisa satisfazer mais de um framework, construa uma única descrição da sua prática e mapeie-a para cada um, em vez de escrever documentos separados.
6. **Mantenha o sistema o menor possível.** A ISO/IEC 20000 pede um sistema de gestão de serviços e registros. Atenda cada requisito com a abordagem mais leve que funcione e automatize as evidências a partir das suas ferramentas.
7. **Atente ao escopo.** Um certificado cobre um escopo declarado. Escolha um escopo que reflita serviços e equipes reais e não exclua as partes que tornam o certificado difícil.
8. **Confira a orientação sobre ágil e DevOps nas normas que você usa.** Onde uma norma tem orientação sobre ágil e DevOps, leia-a antes de discutir com um auditor como uma equipe ágil pode atender a um requisito.
9. **Considere opções mais leves para equipes pequenas.** O FitSM ou um subconjunto do ITIL pode servir melhor a uma equipe pequena do que um sistema certificado completo. Anote o que você abre mão, como a certificação externa.
10. **Mantenha alinhadas segurança e gestão de serviços.** Se você usa a ISO/IEC 27001 para segurança da informação, compartilhe registros e revisões com o seu sistema de gestão de serviços para evitar trabalho duplicado (veja Tópico 3.13 — Gestão da Segurança da Informação).
11. **Documente a sua adaptação.** Registre quais partes de um framework você usa, quais não usa e por quê. Isso o protege em auditorias e ajuda os novos funcionários.
12. **Revise anualmente.** Normas e frameworks mudam. Designe alguém para acompanhar as atualizações e relatar o que importa para a sua equipe (veja Tópico 6.4 — Trilhas de Aprendizagem e Certificação).

## Perguntas para discutir com a equipe

**Quais destes frameworks ou normas somos obrigados a usar, e quais usamos por hábito?**

Liste o que clientes, contratos, reguladores e gestores realmente exigem, com o documento que o diz. Depois liste o que a equipe usa sem exigência. As duas listas costumam diferir mais do que se espera. Quem facilita pode perguntar quem introduziu cada um e por quê. Em seguida, encontre a redação exata de qualquer requisito que determina trabalho.

**Se um cliente perguntasse se somos "certificados em ITIL", o que responderíamos?**

Pratique uma resposta honesta: indivíduos podem ser certificados, organizações não, e eis o que fazemos. Compare as respostas. Algumas exagerarão. Discuta do que o cliente provavelmente precisa e que evidência poderia atendê-lo, como a certificação ISO/IEC 20000 ou uma descrição da prática. Acorde uma frase que todos possam usar.

**Quanto custaria sermos certificados na ISO/IEC 20000, e o que ganharíamos?**

Pergunte quais clientes ou mercados a valorizariam e o que a equipe teria de mudar. Não adivinhe custos; colete orçamentos reais ou pergunte a um par que já tenha feito. Liste os benefícios que você consegue descrever: um selo reconhecido, um sistema disciplinado, acesso a licitações. Decida se vale investigar mais.

**De onde vêm os nossos registros para auditoria, e nossas ferramentas poderiam produzi-los automaticamente?**

Liste os registros que os auditores pedem e de onde cada um vem. Muitos podem vir do controle de versões, das ferramentas de tickets e do monitoramento, se configurados com isso em mente. Pergunte quais registros são produzidos à mão e por quê. Escolha um para automatizar.

**Como nossas práticas ágeis se encaixam no que as normas esperam, e onde está a lacuna?**

Tome um requisito com que o seu auditor se importa, como a autorização de mudanças, e descreva como uma equipe ágil o atende. Onde a norma tem orientação sobre ágil e DevOps, leiam juntos o texto pertinente. Anote lacunas de evidência, não de intenção.

**Quem acompanha por nós as mudanças nesses frameworks?**

Pergunte quem lê os anúncios dos titulares dos frameworks e dos organismos de normalização. Uma resposta frequente é "ninguém". Decida quem fará isso, como relatará e quando. Quem facilita pode sugerir uma nota curta uma vez por trimestre listando o que mudou e se importa.

## Na prática: um exemplo de ITIL ágil

Uma empresa de software com 120 pessoas vende um produto de agendamento hospedado a hospitais e universidades. A licitação de um grande cliente universitário exige "um sistema de gestão de serviços de TI certificado". Os fundadores haviam suposto que a líder de suporte, treinada em ITIL, bastaria. A líder de suporte explica que a certificação ITIL se aplica a indivíduos e que a licitação provavelmente quer dizer ISO/IEC 20000.

A chefe de operações investiga. Lê a redação da licitação, que nomeia a ISO/IEC 20000-1, e pergunta ao cliente que escopo ele espera. Lê o sumário da norma e compara suas dez cláusulas com os registros existentes da empresa, que vêm sobretudo da ferramenta de tickets, do histórico de mudanças e das revisões de incidentes. Descobre que boa parte das evidências já existe, mas que não há políticas de gestão de serviços documentadas, nem revisões formais de fornecedores, nem revisão da direção. Descobre também que a norma agora tem uma parte com orientação sobre ágil e DevOps, o que a ajuda a explicar os releases semanais da empresa a um possível auditor.

A empresa decide buscar a certificação só para o produto hospedado, com um conjunto modesto de documentos e uma revisão trimestral da direção. Planeja cerca de um ano de trabalho. Nem tudo corre bem. Dois engenheiros resistem aos registros extras e um fornecedor se recusa a fornecer relatórios formais de revisão de serviço. A chefe de operações troca alguns registros manuais por exportações das ferramentas da empresa e negocia com o fornecedor um arranjo de revisão mais leve. A empresa ganha a licitação e decide verificar, na próxima auditoria de vigilância, se o sistema ajuda ou atrapalha os releases semanais.

## Quatro perspectivas

### Equipes de produto e entrega

As equipes de entrega encontram esses frameworks como exigências de clientes e auditores. Descubra qual requisito se aplica e pergunte que evidência é aceitável. Muitos requisitos podem ser atendidos com as ferramentas que você já usa. Ofereça-se para explicar o seu processo de release na linguagem da norma.

### Equipes de serviço e operações

As equipes de operações costumam carregar o sistema de gestão. Mantenha os registros úteis, com um propósito declarado para cada um. Atenção a requisitos que se duplicam entre frameworks e mapeie-os uma vez. Compartilhe o plano com as equipes de entrega para que os registros sejam subproduto do trabalho e não uma tarefa à parte.

### Liderança e governança

Os líderes decidem que frameworks adotar e quanto investir em certificação. Pergunte qual é o caso de negócio e o que os clientes realmente exigem. Cuidado ao comprar certificação como rótulo. Garanta que o sistema ajude a organização a melhorar e que alguém seja responsável por ele.

### Clientes e usuários

Os clientes que pedem certificação muitas vezes querem garantia. Pergunte aos provedores que norma e que escopo o certificado cobre e o que fica de fora. Um certificado é evidência de um sistema de gestão, não garantia de qualquer resultado individual.

## Modos de falha comuns

- **Confundir certificação individual e organizacional.** As equipes alegam "certificada em ITIL" para uma empresa. Em vez disso, declare exatamente o que é certificado e por quem.
- **Perseguir a certificação como rótulo.** O sistema existe para a auditoria, não para a melhoria. Em vez disso, torne primeiro os registros úteis para a equipe.
- **Duplicar documentos entre frameworks.** Cada norma ganha seu próprio fichário. Em vez disso, descreva sua prática uma vez e mapeie-a.
- **Estreitar o escopo para evitar as partes difíceis.** O certificado exclui os serviços de que os clientes se importam. Em vez disso, escolha um escopo que reflita serviços reais.
- **Confiar em resumos.** As alegações de conformidade se baseiam em postagens de blog. Em vez disso, trabalhe a partir do texto da norma ou do titular do framework.
- **Ignorar a orientação ágil.** As equipes discutem com auditores sem ler a parte da norma que trata de ágil e DevOps. Em vez disso, leia-a e prepare exemplos.
- **Documentar demais.** O sistema acumula mais registros do que alguém lê. Em vez disso, ligue cada registro a um propósito e automatize as evidências.
- **Esquecer as mudanças.** A norma avança e a equipe não percebe. Em vez disso, nomeie alguém para acompanhar as atualizações.

## Modelo de maturidade

| Dimensão | Início | Desenvolvimento | Padronização | Gestão | Orquestração |
|---|---|---|---|---|---|
| Compreensão dos frameworks | Os nomes são usados com folga | Parte do pessoal sabe dizer para que serve cada framework | As equipes compartilham uma descrição curta e exata dos frameworks em uso | O uso dos frameworks é revisado contra requisitos e resultados | Equipes, clientes e fornecedores compartilham um entendimento exato |
| Requisitos e escopo | Os requisitos são presumidos | Alguns requisitos são rastreados até documentos | Requisitos e escopo são documentados | Conformidade e escopo são revisados e as lacunas acompanhadas | Os requisitos são alinhados com parceiros e clientes |
| Evidências | As evidências são reunidas à mão para cada pedido | Alguns registros são produzidos a partir de ferramentas | As evidências vêm em sua maioria de ferramentas e são descritas de forma consistente | A qualidade das evidências é medida e melhorada | As evidências são compartilhadas com auditores e parceiros automaticamente |
| Atualização | As mudanças nos frameworks passam despercebidas | Algumas pessoas acompanham os anúncios | Uma pessoa nomeada relata as mudanças em intervalos definidos | As mudanças são avaliadas e tratadas | As mudanças são antecipadas e tratadas com parceiros |

## Lista de verificação

- [ ] Sabemos dizer quais frameworks e normas clientes, contratos ou reguladores realmente exigem.
- [ ] Sabemos quais são orientação, quais são normas certificáveis e quais são modelos de governança.
- [ ] Nossas alegações sobre certificação são exatas e especificam o escopo.
- [ ] Trabalhamos a partir do texto da norma ou do titular em qualquer alegação de conformidade.
- [ ] Nossa prática é descrita uma vez e mapeada para cada framework que precisamos satisfazer.
- [ ] As evidências para auditorias vêm em sua maioria das nossas ferramentas.
- [ ] Lemos a orientação sobre ágil e DevOps nas normas que se aplicam a nós.
- [ ] Alguém está nomeado para acompanhar as atualizações e relatá-las.
- [ ] Nossas decisões de adaptação estão escritas.
- [ ] Revisamos se o nosso escopo corresponde a serviços reais.

## Prompts de IA

**Finalidade: mapear uma exigência de cliente para o texto do framework que a sustenta.**

```text
A customer or auditor has made this requirement: [paste the exact wording and where it appeared, for example a tender clause].

Here is the text of the relevant standard or framework, which I have copied from the owner's publication: [paste only text you are entitled to use; keep it short].

Using only the pasted text, say what the requirement appears to ask for, what is unclear, and what questions I should put to the customer. Do not describe the contents of any standard that I have not pasted. Do not say whether we comply. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: descrever sua prática uma vez para que possa ser mapeada a vários frameworks.**

```text
Help me write a single plain-language description of how we handle [practice, e.g. "changes to production"].

How it works today, in steps, with the tools and records involved: [paste].
Frameworks we need to map it to: [list names; I will paste the relevant requirement text for each].

Produce a description in short numbered steps, then a table with one row per step and one column per framework showing which pasted requirement the step seems to address (only from my pasted text). Mark gaps as questions, not conclusions. Do not claim conformance. Ask clarifying questions first, and list what you are unsure of.
```

**Finalidade: preparar-se para responder com honestidade a "vocês são certificados em ITIL?".**

```text
Write a short, honest reply to a customer who asks whether our company is "ITIL certified."

Facts I have verified from official sources: [paste, for example that certification in ITIL applies to individuals; and list the certifications our staff hold].
What we actually do: [describe our practice in a few sentences].
Other certifications we hold or are considering: [list].

The reply should be polite, accurate, under 150 words, and avoid overclaiming. Offer evidence we could share. Use only the facts I gave. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

**Finalidade: planejar as evidências que uma auditoria de gestão de serviços poderia pedir.**

```text
We expect an audit of our service management against [standard name and edition].

The records we produce today, and the tool each comes from: [list].
The requirement areas I know of, with the wording I have from the standard: [paste, or write "not yet read"].

Create a table of likely evidence by requirement area (from my pasted text only), the record we already have, the gap, and whether the record could come from a tool automatically. Do not invent requirements. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Skills de IA

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): use para situar os frameworks de gestão de serviços no quadro mais amplo da arquitetura corporativa e da governança.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): use para planejar como se preparar para uma auditoria contra uma norma ou um requisito contratual.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md): use para desenhar verificações que produzam automaticamente evidências de conformidade.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): use quando o escopo de uma certificação depender de fornecedores e você precisar planejar revisões de fornecedores.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md): use quando frameworks como o COBIT ou o PMBOK Guide encontrarem o seu escritório de projetos.

## Fontes principais

- **ISO/IEC 20000-1** (Organização Internacional de Normalização): a norma em si; leia seu escopo e os títulos das cláusulas no catálogo da ISO antes de fazer alegações.
- **ISO/IEC 20000** (Wikipedia): a história, as partes e o panorama da certificação da norma, com citações.
- **COBIT** (ISACA e Wikipedia): as publicações da própria ISACA são autorizadas; o artigo da Wikipédia dá história e estrutura, mas tem fontes fracas.
- **FitSM** (Wikipedia e o projeto FitSM): uma alternativa curta e de licença livre; confira as páginas do projeto para a versão atual.

## Referências

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
