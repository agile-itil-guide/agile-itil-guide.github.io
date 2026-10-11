# Ingeniería de Fiabilidad de Sitios

**La ingeniería de fiabilidad de sitios trata las operaciones como un problema de ingeniería, usando objetivos de nivel de servicio, presupuestos de errores y un tope al trabajo manual repetitivo para mantener fiables los servicios sin dejar de cambiar con rapidez.**

## Por qué importa

Muchas prácticas de gestión de servicios se diseñaron para un mundo en el que el personal de operaciones ejecutaba software que habían escrito otros, y el coste de operar crecía con el tamaño del servicio. La ingeniería de fiabilidad de sitios (SRE) es la respuesta de una organización a lo que ocurre cuando ese modelo llega a una escala muy grande: pedir a ingenieros de software que diseñen y operen la función de operaciones y hacer que el sistema haga el trabajo que de otro modo harían las personas a mano.

Para los lectores de esta guía, SRE es útil por tres razones. Hace explícito, con números que pueden leer tanto los equipos de producto como los de operaciones, el compromiso entre velocidad y fiabilidad. Da una idea firme de cuánto trabajo manual es demasiado. Y muestra cuántas prácticas de ITIL, como la gestión de incidentes, problemas, cambios y capacidad, pueden hacerse en términos de ingeniería. SRE no es la única manera de hacerlas, y procede de las circunstancias de una empresa de internet muy grande, así que lo que se traslada depende de tu situación.

Este tema se basa sobre todo en tres capítulos del libro *Site Reliability Engineering* de Google, complementados con el artículo de Wikipedia sobre SRE. El libro describe la práctica en una organización y defiende su enfoque; el artículo de Wikipedia da una imagen más amplia pero más delgada y no nombra críticas. Lee ambos como fuentes de ideas que probar, no como una norma.

## Conceptos clave

### Qué es SRE

