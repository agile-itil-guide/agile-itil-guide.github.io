# Programación Extrema

**La Programación Extrema (XP) es el método ágil más específico en cuanto a la práctica de ingeniería, y sus hábitos de probar primero, integrar de forma continua y compartir la propiedad del código son lo que hace seguro el cambio frecuente de un servicio en producción.**

## Por qué importa

El cambio frecuente es el objetivo de la entrega continua y la preocupación de la gestión de servicios. La manera de reconciliarlos no son más reuniones de aprobación, sino una mayor capacidad de saber que un cambio funciona antes de que llegue a los usuarios. La Programación Extrema es el método ágil que más dice sobre cómo construir esa capacidad: escribir las pruebas primero, integrar varias veces al día, mantener el diseño simple y compartir la responsabilidad del código.

Muchos equipos toman los eventos y los tableros de Scrum y dejan atrás las prácticas de ingeniería. El resultado es un equipo que planifica en sprints pero publica con miedo. Las prácticas de XP son la mitad que falta. Importan a quien deba operar el resultado, porque un servicio construido con pruebas automatizadas, versiones pequeñas y conocimiento compartido es más fácil de soportar que uno construido por unas pocas personas en lotes grandes y sin probar.

XP también pide algo a la organización que es fácil pasar por alto: un ritmo sostenible, un equipo completo con todas las habilidades necesarias y un cliente realmente disponible. Esas son condiciones del entorno de trabajo, no solo hábitos de programadores. Este tema explica el método, la evidencia sobre sus límites y cómo se conectan sus prácticas con las de ITIL, como la habilitación de cambios, la gestión de versiones y la gestión del conocimiento.

## Conceptos clave

### De dónde vino XP

Kent Beck desarrolló XP mientras trabajaba en el Chrysler Comprehensive Compensation System (C3), un proyecto de nóminas. Según el [artículo de Wikipedia sobre Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming), Beck pasó a ser líder del proyecto en marzo de 1996 y refinó allí el método, con Ward Cunningham como gran influencia y Ron Jeffries incorporándose para entrenar al equipo. Su libro *Extreme Programming Explained* apareció en octubre de 1999. Chrysler canceló el proyecto C3 en febrero de 2000 después de que Daimler-Benz adquiriera la compañía.

El artículo señala que muchas prácticas de XP no eran nuevas. Menciona el desarrollo con pruebas primero en el Proyecto Mercury de la NASA a principios de los años sesenta. La aportación de XP fue llevar las buenas prácticas a niveles "extremos": si probar es bueno, prueba todo el tiempo; si las revisiones son buenas, revisa constantemente trabajando en parejas. Beck y Cunningham estuvieron entre las 17 personas que escribieron el Manifiesto Ágil (véase Tema 1.1 — Manifiesto Ágil).

### Los cinco valores

XP enuncia cinco valores:

| Valor | Qué significa | En el trabajo de servicio |
|---|---|---|
| **Comunicación** | Construir una comprensión compartida entre desarrolladores, usuarios y clientes, principalmente hablando y manteniendo los diseños simples | Desarrolladores y personal de operaciones hablan de cómo se comportará una versión antes de que salga |
| **Simplicidad** | Hacer lo más simple que funcione y no construir para necesidades futuras especulativas | Menos piezas móviles que monitorizar, proteger y explicar |
| **Retroalimentación** | Aprender rápidamente de las pruebas, de los clientes y de las propias estimaciones del equipo | Los resultados rápidos de las pruebas y la monitorización en producción acortan el tiempo para aprender |
| **Valentía** | Refactorizar, descartar código obsoleto y perseverar ante los problemas difíciles | Retirar un componente antiguo que nadie se atreve a tocar |
| **Respeto** | Respeto por los compañeros y por el propio trabajo | Revisión sin culpas tras los fallos y una carga de guardias justa |

El artículo señala que el respeto se añadió en la segunda edición de *Extreme Programming Explained*, después de los cuatro originales.

### Las prácticas

El artículo sobre las prácticas de XP agrupa doce prácticas en cuatro conjuntos. Se entienden mejor como un sistema que se sostiene a sí mismo.

