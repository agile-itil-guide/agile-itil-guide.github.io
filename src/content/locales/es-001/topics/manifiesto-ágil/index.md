# Manifiesto Ágil

**El Manifiesto para el Desarrollo Ágil de Software son cuatro declaraciones breves de valor que indican a un equipo qué favorecer cuando dos cosas buenas tiran en direcciones opuestas, y esas elecciones importan tanto para operar un servicio en producción como para construirlo.**

## Por qué importa

El Manifiesto Ágil es la raíz de casi todo lo demás en esta guía. Scrum, Kanban, Programación Extrema y DevOps son maneras de actuar según los valores que declara. Si solo conoces las prácticas, copiarás los rituales y te perderás el razonamiento, y cuando un ritual deje de funcionar no tendrás nada con qué orientarte.

Importa para la gestión de servicios de TI (ITSM) por una razón práctica. La mayoría de los equipos que hoy operan servicios también los construyen, y los dos trabajos tiran en direcciones distintas. Construir premia el cambio y la velocidad. Operar premia la estabilidad y la previsibilidad. El Manifiesto no elimina esa tensión, pero da al equipo una manera compartida de hablar de ella: ¿qué valor estamos favoreciendo aquí y qué estamos pagando por ello?

También ayuda saber lo que el Manifiesto no es. No es un proceso, ni una certificación, ni una promesa de que seguirlo haga triunfar a los proyectos. El [artículo de Wikipedia sobre el desarrollo ágil de software](https://en.wikipedia.org/wiki/Agile_software_development) señala que la evidencia de los beneficios de los métodos ágiles es limitada y poco concluyente. Trata el Manifiesto como un conjunto de hipótesis bien argumentadas que pruebas en tu propio contexto, no como una escritura sagrada.

## Conceptos clave

### De dónde viene

Diecisiete profesionales se reunieron en la estación de esquí de Snowbird, en las montañas Wasatch de Utah, del 11 al 13 de febrero de 2001, y escribieron juntos el Manifiesto. Según el [relato en agilemanifesto.org](https://agilemanifesto.org/history.html), venían de métodos como Programación Extrema, Scrum y Crystal, y querían una alternativa a los procesos pesados y dirigidos por la documentación. Se había propuesto la etiqueta "Light" (ligero), a la que Alistair Cockburn se opuso, y el grupo acabó llamándose Agile Alliance.

Los firmantes fueron Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland y Dave Thomas. Varios de ellos ya habían creado los métodos que aportaron: Beck y Cunningham trabajaron en la [Programación Extrema](https://en.wikipedia.org/wiki/Extreme_programming), y Schwaber y Sutherland en [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

El Manifiesto fue una reacción a una forma de trabajar en la que el equipo planifica todo el proyecto de antemano, construye en fases largas y descubre tarde si el resultado es deseado. Ese estilo suele llamarse [modelo en cascada](https://en.wikipedia.org/wiki/Waterfall_model). Los autores no inventaron el trabajo iterativo (el artículo de Wikipedia rastrea los métodos iterativos e incrementales hasta 1957), pero le dieron un nombre compartido y una declaración breve de valores.

### Los cuatro valores

El Manifiesto declara sus valores íntegros de la siguiente manera. Su aviso de derechos permite copiarlo libremente en cualquier forma, pero solo en su totalidad, por eso se cita aquí completo:

> Estamos descubriendo formas mejores de desarrollar software tanto por nuestra propia experiencia como ayudando a terceros. A través de este trabajo hemos aprendido a valorar:
>
> **Individuos e interacciones** sobre procesos y herramientas
> **Software funcionando** sobre documentación extensiva
> **Colaboración con el cliente** sobre negociación contractual
> **Respuesta ante el cambio** sobre seguir un plan
>
> Esto es, aunque valoramos los elementos de la derecha, valoramos más los de la izquierda.

Tres detalles de la redacción pasan fácilmente inadvertidos y cambian el sentido:

- **"Sobre" no significa "en lugar de".** La última frase dice que los elementos de la derecha siguen teniendo valor. Un equipo que abandona toda la documentación o toda la planificación ha malinterpretado el Manifiesto.
- **Es una preferencia para cuando hay que elegir.** Los valores no dicen qué hacer cada día. Dicen hacia dónde inclinarse cuando un proceso, un documento, un contrato o un plan se interpone en un mejor resultado.
- **"Por nuestra propia experiencia".** La frase inicial dice que los autores encontraron estos valores a través de la práctica. La afirmación es empírica, y por eso se te invita a contrastarla con tu propia experiencia.

### Leer cada valor para el trabajo de servicio

Los valores se escribieron pensando en el desarrollo de software. Esto es lo que puede significar cada uno para un equipo que además opera servicios.

| Valor | De qué protege | Qué puede significar en el trabajo de servicio |
|---|---|---|
| Individuos e interacciones sobre procesos y herramientas | Un proceso que funciona sobre el papel pero que nadie puede seguir bajo presión | En un incidente mayor, las personas que conocen el sistema hablan directamente. El proceso de incidentes apoya esa conversación y no la sustituye. |
| Software funcionando sobre documentación extensiva | Documentos que describen un sistema que ya no existe | Una guía operativa (runbook) probada por el ingeniero de guardia que la usa vale más que un manual largo que nadie ha abierto. |
| Colaboración con el cliente sobre negociación contractual | Discutir un acuerdo de nivel de servicio (SLA) mientras la necesidad real del cliente queda sin atender | Revisa los niveles de servicio con los clientes con regularidad y cámbialos cuando cambien sus necesidades. |
| Respuesta ante el cambio sobre seguir un plan | Congelar un plan cuando la situación ya ha cambiado | Un proceso de cambios que puede aprobar en minutos un cambio pequeño y de bajo riesgo permite al equipo responder. Un proceso que trata todos los cambios por igual no puede. |

### Los doce principios

El Manifiesto va acompañado de doce principios que detallan los valores. Son el tema del siguiente tema (véase Tema 1.2 — Principios Ágiles). En conjunto, los valores y los principios se denominan a veces la mentalidad ágil.

### Críticas que conviene conocer

Algunos críticos han objetado que el Manifiesto socava la disciplina de la ingeniería. El artículo de Wikipedia cita a Stephen Rakitin, quien en una carta a *IEEE Computer* calificó lo ágil como "otro intento más de socavar la disciplina de la ingeniería de software", y que leyó "software funcionando sobre documentación extensiva" como permiso para omitir la documentación. Los defensores responden que la documentación debe ser "apenas lo bastante buena", una expresión de Scott Ambler, y que demasiado poca documentación perjudica el mantenimiento y el intercambio de conocimiento.

Para un equipo de servicio la crítica tiene fundamento. El personal de operaciones hereda lo que dejan los equipos de entrega, y la documentación escasa se nota en una respuesta lenta a los incidentes y en traspasos largos. Una lectura justa del Manifiesto es que la documentación debe ganarse su lugar, no que no exista.

## Buenas prácticas

1. **Trata los valores como una ayuda para decidir, no como un reglamento.** Cuando el equipo discrepe, pregunta qué valor está en tensión y hacia dónde debe inclinarse el equipo. Así una discusión de preferencias se convierte en una conversación sobre compromisos.
2. **Lee la frase que sigue a los valores.** Recuerda a menudo al equipo que los elementos de la derecha siguen teniendo valor. Anota qué procesos, documentos, contratos y planes conservas y por qué.
3. **Contrasta cada valor con un suceso reciente.** Elige un incidente o una versión real y pregunta cómo habría ido el trabajo si el equipo se hubiera inclinado hacia el otro lado. La evidencia de tu propio trabajo convence más que una cita.
4. **Conserva la documentación y mantenla viva.** Prefiere documentos breves que se usan, se prueban y tienen responsable, como las guías operativas y las descripciones de servicio, a documentos largos que se escriben una sola vez. Elimina lo que nadie lee.
5. **Haz rutinaria la colaboración con el cliente.** Mantén conversaciones periódicas con quienes usan tus servicios y lleva lo que aprendas a la lista de trabajo pendiente (backlog). No esperes a la revisión del contrato.
6. **Haz planes que esperen cambiar.** Planifica en horizontes cortos con puntos de revisión explícitos. Mantén una dirección a más largo plazo y acepta que los pasos hacia ella se moverán.
7. **Da responsables a los procesos y deja que evolucionen.** Cada proceso de tu sistema de gestión de servicios debe tener un responsable con nombre y una vía para que quienes lo usan propongan cambios. Un proceso que nadie puede cambiar acabará esquivándose.
8. **Usa los valores al contratar y al incorporar personas.** Descríbelos al personal nuevo con ejemplos de tu propio equipo, para que vean cómo aparecen en las decisiones cotidianas.
9. **Revisa los valores después de crecer.** Las organizaciones más grandes derivan hacia el proceso y las herramientas. Mantén una conversación periódica, quizá dos veces al año, para preguntar si el equilibrio sigue sirviendo a los clientes.
10. **No uses el Manifiesto como arma.** Citar "individuos sobre procesos" para despachar la preocupación de un colega por la auditoría o la seguridad termina una conversación que debió empezar. Úsalo para abrir el debate, no para ganarlo.

## Preguntas para conversar con tu equipo

**¿Cuál de los cuatro valores favorece ya nuestro equipo en la práctica y cuál solo decimos favorecer?**

Empieza por enumerar decisiones recientes: una versión retrasada por trámites, una solicitud rechazada porque no estaba en el contrato, un plan mantenido cuando ya no tenía sentido. Asocia cada una con un valor. Los equipos suelen encontrar una brecha entre lo que dicen y lo que hacen, y esa brecha es el hallazgo útil. Quien facilite debe evitar culpar y preguntar qué presión produjo cada elección. Después, pregunta cuáles de esas presiones puede cambiar el equipo.

**¿Dónde nuestros procesos y herramientas ayudan a las personas a hablar entre sí y dónde se interponen?**

Pide a las personas que nombren un proceso que les ahorra esfuerzo y otro que se lo cuesta. El costoso suele ser un buen proceso aplicado con rigidez, como un flujo de tickets que exige cuatro aprobaciones para un cambio trivial. Busca los lugares donde la gente evita la herramienta y usa el chat o la conversación de pasillo, porque eso suele indicar un desajuste. Termina eligiendo un proceso que simplificar este mes.

**¿Qué documentación lamentaríamos perder y cuál podríamos borrar mañana?**

Esta pregunta pone a prueba el valor "software funcionando sobre documentación extensiva" sin llevarlo al extremo. Pregunta qué documentos han usado en el último mes. Suelen salir las guías operativas, los diagramas de arquitectura y las descripciones de servicio dirigidas al cliente. Los documentos que nadie menciona son candidatos a eliminarse o fusionarse. Recuerda al equipo que borrar es una decisión, así que asigna a alguien como responsable.

**¿Cómo participan nuestros clientes en la configuración de nuestros servicios y cómo sabemos que es suficiente?**

Reúne ejemplos de aportes de clientes que cambiaron una decisión. Si la lista es corta, pregunta por qué. Las causas suelen ser estructurales: un gestor de cuentas en medio, una revisión anual del SLA o un centro de servicios que registra las quejas pero no las traslada. Si puedes, pregunta directamente a los clientes qué cambiarían. La orientación para quien facilite es buscar una forma concreta de acortar el camino entre un cliente y el equipo.

**¿Qué haría falta para aprobar un cambio pequeño y de bajo riesgo en menos de una hora, y deberíamos hacerlo?**

Esta pregunta conecta el cuarto valor con el control de cambios (véase Tema 3.4 — Habilitación de Cambios). Pregunta qué frena hoy los cambios pequeños: una reunión semanal, un formulario manual de riesgo, una prueba que falta. Pregunta qué evidencia tranquilizaría al equipo, como pruebas automatizadas o una reversión rápida. No empujes hacia el "sí". El objetivo es descubrir qué cree el equipo que necesitaría, que es el comienzo de un plan.

**Si un regulador, un auditor o un cliente importante leyera el Manifiesto, ¿qué les preocuparía y tendrían razón?**

Algunas preocupaciones son legítimas. Los auditores quieren evidencias y los clientes quieren compromisos. Invita al equipo a tomarse en serio esas inquietudes y a preguntar qué evidencias y compromisos ligeros las satisfarían. Los equipos que pueden mostrar cómo el trabajo ágil produce un rastro de auditoría suelen ganar más libertad, no menos. Anota las inquietudes para la conversación de gobernanza del Tema 5.7 — Gobernanza, Riesgo y Cumplimiento.

## En la práctica: un ejemplo de ITIL ágil

Un minorista en línea de tamaño medio tiene un equipo de plataforma de ocho personas que construye y opera su servicio de pago. El equipo pasó hace poco de versiones trimestrales a semanales y ahora tiene un problema: el centro de servicios se queja de que los cambios llegan sin aviso, y el equipo de plataforma se queja de que la reunión de aprobación de cambios tarda una semana en aprobar cambios que están listos el lunes.

La líder del equipo dirige una sesión de una hora usando los cuatro valores como marco. Enumeran sucesos recientes en una pared. Una corrección de un código de descuento esperó nueve días para su aprobación. Un cambio en la base de datos se aprobó con rapidez y causó una caída. Una guía operativa para los fallos de pago resultó describir un sistema retirado el año anterior. El grupo sitúa cada suceso frente a un valor. La mayoría de los casos de demora quedan bajo "procesos y herramientas sobre individuos e interacciones", es decir, el proceso se ejecutó por sí mismo. La caída queda bajo "respuesta ante el cambio sobre seguir un plan", porque la reunión de aprobación trató todos los cambios por igual y no examinó con atención el arriesgado.

Acuerdan tres cambios. Primero, los cambios que coincidan con una lista corta de patrones de bajo riesgo, con pruebas automatizadas superadas y una reversión probada, se preaprobarán y se registrarán automáticamente. Segundo, un compañero y un representante de operaciones revisarán los cambios arriesgados en un día. Tercero, cada guía operativa tendrá un responsable con nombre y se comprobará cada vez que se use durante un incidente.

Dos meses después, la líder revisa el resultado con el centro de servicios. Los cambios preaprobados fluyen con rapidez y el centro de servicios ve ahora todos los cambios en un canal compartido. Queda un problema: dos de los patrones preaprobados se definieron de forma demasiado amplia y siguió un incidente menor. El equipo estrecha los patrones y mantiene el enfoque. También ven que el canal compartido no sustituye a hablar, así que la responsable del centro de servicios se incorpora a la planificación semanal del equipo de plataforma.

## Cuatro perspectivas

### Equipos de producto y entrega

Para los equipos de entrega, el Manifiesto es un recordatorio de que el software funcionando incluye la operación funcionando. Una funcionalidad que no puede monitorizarse, soportarse ni revertirse no está terminada. Usa los valores para defender el trabajo operativo que hace seguras las versiones e invita pronto al personal de operaciones a la planificación.

### Equipos de servicio y operaciones

El personal de operaciones suele sentir que el Manifiesto habla por los desarrolladores. Léelo de otra manera: los valores favorecen que las personas hablen, los artefactos probados y las respuestas rápidas al cambio, y todo eso conviene a una buena operación. Lleva las prácticas de ITIL a la mesa como experiencia acumulada sobre lo que sale mal y propón versiones más ligeras que mantengan el propósito.

### Liderazgo y gobernanza

Los líderes fijan las condiciones que permiten que los valores funcionen. Si cada versión necesita cinco firmas, un equipo no puede favorecer la respuesta ante el cambio por muchos carteles que cuelguen de la pared. Pregunta a tus equipos dónde tus propias reglas los frenan y está dispuesto a cambiar una regla cuando el propósito pueda cumplirse de otra manera.

### Clientes y usuarios

Los clientes se nombran en dos de los cuatro valores. Para ellos, el Manifiesto promete colaboración, no solo entrega. Espera que te pregunten qué necesitas, ver cambios que funcionan con frecuencia y poder cambiar de opinión. A cambio, el equipo necesita de ti comentarios y decisiones a tiempo.

## Fallos frecuentes

- **Usar "sobre" como "en lugar de".** Los equipos abandonan por completo la documentación, la planificación o los contratos y luego sufren. En su lugar, decide qué debe lograr cada uno y conserva la forma más ligera que lo logre.
- **Tratar los valores como licencia para saltarse la disciplina.** "Somos ágiles" se convierte en excusa para no probar, no registrar y no traspasar. En su lugar, vincula cada valor con una práctica concreta y comprueba que la práctica se cumple.
- **Recitar el Manifiesto sin contrastarlo.** Los eslóganes sustituyen al pensamiento. En su lugar, revisa sucesos reales frente a los valores a intervalos regulares.
- **Usarlo contra los colegas.** Citar un valor para despachar una preocupación de auditoría, seguridad u operaciones daña la confianza. En su lugar, pregunta qué protege la preocupación y cómo atenderla con ligereza.
- **Adoptar prácticas sin los valores.** Aparecen reuniones diarias y tableros, pero las decisiones siguen esperando cadenas de aprobación. En su lugar, pregunta qué decisiones deben acercarse a quienes hacen el trabajo.
- **Suponer que el Manifiesto responde preguntas operativas.** Se escribió sobre el desarrollo de software en 2001 y dice poco sobre operar servicios. En su lugar, combínalo con las prácticas de gestión de servicios y adapta ambos.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Comprensión compartida de los valores | Unas pocas personas han leído el Manifiesto | Algunos equipos lo comentan, con lecturas distintas | Los equipos comparten una lectura breve y escrita de los valores para su contexto | Los equipos contrastan las decisiones recientes con los valores en revisiones periódicas | Equipos, proveedores y clientes usan un vocabulario común de compromisos |
| Equilibrio entre proceso y personas | Los procesos se siguen o se ignoran según la persona | Algunos equipos simplifican procesos por su cuenta | Cada proceso tiene un responsable y una vía para solicitar cambios | La fricción de los procesos se mide, por ejemplo el tiempo de espera por cambio | Los procesos se ajustan entre equipos con base en evidencia compartida |
| Colaboración con el cliente | Los comentarios llegan en forma de queja | Algunos equipos se reúnen con los clientes con regularidad | Cada servicio tiene una forma definida de recoger la opinión del cliente | La opinión del cliente se registra y se vincula con los cambios realizados | Los clientes ayudan a fijar las prioridades entre servicios |
| Documentación y planes | Los documentos son escasos o están obsoletos | Los equipos conservan los documentos que les resultan útiles | Los documentos exigidos son pocos, tienen responsable y se revisan | Se observa el uso de los documentos y se eliminan los que no se usan | La documentación se genera o verifica como parte de la entrega |

## Lista de verificación

- [ ] Todas las personas del equipo han leído el Manifiesto y sus doce principios al menos una vez.
- [ ] El equipo sabe enunciar cada valor con sus propias palabras, con un ejemplo de su propio trabajo.
- [ ] Hemos enumerado qué procesos, documentos, contratos y planes conservamos y por qué.
- [ ] Cada proceso en uso tiene un responsable con nombre y una vía para proponer cambios.
- [ ] Las guías operativas y las descripciones de servicio tienen responsables y una fecha de revisión.
- [ ] Mantenemos una conversación periódica con los clientes de al menos un servicio.
- [ ] Hemos revisado al menos un incidente o una versión recientes frente a los cuatro valores.
- [ ] Las reglas fijadas por la dirección que frenan al equipo se han enumerado y comentado.
- [ ] Hemos anotado cómo mostraremos a auditores y reguladores lo que hacemos.

## Prompts de IA

**Propósito: convertir los cuatro valores en una lectura breve para tu propio equipo.**

```text
Estás ayudando a un equipo de [tamaño y tipo de equipo, p. ej. "ocho ingenieros que construyen y operan un servicio de pagos"] a escribir, en lenguaje sencillo, una lectura de los cuatro valores del Manifiesto Ágil para su propio contexto.

Estos son los cuatro valores tal como están escritos:
- Individuos e interacciones sobre procesos y herramientas
- Software funcionando sobre documentación extensiva
- Colaboración con el cliente sobre negociación contractual
- Respuesta ante el cambio sobre seguir un plan

Contexto sobre nuestro equipo y nuestro trabajo: [pega entre 3 y 5 frases sobre lo que construyes, lo que operas, quiénes son tus clientes y las reglas que debes cumplir, como reglas de auditoría o de seguridad].

Para cada valor, escribe dos o tres frases sobre lo que podría significar para nosotros y un ejemplo tomado únicamente del contexto anterior. Señala con claridad cualquier punto en el que estés suponiendo. Hazme primero hasta tres preguntas aclaratorias si el contexto es demasiado escaso. No inventes estadísticas ni cites fuentes. Enumera de lo que no estés seguro.
```

**Propósito: revisar un suceso reciente frente a los valores.**

```text
A continuación hay una breve descripción de un suceso reciente de nuestro equipo (un incidente, una versión o un cambio retrasado). Ayúdame a revisarlo frente a los cuatro valores del Manifiesto Ágil.

Suceso: [pega una descripción factual de lo ocurrido, en orden, sin culpar a nadie].

Para cada valor, indica si el suceso muestra al equipo inclinándose hacia el valor de la izquierda, hacia el elemento de la derecha o hacia ninguno, y explica tu razonamiento en dos frases. Después sugiere hasta tres preguntas que nuestro equipo podría comentar. Separa lo que puedes ver en el texto de lo que estás suponiendo y enumera de lo que no estés seguro.
```

**Propósito: prepararte para responder a la preocupación de un auditor sobre las formas de trabajo ágiles.**

```text
Necesito explicar a un auditor cómo mantiene nuestro equipo ágil registros adecuados. La preocupación del auditor es: [pega la preocupación, p. ej. "no hay evidencia de quién aprobó los cambios"].

Nuestra práctica actual es: [describe lo que haces ahora: herramientas, revisiones, aprobaciones, dónde se guardan los registros].

Enumera qué evidencia produce ya nuestra práctica actual, qué brechas podría notar el auditor y tres formas ligeras de cerrar cada brecha sin añadir un proceso manual pesado. No afirmes que alguna ley, norma o reglamento exige algo salvo que haya pegado su texto más arriba. Al final enumera tus suposiciones y de lo que no estés seguro.
```

**Propósito: diseñar una sesión de equipo de una hora sobre el Manifiesto.**

```text
Diseña una sesión facilitada de una hora para un equipo de [número] personas sobre el Manifiesto Ágil. El equipo trabaja en [servicios o productos] y su mayor frustración actual es [frustración].

Incluye: una apertura de cinco minutos, una actividad de 20 minutos en la que el equipo asocia sucesos reales recientes con los cuatro valores, una discusión de 20 minutos sobre dos o tres de las seis preguntas siguientes y un cierre de 10 minutos con una acción acordada.

Preguntas disponibles: [pega las preguntas que quieras usar de la sección "Preguntas para conversar con tu equipo"].

Da una agenda con tiempos, lo que dice quien facilita y a qué prestar atención. Mantenlo práctico y no supongas ninguna herramienta. Haz preguntas aclaratorias si falta información y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [agile-principles](../../../../skills/agile-principles/SKILL.md): úsala cuando quieras contrastar una práctica del equipo o una decisión de proceso con los principios del Manifiesto.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): úsala para dirigir una retrospectiva que revise sucesos recientes frente a los valores y lleve a un cambio real.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): úsala al iniciar un equipo o proyecto nuevo cuando quieras una lectura compartida de los valores desde el primer día.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): úsala cuando seas la persona que ayuda a un equipo a pasar de copiar rituales a comprender sus razones.

## Fuentes principales

- **Manifiesto para el Desarrollo Ágil de Software** (agilemanifesto.org): el texto primario. Léelo completo; lleva dos minutos.
- **Principios detrás del Manifiesto Ágil** (agilemanifesto.org): los doce principios, el mejor complemento de los valores.
- **Historia: el Manifiesto Ágil** (agilemanifesto.org): el breve relato de los propios autores sobre la reunión de Snowbird.
- **Desarrollo ágil de software** (Wikipedia): una visión amplia con historia, métodos, prácticas y críticas, útil como mapa para seguir leyendo.

## Referencias

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