La introducción del libro define SRE como "lo que ocurre cuando pides a un ingeniero de software que diseñe un equipo de operaciones". El [artículo de Wikipedia sobre la ingeniería de fiabilidad de sitios](https://en.wikipedia.org/wiki/Site_reliability_engineering) la describe como una disciplina dentro de la ingeniería de software y del soporte a la infraestructura de TI que monitoriza y mejora la disponibilidad y el rendimiento del software desplegado y de los servicios grandes, con un enfoque en la automatización y la infraestructura como código. El artículo llama a SRE una implementación específica de DevOps, más estrecha en alcance porque se concentra en construir sistemas fiables (véase Tema 5.2 — DevOps). El libro describe DevOps como un conjunto más amplio de principios que SRE implementa de una manera específica.

Según el artículo, la práctica de SRE de Google empezó en 2003 cuando Benjamin Treynor Sloss se incorporó y formó un equipo con siete ingenieros de producción; en 2016 el equipo tenía más de 1.000 SRE, y otras grandes empresas de internet habían adoptado la práctica. Una encuesta de 2020 a 572 profesionales halló equipos de SRE en el 64 por ciento de las organizaciones con 10.000 o más empleados, en el 44 por ciento de las de 101 a 1.000 y en el 32 por ciento de las de 100 o menos. La serie de conferencias SREcon se celebra anualmente desde 2014.

### El problema que aborda SRE

La introducción describe el modelo tradicional: los desarrolladores y los administradores de sistemas se dividen en equipos separados. Nombra dos tipos de coste:

- **Costes directos.** La gestión manual de cambios y la atención de sucesos se vuelven caras, porque el equipo de operaciones crece con la carga.
- **Costes indirectos.** Los equipos tienen vocabularios, incentivos y supuestos sobre el riesgo distintos, lo que lleva a conflictos por las versiones. Operaciones añade barreras de lanzamiento y los desarrolladores responden con soluciones alternativas.

SRE busca evitar esta división tratando las operaciones como un problema de ingeniería. El capítulo dice que el tamaño del equipo crece más despacio que el sistema, porque la ingeniería evita que la carga operativa crezca al mismo ritmo que el tráfico.

### Los principios

La introducción enumera las áreas de las que son responsables los equipos de SRE: disponibilidad, latencia, rendimiento, eficiencia, gestión de cambios, monitorización, respuesta a emergencias y planificación de capacidad. El artículo de Wikipedia enumera prácticas centrales que incluyen automatizar el trabajo repetitivo, definir objetivos de fiabilidad mediante indicadores de nivel de servicio (SLI), objetivos (SLO) y presupuestos de errores, diseñar sistemas para reducir el riesgo, observabilidad y monitorización, gestionar el trabajo repetitivo (toil), un proceso probado de gestión de incidentes y planificación de capacidad, gestión de versiones e ingeniería del caos.

### Objetivos de nivel de servicio y presupuestos de errores

SRE vincula la fiabilidad con objetivos explícitos (véase Tema 3.7 — Gestión de Niveles de Servicio para el tratamiento completo). En resumen:

- Elige unos pocos indicadores que reflejen lo que importa a los usuarios.
- Fija un objetivo que no exija perfección.
- Permite un **presupuesto de errores**: el margen entre lo perfecto y el objetivo.
- Usa el presupuesto para decidir el ritmo de las versiones: mientras queda presupuesto, las versiones continúan; cuando se agota, las versiones se ralentizan y el esfuerzo se desplaza a la fiabilidad.

El capítulo "Embracing Risk" explica por qué: los equipos de producto se miden por la velocidad y los de fiabilidad por la fiabilidad, lo que crea tensión, y el presupuesto da a ambos una medida compartida y objetiva. El mismo capítulo dice que los costes de la fiabilidad suben bruscamente y que el objetivo es ajustar el riesgo de un servicio a lo que el negocio aceptará (véase Tema 3.11 — Disponibilidad, Capacidad y Rendimiento).

### Toil (trabajo repetitivo)

El capítulo "Eliminating Toil" define el **toil** como el trabajo operativo ligado a operar un servicio de producción, y dice que no es meramente el trabajo que a alguien le desagrada y que es distinto de la sobrecarga como las reuniones. El toil tiende a ser:

| Característica | Significado |
|---|---|
| **Manual** | Necesita esfuerzo humano directo, aunque un script ejecute los pasos |
| **Repetitivo** | Se hace una y otra vez, no es un problema nuevo |
| **Automatizable** | Una máquina podría hacerlo, o la necesidad podría eliminarse por diseño |
| **Táctico** | Impulsado por interrupciones y reactivo, como responder a avisos |
| **Sin valor duradero** | El servicio queda en el mismo estado después |
| **Lineal con el crecimiento** | El esfuerzo escala con el tamaño del servicio, el tráfico o los usuarios |

El libro dice que los SRE aspiran a mantener el toil por debajo del 50 por ciento de su tiempo, con al menos la mitad dedicada a trabajo de proyectos de ingeniería, y la introducción fija un tope del 50 por ciento al trabajo agregado de "operaciones", devolviendo el exceso a los equipos de desarrollo. Dice que demasiado toil causa estancamiento profesional, baja moral y agotamiento, frena el trabajo en funcionalidades y provoca abandonos; "el toil se vuelve tóxico cuando se experimenta en grandes cantidades", aunque pequeñas cantidades pueden ser calmantes y parte es inevitable. El capítulo da una manera de calcular el suelo que impone la guardia (por ejemplo un límite inferior del 33 por ciento para un turno de seis personas con sus supuestos de ejemplo) e informa de que las interrupciones fueron la mayor fuente de toil, seguidas de la respuesta a la guardia y luego las versiones. Define el trabajo de ingeniería como novedoso, que requiere juicio, que produce una mejora permanente y que sigue una estrategia.

### Respuesta a emergencias y monitorización

La introducción dice que la monitorización no debe exigir que un humano interprete las alertas: el software interpreta los datos y se avisa a los humanos solo cuando hace falta actuar (véase Tema 3.10 — Monitorización y Gestión de Eventos). Dice que los SRE de guardia deben recibir como máximo unos dos sucesos por turno. Afirma que los playbooks producen una mejora de aproximadamente el triple del tiempo medio de reparación frente a improvisar. La gestión de incidentes sigue un enfoque de mando de incidentes, y los postmortems son sin culpas y se escriben para todos los incidentes significativos (véase Tema 3.2 — Gestión de Incidentes).

### Gestión de cambios

La introducción afirma que aproximadamente el 70 por ciento de las caídas procede de cambios en un sistema en vivo, y recomienda despliegues progresivos, detección rápida de problemas y reversiones seguras. Es una afirmación propia del libro, a partir de la experiencia de Google, y puede no valer para toda organización. Su mensaje es coherente con la orientación de DORA sobre el cambio (véase Tema 3.4 — Habilitación de Cambios y Tema 3.5 — Gestión de Versiones y Despliegues).

### SRE e ITIL

SRE puede leerse como una manera de ingeniería de llevar a cabo varias prácticas de ITIL:

| Práctica de ITIL | Enfoque de SRE |
|---|---|
| Gestión de incidentes | Roles de mando de incidentes, un registro vivo del incidente, postmortems sin culpas |
| Gestión de problemas | Acciones de postmortem en la lista de trabajo pendiente, eliminación del toil en la causa |
| Habilitación de cambios | Despliegues progresivos, detección rápida, reversión segura, comprobaciones automatizadas |
| Gestión de niveles de servicio | SLI, SLO, presupuestos de errores |
| Monitorización y gestión de eventos | Alertas basadas en síntomas, las cuatro señales de oro |
| Gestión de la capacidad | La planificación de capacidad como tarea de ingeniería, con pruebas de carga |
| Mejora continua | Un tope al toil, los proyectos de ingeniería como trabajo principal |

La correspondencia es de esta guía, no de las fuentes. Ni el libro ni el artículo de Wikipedia dicen implantar ITIL.

### Modelos de despliegue

El artículo de Wikipedia describe seis modelos organizativos para SRE: "Kitchen Sink", infraestructura, herramientas, producto o aplicación, embebido y consultoría. Dice que un híbrido es común en organizaciones grandes, pero marca esa afirmación como necesitada de una cita. Qué modelo conviene depende de tu tamaño y del número de servicios.

### Límites y críticas

El artículo de Wikipedia no indica críticas, costes ni modos de fallo, y el libro describe el éxito de una organización. Los límites prácticos son bien conocidos por la experiencia, y se ofrecen aquí como tales: SRE necesita ingenieros que sepan escribir software y estén dispuestos a hacer operaciones; el tope del 50 por ciento necesita el respaldo de la dirección; los presupuestos de errores solo funcionan si los equipos de producto los respetan; y el enfoque es difícil de copiar sin la escala y las herramientas que lo produjeron. Las organizaciones más pequeñas pueden adoptar las ideas, como los objetivos, los presupuestos, la medición del toil y la revisión sin culpas, sin crear un equipo.

## Buenas prácticas

1. **Elige un servicio y fija un objetivo.** Elige de dos a cuatro indicadores que reflejen la experiencia del usuario, fija un primer objetivo laxo y mide durante unos meses antes de apretarlo.
2. **Acuerda una política de presupuesto de errores.** Anota qué pasa cuando el presupuesto está casi agotado y cuando se agota, y quién puede anularla. Haz que sea una regla conjunta de producto y operaciones.
3. **Mide el toil.** Pide a las personas que registren cuánto de su tiempo se va en trabajo operativo manual y repetitivo. Usa las seis características para clasificarlo. Mira las principales fuentes.
4. **Pon un tope al trabajo manual.** Fija un techo para el toil, como la mitad del tiempo de una persona, y revísalo. Cuando se supere el tope, devuelve el exceso de trabajo a los equipos que son dueños de las causas o reduce el alcance.
5. **Automatiza primero el mayor toil.** Elige el elemento que cuesta más tiempo y es más repetible, automatízalo con pruebas y mide el ahorro. Prefiere eliminar la necesidad por diseño a automatizarla.
6. **Protege el tiempo de ingeniería.** Planifica el trabajo de proyectos de los ingenieros de operaciones como trabajo real con responsables y fechas. Sin ello, el toil se expande.
7. **Limita las interrupciones.** Apunta a pocos sucesos por turno de guardia, ajusta las alertas para que los avisos sean accionables y corrige las causas recurrentes. La orientación del libro es como máximo unos dos sucesos por turno.
8. **Escribe playbooks.** Para los fallos comunes, escribe pasos de respuesta breves y probados. El libro afirma que mejoran el tiempo de reparación frente a improvisar.
9. **Haz progresivos y reversibles los cambios.** Despliega gradualmente, detecta rápido los problemas y revierte con seguridad. Como los cambios son la causa más común de caídas en la experiencia del libro, invierte primero aquí.
10. **Realiza postmortems sin culpas para los incidentes significativos,** incluidos los casi accidentes que no generaron aviso. Convierte las acciones en elementos de la lista de trabajo pendiente.
11. **Empieza por las ideas, no por el equipo.** Las organizaciones más pequeñas pueden adoptar objetivos, presupuestos, medidas de toil y postmortems con el personal existente antes de crear un equipo dedicado.
12. **Elige a propósito un modelo organizativo.** Si creas una función de SRE, decide si proporciona herramientas, se integra en los equipos de producto o hace consultoría, y revisa la elección a medida que crezcas.

## Preguntas para conversar con tu equipo

**¿En qué servicio pondríamos primero un objetivo y cuál sería?**

Pide a cada persona que nombre el servicio y el indicador que mejor refleja la experiencia del usuario. Compara. Las diferencias muestran prioridades poco claras. Quien facilite puede preguntar qué pasa hoy cuando el servicio es más lento o está menos disponible de lo que esperan los usuarios. Acordad un servicio con el que empezar y qué medir.

**¿Qué haríamos si gastáramos todo nuestro presupuesto de errores este mes?**

Pide al equipo y a un representante de producto que describan las acciones, quién decide y qué se protege. Muchos equipos nunca lo han acordado. Discute si se aceptaría una pausa en las versiones arriesgadas. Redacta una política de una página.

**¿Cuánto de nuestra semana es toil y cuáles son las tres principales fuentes?**

Pide a las personas que estimen y luego lleven un registro durante dos semanas. Compara las estimaciones con los registros. El objetivo es ver la forma del trabajo, no culpar. Elige la mayor fuente y pregunta si puede eliminarse por diseño.

**¿Qué tarea manual recurrente podría eliminar un script o un cambio de diseño?**

Enumera las tareas que la gente teme. Para cada una, estima la frecuencia y el tiempo. Los mejores candidatos son frecuentes, estables y de bajo riesgo. Pregunta qué haría segura la automatización, como límites y registros. Elige una que automatizar.

**¿Cuántos sucesos recibe cada turno de guardia y cuántos necesitan acción?**

Cuenta el último trimestre. Si el número es alto, discute de dónde procede. La introducción sugiere aspirar a unos dos sucesos por turno. Elige una fuente de alertas que corregir.

**¿Qué perderíamos y qué ganaríamos si creáramos un equipo de fiabilidad dedicado?**

Pide opiniones honestas. Las ganancias podrían ser el foco y las habilidades; las pérdidas, un nuevo silo o el vertido de trabajo operativo. Discute alternativas como ingenieros integrados o una rotación. Decide qué probar en pequeño.

## En la práctica: un ejemplo de ITIL ágil

Un distribuidor regional de electricidad opera una aplicación de notificación de cortes y un sistema de despacho de cuadrillas de campo. Un equipo combinado de dieciocho personas construye y opera ambos. El personal de operaciones del equipo dedica la mayor parte de su tiempo a trabajo manual: reiniciar trabajos atascados, ajustar flujos de datos y responder a avisos. El jefe del grupo observa que les queda poco tiempo para mejorar, y dos de ellos han pedido pasar a otros equipos.

El líder del equipo propone un enfoque inspirado en SRE. Para la aplicación de notificación de cortes, el equipo fija dos indicadores: la proporción de envíos de notificaciones que tienen éxito y el tiempo para mostrar una confirmación. Acuerda con el gerente de atención al cliente un objetivo laxo y un presupuesto de errores mensual, y escribe una política de una página: cuando se gasta más de tres cuartas partes del presupuesto, las versiones arriesgadas esperan. El equipo pide a los ingenieros que registren el toil durante un mes. El registro muestra que un tercio de su tiempo se va en reiniciar un trabajo de importación de datos que falla y en ajustes manuales tras las tormentas, cuando la demanda se dispara. Fijan un tope de la mitad de su tiempo para el toil, deciden corregir primero la causa del trabajo de importación y automatizar los ajustes de las tormentas con un script que tiene límites y un registro. Se ajustan los avisos para que solo alerten al ingeniero de guardia los síntomas visibles para el usuario.

Cuatro meses después, el toil baja a aproximadamente un tercio del tiempo del equipo, el trabajo de importación ya no falla y la política del presupuesto de errores se ha usado una vez, en un mes con una caída de un proveedor, para posponer la publicación de una funcionalidad. Quedan dificultades. El sistema de despacho aún no tiene objetivos, y el gerente de atención al cliente se ha sentido tentado dos veces de anular la política del presupuesto por funcionalidades urgentes. El líder del equipo y el gerente acuerdan revisar mensualmente las anulaciones y fijar a continuación objetivos para el despacho. También aprenden que el "tope" es una guía, no una promesa: tras una gran tormenta, el toil subió bien por encima de la mitad durante dos semanas, y tienen que decidir qué recortar.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega participan en la fijación de objetivos y respetan el presupuesto. Incorpora la operabilidad a las funcionalidades, acepta que el toil vuelve al equipo que lo causa y ayuda a automatizar. Trata un presupuesto agotado como información sobre el servicio, no como un castigo.

### Equipos de servicio y operaciones

Los equipos de operaciones pueden hacer el trabajo de SRE o adoptar sus ideas. Mide el toil, protege el tiempo de ingeniería y devuelve el trabajo repetido a su origen. Usa los objetivos para explicar por qué algún trabajo debe rechazarse.

### Liderazgo y gobernanza

Los líderes deben respaldar el tope al toil y la regla del presupuesto de errores; sin respaldo, fracasan. Pide objetivos y estado del presupuesto, no un recuento de incidentes. Proporciona tiempo para el trabajo de ingeniería y estate dispuesto a decir no a funcionalidades cuando el presupuesto esté agotado.

### Clientes y usuarios

Los clientes y usuarios ganan con niveles de servicio claros y con una recuperación más rápida cuando las cosas fallan. Di al equipo qué importa más, para que los objetivos reflejen tu experiencia. Espera conversaciones honestas sobre los compromisos entre funcionalidades nuevas y fiabilidad.

## Fallos frecuentes

- **Copiar el título.** Se renombra operaciones y nada cambia. En su lugar, adopta primero objetivos, presupuestos y medidas de toil.
- **Un presupuesto de errores que nadie respeta.** Las funcionalidades lo anulan siempre. En su lugar, acuerda la regla con los responsables de producto y revisa las anulaciones.
- **Sin tiempo para ingeniería.** El toil llena la semana. En su lugar, ponle un tope y protege el tiempo de proyectos.
- **Automatizar lo equivocado.** Se automatiza una tarea rara mientras queda la frecuente. En su lugar, ordena por tiempo y frecuencia.
- **Objetivos de perfección.** Los objetivos exigen el 100 por ciento. En su lugar, fija objetivos laxos a partir de las necesidades de los usuarios y apriétalos con datos.
- **Un equipo de fiabilidad como vertedero.** Desarrollo le envía todo el trabajo operativo. En su lugar, devuelve el exceso de trabajo a su origen.
- **Copiar la escala de Google.** Una organización pequeña adopta prácticas que necesitan una grande. En su lugar, toma las ideas que encajan, como los objetivos y los postmortems.
- **Ignorar a las personas.** La carga de guardia agota a la gente. En su lugar, limita los sucesos por turno y comparte la guardia.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Objetivos y presupuestos | Los objetivos de fiabilidad son informales | Algunos servicios tienen objetivos | Los servicios clave tienen objetivos y una política de presupuesto de errores acordada | Los presupuestos orientan las versiones y se revisan las anulaciones de la política | Los objetivos y presupuestos se alinean entre servicios dependientes |
| Toil y automatización | El toil no se mide | Algunos equipos estiman el toil | El toil se mide y tiene un tope; el trabajo de automatización está planificado | Las fuentes de toil y los ahorros se siguen y se reducen | La automatización se comparte y el toil se reduce entre equipos |
| Respuesta a emergencias | La respuesta se improvisa | Existen algunos playbooks y un turno | Los roles, los playbooks y los postmortems sin culpas son estándar | La carga de sucesos y los tiempos de reparación se miden y se mejoran | La respuesta se ensaya y se coordina entre equipos y proveedores |
| Cambio y capacidad | Los cambios son arriesgados y manuales | Algunos despliegues son graduales | El despliegue progresivo y la planificación de capacidad son rutinarios | Se miden los fallos de cambios y los pronósticos de capacidad | Las prácticas de cambio y capacidad se comparten en toda la organización |

## Lista de verificación

- [ ] Al menos un servicio tiene indicadores y un objetivo laxo, medidos a lo largo del tiempo.
- [ ] Una política de presupuesto de errores está acordada con los responsables de producto y escrita.
- [ ] El toil se mide con una definición coherente y se conocen las principales fuentes.
- [ ] Existe un techo para el toil y se revisa.
- [ ] El tiempo para los proyectos de ingeniería está planificado y protegido.
- [ ] La carga de guardia se mide y los avisos son accionables.
- [ ] Existen playbooks para los fallos más comunes y se han probado.
- [ ] Los despliegues son progresivos y las reversiones están probadas.
- [ ] Los incidentes significativos y los casi accidentes reciben postmortems sin culpas con acciones con responsable.
- [ ] Hemos elegido a propósito cómo se organiza el trabajo de fiabilidad.

## Prompts de IA

**Propósito: clasificar tu trabajo como toil, ingeniería o sobrecarga.**

```text
Esta es una lista de lo que hicieron nuestros ingenieros de operaciones en las últimas dos semanas, con el tiempo dedicado a cada cosa: [pega datos reales].

Clasifica cada elemento como toil, trabajo de ingeniería o sobrecarga, usando estas definiciones. Toil: manual, repetitivo, automatizable, táctico, sin valor duradero y que crece linealmente con el servicio. Trabajo de ingeniería: novedoso, requiere juicio, produce una mejora permanente. Sobrecarga: trabajo administrativo no ligado a operar un servicio. Da una razón de una frase para cada uno a partir de mi texto. Calcula la proporción de tiempo de cada clase solo con mis números y enumera los tres mayores elementos de toil. Marca los elementos que no pudiste clasificar. No inventes cifras de tiempo. Enumera de lo que no estés seguro.
```

**Propósito: redactar una política de presupuesto de errores.**

```text
Redacta una política de presupuesto de errores de una página para [servicio].

Objetivo y periodo: [por ejemplo, "el 99,9 % de las solicitudes de compra tienen éxito, por mes"].
Ritmo de versiones y quién decide: [describe].
Preocupaciones de clientes y de producto: [enumera].

Escribe secciones: cómo se calcula y se muestra el presupuesto, qué ocurre en tres etapas de consumo (deja los umbrales como [por acordar]), quién puede anularla y cómo se registran las anulaciones, cómo se revisa la política y qué hacemos tras un presupuesto agotado. No inventes números. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: elegir un elemento de toil que automatizar primero.**

```text
Estos son nuestros principales elementos de toil con la frecuencia con que ocurre cada uno, el tiempo por ocurrencia, el riesgo si falla la automatización y si la causa podría eliminarse por diseño: [pega].

Ordénalos por el tiempo total ahorrado por mes (calculado solo con mis números). Para los tres primeros, di si debería eliminar la necesidad por diseño o automatizar, y qué salvaguardas necesita la automatización (pruebas, límites, registros). No inventes números. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: escribir una entrada de playbook.**

```text
Escribe una entrada de playbook para este fallo recurrente: [describe el síntoma y el impacto].

Lo que sé de las causas y las correcciones: [pega].
A quién escalar: [rol, o "desconocido"].

Da una entrada breve: cómo confirmar el fallo, las primeras comprobaciones, la corrección habitual, cómo confirmar la recuperación, cuándo escalar y qué registrar. Marca con [COMPROBAR] cualquier paso que hayas inferido. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): úsala para diseñar un turno justo con límites de sucesos por turno.
- [runbook](../../../../skills/runbook/SKILL.md): úsala para escribir los playbooks que aceleran la reparación.
- [postmortem](../../../../skills/postmortem/SKILL.md): úsala para dirigir revisiones sin culpas y seguir las acciones.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): úsala para probar que los diseños de fiabilidad funcionan provocando fallos de forma segura.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): úsala para planificar la capacidad como tarea de ingeniería ligada a la demanda.

## Fuentes principales

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): la definición de SRE, el tope del 50 por ciento, los principios y la división entre desarrollo y operaciones que busca evitar.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): la definición de toil y las razones para ponerle un tope.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): la economía de la fiabilidad y el presupuesto de errores.
- **Site reliability engineering** (Wikipedia): un resumen más amplio de la disciplina, los modelos de despliegue, la encuesta de adopción y lecturas adicionales.

## Referencias

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