| Grupo | Prácticas | Propósito |
|---|---|---|
| **Retroalimentación a pequeña escala** | Programación en pareja, juego de planificación, desarrollo guiado por pruebas, equipo completo | Obtener retroalimentación en minutos o días, no en meses |
| **Proceso continuo** | Integración continua, mejora del diseño (refactorización), versiones pequeñas | Mantener el software siempre en un estado publicable |
| **Comprensión compartida** | Estándar de codificación, propiedad colectiva del código, diseño simple, metáfora del sistema | Permitir que cualquiera del equipo cambie cualquier parte con seguridad |
| **Bienestar del programador** | Ritmo sostenible | Mantener a las personas descansadas y eficaces durante años |

Una breve descripción de las principales:

- **Programación en pareja:** dos personas trabajan en una tarea en un mismo puesto, una escribiendo y otra revisando, y cambian de pareja con frecuencia.
- **Desarrollo guiado por pruebas (TDD):** el programador escribe primero una prueba que falla y luego escribe solo el código suficiente para que pase.
- **Integración continua (CI):** los desarrolladores integran su trabajo en el repositorio compartido cada pocas horas, de modo que los problemas de integración afloren pronto.
- **Versiones pequeñas:** entregar software funcionando en pasos frecuentes y pequeños para que los clientes vean el progreso y respondan.
- **Propiedad colectiva del código:** cualquier miembro del equipo puede cambiar cualquier parte del código.
- **Ritmo sostenible:** evitar las horas extra habituales y no permitir nunca horas extra en dos semanas seguidas.

### Controversias y límites

El artículo recoge varias críticas. Matt Stephens y Doug Rosenberg, en un libro de 2003, sostuvieron que las prácticas de XP dependen unas de otras, por lo que adoptar solo algunas socava el proceso. Los críticos también cuestionaron la programación en pareja como forma normal de trabajar, la falta de un gran diseño previo, el cliente in situ como punto único de fallo y las solicitudes de cambio informales que llevan a rehacer el trabajo y a que el alcance se desborde. P. McBreen, y Boehm y Turner, también escribieron valoraciones críticas. El artículo añade que los profesionales ágiles consideran que muchas de estas críticas son malentendidos.

En cuanto a la escala, el artículo dice que XP Industrial, presentado en 2004, extendió XP a equipos más grandes y distribuidos con 23 prácticas. También informa de una afirmación, marcada como necesitada de cita, de que ThoughtWorks tuvo un éxito razonable en proyectos de XP distribuido de hasta sesenta personas. Lee esa afirmación con cautela y consulta el Tema 1.8 — Escalado de Ágil para la discusión más amplia.

El artículo no trata el despliegue ni la monitorización en producción más allá de la integración continua y las versiones pequeñas. XP dice poco sobre operar software. Eso lo aportas tú desde la gestión de servicios, y usas XP para que el traspaso sea menos arriesgado.

### XP y la visión de ITIL sobre el cambio

La práctica de habilitación de cambios de ITIL (véase Tema 3.4 — Habilitación de Cambios) se ocupa de asegurar que los cambios se evalúen, autoricen y programen para que el riesgo esté controlado. XP controla el riesgo en otro lugar: en el código, mediante pruebas, pasos pequeños y conocimiento compartido. Un cambio pequeño, probado automáticamente, integrado y fácil de revertir es un cambio de menor riesgo según cualquier evaluación razonable. Las dos visiones encajan cuando la evidencia de las prácticas de XP se usa en la decisión sobre el cambio.

## Buenas prácticas

