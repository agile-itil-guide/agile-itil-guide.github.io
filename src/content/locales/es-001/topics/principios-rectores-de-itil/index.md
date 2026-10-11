# Principios Rectores de ITIL

**Los siete principios rectores de ITIL son lo bastante breves para recordarlos y lo bastante amplios para aplicarlos a cualquier decisión de servicio, y se solapan tanto con los principios ágiles que un equipo puede usarlos como puente entre ambos.**

## Por qué importa

Cuando los equipos ágiles y los grupos de gestión de servicios discrepan, suelen discutir sobre prácticas: si un cambio necesita aprobación, si se requiere una revisión, si hace falta un documento. Las discusiones dan vueltas en círculo porque cada parte defiende su práctica sin declarar el principio que hay detrás. Los principios rectores de ITIL son útiles aquí porque se escribieron para aplicarse a cualquier práctica, y la mayoría de los profesionales ágiles los reconocerán.

Los principios también responden a una queja común sobre ITIL, la de que prescribe procesos pesados. Los propios principios de ITIL 4 incluyen "mantenlo simple y práctico" y "empieza donde estás". Un equipo que los cita puede decir con legitimidad que un proceso propuesto no está en sintonía con el marco que dice seguir. Al mismo tiempo, los principios piden algo a los equipos ágiles: "colabora y promueve la visibilidad" y "piensa y trabaja de manera holística" desafían a los equipos que optimizan su propio sprint a costa de quienes operan el resultado.

