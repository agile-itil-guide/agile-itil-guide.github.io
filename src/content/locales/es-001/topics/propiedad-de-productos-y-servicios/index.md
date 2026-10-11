# Propiedad de Productos y Servicios

**La propiedad de productos y servicios da a cada producto o servicio una persona responsable y un equipo que lo construye y lo opera, para que las decisiones sobre valor, calidad y coste las tomen quienes viven con los resultados.**

## Por qué importa

En muchas organizaciones, nadie es dueño de un servicio en su conjunto. Un proyecto lo construye, un equipo de operaciones lo opera, un proveedor suministra una parte y un departamento de finanzas lo paga. Cuando algo va mal, hay cuatro reuniones y ninguna decisión. Cuando los usuarios quieren que se mejore algo, la solicitud va a una cola que no pertenece a nadie. El servicio se deteriora entre equipos.

La propiedad aborda esto directamente. Pide dos cosas: una persona responsable del valor del producto o servicio y un equipo con las habilidades y la autoridad para construirlo, operarlo y mejorarlo. La idea es antigua en algunas formas y está de moda en otras, y los detalles difieren mucho entre organizaciones. Hacerla bien es una de las condiciones más importantes para que todo lo demás en esta guía funcione.

Dos ideas están detrás del tema. La primera es el Product Owner de la Guía de Scrum, que es responsable de maximizar el valor del producto y de ordenar su lista de trabajo pendiente, y que es una persona y no un comité (véase Tema 1.4 — Pronóstico de Entrega y Métricas de Planificación). La segunda es el eslogan "lo construyes, lo operas" (you build it, you run it), asociado con el director de tecnología de Amazon, Werner Vogels, en una entrevista publicada en ACM Queue en 2006, que esta guía no pudo leer directamente (la página devolvió un error de acceso) y conoce por descripciones secundarias. Según esas descripciones, Vogels contrapuso el modelo antiguo, en el que los desarrolladores lanzan el software por encima de una valla a operaciones, con uno en el que los desarrolladores permanecen en contacto diario con la operación de su software y con el cliente. El [artículo de Wikipedia sobre la gestión de productos](https://en.wikipedia.org/wiki/Product_management) da una descripción general de la disciplina pero no dice nada sobre el rol ágil de responsable de producto ni sobre la propiedad de servicios, así que este tema hace el trabajo de conexión y lo dice.

## Conceptos clave

### Producto, servicio, proyecto

| Término | Significado, en el uso común | Horizonte temporal |
|---|---|---|
| **Proyecto** | Un esfuerzo temporal con alcance, comienzo y fin definidos | Termina cuando se entrega el alcance |
| **Producto** | Algo ofrecido a clientes o usuarios que se desarrolla y se mejora con el tiempo | Continúa mientras crea valor |
| **Servicio** | Una manera de entregar valor a otros sin que tengan que asumir los costes y riesgos (véase Tema 2.1 — Gestión de Servicios de TI) | Continúa mientras se ofrece |

Un producto digital suele ser también un servicio: los usuarios dependen de que funcione bien. La distinción entre producto y servicio importa menos que el paso del proyecto a la responsabilidad continuada, como describe el Tema 1.9 — Gestión Ágil.

### Gestión de productos

El artículo de Wikipedia describe la gestión de productos como el proceso de negocio de planificar, desarrollar, lanzar y gestionar un producto o servicio, asegurando que los productos satisfagan las necesidades del mercado objetivo y apoyen la estrategia del negocio a lo largo del ciclo de vida del producto. Enumera responsabilidades de los gerentes de producto: gestionar la línea de productos día a día, ser responsables del caso de negocio y de la entrega al mercado, analizar la investigación de clientes y la competencia, documentar requisitos, fijar la estrategia y crear la hoja de ruta, y alinearse con diseño, desarrollo, marketing, ventas, soporte y jurídico. Rastrea el concepto hasta un memorando de 1931 del presidente de Procter & Gamble, Neil H. McElroy, que pedía "Brand Men" para gestionar productos. Dice que los gerentes de producto suelen medirse por su responsabilidad en la cuenta de resultados.

El artículo no conecta la gestión de productos con el Product Owner ágil, así que el vínculo es lectura de esta guía: un Product Owner es responsable del valor del producto y ordena su lista de trabajo pendiente, y en muchas organizaciones un gerente de producto desempeña el rol de negocio más amplio. En equipos pequeños una persona puede hacer ambos.

### El responsable de producto y el responsable de servicio

| Rol | Responsable de | Preguntas típicas |
|---|---|---|
| **Responsable de producto** (Scrum) | Maximizar el valor del producto; ordenar la lista de trabajo pendiente del producto | ¿Qué deberíamos construir o mejorar a continuación y por qué? |
| **Gerente de producto** | El caso de negocio, la estrategia y la hoja de ruta de un producto | ¿Es este el producto adecuado, para el mercado adecuado? |
| **Responsable de servicio** (uso de ITSM) | El desempeño y la mejora de un servicio a lo largo de su vida | ¿Satisface el servicio las necesidades de los usuarios, a un coste y riesgo aceptables? |

Los roles se solapan. Para un servicio de TI interno, una persona puede ser responsable de producto y responsable de servicio. La Guía de Scrum subraya que el Product Owner es una persona, no un comité, para que las decisiones de orden tengan un responsable claro. Sea cual sea el título, la prueba es si una persona con nombre puede hacer compromisos entre funcionalidades nuevas, fiabilidad y coste.

### "Lo construyes, lo operas"

Según los resúmenes secundarios de la entrevista de 2006 a Vogels, la frase expresa un modelo en el que el equipo que construye un servicio también lo opera, y así permanece en contacto diario con los usuarios y con las consecuencias de su diseño. La entrevista la realizó Jim Gray y se publicó en ACM Queue en 2006; el propio blog de Amazon señaló la entrevista cuando apareció. Esta guía no ha leído el original, por lo que no lo cita. El modelo tiene costes además de beneficios:

| Beneficio | Coste o riesgo |
|---|---|
| Los constructores sienten el dolor de la mala operabilidad y la corrigen | Los constructores cargan con la guardia y pueden agotarse |
| Retroalimentación más corta de usuarios e incidentes | En el equipo deben existir habilidades de operaciones, seguridad y cumplimiento |
| Ningún traspaso en el que se pierda conocimiento | Las normas entre equipos necesitan otros mecanismos |
| Responsabilidad clara | Los equipos pequeños pueden encontrar demasiado pesada toda la carga |

La ingeniería de fiabilidad de sitios y DevOps ofrecen maneras de apoyar a tales equipos (véase Tema 5.2 — DevOps y Tema 5.3 — Ingeniería de Fiabilidad de Sitios). Los equipos de plataforma pueden proporcionar herramientas comunes para que cada equipo de producto no tenga que reconstruirlas.

### Equipos que son dueños

La propiedad necesita un equipo con las habilidades para entregar y operar y con la autoridad para actuar. Scrum describe un equipo pequeño, multifuncional y autogestionado que no depende de otros para la totalidad de su trabajo. En la práctica, los equipos de producto también dependen de plataformas compartidas, seguridad y servicios de datos. Gestionar estas dependencias forma parte de la propiedad (véase Tema 1.8 — Escalado de Ágil).

### Financiación y objetivos

La propiedad necesita financiación estable y objetivos claros. Un equipo financiado proyecto a proyecto se disuelve cuando termina el proyecto, y un responsable de servicio no tiene equipo. La respuesta habitual es un equipo permanente financiado para un producto o servicio, con objetivos que cambian a medida que aprende (véase Tema 1.9 — Gestión Ágil). Los objetivos deben tratar de resultados para los usuarios y el negocio y deben fijarse con el responsable.

### Propiedad en la gestión de servicios

Las prácticas de ITIL necesitan responsables: cada servicio tiene un responsable, cada práctica tiene un responsable y cada proceso importante tiene un responsable (véase Tema 5.1 — Gestión de Servicios Ágil). El responsable del servicio tiene el nivel de servicio, la entrada del catálogo, la lista de mejoras y la relación con los clientes (véase Tema 3.7 — Gestión de Niveles de Servicio y Tema 3.8 — Gestión del Catálogo de Servicios).

### Límites y cautelas

Las fuentes leídas para esta guía no ofrecen evidencia sobre lo bien que funcionan los modelos de propiedad, y el artículo de Wikipedia sobre la gestión de productos no enumera críticas. Las cautelas prácticas ofrecidas desde la experiencia incluyen los responsables con título y sin autoridad, los responsables sobrecargados con varios productos, el "lo construyes, lo operas" sin apoyo que lleva al agotamiento y la propiedad que se detiene en la frontera del equipo mientras el flujo de valor la cruza (véase Tema 5.4 — Gestión del Flujo de Valor).

## Buenas prácticas

1. **Nombra una persona responsable para cada producto o servicio.** Escribe el nombre en el catálogo de servicios. Asegúrate de que tiene autoridad sobre las prioridades y voz en la financiación.
2. **Define qué decide el responsable.** Declara qué decisiones toma el responsable solo, cuáles con el equipo y cuáles necesitan escalamiento. Sin esto, la propiedad es un título.
3. **Da tiempo al responsable.** No hagas responsables de varios productos grandes ni de responsables que además tienen un trabajo de entrega completo. La propiedad es trabajo real.
4. **Financia al equipo durante la vida del servicio.** Evita disolver equipos cuando terminan los proyectos. Revisa la financiación con un ciclo regular frente a los resultados.
5. **Fija objetivos de resultado con el responsable.** Describe qué debería ser mejor para los usuarios y el negocio, con unas pocas medidas que el equipo pueda producir por sí mismo (véase Tema 5.6 — Métricas y Medición).
6. **Pon construir y operar en un solo equipo donde puedas.** Incluye las habilidades de desarrollo, operaciones y soporte y da al equipo acceso a los datos y herramientas de producción dentro de límites seguros. Donde no puedas, crea acuerdos de trabajo sólidos.
7. **Apoya al equipo con una plataforma.** Proporciona herramientas compartidas de despliegue, monitorización y seguridad para que cada equipo no construya las suyas. Trata la plataforma como un producto con usuarios.
8. **Reparte con justicia la carga de guardia.** Limita las llamadas nocturnas, ajusta las alertas y vigila el agotamiento. "Lo construyes, lo operas" fracasa cuando las personas que lo operan están agotadas.
9. **Mantén una lista de trabajo pendiente por producto.** Incluye funcionalidades, defectos, trabajo de operaciones y elementos de mejora en una sola lista ordenada, para que el responsable pueda sopesarlos entre sí.
10. **Conecta a los responsables entre sí.** Celebra conversaciones periódicas entre los responsables de productos y servicios dependientes, para resolver conflictos y alinear planes.
11. **Revisa la titularidad cada año.** Comprueba que cada servicio sigue teniendo un responsable activo, un equipo y una lista de trabajo pendiente, y que los roles siguen encajando.
12. **Prevé los equipos pequeños.** Cuando un equipo es dueño de muchos servicios pequeños, agrúpalos con sensatez y usa prácticas ligeras. No apliques un modelo pesado a un servicio pequeño.

## Preguntas para conversar con tu equipo

**¿Quién es responsable de cada uno de nuestros servicios y lo diría él mismo?**

Enumera los servicios principales y nombra al responsable. Luego pregunta a cada persona nombrada si se llamaría a sí misma responsable. Las diferencias entre la lista y las respuestas revelan cuánto de la titularidad es nominal. Quien facilite puede preguntar qué servicio no tiene responsable y qué ha costado.

**¿Qué puede decidir hoy nuestro responsable sin preguntar a nadie?**

Pide ejemplos: prioridades, gasto, una versión, un compromiso con un cliente. Si la mayoría de las decisiones necesitan la aprobación de otros, discute cuáles deberían delegarse y con qué límites. Acordad una decisión que trasladar.

**Cuando algo va mal en producción, ¿a quién se despierta y tiene los medios para corregirlo?**

Pregunta quién está de guardia y qué puede cambiar. Si no son los constructores, pregunta por qué. Discute cómo llega la retroalimentación de los incidentes a quienes diseñan el servicio. Acordad una vía que acortar.

**¿Cómo financiamos este servicio y qué pasa cuando termina un proyecto?**

Sigue la financiación de un servicio principal. Pregunta quién puede gastar en mejoras y quién decide detenerlo. Si el equipo se disuelve tras un proyecto, discute el coste del conocimiento perdido. Propón una prueba de financiación permanente para un servicio.

**¿Qué habilidades nos faltan para construir y operar nuestro servicio y cómo podríamos conseguirlas?**

Enumera las habilidades que necesita el trabajo: desarrollo, operaciones, seguridad, datos, soporte. Marca las lagunas. Discute el trabajo en pareja, la formación, pedir prestado a un especialista o una plataforma compartida. Elige una laguna que cerrar.

**¿Cuántos responsables le pedimos a una persona que sea?**

Cuenta los productos y servicios de los que es responsable cada responsable. Los responsables sobrecargados no pueden tomar buenas decisiones. Discute dividir, delegar o retirar servicios. Acordad un máximo y un plan para un responsable que lo supere.

## En la práctica: un ejemplo de ITIL ágil

Una agencia nacional de empleo opera un servicio en línea de emparejamiento laboral que usan los demandantes de empleo y los empleadores. El servicio lo construyó un equipo de proyecto, se entregó a un grupo de operaciones y ahora se financia como una serie de pequeños proyectos. La jefa de servicios digitales descubre que nadie sabe decir quién es su responsable: el patrocinador original del proyecto se ha jubilado, operaciones gestiona los incidentes y una unidad de política pide cambios a través de una cola que tarda meses. Los empleadores se quejan de un formulario de registro que no ha cambiado en tres años.

La jefa nombra responsable del servicio a una persona de la unidad de relaciones con empleadores, alguien que comprende tanto a los empleadores como el servicio, y le da voz sobre la lista de trabajo pendiente y una parte del presupuesto. Un equipo permanente de ocho personas, que combina desarrolladores, un ingeniero de operaciones, una probadora y un diseñador, se forma con las personas que ya trabajaban en el servicio. El equipo se une al turno de guardia, con un límite de llamadas nocturnas, y usa una plataforma compartida de despliegue y monitorización mantenida por un equipo central. Las peticiones de la unidad de política van a la lista de trabajo pendiente única, donde la responsable las ordena frente a mejoras y correcciones. El equipo y la responsable acuerdan tres objetivos de resultado para el año con unas pocas medidas: la proporción de registros de empleadores completados, el tiempo que tardan los demandantes de empleo en encontrar una coincidencia y el número de incidentes repetidos.

Tras ocho meses, el formulario de registro se reconstruye, mejora la tasa de finalización y bajan los incidentes repetidos. La responsable puede responder a las preguntas de los empleadores sobre lo planificado. Quedan algunas dificultades. La responsable también lo es de otro pequeño servicio y está sobrecargada, la unidad de política se resiente de tener que competir por huecos de la lista de trabajo pendiente y los ingenieros de guardia dicen que a la plataforma compartida le falta una herramienta que necesitan. La jefa de servicios digitales reduce las demás obligaciones de la responsable, pide a la unidad de política y a la responsable que organicen una reunión de planificación mensual y pone la petición de la plataforma en la lista de trabajo pendiente del equipo central.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega deben trabajar con un responsable claro y asumir la operación de lo que construyen. Ofrece al responsable evidencia de los usuarios, los incidentes y los costes, y sé honesto sobre los compromisos. Pide las herramientas y el apoyo que necesitas para llevar la guardia con justicia.

### Equipos de servicio y operaciones

Los equipos de operaciones apoyan a los equipos de producto con experiencia, plataformas y normas compartidas. Cuando operan servicios para otros, nombra responsables y acuerda niveles de servicio. Resiste la tentación de entregar cada problema operativo a un grupo central que no es dueño de nada.

### Liderazgo y gobernanza

Los líderes crean la titularidad nombrando responsables, dándoles autoridad y tiempo y financiando equipos permanentes. Pide a los responsables resultados y evidencia, y evita anular sus prioridades sin discusión. Vigila a los responsables que tienen el título pero no el poder.

### Clientes y usuarios

Los clientes y usuarios se benefician cuando saben quién responde de un servicio y pueden llegar a esa persona. Di al responsable qué importa más y qué duele. Espera información clara sobre lo planificado y voz en cómo se fijan las prioridades.

## Fallos frecuentes

- **Título sin autoridad.** Un responsable no puede decidir nada. En su lugar, declara qué decide el responsable y respáldalo.
- **Titularidad por comité.** Nadie es responsable. En su lugar, nombra a una persona para cada producto o servicio.
- **Responsables sobrecargados.** Una persona es responsable de demasiados productos. En su lugar, limita el número y delega.
- **Disolver equipos tras los proyectos.** El conocimiento se va. En su lugar, financia equipos permanentes para los servicios continuos.
- **"Lo construyes, lo operas" sin apoyo.** Los equipos se agotan. En su lugar, proporciona una plataforma, una guardia compartida y alertas ajustadas.
- **Propiedad que se detiene en el equipo.** El flujo de valor cruza equipos. En su lugar, conecta a los responsables de servicios dependientes.
- **Varias listas de trabajo pendiente.** Funcionalidades, defectos y operaciones compiten en colas ocultas. En su lugar, mantén una lista ordenada por producto.
- **Copiar un modelo sin contexto.** Un patrón de una empresa grande se aplica a un servicio pequeño. En su lugar, ajusta el modelo al tamaño y al riesgo.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Responsabilidad | Los servicios no tienen un responsable claro | Algunos servicios tienen responsables informales | Cada servicio tiene un responsable con nombre, con derechos de decisión definidos y tiempo | Se revisan la eficacia de los responsables y los resultados | Los responsables se coordinan entre servicios dependientes y con los clientes |
| Equipo y habilidades | Construir y operar son equipos separados | Algunos equipos comparten la guardia | Equipos permanentes son dueños de construir y operar con las habilidades que necesitan | Las lagunas de habilidades y la carga se miden y se abordan | Las habilidades y las plataformas se comparten entre equipos y proveedores |
| Financiación y objetivos | La financiación es por proyecto | Existen algunos equipos permanentes | Los servicios tienen financiación permanente y objetivos de resultado | La financiación sigue los resultados medidos | La financiación y los objetivos se alinean entre servicios y con los clientes |
| Lista de trabajo pendiente y prioridades | Las prioridades vienen de muchas colas | Algunos responsables mantienen una lista | Una lista ordenada por producto incluye todo tipo de trabajo | El flujo de la lista y las prioridades se revisan con las partes interesadas | Las prioridades se alinean entre responsables y con los clientes |

## Lista de verificación

- [ ] Cada producto o servicio tiene un responsable con nombre, anotado en el catálogo de servicios.
- [ ] Está escrito qué decide cada responsable solo, con el equipo y por escalamiento.
- [ ] Los responsables tienen tiempo para el rol y un número manejable de servicios.
- [ ] Se financia un equipo permanente para cada servicio continuo.
- [ ] Cada servicio tiene objetivos de resultado con unas pocas medidas.
- [ ] El equipo que construye un servicio tiene las habilidades y el acceso para operarlo, o tiene acuerdos de trabajo claros con quienes lo hacen.
- [ ] La carga de guardia se reparte con justicia, con límites y alertas ajustadas.
- [ ] Una plataforma compartida apoya a los equipos con despliegue, monitorización y seguridad.
- [ ] Cada producto tiene una lista de trabajo pendiente ordenada que cubre funcionalidades, defectos, operaciones y mejora.
- [ ] La titularidad se revisa al menos una vez al año.

## Prompts de IA

**Propósito: redactar los derechos de decisión de un responsable de producto o servicio.**

```text
Ayúdame a redactar los derechos de decisión del responsable de [producto o servicio].

Qué hace el servicio y quién lo usa: [describe].
Decisiones que surgen con frecuencia: [enumera de 8 a 12, como prioridades, gasto, versiones, compromisos con clientes, elección de proveedores].
Reglas que debemos cumplir (financieras, de seguridad, legales), con el texto de la fuente si lo tienes: [pega, o escribe "ninguna conocida"].
Arreglo actual: [describe].

Produce una tabla con tres columnas: el responsable decide solo, el responsable decide con el equipo y escalar. Coloca cada decisión en una columna con una razón de una frase. Marca cualquier colocación que sea una conjetura. No inventes reglas. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: encontrar servicios sin un responsable claro.**

```text
Esta es una lista de nuestros servicios con el responsable que tenemos registrado, el equipo que construye, el equipo que opera y quién financia cada uno: [pega].

Usando solo esta lista, identifica los servicios sin responsable, con personas distintas nombradas como responsable en distintas columnas o con construir y operar repartidos entre equipos. Para cada uno, sugiere una pregunta que hacer. No decidas quién debería ser responsable de nada. Enumera de lo que no estés seguro.
```

**Propósito: planificar un modelo de guardia para un equipo que construye y opera.**

```text
Ayúdame a planificar un modelo de guardia para un equipo de [número] personas que construyen y operan [servicio].

Incidentes y avisos actuales (recuentos por semana, proporción fuera de horario): [pega datos reales].
Habilidades del equipo: [enumera].
Restricciones: [por ejemplo zonas horarias, normas de ausencias].

Propón el diseño del turno, los límites de llamadas nocturnas, cómo se ajustarán las alertas, qué apoyo necesita el equipo de una plataforma o de un grupo de operaciones y qué revisar cada trimestre. Deja los límites numéricos como [por acordar]. No inventes datos. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: preparar un argumento a favor de la financiación permanente de un servicio.**

```text
Ayúdame a preparar un argumento breve para financiar [servicio] con un equipo permanente en lugar de por proyecto.

Cómo se financia hoy y qué pasa al final de cada proyecto: [describe].
Costes del arreglo actual, en hechos (repetición del trabajo, conocimiento perdido, retrasos; usa solo ejemplos reales): [pega].
Qué necesitaría un equipo permanente: [describe roles y tamaño aproximado].
Objetivos de resultado propuestos: [enumera].

Escribe un argumento de una página con el problema, la propuesta, los riesgos (incluido el riesgo de que un equipo permanente se vuelva complaciente), qué mediremos y cómo se revisaría la financiación. No inventes cifras. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): úsala para dejar claro quién es responsable, da soporte y es consultado en cada producto o servicio.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): úsala para describir la dirección y los planes a corto plazo de un producto o servicio.
- [agile-charter](../../../../skills/agile-charter/SKILL.md): úsala para fijar el propósito, los resultados y los límites de un equipo al inicio.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): úsala para ayudar a un responsable a ordenar la lista de trabajo pendiente por valor y coste.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md): úsala para validar qué debería hacer a continuación un producto o servicio antes de construirlo.

## Fuentes principales

- **La Guía de Scrum** (Ken Schwaber y Jeff Sutherland, scrumguides.org): la definición de la responsabilidad del Product Owner y del equipo multifuncional y autogestionado.
- **Product management** (Wikipedia): una descripción general de la disciplina, sus responsabilidades y su historia.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006): la entrevista en la que se describe "lo construyes, lo operas"; lee el original para la redacción exacta.
- **Site Reliability Engineering** (Google, sre.google): una manera de apoyar a los equipos que operan lo que construyen.

## Referencias

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
