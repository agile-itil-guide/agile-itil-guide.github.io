# Desarrollo de Software Ágil

**El desarrollo ágil de software es una familia de métodos de entrega continua de software que entregan en pasos pequeños y aprenden de la retroalimentación, y las prácticas que ha producido, como las pruebas automatizadas y la integración continua, son la base práctica para operar con seguridad servicios que cambian.**

## Por qué importa

La mayoría de los equipos que operan un servicio de TI también lo construyen y lo cambian. La manera de construir el software decide con qué frecuencia cambia el servicio, qué riesgo tiene cada cambio y cuánto pueden confiar en lo que reciben las personas de guardia. Un equipo que construye en lotes grandes y entrega pocas veces dará a operaciones unas pocas versiones grandes y aterradoras. Un equipo que construye en pasos pequeños, con pruebas y retroalimentación rápida, puede darles muchas versiones pequeñas y comprendidas.

El desarrollo ágil de software es el conjunto de ideas más conocido para la segunda forma de trabajar. También es muy malinterpretado. Algunas personas usan "ágil" para decir "sin planes y sin documentos", y otras lo usan para cualquier proceso con una reunión diaria. Este tema ofrece una imagen más clara: de dónde vienen los métodos ágiles, qué tienen en común, qué no pretenden y qué prácticas importan más a un equipo que debe mantener un servicio en marcha.