Este tema describe los siete principios, los compara con los principios ágiles del Tema 1.2 — Principios Ágiles y muestra cómo usarlos como ayuda para decidir. Los nombres de los principios proceden del [artículo de Wikipedia sobre ITIL](https://en.wikipedia.org/wiki/ITIL) y son coherentes en las fuentes de formación y de proveedores consultadas. Las explicaciones son propias de esta guía y no son citas de publicaciones de ITIL. Si necesitas la redacción del propietario, lee directamente las publicaciones de ITIL 4.

## Conceptos clave

### Los siete principios

Según Wikipedia, los principios rectores son:

1. Centrarse en el valor
2. Empezar donde estás
3. Avanzar de forma iterativa con retroalimentación
4. Colaborar y promover la visibilidad
5. Pensar y trabajar de manera holística
6. Mantenerlo simple y práctico
7. Optimizar y automatizar

Wikipedia los enumera en su sección sobre ITIL 5. Coinciden con los principios de ITIL 4 tal como los resumen los proveedores de formación y de software, y esta guía los trata como principios de ITIL 4 que el material de ITIL 5 de PeopleCert puede mantener. Comprueba las publicaciones actuales del propietario para el texto exacto y para ver si ITIL 5 los cambia (véase Tema 2.2 — ITIL).

### Qué pide cada principio

La tabla da una lectura sencilla de cada principio, escrita para esta guía, con la idea ágil más cercana del Tema 1.2 — Principios Ágiles.

| Principio | Qué te pide | Idea ágil más cercana |
|---|---|---|
| **Centrarse en el valor** | Vincular cada actividad al valor para los clientes, los usuarios o la organización y abandonar las actividades que no contribuyen | Principio ágil 1: satisfacer al cliente mediante la entrega temprana y continua de software valioso |
| **Empezar donde estás** | Mirar lo que existe antes de construir nada nuevo y reutilizar lo que ya funciona | Principio ágil 10: simplicidad, maximizar la cantidad de trabajo no realizado |
| **Avanzar de forma iterativa con retroalimentación** | Trabajar en pasos pequeños, aprender de cada uno y ajustar; no intentar planificarlo todo primero | Principios ágiles 3 y 12: entregar con frecuencia, y reflexionar y ajustar a intervalos regulares |
| **Colaborar y promover la visibilidad** | Trabajar a través de las fronteras, compartir la información abiertamente y hacer visible el trabajo | Principios ágiles 4 y 6: colaboración diaria y conversación cara a cara |
| **Pensar y trabajar de manera holística** | Ver el servicio como un sistema completo de personas, información, tecnología y socios, no como partes separadas | Ningún principio ágil único; lo más cercano es la idea lean de optimizar el todo (véase Tema 1.7 — Desarrollo de Software Lean) |
| **Mantenerlo simple y práctico** | Usar el mínimo número de pasos necesarios para llegar a un resultado y evitar el proceso por el proceso | De nuevo el principio ágil 10, y el principio 9 sobre el buen diseño |
| **Optimizar y automatizar** | Mejorar primero el trabajo y luego usar la tecnología para eliminar el esfuerzo rutinario | Principio ágil 9 y prácticas como la integración continua (véase Tema 1.6 — Programación Extrema) |

Los principios ágiles se numeran como en agilemanifesto.org. La correspondencia es juicio de esta guía; ninguna fuente afirma que exista una equivalencia oficial.

### Dónde difieren los dos conjuntos

El solapamiento es grande, pero los énfasis difieren de maneras útiles.

- **ITIL subraya el todo.** "Pensar y trabajar de manera holística" te pide tener en cuenta el servicio de extremo a extremo, incluidos proveedores y usuarios. Los principios del Manifiesto hablan sobre todo del equipo y del cliente y dicen poco sobre el sistema más amplio.
- **Lo ágil subraya el equipo y el ritmo.** Los principios ágiles piden personas motivadas, un ritmo sostenible y equipos autoorganizados. Los principios de ITIL no mencionan directamente las condiciones de trabajo de las personas, aunque la dimensión de "organizaciones y personas" las cubre (véase Tema 2.5 — Cuatro Dimensiones de la Gestión de Servicios).
- **ITIL subraya la visibilidad.** "Colaborar y promover la visibilidad" pide compartir abiertamente. Los equipos ágiles lo hacen con tableros y demostraciones, pero pueden dejar fuera a los grupos que dan soporte al servicio.
- **Lo ágil subraya la calidad técnica.** El principio ágil sobre la excelencia técnica no tiene un equivalente directo, aunque "optimizar y automatizar" está relacionado.

### Usar los principios como ayuda para decidir

Los principios rectores de ITIL están hechos para usarse. Un método sencillo es tomar una decisión, como añadir un paso de aprobación, y preguntar de cada principio si la opción lo apoya, entra en conflicto con él o es neutral. El resultado es una lista breve y honesta de compromisos. Los principios no son reglas y pueden tirar en direcciones opuestas. "Empieza donde estás" puede entrar en conflicto con "optimiza y automatiza" cuando la herramienta existente es mala, y "mantenlo simple" puede entrar en conflicto con "piensa de manera holística" cuando el sistema es complejo. La discusión entre principios es el valor.

### Principios y prácticas

Los principios guían la elección de las prácticas, y las prácticas son las formas de trabajar (véase Tema 2.3 — El Sistema de Valor del Servicio de ITIL). Una práctica que no puede explicarse con ningún principio es candidata a eliminarse. Un principio que nadie ve en el trabajo diario es un eslogan. Conviene hacer ambas comprobaciones.

### Límites

Los principios son amplios. Dos personas pueden invocar el mismo principio para respaldar decisiones opuestas. El artículo de Wikipedia no nombra críticas a los principios y esta guía no se inventa ninguna. El límite práctico es que los principios no te dicen qué hacer a continuación; te dicen cómo juzgar las opciones. Combínalos con evidencia de tus propios servicios.

## Buenas prácticas

1. **Pon los siete principios donde trabaja el equipo.** Muéstralos junto a los documentos de procesos o en la plantilla de propuestas. Los principios que no se ven no se usan.
2. **Contrasta las propuestas con ellos.** Para cualquier proceso o herramienta nuevos, escribe una línea por principio: apoya, entra en conflicto o es neutral. Comparte el resultado al pedir la aprobación.
3. **Céntrate en el valor preguntando "¿quién se beneficia?".** Para cada tarea, nombra a la persona o el grupo que se beneficia. Si no puedes nombrar a nadie, cuestiona la tarea.
4. **Empieza donde estás auditando lo que existe.** Antes de comprar una herramienta o diseñar un proceso, enumera lo que el equipo ya usa y si cubre la necesidad. Reutiliza y amplía antes de sustituir.
5. **Haz real la iteración.** Divide un cambio de proceso en un primer paso pequeño, fija una fecha para revisarlo y decide de antemano qué evidencia mirarás. Evita los lanzamientos de golpe.
6. **Haz visible el trabajo para quienes dependen de él.** Comparte tableros, planes de versiones y el estado de los incidentes con el personal de soporte y con los clientes. Acordad qué nivel de detalle necesita cada audiencia.
7. **Dibuja el servicio completo antes de cambiar una parte.** Esboza las personas, la información, la tecnología y los proveedores implicados y pregunta qué hace un cambio en una parte a las demás.
8. **Elimina pasos antes de automatizarlos.** Si un paso no añade valor, bórralo. Si lo añade, automatízalo. Automatizar un proceso que desperdicia hace más rápido el desperdicio.
9. **Resuelve abiertamente los conflictos entre principios.** Cuando dos principios tiran en direcciones distintas, dilo y anota la decisión y la razón. Así se construye un registro compartido de cómo piensa el equipo.
10. **Usa los principios para cuestionar afirmaciones.** Cuando alguien diga "ITIL lo exige" o "lo ágil dice", pregunta qué principio o práctica lo respalda y de qué protege.
11. **Vincula los principios a medidas.** Elige unas pocas medidas que muestren si un principio funciona, como el tiempo de restablecimiento del servicio para "centrarse en el valor" o el número de pasos manuales eliminados para "optimizar y automatizar". Evita inventar objetivos precisos.
12. **Revisa los principios en las retrospectivas.** Una vez por trimestre, pregunta qué principio siguió mejor el equipo y cuál descuidó, con un ejemplo de cada uno.

## Preguntas para conversar con tu equipo

**¿Cuál de los siete principios sigue mejor nuestro equipo y cuál descuidamos?**

Da a las personas la lista y pídeles que elijan uno de cada tipo, con un ejemplo del último mes. Compara. Las diferencias muestran cómo ve la gente el trabajo. Los principios descuidados suelen apuntar a los puntos ciegos del equipo: por ejemplo, un equipo de entrega puede descuidar la visibilidad y un equipo de operaciones puede descuidar la iteración. Quien facilite debe terminar eligiendo un principio que practique el equipo.

**¿Dónde añade nuestro proceso pasos que nadie puede vincular al valor?**

Recorre un proceso y pregunta en cada paso "¿quién se beneficia?". Los pasos sin respuesta son candidatos a eliminarse. Prepárate para explicaciones que impliquen auditoría o seguridad, que son legítimas y deben anotarse. Comprueba cada paso dudoso con la persona que se beneficia antes de borrarlo.

**¿Cuándo fue la última vez que empezamos algo nuevo que duplicaba lo que ya teníamos?**

Reúne ejemplos: una herramienta comprada cuando había otra disponible, una plantilla que duplicaba una existente. Pregunta qué hizo más fácil empezar de nuevo que usar lo que existía. Las causas suelen ser una mala capacidad de descubrimiento o de titularidad. Elige un lugar donde mejorar el descubrimiento, como una lista compartida de herramientas.

**¿Cuál es el paso más pequeño que podríamos dar en nuestro próximo cambio y cómo decidiremos si continuar?**

Elige un cambio próximo real. Pide la versión más pequeña que nos enseñaría algo y qué contaría como señal para detenerse o continuar. Esta pregunta pone a prueba la iteración y la retroalimentación. Quien facilite puede preguntar después quién mirará la evidencia y cuándo.

**¿Quién depende de nuestro trabajo y no puede verlo?**

Enumera a las personas que dependen de lo que hace el equipo: el centro de servicios, un equipo socio, los clientes. Pregunta cómo se entera cada una de lo que está cambiando. Las lagunas típicas son versiones silenciosas y decisiones sin documentar. Acordad un cambio para hacer visible el trabajo a un grupo.

**¿Dónde han tirado en direcciones opuestas dos de estos principios y cómo decidimos?**

Pide una decisión reciente en la que la simplicidad chocó con una visión del sistema completo, o la reutilización chocó con la automatización. Discute cómo se resolvió y si el razonamiento está registrado. El objetivo es hacer explícitos los compromisos y notar quién decidió. Acordad una manera sencilla de registrar el siguiente.

## En la práctica: un ejemplo de ITIL ágil

El departamento de TI de un hospital regional quiere introducir una herramienta nueva para seguir las solicitudes de acceso. El equipo de seguridad ha redactado un proceso de aprobación de siete pasos con cinco formularios. El equipo de sistemas clínicos, que usa un ritmo de entrega de dos semanas, se queja de que el proceso añadiría semanas a la incorporación del personal nuevo, y el equipo de seguridad responde que la auditoría exige los pasos.

El jefe de TI convoca una sesión de una hora y pone los siete principios en la pared. Para cada uno, el grupo dice si el proceso propuesto lo apoya. Centrarse en el valor: solo tres de los siete pasos pueden vincularse a un riesgo. Empezar donde estás: el hospital ya tiene un sistema de identidad que contiene la mayoría de los datos necesarios. Avanzar de forma iterativa: el borrador no prevé ninguna revisión. Colaborar y promover la visibilidad: el solicitante no puede ver en qué punto está su solicitud. Pensar de manera holística: el proceso ignora a los contratistas, que llegan a través de un proveedor. Mantenerlo simple: cinco formularios. Optimizar y automatizar: el borrador no automatiza nada.

El grupo acuerda pilotar un proceso de tres pasos para los roles más comunes, usando datos del sistema de identidad, con un estado visible para los solicitantes y una revisión a los dos meses. El equipo de seguridad conserva sus pasos adicionales para los roles con acceso a datos de pacientes. A los dos meses, las solicitudes comunes tardan dos días en lugar de nueve, y la auditoría acepta el camino más corto para los roles del piloto. Entre las dificultades que quedan están los contratistas, cuyas solicitudes siguen llegando por correo a través del proveedor, y una disputa sobre si un cuarto rol pertenece al piloto. El grupo anota ambas cosas como asuntos abiertos y pide al proveedor que se una a la siguiente revisión.

## Cuatro perspectivas

### Equipos de producto y entrega

Usa los principios para explicar las razones de tus decisiones a operaciones y a gobernanza. Cuando pidas un proceso más ligero, señala el principio al que sirve. Al diseñar una versión, aplica los principios de visibilidad y de visión holística: ¿quién necesita saberlo y qué más afectará esto?

### Equipos de servicio y operaciones

Los equipos de operaciones pueden usar los principios para defender las buenas prácticas y cuestionar las heredadas. Pregunta de cualquier paso antiguo a qué principio sirve. Invita a los equipos de entrega a revisar tus procesos con la misma lista y acordad los cambios juntos.

### Liderazgo y gobernanza

Los líderes pueden adoptar los principios como lenguaje común para las decisiones sobre procesos y herramientas. Pide el resumen principio por principio al aprobar cambios. Da ejemplo tú mismo haciendo visibles tus propias decisiones y empezando poco a poco.

### Clientes y usuarios

Los clientes y los usuarios se benefician cuando se siguen los principios: los servicios se centran en su valor, cambian en pasos pequeños y muestran en qué punto están las solicitudes. Pregunta a los proveedores cómo deciden qué hacer y espera una respuesta en términos de valor y de progreso visible.

## Fallos frecuentes

- **Recitar los principios sin usarlos.** Los principios se quedan en una diapositiva. En su lugar, aplícalos a decisiones reales y anota el resultado.
- **Usar un principio para anular al resto.** "Mantenlo simple" se usa para despachar un riesgo real. En su lugar, pondera los siete y anota los compromisos.
- **Tratar "empieza donde estás" como "no cambies nada".** Se defiende una mala práctica existente. En su lugar, evalúa lo que existe, conserva lo que funciona y cambia lo que no.
- **Automatizar antes de simplificar.** Se acelera un proceso que desperdicia. En su lugar, elimina primero los pasos innecesarios.
- **Visibilidad como vigilancia.** Los paneles se usan para juzgar a las personas. En su lugar, haz visible el trabajo para que las personas puedan ayudarse y planificar.
- **Ignorar el sistema completo.** Un equipo mejora su propia parte y traslada los problemas a otros. En su lugar, esboza el servicio de extremo a extremo antes de cambiar una parte.
- **Citar un marco como argumento de autoridad.** "ITIL dice" termina la conversación. En su lugar, pregunta qué principio o práctica se quiere decir y de qué protege.
- **Fiarse de los resúmenes secundarios.** La redacción de un principio procede de una diapositiva que la cambió. En su lugar, consulta las publicaciones del propietario cuando importe la redacción.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Conocimiento | Pocas personas conocen los principios | Algunos equipos los conocen y los citan | Todos los equipos conocen una lista compartida y una lectura sencilla | Se revisa el uso de los principios en las decisiones | Equipos, proveedores y clientes comparten el mismo lenguaje de principios |
| Uso en las decisiones | Las decisiones se apoyan en la costumbre o la autoridad | Algunas propuestas se contrastan con los principios | Las propuestas incluyen una breve comprobación de principios | Las comprobaciones de principios se comparan con los resultados | Los principios dan forma de manera rutinaria a las decisiones en toda la organización |
| Iteración y retroalimentación | Los cambios son grandes y rara vez se revisan | Algunos cambios empiezan en pequeño | Los cambios siguen un paso pequeño con una revisión planificada | Se recoge evidencia de las revisiones y se actúa sobre ella | Los bucles de retroalimentación funcionan entre equipos y con los clientes |
| Visibilidad | El trabajo solo es visible para su equipo | Algunos equipos comparten tableros o planes | El trabajo que afecta a otros se comparte con ellos | Las necesidades de visibilidad se comprueban con cada audiencia | El trabajo y las decisiones son visibles entre equipos, proveedores y clientes |

## Lista de verificación

- [ ] Los siete principios están a la vista donde trabaja el equipo.
- [ ] Cada miembro del equipo puede nombrarlos o encontrarlos rápido.
- [ ] Las propuestas de procesos o herramientas nuevos incluyen una breve comprobación frente a los principios.
- [ ] Enumeramos lo que existe antes de empezar algo nuevo.
- [ ] Los cambios empiezan con un paso pequeño y una revisión planificada.
- [ ] El trabajo que afecta a otros equipos o a los clientes se les hace visible.
- [ ] Esbozamos el servicio completo antes de cambiar una parte.
- [ ] Simplificamos antes de automatizar.
- [ ] Los compromisos entre principios se anotan.
- [ ] Hemos comprobado la redacción exacta de los principios en la publicación actual del propietario.

## Prompts de IA

**Propósito: contrastar un proceso propuesto con los siete principios rectores.**

```text
Ayúdame a contrastar un proceso propuesto con los siete principios rectores de ITIL: centrarse en el valor; empezar donde estás; avanzar de forma iterativa con retroalimentación; colaborar y promover la visibilidad; pensar y trabajar de manera holística; mantenerlo simple y práctico; optimizar y automatizar.

El proceso propuesto (pasos, roles, formularios, herramientas): [pega].
Lo que pretende lograr: [describe].
Lo que ya existe y podría sustituir o en lo que podría apoyarse: [describe, o escribe "desconocido"].

Para cada principio, di si la propuesta lo apoya, entra en conflicto con él o es neutral, con una frase de razonamiento que use solo el texto que te di. Después enumera los principales compromisos y tres preguntas que deberíamos responder antes de aprobarlo. No afirmes que ninguna norma exige un paso salvo que haya pegado su texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: comparar los principios ágiles y los de ITIL para una decisión.**

```text
Estamos decidiendo si [describe la decisión, p. ej. "exigir una revisión por pares para cada cambio"].

Principios ágiles que quiero considerar (pega los que consideres relevantes, de agilemanifesto.org): [pega].
Principios rectores de ITIL que quiero considerar: [pega los que consideres relevantes].
Nuestro contexto: [describe el equipo, el servicio y cualquier regla que debamos cumplir].

Construye una tabla que muestre, para cada principio pegado, qué opción apoya y por qué, usando solo mi texto. Identifica dónde coinciden los principios y dónde entran en conflicto. Sugiere un pequeño experimento para resolver cualquier conflicto y qué evidencia mostraría si funcionó. Señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: encontrar pasos de un proceso que nadie puede vincular al valor.**

```text
Este es un proceso, paso a paso: [pega los pasos, quién hace cada uno y qué formularios o aprobaciones intervienen].

Para cada paso, pregunta: quién se beneficia, qué riesgo aborda y qué pasaría si se eliminara. Usa solo el texto que te di. Si la respuesta es desconocida, escribe "desconocido" y dime a quién debería preguntar. Después agrupa los pasos en: claramente valiosos, poco claros y candidatos a eliminarse o automatizarse. No supongas que se aplica ninguna regla o norma salvo que haya pegado su texto: [pega el texto de la regla, o escribe "ninguna conocida"]. Enumera de lo que no estés seguro.
```

**Propósito: planificar una retrospectiva en torno a los principios rectores.**

```text
Planifica una retrospectiva de 45 minutos para un equipo de [número] personas usando como marco los siete principios rectores de ITIL.

El periodo que revisamos: [periodo]. Qué pasó, en unas pocas frases: [describe].

Da una agenda con tiempos en la que cada persona elija un principio que seguimos bien y otro que descuidamos con un ejemplo, agrupe las respuestas y termine con exactamente un cambio acordado con un responsable y una fecha. Añade tres preguntas que pueda usar quien facilite. Mantenlo libre de cualquier herramienta concreta. Hazme primero preguntas aclaratorias si falta información y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [agile-principles](../../../../skills/agile-principles/SKILL.md): úsala para comparar una práctica con los principios ágiles junto a los de ITIL.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): úsala para dirigir una retrospectiva que revise al equipo frente a los principios.
- [kaizen](../../../../skills/kaizen/SKILL.md): úsala para planificar mejoras pequeñas e iterativas tras una revisión de principios.
- [decision-records](../../../../skills/decision-records/SKILL.md): úsala para registrar las decisiones y los compromisos entre principios que llevaron a ellas.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): úsala para analizar un proceso en busca de pasos que no añaden valor.

## Fuentes principales

- **ITIL** (Wikipedia): enumera los siete principios rectores y la historia del marco.
- **ITIL 4 Foundation** (PeopleCert): la página del propietario que nombra los principios rectores entre los temas estudiados.
- **Principios tras el Manifiesto Ágil** (agilemanifesto.org): la contrapartida ágil, lo bastante breve para leerla junto a los principios de ITIL.
- **ITIL certifications** (PeopleCert): el catálogo actual del propietario, útil para encontrar las publicaciones que dan el texto exacto.

## Referencias

1. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
2. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
3. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
4. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
