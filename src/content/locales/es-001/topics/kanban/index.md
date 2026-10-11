# Kanban

**Kanban gestiona el trabajo como un flujo: hace visible el flujo de trabajo, limita cuánto está en curso y usa medidas de flujo para mejorar, lo que conviene a los equipos de servicio cuyo trabajo llega de forma continua y no puede planificarse en ciclos fijos.**

## Por qué importa

Un centro de servicios, un equipo de operaciones y un equipo de plataforma comparten un rasgo: el trabajo llega cuando llega. Los incidentes, las solicitudes y los cambios pequeños entran en un flujo continuo, y el equipo no puede planificar un mes de ellos por adelantado. Los marcos construidos en torno a ciclos fijos, como Scrum, encajan con este trabajo solo con ajustes (véase Tema 1.4 — Pronóstico de Entrega y Métricas de Planificación). Kanban se diseñó para el flujo, por lo que encaja de forma más natural.

Kanban también habla el lenguaje de la gestión de servicios. Pregunta cuánto tarda el trabajo, cuánto está esperando y qué paso es el cuello de botella, y esas son las preguntas que hay detrás de los niveles de servicio, la gestión de colas y la planificación de la capacidad. Un equipo que sigue la antigüedad y el tiempo de ciclo de su trabajo puede hablar de niveles de servicio con datos en lugar de impresiones.

Kanban es sencillo de empezar y sorprendentemente fácil de hacer mal. Un tablero con columnas no es Kanban si nada limita el trabajo en curso y nadie usa las medidas. Este tema explica lo que la Guía de Kanban pide a un equipo, de dónde vino el método y cómo aplicarlo al trabajo de servicio.

## Conceptos clave

### Qué es Kanban