La evidencia requiere una lectura cuidadosa. El [artículo de Wikipedia sobre el desarrollo ágil de software](https://en.wikipedia.org/wiki/Agile_software_development) dice que la evidencia anecdótica a favor de lo ágil es fuerte, pero la evidencia empírica es "limitada y poco concluyente", y señala encuestas, como la encuesta anual State of Agile, que informan de beneficios pero proceden de opiniones declaradas por los propios participantes. Trata los métodos ágiles como enfoques prometedores que probar en tu propio entorno.

## Conceptos clave

### Qué abarca el término

"Desarrollo ágil de software" es un término paraguas. El artículo de Wikipedia lo describe como el conjunto de enfoques surgidos de los valores y principios acordados en 2001 por 17 profesionales (véase Tema 1.1 — Manifiesto Ágil y Tema 1.2 — Principios Ágiles). A menudo se usa "Agile" con mayúscula para las prácticas surgidas de esa mentalidad y "ágil" con minúscula para la cualidad de poder adaptarse. La distinción no es estricta y oirás ambas.

Los métodos ágiles buscan la entrega continua de software. Se apoyan en la colaboración continua entre las partes interesadas y los desarrolladores, construyen los proyectos en torno a personas motivadas y persiguen la mejora continua mediante la retroalimentación, prestando atención a la calidad. Difieren en lo que enfatizan. Algunos, como la Programación Extrema, se centran en las prácticas de ingeniería, y otros, como Scrum y Kanban, en cómo se gestiona el trabajo.

### Una historia breve

El artículo de Wikipedia rastrea el desarrollo iterativo e incremental hasta 1957, con la gestión evolutiva de proyectos y el desarrollo adaptativo de software apareciendo a principios de los años setenta. En los años noventa surgió un grupo de métodos ligeros como reacción a los procesos pesados y dirigidos por el plan, a menudo llamados [modelo en cascada](https://en.wikipedia.org/wiki/Waterfall_model). El artículo enumera el desarrollo rápido de aplicaciones (1991), el proceso unificado y el método de desarrollo de sistemas dinámicos, DSDM (1994), Scrum (1995), Crystal Clear y la Programación Extrema (1996) y el desarrollo dirigido por funcionalidades (1997).

En febrero de 2001, diecisiete profesionales se reunieron en Snowbird, Utah, y escribieron el Manifiesto. Declaraciones posteriores se apoyaron en él: la Declaración de Interdependencia de la gestión de proyectos en 2005, el Manifiesto de la Artesanía del Software en 2009 y la *Guide to Agile Practices* de la Agile Alliance en 2011, que pasó a llamarse *Agile Glossary* en 2016.

### Enfoques adaptativos y predictivos

El artículo describe un continuo entre enfoques predictivos y adaptativos. Un método predictivo planifica la mayor parte del trabajo en detalle antes de empezar y funciona bien cuando los requisitos son estables y se entienden bien. Un método adaptativo espera el cambio y planifica en horizontes cortos. Boehm y Turner, citados en el artículo, sostienen que cada lado tiene su propio "terreno propio", es decir, que ninguno es correcto en todas partes.

Esto importa a un equipo de servicio porque su trabajo es mixto. Sustituir la red de un centro de datos se acerca más al trabajo predictivo. Mejorar una aplicación de cara al cliente se acerca más al trabajo adaptativo. Elige el enfoque según el tipo de trabajo, no una sola vez para toda la organización.

### Métodos habituales

El artículo enumera muchos métodos. Los que es más probable que encuentres:

| Método | Énfasis principal | Tratado en |
|---|---|---|
| Scrum | Roles definidos, eventos regulares y una cadencia fija | Tema 1.4 — Pronóstico de Entrega y Métricas de Planificación |
| Kanban | Visualizar el trabajo y limitar cuánto está en curso | Tema 1.5 — Kanban |
| Programación Extrema (XP) | Prácticas de ingeniería como la programación en pareja y el desarrollo guiado por pruebas | Tema 1.6 — Programación Extrema |
| Desarrollo de software Lean | Aplicar ideas lean, como eliminar el desperdicio, al software | Tema 1.7 — Desarrollo de Software Lean |
| Desarrollo dirigido por funcionalidades, DSDM, Crystal y desarrollo adaptativo de software | Otros métodos ligeros de entrega continua de software con sus propios roles y prácticas | Este tema |
| Scrumban | Una mezcla de eventos de Scrum y flujo de Kanban | Tema 1.4 — Pronóstico de Entrega y Métricas de Planificación y Tema 1.5 — Kanban |

Ningún método es "el" método ágil. El artículo cita la opinión de Ken Schwaber de que los equipos se meten en problemas al buscar una metodología perfecta cuando es la propia empresa la que necesita cambiar, y la sugerencia de Bas Vodde de que Scrum aporta lo básico que los equipos amplían localmente.

### Prácticas habituales

El artículo enumera prácticas que usan muchos equipos ágiles. Una selección, con la finalidad de cada una:

- **Historias de usuario y listas de trabajo pendiente (backlogs):** describen el trabajo desde el punto de vista del usuario y mantienen una lista priorizada de lo que hay que hacer a continuación.
- **Reunión diaria de pie (stand-up):** una reunión diaria breve, a menudo de unos 15 minutos, para compartir avances y bloqueos.
- **Desarrollo guiado por pruebas (TDD) y desarrollo guiado por pruebas de aceptación (ATDD):** escribir primero las pruebas, de modo que "terminado" se defina antes de empezar el trabajo.
- **Integración continua (CI):** integrar los cambios con frecuencia y compilarlos y probarlos automáticamente. El artículo señala que Grady Booch propuso el término por primera vez en 1991.
- **Programación en pareja y refactorización:** dos personas comparten el trabajo para mejorar la calidad y difundir el conocimiento, y el código se mejora continuamente sin cambiar lo que hace.
- **Retrospectivas:** el equipo reflexiona a intervalos regulares sobre cómo mejorar.

Para un equipo de servicio, tres de ellas merecen atención especial. Las pruebas automatizadas y la integración continua hacen seguro el cambio frecuente. Las retrospectivas ofrecen un lugar permanente para mejorar la forma de trabajar del equipo. Las listas de trabajo pendiente dan una lista única y ordenada en la que las mejoras de servicio compiten de forma justa con las funcionalidades nuevas.

### Experiencia, medición y escollos

El artículo informa de que las encuestas, entre ellas una de Shine Technologies en 2002–2003 y la encuesta State of Agile desde 2006, encuentran mejoras percibidas en calidad, productividad y satisfacción del negocio. También señala que una encuesta de VersionOne halló que la formación insuficiente era la causa más citada de las implantaciones fallidas, y enumera escollos como asignar el rol de responsable de producto a un miembro del equipo de desarrollo y la falta de apoyo del patrocinador.

Medir cuán "ágil" es un equipo ha producido varias autoevaluaciones, como la prueba de Nokia, y un índice que califica los proyectos por duración, riesgo, novedad, esfuerzo e interacción. Ten cuidado con cualquier puntuación así. Un número es un punto de partida para la conversación, y un equipo que optimiza la puntuación puede perder el sentido.

### Trabajo a gran escala, distribuido y regulado

El artículo dice que escalar más allá de unos 20 desarrolladores, o entre ubicaciones, plantea dificultades, y que se han propuesto varios marcos, aunque las opiniones difieren sobre lo bien que funcionan (véase Tema 1.8 — Escalado de Ágil). También informa de que se pensó al principio que los ámbitos regulados, como los productos sanitarios, la industria farmacéutica, las finanzas, la energía nuclear, la automoción y la aviónica, no eran adecuados para lo ágil, y que ahora existen adaptaciones. Las preocupaciones que enumera son el aseguramiento de la calidad, la seguridad física y de la información, la trazabilidad, y la verificación y validación.

Son exactamente las preocupaciones de la gestión de servicios. Cuando un regulador o un auditor pide evidencia, un equipo ágil puede aportarla a partir de las herramientas que ya usa, como el historial del control de versiones, los resultados de pruebas automatizadas y los registros de cambios (véase Tema 5.7 — Gobernanza, Riesgo y Cumplimiento).

### Críticas que conviene conocer

Steven Rakitin, en una carta a *IEEE Computer* en 2001, calificó lo ágil como "otro intento más de socavar la disciplina de la ingeniería de software" y leyó la preferencia del Manifiesto por el software funcionando como una licencia para omitir la documentación. Los defensores responden que la documentación debe ser "apenas lo bastante buena", en la expresión de Scott Ambler. Los equipos de servicio conocen ambos lados: demasiado poca documentación frena los traspasos y la respuesta a incidentes, y demasiada se queda obsoleta.

## Buenas prácticas

1. **Ajusta el método al tipo de trabajo.** Usa entrega continua de software y retroalimentación frecuente donde los requisitos cambian, y más planificación previa donde son fijos y el coste del error es alto. Decídelo para cada tipo de trabajo y revísalo cuando cambien las circunstancias.
2. **Empieza por el lote útil más pequeño.** Divide el trabajo en piezas que puedan construirse, probarse y publicarse en días. Los lotes pequeños dan retroalimentación más rápida y hacen que un cambio fallido sea más fácil de entender y de revertir.
3. **Automatiza las pruebas antes de acelerar las versiones.** Las versiones frecuentes sin pruebas automatizadas trasladan el riesgo a tus usuarios. Construye un conjunto de pruebas que se ejecute con cada cambio y falle de forma ruidosa, y trata una compilación rota como la primera prioridad del equipo.
4. **Integra de forma continua.** Integra el trabajo en una rama compartida con frecuencia y compílalo automáticamente. Las ramas de larga vida ocultan los conflictos hasta que es caro resolverlos.
5. **Haz que "terminado" incluya operaciones.** Una historia no está terminada hasta que puede monitorizarse, soportarse y revertirse. Añade estas comprobaciones a tu definición de terminado y pide al personal de operaciones que ayude a redactarla (véase Tema 3.5 — Gestión de Versiones y Despliegues).
6. **Mantén una lista de trabajo pendiente ordenada por equipo.** Pon funcionalidades, defectos y mejoras de servicio en la misma lista priorizada para que compitan abiertamente. Las colas laterales ocultas son donde el trabajo operativo muere de hambre en silencio.
7. **Escribe solo la documentación suficiente.** Conserva los documentos que la gente usa, como guías operativas, descripciones de servicio y notas de arquitectura, y da a cada uno un responsable y una fecha de revisión. Elimina el resto. Esto responde a la preocupación de Rakitin sin volver a los documentos pesados.
8. **Celebra retrospectivas periódicas y actúa sobre ellas.** Elige un cambio de cada una, con un responsable y una fecha. Una retrospectiva que solo produce discusión se convierte en un ritual.
9. **Invierte en formación y patrocinio.** La evidencia de encuestas en el artículo de Wikipedia señala la formación y el apoyo del patrocinador como puntos débiles habituales. Planifica ambos antes de pedir a los equipos que cambien su forma de trabajar.
10. **Adapta y explica por qué.** Adapta un método a tu contexto y anota lo que cambiaste y el motivo. Cambiar una práctica porque resulta incómoda, sin una razón, es como los equipos se alejan de los beneficios.
11. **Mide resultados, no puntuaciones de agilidad.** Sigue indicadores como el plazo de entrega de un cambio, la frecuencia con que las versiones causan incidentes y la rapidez con que se restablece el servicio (véase Tema 5.6 — Métricas y Medición). Usa las autoevaluaciones solo como estímulo para la conversación.
12. **Devuelve los datos del servicio al desarrollo.** Lleva los incidentes recurrentes y los registros de problemas a la lista de trabajo pendiente, para que el desarrollo aprenda de operaciones (véase Tema 3.3 — Gestión de Problemas).

## Preguntas para conversar con tu equipo

**¿Qué prácticas ágiles usamos de verdad y de cuáles solo conocemos el nombre?**

Enumera las prácticas que crees que sigues: reuniones diarias, retrospectivas, listas de trabajo pendiente, pruebas automatizadas. De cada una, pregunta cuándo fue la última vez que cambió una decisión. Las prácticas que nadie puede conectar con una decisión son rituales. Quien facilite debe pedir evidencia sin insinuar culpa. Después, elige un ritual que mejorar o abandonar.

**¿Para qué trabajo de los nuestros sería más sensato un enfoque más predictivo y por qué?**

El artículo de Wikipedia informa de que cada enfoque tiene su "terreno propio". Pide a las personas que clasifiquen el trabajo reciente en estable y de cambio rápido. El trabajo estable típico incluye renovaciones de hardware, traslados de centros de datos y grandes renovaciones de contratos. Pregunta qué habría aportado un plan más cuidadoso en cada caso. El objetivo es evitar aplicar un solo estilo a todo.

**¿Con qué rapidez descubrimos que algo que construimos no funciona y qué lo haría más rápido?**

Sigue el camino desde que se escribe un cambio hasta que se sabe cómo se comporta en uso. Cuenta las etapas y las esperas: revisión, compilación, prueba, publicación, monitorización. Pregunta en qué etapa confía menos el equipo. A menudo la respuesta es una prueba manual o un paso de publicación que depende de una sola persona. Elige una etapa que acortar y acuerda cómo sabrás que se acortó.

**¿Qué necesitaría ver un auditor o un regulador de nosotros y ya lo produce nuestra forma de trabajar?**

Pide a alguien con experiencia en auditoría o seguridad que se una. Reúne la evidencia que tus herramientas ya producen: historial de cambios, resultados de pruebas, aprobaciones. Luego enumera lo que falta. Los equipos suelen sorprenderse al descubrir que los cambios pequeños y frecuentes con comprobaciones automáticas producen mejor evidencia que los grandes y poco frecuentes. Anota las brechas para la conversación de gobernanza del Tema 5.7 — Gobernanza, Riesgo y Cumplimiento.

**¿Dónde ayuda nuestra documentación a las personas y dónde existe solo porque se nos dijo que la escribiéramos?**

Pregunta a las personas qué documentos han usado en el último mes. Una guía operativa que se usa y se mantiene al día cuenta. Un documento de diseño que nadie ha leído desde el día en que se aprobó, no. Haz que el equipo decida cuáles conservar, cuáles fusionar y cuáles borrar, y asigna responsables. Es una manera segura de aplicar la idea de "apenas lo bastante bueno".

**¿Qué cambiamos por última vez en nuestra forma de trabajar gracias a lo que aprendimos y cuál es el próximo cambio?**

Pide el cambio concreto más reciente salido de una retrospectiva y si funcionó. Si nadie puede nombrar uno, la retrospectiva no cumple su función. Mira por qué: las acciones pueden ser demasiado grandes, no tener responsables o competir con el trabajo de entrega. Termina eligiendo un cambio pequeño que hacer en las próximas dos semanas.

## En la práctica: un ejemplo de ITIL ágil

Un minorista en línea de tamaño medio tiene un equipo de desarrollo de diez personas que construye su sistema de gestión de pedidos y un equipo de operaciones aparte, de seis, que lo opera. El equipo de desarrollo ha elegido usar sprints y publicar versiones cada dos semanas. El equipo de operaciones recibe cada versión con una nota breve y la petición de desplegarla en una ventana el jueves por la noche. El personal de operaciones se queja de que se entera de lo que cambió solo cuando algo se rompe, y los desarrolladores se quejan de que una ventana el jueves es demasiado tarde para corregir nada de lo que se encuentre en las pruebas.

En una retrospectiva conjunta, los dos equipos trazan paso a paso una versión reciente. Descubren que las únicas pruebas automatizadas cubren aproximadamente la mitad del flujo de pedidos, que nadie del lado de operaciones había visto la versión antes de la nota del jueves y que el paso de reversión nunca se ha probado. Acuerdan tres cambios. El equipo de desarrollo añadirá una comprobación de monitorización y una prueba de reversión a su definición de terminado. Un ingeniero de operaciones se unirá a cada revisión del sprint. Las versiones que superen el conjunto completo de pruebas automatizadas se desplegarán en cuanto estén listas, no solo los jueves.

Durante los dos meses siguientes, dos de las cuatro versiones siguientes se despliegan entre semana. El ingeniero de operaciones detecta en una revisión de sprint que falta un mensaje de registro, lo que ahorra una hora de búsqueda en un incidente posterior. No todo mejora: el conjunto de pruebas automatizadas sigue omitiendo la ruta de reembolsos y un fallo de reembolsos llega a los clientes. Los equipos añaden pruebas de reembolsos al siguiente sprint y acuerdan revisar mensualmente las brechas de cobertura. El ingeniero de operaciones también dice que asistir a la revisión del sprint lleva un tiempo que el turno de guardia no permite, así que el responsable de operaciones traslada parte de las demás tareas de ese ingeniero.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega son dueños de las prácticas que hacen seguro el cambio: pruebas, integración continua, lotes pequeños y una definición clara de terminado. Trata a operaciones como un cliente de tu trabajo. Pregunta qué necesitan para operar una versión e inclúyelo en la lista de trabajo pendiente como harías con una funcionalidad.

### Equipos de servicio y operaciones

El personal de operaciones puede usar prácticas ágiles en su propio trabajo: una lista visible de mejoras, ciclos cortos de retroalimentación sobre los incidentes y retrospectivas periódicas. Pide unirte pronto a las sesiones de planificación y revisión. Aporta tu conocimiento de cómo fallan los servicios, que es el insumo más útil que puede recibir un equipo de entrega.

### Liderazgo y gobernanza

Los líderes deciden si los equipos disponen del tiempo y la formación para trabajar así. La evidencia de encuestas del artículo de Wikipedia señala la formación y el patrocinio como puntos débiles habituales. Pregunta qué controles necesitas y cómo puede un equipo cumplirlos usando sus propias herramientas, en lugar de añadir un proceso paralelo.

### Clientes y usuarios

Los clientes ven el beneficio de los métodos ágiles como una mejora visible a un ritmo constante, no como una ceremonia. Espera revisar con regularidad cambios que funcionan y que te pregunten qué importa más. A cambio, el equipo necesita respuestas a tiempo y disposición a aceptar versiones pequeñas e imperfectas que mejoran con el tiempo.

## Fallos frecuentes

- **Adoptar rituales sin prácticas de ingeniería.** Aparecen reuniones diarias y tableros, pero no hay pruebas automatizadas, así que las versiones siguen siendo arriesgadas. En su lugar, invierte en pruebas, integración y automatización de versiones junto con las ceremonias.
- **Llamar "ágil" a un proceso de cambios sin cambiar los derechos de decisión.** Los equipos siguen esperando aprobaciones lejanas. En su lugar, traslada las decisiones a quienes tienen el conocimiento y fija límites claros.
- **Usar lo ágil como excusa para no documentar.** Los traspasos y los incidentes sufren. En su lugar, conserva los documentos breves que la gente usa y da a cada uno un responsable.
- **Omitir la formación.** El hallazgo de VersionOne en el artículo de Wikipedia señala la formación insuficiente como la causa más citada de las implantaciones fallidas. En su lugar, forma a equipos y líderes antes y durante el cambio.
- **Poner a un miembro del equipo de desarrollo en el rol de responsable de producto.** El artículo lo enumera como un escollo. En su lugar, elige a alguien que represente al negocio y tenga tiempo para decidir.
- **Escalar copiando un marco.** Un marco grande instalado sin comprenderlo añade proceso y frena a los equipos. En su lugar, empieza por el problema que tienes y adopta solo lo que ayude (véase Tema 1.8 — Escalado de Ágil).
- **Perseguir una puntuación de agilidad.** Los equipos optimizan la métrica. En su lugar, sigue resultados como el plazo de entrega, los fallos de versiones y el tiempo de restablecimiento del servicio.
- **Mantener separados desarrollo y operaciones.** El equipo de entrega publica y el de operaciones hereda. En su lugar, intégralos en la planificación, las revisiones y el aprendizaje de incidentes compartidos (véase Tema 5.2 — DevOps).

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Entrega continua de software | El trabajo se entrega en versiones grandes | Algunos equipos entregan en ciclos cortos | Los equipos comparten una cadencia de entrega común y una definición de terminado | El plazo de entrega y los resultados de las versiones se miden y se revisan | Los ritmos de versiones se coordinan entre equipos y proveedores |
| Prácticas de ingeniería | Las pruebas y las compilaciones son en su mayoría manuales | Algunos equipos tienen pruebas y compilaciones automatizadas | Una canalización compartida ejecuta pruebas con cada cambio | Se siguen la cobertura de pruebas y las tasas de fallo y se corrigen las brechas | Las canalizaciones y prácticas se mejoran entre equipos a partir de evidencia compartida |
| Lista de trabajo pendiente y priorización | Las solicitudes llegan por correo y de forma improvisada | Los equipos mantienen sus propias listas | Cada equipo tiene una lista ordenada que incluye el trabajo de servicio | El flujo y la antigüedad de la lista se revisan con las partes interesadas | Las prioridades se alinean entre equipos, clientes y proveedores |
| Aprendizaje y adaptación | Las revisiones siguen solo a los fallos graves | Algunos equipos celebran retrospectivas | Todos los equipos celebran retrospectivas periódicas y registran las acciones | Las acciones se siguen hasta completarse y se comprueban sus efectos | Las lecciones circulan entre equipos y llegan a la política sin dirección central |

## Lista de verificación

- [ ] El equipo sabe decir qué método o prácticas ágiles usa y por qué los eligió.
- [ ] El trabajo se clasifica en tipos predictivos y adaptativos, con un enfoque declarado para cada uno.
- [ ] Las pruebas automatizadas se ejecutan con cada cambio y una compilación fallida detiene la línea.
- [ ] Nuestra definición de terminado incluye monitorización, notas de soporte y una reversión probada.
- [ ] Cada equipo tiene una lista de trabajo pendiente ordenada que incluye mejoras de servicio y defectos.
- [ ] Las guías operativas y las descripciones de servicio tienen responsables y fechas de revisión.
- [ ] Las retrospectivas se celebran con un ritmo regular y cada una termina con una acción con responsable.
- [ ] Equipos y líderes han recibido formación en la forma de trabajar que les pedimos.
- [ ] Sabemos qué evidencia necesitan los auditores y cómo la proporcionan nuestras herramientas.
- [ ] Las medidas de resultado, como el plazo de entrega y el tiempo de restablecimiento del servicio, se revisan con regularidad.

## Prompts de IA

**Propósito: relacionar tus prácticas actuales con las prácticas ágiles habituales y encontrar brechas.**

```text
Estás ayudando a un equipo a entender qué prácticas de desarrollo ágil de software usa realmente.

Prácticas a considerar: historias de usuario y listas de trabajo pendiente, reuniones diarias, retrospectivas, desarrollo guiado por pruebas, integración continua, programación en pareja, refactorización, definición de terminado, revisiones periódicas con clientes.

Nuestro equipo: [tamaño del equipo y qué construyes y operas].
Lo que hacemos hoy, con nuestras propias palabras: [pega una descripción breve de una semana típica, incluyendo reuniones, herramientas y cómo llega un cambio a producción].

Para cada práctica, indica si la descripción la muestra en uso, en uso parcial o sin mencionar, y cita las palabras en las que te basas. No supongas que existe una práctica si no está descrita. Después enumera tres preguntas que debería hacer a mi equipo para cubrir las brechas. Hazme primero preguntas aclaratorias si la descripción es demasiado escasa y enumera de lo que no estés seguro.
```

**Propósito: redactar una definición de terminado que incluya operaciones.**

```text
Ayúdanos a escribir una definición de terminado para [tipo de trabajo, p. ej. "cambios de backend en nuestro servicio de pedidos"] que cubra tanto construir como operar el servicio.

Nuestra definición de terminado actual es: [pégala, o escribe "ninguna"].
Lo que el personal de operaciones dice que necesita antes de aceptar una versión: [pega una lista, o escribe "desconocido"].
Reglas que debemos cumplir: [enumera las reglas de auditoría, seguridad o protección conocidas, o escribe "ninguna conocida"].

Produce una lista de verificación de 8 a 12 elementos, agrupados en calidad de construcción, preparación de la versión y preparación operativa. Marca cada elemento que hayas añadido por suposición. No afirmes que ninguna norma exige un elemento salvo que haya pegado su texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: preparar evidencia para un auditor a partir de tus herramientas ágiles.**

```text
Un auditor ha preguntado: [pega la pregunta, p. ej. "muéstreme cómo se revisan y aprueban los cambios"].

Nuestras herramientas y registros: [enumera tus herramientas de control de versiones, compilación, pruebas, tickets y versiones, y qué registra cada una].
Nuestra práctica: [describe cómo pasa un cambio de la idea a producción].

Enumera qué evidencia produce ya cada herramienta en relación con la pregunta, qué brechas quedan y tres formas ligeras de cerrar cada brecha. No afirmes que ninguna ley o norma exige algo salvo que haya pegado su texto. Separa los hechos de las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: planificar una retrospectiva sobre cómo tu equipo adopta las prácticas ágiles.**

```text
Planifica una retrospectiva de 60 minutos para un equipo de [número] personas que están [adoptando / mejorando] prácticas ágiles. El principal problema ahora mismo es [problema].

Incluye: una agenda con tiempos, una forma de reunir primero los hechos, una breve discusión de dos o tres de estas preguntas: [pega preguntas de la sección "Preguntas para conversar con tu equipo"] y un paso final que registre exactamente una acción con un responsable y una fecha.

Mantén el plan libre de cualquier herramienta concreta. Si falta algo, hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [scrum](../../../../skills/scrum/SKILL.md): úsala para configurar o revisar los roles, eventos y artefactos de un equipo Scrum.
- [kanban](../../../../skills/kanban/SKILL.md): úsala para diseñar un tablero visual con límites de trabajo en curso para un equipo de servicio u operaciones.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): úsala para revisar o adoptar prácticas de ingeniería como el desarrollo guiado por pruebas y la integración continua.
- [user-story](../../../../skills/user-story/SKILL.md): úsala para escribir historias de usuario con criterios de aceptación que incluyan las necesidades operativas.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): úsala para dirigir una retrospectiva que termine con un cambio que tenga responsable.

## Fuentes principales

- **Manifiesto para el Desarrollo Ágil de Software** y **Principios tras el Manifiesto Ágil** (agilemanifesto.org): la declaración primaria de valores y principios.
- **Desarrollo ágil de software** (Wikipedia): una amplia visión de la historia, los métodos, las prácticas, la adopción y las críticas, con muchas fuentes citadas.
- **Agile Glossary** (Agile Alliance): definiciones de prácticas y términos ágiles, mantenidas por la comunidad surgida del Manifiesto.

## Referencias

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
