# Gestión del Conocimiento

**La gestión del conocimiento pone a disposición de otros lo que saben las personas cuando lo necesitan, y el enfoque que funciona para los equipos ágiles es capturar el conocimiento como subproducto del trabajo, mantenerlo breve y con responsable, y combinar la escritura con la conversación.**

## Por qué importa

Todo servicio depende del conocimiento: cómo funciona, qué ha ido mal antes, cómo corregirlo y por qué se construyó así. Cuando ese conocimiento vive solo en unas pocas cabezas, el servicio es frágil. Unas vacaciones, una dimisión o una mala noche de guardia pueden convertir una corrección de diez minutos en una caída de diez horas. La gestión del conocimiento es la práctica de asegurarse de que quienes necesitan saber puedan averiguarlo.

La tradición ágil se inclina por la conversación y el software funcionando por encima de la documentación, y los autores del Manifiesto Ágil han sido criticados por ello (véase Tema 1.1 — Manifiesto Ágil). Una lectura justa es que la documentación debe ganarse su lugar. La gestión del conocimiento ofrece una manera de decidir qué se lo gana: el conocimiento que se usa a menudo, es costoso de redescubrir o está en manos de muy pocas personas. Para el resto, la conversación y el trabajo en pareja pueden servir mejor.

El [artículo de Wikipedia sobre la gestión del conocimiento](https://en.wikipedia.org/wiki/Knowledge_management) es amplio y describe el campo como el tratamiento del conocimiento para lograr los objetivos de la organización, distinto de la gestión de contenidos o de la información. Recoge historia, modelos, enfoques, facilitadores, barreras y críticas, y no dice nada específico sobre los servicios de TI. Este tema usa las ideas generales del artículo y las aplica a los equipos de servicio, señalando dónde aplica y no informa.

## Conceptos clave

### Qué es la gestión del conocimiento

Wikipedia describe la gestión del conocimiento (KM) como los procesos de conciencia organizativa, aprendizaje, colaboración e innovación, que usan y comparten el conocimiento para apoyar los objetivos de una organización. Señala que prácticas como el aprendizaje de oficios, las bibliotecas corporativas y la mentoría preceden con mucho al término. La KM surgió como disciplina a principios de los años noventa, con académicos como Ikujiro Nonaka, Hirotaka Takeuchi, Thomas H. Davenport y Baruch Lev ayudando a desarrollar el campo. El artículo dice que ISO 9001:2015 añadió una especificación sobre el "conocimiento organizativo".

### Conocimiento tácito y explícito

El artículo distingue dos formas. El **conocimiento tácito** está interiorizado y a menudo no se conoce de forma consciente. El **conocimiento explícito** se tiene de forma consciente y puede comunicarse con facilidad. El modelo SECI de Nonaka (socialización, externalización, combinación, interiorización), que el artículo atribuye al libro de Nonaka y Takeuchi de 1995, describe una espiral entre los dos. El artículo señala también que investigadores posteriores calificaron la división de simplificación excesiva.

Para un equipo de servicio la distinción es práctica. Un ingeniero con experiencia a menudo puede intuir que una alarma probablemente es ruido o que una versión concreta es arriesgada, y no puede escribir fácilmente por qué. Parte de esa intuición puede convertirse en guías operativas y comprobaciones; parte solo puede compartirse trabajando juntos.

### Codificación y personalización

Siguiendo a Hansen y colegas (1999), el artículo distingue dos estrategias. La **codificación** almacena el conocimiento en repositorios para que otros puedan reutilizarlo. La **personalización** comparte el conocimiento mediante el contacto directo entre personas. Cada una conviene a un conocimiento distinto:

| Estrategia | Conviene a | Ejemplos en un equipo de servicio |
|---|---|---|
| Codificación | Tareas repetidas y bien comprendidas | Guías operativas, registros de errores conocidos, descripciones de servicio, artículos prácticos |
| Personalización | Asuntos complejos, cambiantes o que dependen del juicio | Hacer pareja en la guardia, acompañar (shadowing), comunidades de práctica, discusiones de diseño |

La mayoría de los equipos necesita ambas. Una base de conocimiento de recetas no enseña juicio, y la conversación por sí sola no escala al turno de noche.

### Comunidades de práctica

El artículo enumera las comunidades de práctica entre las perspectivas de la KM. En una organización de servicios pueden ser tan sencillas como una reunión informal periódica de personas que trabajan en problemas similares en distintos equipos, como ingenieros de bases de datos o analistas del centro. Difunden conocimiento y normas y dan a las personas un lugar donde preguntar.

### Qué capturar

No todo merece un registro. Los candidatos útiles en un equipo de servicio incluyen:

- **Cómo restablecer un servicio:** guías operativas y pasos de recuperación (véase Tema 3.2 — Gestión de Incidentes).
- **Errores conocidos y soluciones alternativas:** síntoma, solución alternativa y responsable (véase Tema 3.3 — Gestión de Problemas).
- **Descripciones de servicio:** qué hace un servicio, quién es su responsable y de qué depende (véase Tema 3.8 — Gestión del Catálogo de Servicios).
- **Decisiones y sus razones:** por qué se eligió un diseño, para que los cambios futuros no lo deshagan a ciegas.
- **Lecciones de los incidentes:** postmortems que otros puedan leer.
- **Respuestas a preguntas comunes de los usuarios:** artículos breves para el centro de servicios y para el autoservicio.

### Facilitadores y barreras

El artículo nombra a las personas y la cultura, los procesos y la estructura, y la tecnología como componentes centrales. Señala que las motivaciones incluyen la innovación, los ciclos de desarrollo más cortos y el aprovechamiento de la experiencia, y que las organizaciones usan incentivos como la presentación obligatoria de contenido, pero dice que no hay consenso sobre si los incentivos funcionan. Enumera barreras como el conocimiento que no se transfiere, la formación insuficiente y la pérdida de conocimiento cuando se van trabajadores con experiencia. Para los equipos de servicio, las barreras que más importan son la presión de tiempo, la titularidad poco clara del contenido, las herramientas incómodas de usar y una cultura que premia el heroísmo sobre el compartir.

### El conocimiento en el flujo de trabajo

Un principio práctico, muy usado en los centros de servicios, es capturar el conocimiento como parte del trabajo y no como una tarea aparte. Cuando un analista resuelve un problema nuevo, la solución se convierte en un borrador de artículo antes de cerrar el ticket. Cuando un ingeniero corrige un incidente, los pasos van a la guía operativa. Así cada trabajo se convierte en una pequeña contribución. Las fuentes leídas para esta guía no describen un método específico para hacerlo, así que trata el principio como práctica común que probar y ve qué funciona con tus herramientas.

### Críticas y límites

El artículo recoge críticas: que se ha cuestionado la relevancia práctica de la investigación académica sobre KM, que se ha criticado la distinción entre tácito y explícito, que se discute la eficacia de los incentivos y que proteger el conocimiento conlleva riesgos como la sobreprotección y la apropiación indebida. No informa de evidencia medida de la eficacia de la KM ni de su retorno de la inversión. Para un equipo de servicio la lección es una ambición modesta: empieza con el conocimiento cuya ausencia ha perjudicado, mide si se usa y abandona lo que no.

### Conocimiento y aprendizaje organizativo

El artículo dice que la KM es similar al aprendizaje organizativo pero da más énfasis al conocimiento como activo estratégico y al intercambio de información, y que la KM facilita el aprendizaje organizativo. Esto se vincula con el aprendizaje ágil (véase Tema 1.10 — Aprendizaje Ágil) y con la mejora continua (véase Tema 3.15 — Mejora Continua).

## Buenas prácticas

1. **Empieza con el conocimiento cuya ausencia ha perjudicado.** Enumera los últimos incidentes o retrasos causados por conocimiento que faltaba. Empieza con esos temas, no con un intento de documentarlo todo.
2. **Captura el conocimiento en el momento del trabajo.** Haz que escribir una nota breve forme parte del cierre de un incidente, una solicitud o un cambio. Una nota tosca escrita ahora vale más que un artículo pulido planificado para más tarde.
3. **Mantén los artículos breves y estructurados.** Usa una forma coherente: síntoma, causa si se conoce, pasos, cuándo escalar, responsable, fecha de última revisión. Las personas bajo presión leen encabezados y pasos numerados.
4. **Da a cada artículo un responsable y una fecha de revisión.** El contenido sin responsable se deteriora. Muestra la fecha de revisión en el artículo para que los lectores puedan juzgar su fiabilidad.
5. **Elimina y fusiona.** Retira los artículos que nadie usa y fusiona los duplicados. Una base más pequeña y actual es mejor que una grande y obsoleta.
6. **Hazlo fácil de encontrar.** Pon el conocimiento donde la gente ya trabaja, prueba la búsqueda con consultas reales y enlaza los artículos desde los tickets, el catálogo de servicios y las guías operativas.
7. **Prueba las guías operativas usándolas.** Pide a la persona que usará una guía operativa que la siga en un caso de prueba. Corrige lo que no esté claro. Así un documento se convierte en conocimiento que funciona.
8. **Haz pareja y acompaña para lo tácito.** Haz que las personas con menos experiencia trabajen con las que tienen más en incidentes y cambios reales. Planifica el trabajo en pareja, porque no ocurrirá cuando todos estén ocupados.
9. **Apoya las comunidades de práctica.** Da a las personas tiempo y un lugar para reunirse entre equipos. Deja que los temas procedan de los miembros.
10. **Registra las decisiones y las razones.** Conserva un breve registro de las decisiones importantes de diseño y de proceso y de por qué se tomaron. Evita el redescubrimiento y ayuda a los recién llegados.
11. **Comparte las lecciones.** Publica ampliamente los postmortems y los resúmenes de problemas, en lenguaje sencillo, y pregunta a otros equipos qué se aplica a ellos (véase Tema 3.2 — Gestión de Incidentes).
12. **Vigila el riesgo de conocimiento.** Una vez por trimestre, enumera las habilidades y sistemas que dependen de una persona y planifica cómo difundirlos. Trata las salidas como un estímulo para revisar.

## Preguntas para conversar con tu equipo

**¿Qué no podríamos hacer si una persona concreta estuviera ausente durante un mes?**

Pide al equipo que nombre a las personas cuya ausencia perjudicaría y por qué. Enumera las tareas que dependen de ellas. Suele ser una lista larga, e incómoda para las personas nombradas. Plantéalo como un riesgo para el servicio, no como un juicio. Quien facilite puede preguntar qué tarea es más urgente compartir y cómo. Elige una para empezar.

**¿Qué escribimos y lo lee alguien?**

Pide los tres últimos documentos que usaron las personas y los tres últimos que escribieron. Compara. La diferencia muestra dónde se está desperdiciando el esfuerzo de documentación. Pregunta cómo sería una versión útil de los documentos que nadie lee, o si deberían borrarse. Acordad retirar o corregir uno.

**Cuando corregimos algo nuevo, ¿adónde va el conocimiento?**

Sigue el último problema nuevo: quién lo corrigió, quién sabe cómo y dónde se registró. Si la respuesta es "en un ticket" o "en mi cabeza", discute cómo sería una vía mejor. A menudo un pequeño hábito, como una plantilla al cierre, marca la diferencia. Prueba uno durante un mes.

**¿Qué conocimiento se comparte mejor trabajando juntos que escribiendo?**

Pregunta dónde importa el juicio: leer una gráfica, decidir cuándo escalar, conocer a un cliente. Discute cómo aprenden esto hoy los recién llegados. Las respuestas típicas son la suerte y el tiempo. Planifica un arreglo deliberado, como acompañar en la guardia. Acordad quién hará pareja con quién.

**¿Cómo sabemos si un artículo de conocimiento sigue siendo cierto?**

Elige un artículo y ponlo a prueba. Comprueba el responsable, la fecha de revisión y si los pasos funcionan. Muchos no superan la prueba. Pregunta qué ciclo de revisión es realista y quién puede retirar artículos. El objetivo es una señal visible de confianza en cada artículo.

**¿Qué nos impide compartir lo que sabemos?**

Reúne respuestas sinceras: falta de tiempo, miedo a quedar mal, ausencia de un lugar evidente, falta de reconocimiento. El artículo de Wikipedia señala que se discute la eficacia de los incentivos, así que evita respuestas fáciles. Pregunta qué obstáculo podría cambiar el equipo y cuál necesita a la dirección. Comprométete con un cambio visible.

## En la práctica: un ejemplo de ITIL ágil

El equipo de información al pasajero de un ferrocarril nacional, de catorce personas, opera los sistemas detrás de las pantallas de las estaciones y de la aplicación de horarios. El ingeniero con más experiencia, que construyó el controlador de las pantallas, anuncia su jubilación en seis meses. Nadie más entiende cómo gestiona el controlador los fallos, y la documentación es un documento de diseño de 200 páginas escrito hace diez años.

El líder del equipo enumera lo que sabe el ingeniero y los demás no. Obtiene tres grupos: cómo restablecer el controlador tras un fallo (explícito y repetible), por qué existen ciertos comportamientos extraños (en parte escrito, en parte en la memoria) y cómo juzgar cuándo un fallo es grave (tácito). Para el primero, el equipo escribe guías operativas con el ingeniero y prueba cada una haciendo que un colega la siga en una unidad de pruebas. Para el segundo, una pareja de ingenieros lo entrevista cada semana y escribe breves notas de decisión en una carpeta compartida, cada una con un responsable. Para el tercero, un ingeniero con menos experiencia lo acompaña en cada incidente de guardia durante seis meses y asume el mando en algunos mientras él observa.

Al cabo de seis meses, tres ingenieros pueden gestionar los fallos del controlador, el documento de 200 páginas se sustituye por once guías operativas breves y veinte notas de decisión, y el equipo tiene una sesión mensual en la que una persona explica algo que sabe. Quedan problemas. Dos guías operativas fallaron al probarse en otra versión del hardware y hubo que reescribirlas, y el juicio tácito solo se ha transferido en parte: el ingeniero que acompaña dice que algunas decisiones todavía le parecen conjeturas. El equipo planifica una segunda ronda de acompañamiento con el sucesor del ingeniero que se jubila y acuerda revisar las guías operativas cada trimestre.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega tienen gran parte del conocimiento de cómo se construyen los servicios. Escribe guías operativas breves y notas de decisión como parte de tu definición de terminado y pruébalas con las personas que las usarán. Comparte las razones de diseño con operaciones para que los cambios no las deshagan.

### Equipos de servicio y operaciones

Los equipos de operaciones generan y usan buena parte del conocimiento cotidiano. Captura las soluciones cuando cierres tickets, mantén al día los errores conocidos y pide a los equipos de entrega lo que necesites. Haz fáciles de encontrar los artículos para el centro y para el autoservicio.

### Liderazgo y gobernanza

Los líderes determinan si compartir se premia o se desalienta. El artículo de Wikipedia dice que los incentivos son discutidos, así que céntrate en eliminar obstáculos: da tiempo, haz fáciles las herramientas y premia a quienes ayudan a otros. Sigue el riesgo de conocimiento, como los puntos únicos de experiencia, del mismo modo que otros riesgos del servicio.

### Clientes y usuarios

Los clientes y usuarios se benefician de respuestas claras y de artículos de autoservicio. Dile al equipo cuándo un artículo es erróneo o falta. Pregunta a los proveedores cómo aprenden de los incidentes y cómo comparten contigo lo que aprenden.

## Fallos frecuentes

- **Documentarlo todo.** La base se vuelve grande y obsoleta. En su lugar, empieza con el conocimiento cuya ausencia ha perjudicado y añade según haga falta.
- **Escribir separado de trabajar.** La captura es una tarea pesada a posteriori. En su lugar, haz que una nota breve forme parte del cierre del trabajo.
- **Sin responsables.** Nadie actualiza los artículos. En su lugar, nombra un responsable y una fecha de revisión para cada uno.
- **Mala búsqueda.** La gente no encuentra lo que existe y escribe duplicados. En su lugar, prueba la búsqueda con consultas reales y enlaza los artículos desde donde trabaja la gente.
- **Ignorar lo tácito.** Se supone que todo es escribible. En su lugar, planifica el trabajo en pareja, el acompañamiento y las comunidades de práctica.
- **Guías operativas sin probar.** Los pasos fallan cuando se necesitan. En su lugar, haz que un usuario siga cada guía en un caso de prueba.
- **Acaparar como estatus.** La gente protege el conocimiento para proteger su posición. En su lugar, reconoce el compartir y reparte la dependencia.
- **Imponer contenido.** Los objetivos de cantidad producen artículos pobres. En su lugar, céntrate en el uso y la calidad, y recuerda que el efecto de los incentivos se discute.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Captura del conocimiento | El conocimiento vive en las cabezas y en el chat | Algunos equipos mantienen notas y guías operativas | Capturar una nota forma parte del cierre del trabajo | Se revisan las tasas de captura y su utilidad | La captura de conocimiento se comparte entre equipos y proveedores |
| Calidad y titularidad | Sin responsables; el contenido se deteriora | Algunos artículos tienen responsables | Cada artículo tiene un responsable y una fecha de revisión | Se miden la exactitud y el uso; se elimina el contenido obsoleto | Las prácticas de calidad se comparten y se mejoran en toda la organización |
| Facilidad de encontrar y uso | La búsqueda es mala; la gente se pregunta entre sí | Parte del contenido se enlaza desde los tickets | El conocimiento se enlaza desde los tickets, el catálogo y las guías operativas | Se miden y se corrigen el uso y los fallos de búsqueda | El conocimiento está disponible para usuarios, proveedores y socios según corresponda |
| Compartir lo tácito | Se comparte por casualidad | Se hacen algunas parejas y acompañamientos | El trabajo en pareja, el acompañamiento y las comunidades de práctica están planificados | El riesgo de conocimiento se sigue y se reduce | Las comunidades y la rotación mueven el conocimiento entre equipos de forma rutinaria |

## Lista de verificación

- [ ] Hemos enumerado el conocimiento cuya ausencia nos ha perjudicado y hemos empezado por ahí.
- [ ] Cerrar un incidente, una solicitud o un cambio incluye una nota breve cuando algo era nuevo.
- [ ] Los artículos siguen una estructura común breve con un responsable y una fecha de revisión.
- [ ] Las guías operativas han sido probadas por alguien que no las escribió.
- [ ] La búsqueda funciona con consultas reales y los artículos se enlazan desde los tickets y el catálogo de servicios.
- [ ] Los artículos no usados y duplicados se retiran.
- [ ] Tenemos un plan para difundir el conocimiento que tiene una sola persona.
- [ ] El trabajo en pareja o el acompañamiento están planificados para el trabajo que depende del juicio.
- [ ] Las lecciones de los incidentes se comparten más allá del equipo.
- [ ] Revisamos el riesgo de conocimiento al menos cada trimestre.

## Prompts de IA

**Propósito: convertir un ticket resuelto en un borrador de artículo de conocimiento.**

```text
Convierte este ticket resuelto en un borrador de artículo de conocimiento para analistas del centro de servicios.

El ticket (síntoma, pasos seguidos, resolución; elimina los datos personales): [pega].

Escribe un artículo breve con: un síntoma de una línea, la causa probable (márcala como "sospechada" si el ticket no la dice), pasos numerados para comprobar y corregir, cuándo escalar y a quién (usa [ROL] si se desconoce) y un espacio para el responsable y la fecha de revisión. Usa solo lo que dice el ticket. Marca con [COMPROBAR] cualquier paso que hayas inferido. Hazme primero preguntas aclaratorias si falta información y enumera de lo que no estés seguro.
```

**Propósito: encontrar el riesgo de conocimiento en tu equipo.**

```text
Esta es una lista de los sistemas y tareas que gestiona nuestro equipo y quién puede hacer cada una: [pega como una tabla, una fila por sistema o tarea, con los nombres o roles de las personas que pueden hacerla].

Usando solo esta lista, identifica las que solo puede hacer una persona y las que pueden hacer dos. Ordénalas por cuán crítica es la tarea, si la he marcado; si no, déjalas sin ordenar. Para cada elemento de una sola persona, sugiere una forma de bajo esfuerzo de difundir el conocimiento (por ejemplo el trabajo en pareja o una guía operativa probada). No inventes tareas ni personas. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: revisar la claridad de una guía operativa antes de probarla.**

```text
Esta es una guía operativa: [pega].

Actúa como un ingeniero de guardia cansado que no ha visto antes este sistema. Enumera todos los lugares en los que no sabrías qué hacer, todos los términos o herramientas no explicados y todos los pasos que suponen conocimiento. Sugiere una redacción más clara para cada uno. No añadas pasos técnicos que no estén en la guía; marca las preguntas para el autor como [PREGUNTAR AL AUTOR]. Enumera de lo que no estés seguro.
```

**Propósito: planificar el traspaso de conocimiento de alguien que se va.**

```text
Ayúdame a planificar un traspaso de conocimiento de [rol], que se va en [tiempo].

Lo que posee o hace y otros no: [enumera].
Dónde está escrito ahora: [enumera, o escribe "en ninguna parte"].
Quién lo sustituirá y su experiencia actual: [describe].

Clasifica los elementos en: tareas repetibles que convertir en guías operativas probadas, razones y decisiones que registrar como notas breves, y juicio que compartir mediante acompañamiento o trabajo en pareja. Propón un plan semana a semana, que incluya probar cada guía operativa con el sucesor. No inventes elementos. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [runbook](../../../../skills/runbook/SKILL.md): úsala para escribir procedimientos paso a paso que otra persona pueda seguir bajo presión.
- [postmortem](../../../../skills/postmortem/SKILL.md): úsala para registrar las lecciones de los incidentes en una forma que otros puedan leer.
- [architecture-decision-record](../../../../skills/architecture-decision-record/SKILL.md): úsala para registrar por qué se tomó una decisión de diseño.
- [decision-records](../../../../skills/decision-records/SKILL.md): úsala para conservar un breve registro de las decisiones importantes que no son de arquitectura.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): úsala para encontrar las lagunas de habilidades que debe abordar el intercambio de conocimiento.

## Fuentes principales

- **Knowledge management** (Wikipedia): una visión amplia de la historia, los modelos, los enfoques y las críticas del campo.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): cómo comparte una organización las lecciones de los incidentes.
- **Tacit knowledge** (Wikipedia): contexto sobre el conocimiento que es difícil de escribir.
- **Community of practice** (Wikipedia): contexto sobre los grupos entre equipos que comparten conocimiento.

## Referencias

1. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Tacit knowledge — Wikipedia — https://en.wikipedia.org/wiki/Tacit_knowledge
4. Community of practice — Wikipedia — https://en.wikipedia.org/wiki/Community_of_practice
5. SECI model of knowledge dimensions — Wikipedia — https://en.wikipedia.org/wiki/SECI_model_of_knowledge_dimensions
6. Organizational learning — Wikipedia — https://en.wikipedia.org/wiki/Organizational_learning
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Ikujiro Nonaka — Wikipedia — https://en.wikipedia.org/wiki/Ikujiro_Nonaka
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