1. **Adopta las prácticas como un conjunto.** El argumento de los críticos de que las prácticas de XP se apoyan entre sí es una advertencia útil. Probar sin integrar, o integrar sin pasos pequeños, da menos que la suma. Introdúcelas juntas cuando puedas y aprende de cuáles dependen las demás.
2. **Escribe primero la prueba para los cambios que importan.** Para un comportamiento nuevo o una corrección de errores, escribe una prueba que falle y muestre el problema, y luego corrígelo. La prueba permanece como protección contra el regreso del problema, algo especialmente útil para los fallos que causaron incidentes.
3. **Integra varias veces al día.** Mantén las ramas de corta vida y compila y prueba automáticamente en cada integración. Una compilación rota es la primera prioridad del equipo.
4. **Publica en pasos pequeños.** Cada versión pequeña conlleva menos riesgo y es más fácil de entender y revertir. Apunta al intervalo más pequeño que tu canalización pueda sostener con seguridad y acórtalo a medida que crezca la confianza.
5. **Refactoriza de forma continua.** Mejora un poco el diseño cada día en lugar de reservarlo para una reescritura. El conjunto de pruebas es lo que lo hace seguro.
6. **Mantén el diseño tan simple como pueda ser.** Construye lo que se necesita ahora y elimina lo que no se usa. Un sistema más pequeño tiene menos que monitorizar, parchear y explicar.
7. **Comparte la propiedad del código.** Deja que cualquier miembro del equipo cambie cualquier parte, apoyado por pruebas y estándares compartidos. Esto reduce la dependencia de unos pocos expertos, que también es un riesgo de disponibilidad para el servicio.
8. **Trabaja en pareja en lo arriesgado o desconocido.** Usa la pareja para cambios delicados, para la incorporación de personas y para acompañar las guardias. Trátala como una herramienta para difundir el conocimiento y detectar errores, y no la conviertas en una regla para cada tarea.
9. **Mantén un ritmo sostenible.** Planifica el trabajo para que las horas extra sean raras y no se repitan semana tras semana. Un ingeniero de guardia cansado es un riesgo para el servicio (véase Tema 1.2 — Principios Ágiles sobre el ritmo).
10. **Haz del cliente parte del equipo.** Encuentra a un usuario real o a un representante de usuarios que pueda responder preguntas durante el trabajo. Recuerda la crítica de que una sola persona es un punto único de fallo, así que involucra a más de una voz.
11. **Escribe los criterios de aceptación como pruebas cuando sea posible.** Convierte las expectativas del cliente en comprobaciones automatizadas que se ejecutan con cada compilación. Así documentan el comportamiento y lo protegen a la vez.
12. **Incluye comprobaciones operativas en las pruebas.** Añade a la canalización comprobaciones del comportamiento de monitorización, registro y recuperación, para que la preparación operativa se verifique con cada cambio (véase Tema 3.5 — Gestión de Versiones y Despliegues).

## Preguntas para conversar con tu equipo

**¿Cómo sabemos que un cambio funciona antes de que llegue a los usuarios y cuánto tardamos en saberlo?**

Sigue las comprobaciones que pasa un cambio entre el portátil de un desarrollador y producción. Cuenta cuántas están automatizadas y cuánto tarda cada una. Las respuestas típicas incluyen una prueba manual, una revisión y una esperanza. Pregunta qué comprobación ha detectado más problemas y cuál no ha detectado nunca nada. Después, elige una comprobación manual que automatizar.

**¿Quién puede cambiar qué partes de nuestro sistema y qué pasa cuando esas personas están ausentes?**

Enumera los componentes y las personas que entienden cada uno. Los componentes con una sola persona detrás son riesgos para el servicio. La propiedad colectiva es la respuesta de XP, y necesita pruebas y estándares compartidos para ser segura. Pregunta qué podría enseñar una persona a otra en un mes. Quien facilite puede preguntar si las vacaciones o las bajas por enfermedad han retrasado alguna vez una corrección.

**¿Dónde nos ayudaría más la pareja y dónde solo nos frenaría?**

La programación en pareja es controvertida, así que invita a opiniones sinceras. Pregunta a las personas por la mejor y la peor experiencia que han tenido trabajando en pareja. Trabajar en pareja suele ayudar con sistemas desconocidos, cambios delicados y la incorporación de personas. Ayuda menos con el trabajo rutinario que una persona puede hacer bien. Acordad una situación en la que probar la pareja durante un mes y cómo la juzgaréis.

**¿Qué le pasa a nuestra calidad cuando estamos bajo presión y qué abandonamos primero?**