La [Guía de Kanban](https://kanbanguides.org/english/), cuya versión actual está fechada en mayo de 2025 y que cita entre sus autores a John Coleman y Daniel Vacanti, define Kanban como una estrategia para optimizar el flujo de valor a través de un proceso. Describe el flujo como el movimiento del valor potencial a través de un sistema. El objetivo es un equilibrio de tres cosas: eficacia (entregar lo que las partes interesadas quieren, cuando lo quieren), eficiencia (usar bien los recursos) y previsibilidad (pronosticar la entrega con un nivel aceptable de incertidumbre). La guía dice que se aplica al trabajo del conocimiento en cualquier industria.

La palabra "kanban" es japonesa y significa letrero o cartelera. El [artículo de Wikipedia sobre Kanban en el desarrollo](https://en.wikipedia.org/wiki/Kanban_(development)) dice que el método procede de la manufactura lean y del [Sistema de Producción Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System), con un sistema justo a tiempo iniciado en Toyota a finales de los años cuarenta. El libro de David J. Anderson de 2010 rastrea la versión de software hasta un proyecto de 2004 en Microsoft y otro de 2006–2007 en Corbis.

### Las tres prácticas

La Guía de Kanban nombra tres prácticas. Un equipo que hace las tres, y usa las medidas que siguen, está practicando Kanban en el sentido de la guía.

| Práctica | Qué hace el equipo | Una nota para los equipos de servicio |
|---|---|---|
| **Definir y visualizar el flujo de trabajo** | Acordar una Definición de Flujo de Trabajo (DoW): qué es un elemento de trabajo, dónde empieza y termina, los estados intermedios, cómo se limita el trabajo en curso, las políticas para mover el trabajo y una expectativa de nivel de servicio (SLE). Mostrarla en un tablero. | La DoW de un centro de servicios podría definir elementos de incidente, solicitud y cambio, con estados y políticas distintos para cada uno |
| **Gestionar activamente los elementos en el flujo de trabajo** | Controlar el número de elementos en curso, vigilar los que envejecen y desbloquear los estancados. | Un límite de incidentes abiertos por ingeniero obliga al equipo a terminar o traspasar trabajo antes de empezar más |
| **Mejorar el flujo de trabajo** | Cambiar la DoW con el tiempo para mejorar la eficacia, la eficiencia y la previsibilidad, a intervalos fijos o cuando haga falta. | Una revisión de la DoW tras un incidente mayor puede cambiar políticas, límites o estados |

La guía no prescribe una disposición del tablero ni ninguna reunión. Los equipos son libres de añadir prácticas, siempre que las prácticas básicas, las medidas y el objetivo de optimizar el valor permanezcan intactos.

### Límites de trabajo en curso y arrastre

Controlar el trabajo en curso (WIP) crea lo que la guía llama un sistema de arrastre: el trabajo nuevo solo empieza cuando hay capacidad para él. El artículo de Wikipedia da el ejemplo de un paso de "despliegue" con un límite de cinco. Cuando el paso está lleno, nada más puede entrar hasta que algo termine, de modo que un bloqueo se hace visible y las personas pueden ayudar a resolverlo. Sin límites, un tablero es solo una fotografía del desorden.

### Cuatro medidas de flujo

La guía enumera cuatro medidas que sigue un equipo que usa Kanban:

- **Trabajo en curso:** el número de elementos empezados pero no terminados.
- **Rendimiento (throughput):** el número de elementos terminados en un periodo dado.
- **Antigüedad del elemento de trabajo:** cuánto lleva en curso un elemento sin terminar.
- **Tiempo de ciclo:** cuánto tardó un elemento terminado desde el inicio hasta el final.

La guía dice que los equipos pueden renombrarlas y deberían añadir otras medidas cuando sea útil, y que las medidas importan solo cuando informan las tres prácticas. Una expectativa de nivel de servicio es un pronóstico de cuánto debería tardar un elemento, basado en tiempos de ciclo pasados. No es una promesa, y se diferencia de un acuerdo de nivel de servicio (SLA) negociado con un cliente. Véase Tema 3.7 — Gestión de Niveles de Servicio.

### La literatura más amplia sobre Kanban

Otros autores han descrito el método de forma más amplia. El artículo de Wikipedia cita el trabajo de Don Reinertsen sobre el flujo, *Personal Kanban* de Jim Benson y Tonianne DeMaria Barry, *Kanban From the Inside* de Mike Burrows y *Scrumban* de Corey Ladas, que propuso Kanban como una manera de mejorar Scrum. Algunas de estas fuentes enumeran prácticas además de las tres de la guía, como hacer explícitas las políticas, implantar bucles de retroalimentación y mejorar de forma colaborativa. Trátalas como adiciones útiles, no como requisitos de la guía.

El artículo de Wikipedia lleva una etiqueta que indica que un colaborador importante puede tener una relación estrecha con el tema, así que contrasta sus afirmaciones con las fuentes primarias.

### Lo que Kanban no dice

Kanban no es un plan de proyecto, un conjunto de roles ni un proceso de versiones. No te dice cómo diseñar un servicio ni cómo gestionar un incidente. Te da una manera de ver y gestionar el flujo, y cuenta con que aportes el contenido de tu trabajo. Esa es también su fortaleza: puedes empezar con el proceso que tienes y mejorarlo en pasos pequeños (véase Tema 3.15 — Mejora Continua).

## Buenas prácticas

1. **Empieza con lo que haces ahora.** Dibuja el flujo de trabajo real, con los estados por los que realmente pasa el trabajo, incluidas las esperas. No dibujes el proceso que desearías tener. Solo puedes mejorar lo que puedes ver.
2. **Define qué es un elemento de trabajo.** Decide si los incidentes, las solicitudes y los cambios son un tipo de elemento o varios, y da a cada uno un inicio y un final claros. Las definiciones mezcladas vuelven las medidas sin sentido.
3. **Fija límites de WIP y respétalos.** Empieza con un límite que parezca ligeramente ajustado, como uno o dos elementos por persona, y ajústalo con la experiencia. Un límite que se rompe habitualmente no da información, así que discute cada infracción.
4. **Haz explícitas las políticas.** Escribe en el tablero cuándo puede pasar un elemento al siguiente estado, quién puede tomarlo y qué cuenta como bloqueado. Las políticas visibles reducen las discusiones y facilitan la incorporación de personas nuevas.
5. **Vigila la antigüedad del elemento de trabajo, no solo el tiempo de ciclo.** El tiempo de ciclo se conoce solo cuando termina un elemento, mientras que la antigüedad muestra los problemas cuando aún hay tiempo de actuar. Revisa cada día los elementos más antiguos.
6. **Usa una expectativa de nivel de servicio basada en el historial.** Toma los tiempos de ciclo de los elementos terminados recientemente y expón, por ejemplo, que la mayoría de los elementos de un tipo terminan en un número dado de días. Revísala a medida que cambien los datos. No prometas a los clientes una cifra que no has medido.
7. **Trata el trabajo urgente como una excepción explícita.** Los incidentes urgentes se saltarán la cola. Define una política, como un carril con su propio límite, para que las excepciones sean visibles y no destruyan el flujo en silencio (véase Tema 3.2 — Gestión de Incidentes).
8. **Busca el cuello de botella y ayúdalo.** Cuando un estado está siempre lleno, pregunta si necesita más capacidad, una política distinta o un flujo anterior diferente. Mover personas al cuello de botella suele ser mejor que empujar más trabajo hacia él.
9. **Celebra revisiones con un ritmo regular.** La guía permite mejorar a intervalos fijos o cuando haga falta. Una revisión semanal breve de las medidas y una mirada mensual a la DoW funcionan para muchos equipos.
10. **Conecta el tablero con el resto de la organización.** Haz el tablero visible para los clientes y los equipos vecinos. Acordad cómo cruzan los elementos entre tableros, por ejemplo de un centro de servicios a un equipo de desarrollo.
11. **Usa las medidas para aprender.** Usa los números para hacer preguntas, no para clasificar a las personas. Cuando los datos de flujo se convierten en un objetivo, los equipos los manipulan (véase Tema 5.6 — Métricas y Medición).
12. **Combina con otros marcos de forma deliberada.** Si el equipo usa los eventos de Scrum para planificar y Kanban para el flujo, di para qué sirve cada uno y comprueba que la combinación reduce la confusión (véase Tema 1.8 — Escalado de Ágil para coordinar varios equipos).

## Preguntas para conversar con tu equipo

**Si dibujáramos nuestro flujo de trabajo real, incluidas las esperas, ¿cómo se vería?**

Pide a cada persona que dibuje el camino de un elemento reciente y luego combina los dibujos en una pared. Las diferencias entre los dibujos muestran pasos ocultos y traspasos informales. Espera sorpresas: aprobaciones que nadie mencionó, elementos que esperan a otro equipo y bucles de repetición del trabajo. Después, marca las tres esperas más largas.

**¿Cuánto trabajo tiene en curso cada uno de nosotros ahora mismo y cuánto de él está esperando?**

Cuenta los elementos abiertos por persona y marca cuáles están bloqueados o inactivos. Muchos equipos descubren que la mayoría de los elementos están esperando y pocos se están trabajando. Pregunta qué hace cada persona cuando está bloqueada y si empezar un elemento nuevo es la respuesta habitual. El objetivo es discutir por qué se premia empezar y no terminar.

**¿Cuál es el elemento más antiguo de nuestro tablero y por qué sigue ahí?**

Elige los tres elementos más antiguos y rastrea lo que pasó. Las respuestas habituales son un responsable poco claro, una dependencia de otro equipo o un elemento que nadie quiere cancelar. Pregunta si el elemento debe terminarse, cancelarse o escalarse. Quien facilite puede preguntar qué política lo habría detectado antes.

**¿Qué prometemos a nuestros clientes sobre cuánto tardan las cosas y qué dicen nuestras propias cifras?**

Compara los niveles de servicio acordados con los tiempos de ciclo reales de los elementos terminados. Si no tienes datos, recógelos primero durante un mes. Discute abiertamente cualquier diferencia. Pregunta si debe cambiar el objetivo o si debe cambiar la forma de trabajar. Recuerda que una expectativa de nivel de servicio basada en datos es un pronóstico, mientras que un SLA es un acuerdo.

**Cuando llega trabajo urgente, ¿qué pasa con todo lo demás?**

Repasa el último incidente urgente y mira qué elementos se detuvieron. Pregunta si el equipo tiene una política para el trabajo urgente y si alguien sabe cuántos elementos urgentes gestiona al mes. Los equipos suelen descubrir que el trabajo urgente es rutinario, no excepcional, y que la política debe reflejarlo. Después, acordad un límite para los elementos acelerados.

**¿Cuáles de nuestras medidas nos inspirarían confianza suficiente para basar una decisión en ellas y cuáles ignoraríamos?**

Pide a las personas que ordenen las medidas disponibles según cuánto confían en ellas y por qué. La desconfianza suele venir de definiciones incoherentes de los elementos o de huecos en los datos. No lo conviertas en una discusión sobre las personas; céntrate en la calidad de los datos. Termina eligiendo una medida que mejorar durante el próximo mes.

## En la práctica: un ejemplo de ITIL ágil

El centro de servicios de TI de una universidad tiene ocho analistas que gestionan incidentes y solicitudes de estudiantes y personal. El equipo tiene una herramienta de tickets con colas, pero sin límites, y cada analista tiene entre 20 y 40 tickets abiertos. Los clientes se quejan de que los tickets parecen desaparecer, y el gerente del centro no sabe decir cuánto tarda una solicitud típica.

El gerente y los analistas construyen un tablero que refleja la herramienta: nuevo, clasificado, en curso, esperando al cliente, esperando a otro equipo y resuelto. Acuerdan un límite de ocho elementos activos por analista y una regla por la que los tickets que esperan a otros deben nombrar a la persona responsable del siguiente paso. Reservan un carril para los incidentes urgentes, con un límite de dos. Durante un mes, solo recogen datos de tiempo de ciclo y antigüedad.

Pasado el mes, los datos muestran que la mayoría de las solicitudes se resuelven en pocos días, pero una cola larga espera semanas, sobre todo "esperando a otro equipo". El equipo fija una expectativa de nivel de servicio a partir de los datos y empieza una revisión diaria de los elementos más antiguos. Varios tickets que llevaban mucho esperando se cierran o se escalan en la primera semana. Queda un problema: el equipo de redes, que es dueño de muchos de los tickets en espera, no tiene tablero propio y el centro no puede ver su cola. El gerente del centro organiza una conversación semanal con el líder del equipo de redes, y los dos equipos empiezan a hablar de compartir una vista de los elementos que cruzan entre ellos.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega pueden usar Kanban para ver dónde espera el trabajo entre el diseño, la construcción, las pruebas y la publicación. Los límites de trabajo en curso reducen el número de cambios a medio terminar, y los datos de flujo pueden mostrar dónde necesita atención un proceso de versiones. Trata las solicitudes de operaciones como elementos del mismo flujo, con su propia política.

### Equipos de servicio y operaciones

Los equipos de operaciones son el hogar natural de Kanban. Visualiza incidentes, solicitudes y cambios en sus propios estados, fija límites y vigila la antigüedad. Usa los datos de tiempo de ciclo para fijar expectativas realistas con los clientes y usa los estados de bloqueado y de espera para iniciar conversaciones con otros equipos.

### Liderazgo y gobernanza

Los líderes se benefician de las medidas de flujo como una imagen más honesta que los informes de estado. Pide el tiempo de ciclo, el rendimiento y la antigüedad por tipo de trabajo, y pregunta qué cambió el equipo a causa de ellos. Evita fijar objetivos sobre cifras individuales, lo que produce manipulación. Apoya los límites de trabajo en curso incluso cuando las partes interesadas quieran que se empiece más.

### Clientes y usuarios

Los clientes ganan con pronósticos más claros y menos solicitudes perdidas. Pide al equipo la expectativa de nivel de servicio para tu tipo de solicitud y espera que se base en el historial. Si tu solicitud es urgente, espera que te pregunten por qué, porque el equipo debe proteger el flujo de los demás.

## Fallos frecuentes

- **Un tablero sin límites.** El tablero muestra el desorden pero no lo reduce. En su lugar, fija y haz cumplir los límites de trabajo en curso y revisa cada infracción.
- **Definiciones de elemento mezcladas.** Incidentes, proyectos y tareas comparten un mismo conjunto de columnas y las medidas no significan nada. En su lugar, define tipos de elemento con estados y políticas separados.
- **Ignorar la antigüedad.** Los elementos viejos pasan inadvertidos hasta que un cliente se queja. En su lugar, revisa cada día los elementos más antiguos y decide sobre cada uno.
- **Convertir las medidas en objetivos.** Los equipos dividen o cierran elementos para mejorar las cifras. En su lugar, usa las medidas para hacer preguntas y revísalas con el equipo.
- **Carriles acelerados ocultos.** El trabajo urgente se salta los límites sin dejar rastro. En su lugar, da al trabajo urgente un carril visible, un límite y una política.
- **Copiar la disposición de un tablero.** Un equipo adopta las columnas de otro sin entender su propio flujo. En su lugar, traza primero el flujo de trabajo real.
- **Tratar Kanban como una herramienta de informes.** Los gerentes usan el tablero para vigilar a las personas y no para mejorar el flujo. En su lugar, úsalo como la herramienta del equipo para decidir qué hacer a continuación.
- **No mejorar nunca el flujo de trabajo.** El tablero permanece igual durante años. En su lugar, celebra revisiones periódicas de la Definición de Flujo de Trabajo y cámbiala cuando los datos lo pidan.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Visualización del flujo de trabajo | El trabajo vive en bandejas de entrada individuales y en las cabezas | Algunos equipos tienen tableros que muestran sus estados | Los equipos comparten una Definición de Flujo de Trabajo con tipos de elemento y políticas | El tablero se revisa y se corrige frente a lo que realmente ocurre | Los tableros de todos los equipos muestran los elementos y traspasos entre equipos |
| Limitación del trabajo en curso | Sin límites; la gente empieza más de lo que termina | Algunos equipos fijan límites informales | Se fijan límites y se discuten las infracciones | Los límites se ajustan con datos de flujo | Los límites y la capacidad se equilibran entre equipos y proveedores |
| Medidas de flujo | Se recogen pocas medidas | Algunos equipos registran el tiempo de ciclo o el rendimiento | Las cuatro medidas se recogen de forma coherente | Las medidas se revisan y se usan para fijar expectativas de nivel de servicio | Los datos de flujo se comparten entre equipos y se usan para planificar la capacidad conjuntamente |
| Mejora | Los cambios siguen a las crisis | Los equipos ajustan el tablero ocasionalmente | Los equipos revisan el flujo de trabajo con un ritmo regular | Los cambios se vinculan a las medidas y se comprueban los resultados | Las mejoras se extienden entre equipos sin dirección central |

## Lista de verificación

- [ ] Hemos dibujado nuestro flujo de trabajo real, incluidas las esperas y los traspasos.
- [ ] Nuestros elementos de trabajo están definidos, con un inicio y un final claros para cada tipo.
- [ ] Existen límites de trabajo en curso y se discute cada infracción.
- [ ] Las políticas para mover y bloquear elementos están escritas en el tablero o cerca de él.
- [ ] Seguimos el tiempo de ciclo, el rendimiento, el trabajo en curso y la antigüedad de los elementos.
- [ ] Revisamos los elementos más antiguos a diario o al menos cada semana.
- [ ] Tenemos una expectativa de nivel de servicio basada en nuestro propio historial.
- [ ] El trabajo urgente tiene su propio carril visible, límite y política.
- [ ] La Definición de Flujo de Trabajo se revisa con un ritmo regular.
- [ ] Los equipos vecinos y los clientes pueden ver los elementos que les conciernen.

## Prompts de IA

**Propósito: describir tu flujo de trabajo real y encontrar dónde espera el trabajo.**

```text
Estás ayudándome a trazar el flujo de trabajo real de un equipo que gestiona [tipo de trabajo, p. ej. "incidentes y solicitudes del centro de servicios"].

Estos son los estados por los que pasa un elemento típico, tal como puedo describirlos: [pega los pasos en orden, incluyendo esperas y traspasos].
Esto es lo que pasó con tres elementos recientes, con fechas de cada cambio de estado: [pega tres cronologías breves, usando solo datos reales].

Dibuja el flujo de trabajo como un diagrama de texto sencillo. Identifica dónde esperó más cada elemento, usando solo las fechas que te di. Sugiere tres preguntas que debería hacer al equipo sobre esas esperas. No inventes números. Si los datos son demasiado escasos, pídeme primero más, señala tus suposiciones y enumera de lo que no estés seguro.
```

**Propósito: redactar una Definición de Flujo de Trabajo para un equipo.**

```text
Ayúdame a escribir una primera Definición de Flujo de Trabajo para [nombre del equipo y qué hace].

Tipos de elemento que gestionamos: [enuméralos, p. ej. incidentes, solicitudes, cambios].
Estados en los que puede estar un elemento: [enumera, o escribe "desconocido"].
Políticas actuales para empezar, terminar y bloquear elementos: [pega, o escribe "ninguna escrita"].
Aproximadamente cuántos elementos tiene abiertos cada persona a la vez: [número, o "desconocido"].

Produce un borrador con: los tipos de elemento, los puntos de inicio y fin, los estados, un enfoque propuesto para el límite de WIP, políticas para mover elementos, una política para el trabajo urgente y cómo se fijaría una expectativa de nivel de servicio a partir de nuestro propio historial. Marca cada propuesta que sea una conjetura. No indiques ningún número que no te haya dado. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: analizar los datos de flujo de tu sistema de tickets.**

```text
A continuación están las fechas de inicio y fin de [número] elementos que nuestro equipo completó recientemente y las fechas de inicio de [número] elementos que siguen abiertos: [pega como una tabla, solo datos reales].

Calcula el tiempo de ciclo de cada elemento completado y la antigüedad actual de cada elemento abierto. Describe la dispersión: cuánto tardan la mayoría de los elementos, cuánto tardan los más lentos y qué elementos abiertos son más antiguos que la mayoría de los terminados. No extrapoles más allá de los datos. Sugiere dos preguntas para hacer al equipo sobre los elementos más antiguos. Dime qué datos adicionales harían el análisis más fiable y enumera de lo que no estés seguro.
```

**Propósito: planificar con el equipo una revisión del tablero.**

```text
Planifica una revisión semanal de flujo de 30 minutos para un equipo de [número] personas que usa un tablero Kanban para [tipo de trabajo].

Nuestras medidas: [enumera cuáles de trabajo en curso, rendimiento, tiempo de ciclo y antigüedad de los elementos sigues].
Frustración actual: [descríbela en una o dos frases].

Incluye una agenda con tiempos, cinco preguntas sobre las medidas y los elementos más antiguos, y un paso final que registre como máximo dos cambios con responsables. Mantenlo libre de cualquier herramienta concreta. Si falta información, hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [kanban](../../../../skills/kanban/SKILL.md): úsala para diseñar o revisar un tablero, los límites de trabajo en curso y las políticas de un equipo de servicio u operaciones.
- [scrumban](../../../../skills/scrumban/SKILL.md): úsala cuando un equipo quiera los eventos de planificación de Scrum junto con la gestión de flujo de Kanban.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): úsala para trazar cómo se mueve el trabajo entre equipos y dónde espera antes de diseñar el tablero.
- [kaizen](../../../../skills/kaizen/SKILL.md): úsala para planificar mejoras pequeñas del flujo de trabajo después de una revisión de flujo.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): úsala para entender qué tipos de trabajo llegan y en qué volumen antes de fijar límites y capacidad.

## Fuentes principales

- **La Guía de Kanban** (John Coleman y Daniel Vacanti y otros, kanbanguides.org): la definición autorizada y concisa de las tres prácticas y las cuatro medidas.
- **Kanban (desarrollo)** (Wikipedia): una visión general de la historia y de las prácticas más amplias, con citas de los libros principales.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): el relato de cómo se aplicó Kanban al trabajo de software.
- **Sistema de Producción Toyota** (Wikipedia): contexto sobre los orígenes de kanban en la manufactura lean.

## Referencias

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