Pide un periodo reciente de prisas y qué se omitió: pruebas, revisiones, documentación. Pregunta qué pasó después. A menudo el trabajo omitido volvió en forma de incidentes. La idea es notar el patrón y decidir de antemano qué prácticas se protegen. Evita culpar y conecta la respuesta con el ritmo sostenible.

**¿Con qué frecuencia integramos nuestro trabajo y qué nos hace esperar?**

Pregunta cuánto vive una rama típica y qué la retrasa. Las ramas largas suelen reflejar cambios grandes, revisiones lentas o una compilación poco fiable. Cada causa tiene un arreglo distinto. Pregunta qué podría hacer el equipo para que integrar en unas pocas horas sea lo normal. Elige un obstáculo que eliminar.

**¿Tenemos un cliente o usuario disponible para el equipo o adivinamos lo que quieren?**

Pregunta quién responde a las preguntas sobre lo que necesitan los usuarios y cuánto tarda. Si la respuesta es una cadena larga, pregunta qué pregunta fue más costosa de responder mal. Recuerda a los propios críticos de XP: un solo representante del cliente puede ser un cuello de botella. Discute cómo llegar a varios usuarios de forma breve y frecuente.

## En la práctica: un ejemplo de ITIL ágil

El equipo digital de una agencia de transporte público, de nueve personas, construye y opera su aplicación de planificación de viajes y un flujo de datos de llegadas en vivo que usan otros desarrolladores de la ciudad. El equipo publica cada mes tras un ciclo de pruebas manuales de cuatro días. Cuando una versión sale mal, revertir lleva medio día, por lo que el equipo se resiste a publicar con más frecuencia. El responsable de operaciones, que también es el desarrollador con más experiencia, responde a la mayoría de las llamadas fuera de horario porque nadie más sabe cómo funciona el flujo de datos.

El equipo decide adoptar juntas unas pocas prácticas de XP. Configura una integración continua que compila y ejecuta pruebas unitarias en cada integración. Por cada error hallado en producción, escribe una prueba que falla antes de corregirlo. Dos desarrolladores trabajan en pareja con el responsable de operaciones en el trabajo del flujo de datos una hora al día. El equipo añade también un paso de despliegue que puede volver a la versión anterior en minutos.

Tras cuatro meses, el equipo publica cada semana. El conjunto de pruebas detecta dos regresiones antes de la publicación que el ciclo manual habría encontrado solo el último día. Tres desarrolladores pueden ahora atender la mayoría de las llamadas sobre el flujo de datos. No todo funciona: el conjunto de pruebas tarda 25 minutos en ejecutarse, así que los desarrolladores integran con menos frecuencia de la prevista, y un cambio defectuoso en el flujo de llegadas se cuela porque sus pruebas usaban datos de muestra que no coincidían con un caso límite real. El equipo traslada las pruebas lentas a una segunda etapa para que los primeros resultados lleguen en cinco minutos y añade una comprobación de monitorización sobre la salida del flujo. También acuerdan que la pareja seguirá siendo una herramienta para problemas difíciles y para incorporar personas, no una regla para cada tarea.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega son dueños de las prácticas de XP. Empieza por las que dan retroalimentación más rápido: las pruebas automatizadas y la integración continua. Trata tu conjunto de pruebas como un producto que también usa operaciones. Describe lo que se supone que hace el servicio y te dice con rapidez cuándo deja de hacerlo.

### Equipos de servicio y operaciones

El personal de operaciones puede usar las ideas de XP en su propio trabajo: cambios de infraestructura y de configuración probados antes de ejecutarse, cambios pequeños integrados a menudo y conocimiento compartido en el equipo mediante la pareja y la propiedad colectiva. Pide a los equipos de entrega pruebas que cubran los fallos que ves en producción y ofrece el historial de incidentes para orientar qué se prueba.

### Liderazgo y gobernanza

Los líderes facilitan XP protegiendo el ritmo, pagando la infraestructura de compilación y pruebas y aceptando que la calidad se construye en el trabajo y no se inspecciona después. Pide evidencia de seguridad que proceda de la canalización, como resultados de pruebas e historiales de versiones, y no exijas evidencia manual duplicada.

### Clientes y usuarios

Los clientes tienen el papel más directo en XP: forman parte del bucle de retroalimentación del equipo. Espera que se te pida probar versiones pequeñas, responder preguntas con rapidez y decir qué importa más esta semana. A cambio, deberías ver menos sorpresas y correcciones más rápidas de los problemas que informes.

## Fallos frecuentes

- **Adoptar solo los rituales.** Los equipos toman las reuniones diarias y los tableros y omiten las pruebas y la integración. En su lugar, empieza por las pruebas automatizadas y la integración continua, ya que dan el mayor retorno.
- **Tratar la pareja como una regla.** Forzar la pareja en todo el trabajo frustra a las personas y frena las tareas rutinarias. En su lugar, usa la pareja para problemas difíciles, incorporación y transferencia de conocimiento, y revisa cómo funciona.
- **Un conjunto de pruebas en el que nadie confía.** Las pruebas lentas o poco fiables se ignoran. En su lugar, mantén el conjunto rápido y corrige o elimina pronto las pruebas inestables.
- **Propiedad colectiva sin estándares.** Cualquiera puede cambiar cualquier cosa y el código se deteriora. En su lugar, combínala con estándares de codificación compartidos, revisión y comprobaciones automáticas.
- **Un único representante del cliente.** Una persona se convierte en el cuello de botella o en la fuente de sesgo. En su lugar, reparte el contacto entre varios usuarios y contrasta las decisiones con el uso real.
- **Omitir por completo el diseño.** Los equipos refactorizan repetidamente sin una dirección. En su lugar, mantén una imagen ligera de la arquitectura y revísala a intervalos regulares.
- **Las horas extra como algo normal.** Las jornadas largas erosionan la calidad y causan incidentes. En su lugar, planifica con un ritmo sostenible y trata las horas extra repetidas como una señal para reducir el alcance.
- **Ignorar las operaciones.** XP dice poco sobre operar software y los equipos suponen que está cubierto. En su lugar, añade comprobaciones operativas a las pruebas e invita al personal de operaciones a la planificación.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Pruebas | Las pruebas son manuales y tardías | Algunos equipos tienen pruebas unitarias automatizadas | Los equipos escriben pruebas junto con el código y las ejecutan en cada cambio | Se siguen y revisan los resultados de las pruebas y los defectos que escapan | La estrategia de pruebas se coordina entre servicios y se comparte con operaciones |
| Integración y versiones | La integración es poco frecuente y las versiones son grandes | Algunos equipos usan integración continua | Una canalización compartida compila, prueba y despliega cada cambio | La frecuencia de versiones y la tasa de fallos se miden y mejoran | Las canalizaciones se coordinan entre equipos y proveedores |
| Propiedad y conocimiento compartidos | El conocimiento está en unas pocas personas | Algunos equipos trabajan en pareja o rotan el trabajo | La propiedad colectiva con estándares es la norma | Las brechas de conocimiento se siguen y se reducen | El conocimiento circula libremente entre equipos y llega a las guías operativas |
| Ritmo y bienestar | Las horas extra son rutinarias | Algunos equipos vigilan su carga de trabajo | El ritmo sostenible es una política declarada | La carga de guardias y las horas extra se miden y se revisan | La carga de trabajo se equilibra entre equipos con datos compartidos |

## Lista de verificación

- [ ] El equipo ha acordado qué prácticas de XP usa y las ha probado juntas.
- [ ] Las pruebas automatizadas se ejecutan en cada cambio y una compilación fallida se corrige primero.
- [ ] Cada error de producción recibe una prueba que lo habría detectado.
- [ ] El trabajo se integra en la rama compartida varias veces al día.
- [ ] Las versiones son pequeñas y se puede hacer una reversión con rapidez.
- [ ] Más de una persona puede cambiar y soportar cada parte del sistema.
- [ ] La pareja se usa para problemas difíciles y para la incorporación de personas, y se revisa su efecto.
- [ ] Las horas extra son raras y no se repiten semana tras semana.
- [ ] Un usuario o representante de usuarios está disponible para responder preguntas durante el trabajo.
- [ ] Las pruebas incluyen comprobaciones del comportamiento de monitorización y recuperación.

## Prompts de IA

**Propósito: convertir un incidente de producción en una prueba y una lista de lecciones.**

```text
Ayúdame a aprender de un incidente de producción con los hábitos de la Programación Extrema.

Descripción del incidente (factual, sin culpas, en orden): [pega lo que ocurrió, cómo se detectó y cómo se corrigió].
La parte del sistema implicada: [describe el componente y qué hace].
Nuestras pruebas actuales para esa parte: [describe qué se prueba hoy, o escribe "desconocido"].

Propón: (1) una prueba, descrita con palabras sencillas, que habría detectado esto antes de la publicación; (2) otras dos pruebas que valga la pena añadir cerca; (3) un cambio en nuestro proceso de versiones que haga menos probable un fallo similar. No inventes detalles sobre nuestro sistema. Hazme primero preguntas aclaratorias si la descripción es demasiado escasa, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: evaluar con qué seguridad puede tu equipo publicar cambios pequeños.**

```text
Quiero entender cuán seguro es para nuestro equipo publicar cambios pequeños con frecuencia.

Nuestro camino del cambio a producción, paso a paso: [pega los pasos, quién hace cada uno y aproximadamente cuánto dura cada uno].
Nuestras comprobaciones automatizadas: [enumera pruebas, compilaciones y análisis, o escribe "ninguna"].
Cómo revertimos: [describe].
Las dos últimas versiones que salieron mal: [pega descripciones factuales breves].

Identifica los pasos que dependen del trabajo manual o del conocimiento de una sola persona. Para cada uno, sugiere una pequeña automatización o un paso para compartir el conocimiento. No afirmes que ninguna norma exige algo salvo que haya pegado su texto. Separa lo que muestra el texto de lo que supones y enumera de lo que no estés seguro.
```

**Propósito: diseñar un experimento de un mes con programación en pareja.**

```text
Ayúdame a diseñar un experimento de un mes con programación en pareja para un equipo de [número] personas que trabajan en [tipo de sistema].

Nuestras razones para probarlo: [por ejemplo "reducir los puntos únicos de fallo en el servicio de flujo de datos"].
Restricciones: [por ejemplo trabajo remoto, guardias, niveles de experiencia mixtos].

Propón en qué tipos de trabajo hacer pareja y cuáles dejar, cómo rotar las parejas, qué observar (usa observaciones como preguntas respondidas y defectos encontrados, y no inventes números) y cómo decidirá el equipo al final si continúa. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: comprobar una Definición de Terminado en cuanto a preparación operativa.**

```text
Esta es nuestra Definición de Terminado actual: [pégala].
Cosas que ha pedido el equipo de operaciones o soporte: [pega, o escribe "desconocido"].

Compara ambas. Enumera los elementos que operaciones necesitaría y faltan y, para cada uno, di si podría comprobarse automáticamente en una canalización de compilación y cómo. No afirmes que ninguna norma exige un elemento salvo que haya pegado su texto. Señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): úsala para revisar o introducir prácticas de XP como la pareja, el desarrollo guiado por pruebas y la integración continua.
- [user-story](../../../../skills/user-story/SKILL.md): úsala para convertir las necesidades del cliente en historias con criterios de aceptación que puedan convertirse en pruebas automatizadas.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): úsala para planificar versiones pequeñas y frecuentes y las comprobaciones que las hacen seguras.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): úsala para revisar cómo funcionan las prácticas y elegir un cambio.
- [runbook](../../../../skills/runbook/SKILL.md): úsala para convertir el conocimiento que tiene una sola persona en un procedimiento compartido y probado.

## Fuentes principales

- **Extreme programming** y **Extreme programming practices** (Wikipedia): una visión general de la historia, los valores, las prácticas y las críticas, con citas.
- **Extreme Programming Explained** (Kent Beck): la exposición original del método; su segunda edición añade el valor del respeto.
- **Manifiesto para el Desarrollo Ágil de Software** (agilemanifesto.org): XP es uno de los métodos cuyos autores escribieron el Manifiesto.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens y Doug Rosenberg, 2003): la crítica más conocida, útil para poner a prueba tus propios supuestos.

## Referencias

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
