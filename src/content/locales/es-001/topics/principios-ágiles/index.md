# Principios Ágiles

**Los doce principios detrás del Manifiesto Ágil convierten cuatro declaraciones de valor en hábitos que se pueden comprobar, y cada uno puede leerse como una pregunta que se hace tanto a un servicio en producción como a un proyecto de software.**

## Por qué importa

Los cuatro valores del Manifiesto indican a un equipo hacia dónde inclinarse (véase Tema 1.1 — Manifiesto Ágil). Los doce principios dicen cómo se ve esa inclinación en el trabajo diario: con qué frecuencia entregar, cómo tratar los requisitos cambiantes, quién habla con quién, qué cuenta como progreso y cómo sigue aprendiendo un equipo. Son lo bastante breves para memorizarlos y lo bastante concretos para contrastarlos con lo que hizo el equipo la semana pasada.

Para un equipo que opera servicios, los principios son útiles porque atraviesan la división habitual entre construir y operar. Varios de ellos, como el ritmo constante, la atención a la calidad técnica y la reflexión periódica, describen lo que mantiene sano un servicio durante años, no solo lo que saca una funcionalidad por la puerta. Otros principios chocan con hábitos nacidos en torno a la gestión de servicios de TI (ITSM), como tratar cada cambio como un riesgo que hay que controlar antes de que ocurra. Leer ambos lado a lado muestra dónde la tensión es real y dónde procede de supuestos antiguos.

Los principios se escribieron en 2001 sobre el desarrollo de software, así que no mencionan incidentes, niveles de servicio ni turnos de guardia. Es un vacío que se llena interpretando, y esa interpretación es el trabajo de este tema. Trata las lecturas que siguen como propuestas que contrastar en tu propio contexto, no como opiniones de los autores.

## Conceptos clave

### De dónde vienen los principios

Los principios se publican en [agilemanifesto.org](https://agilemanifesto.org/principles.html) con el título "Principios tras el Manifiesto Ágil", introducidos por las palabras "Seguimos estos principios". Acompañan al Manifiesto escrito por el grupo que se reunió en Snowbird, Utah, en febrero de 2001. El [artículo de Wikipedia sobre el desarrollo ágil de software](https://en.wikipedia.org/wiki/Agile_software_development) los enumera como los doce principios detrás del Manifiesto.

Solo los cuatro valores llevan las firmas del Manifiesto. Los principios son la elaboración que hizo el grupo de esos valores, y son lo que la mayoría de los equipos cita cuando quiere comprobar una práctica. El texto de cada principio está disponible en la fuente; este tema resume cada uno con palabras propias y cita solo frases cortas.

### Los doce principios de un vistazo

La tabla agrupa los principios por tema y da una reformulación sencilla de cada uno. Los números siguen el orden de agilemanifesto.org.

| N.º | En breve | Qué puede significar para un equipo que opera servicios |
|---|---|---|
| 1 | Satisfacer al cliente mediante la entrega temprana y continua de valor | Publica mejoras útiles de un servicio en pasos pequeños en lugar de guardarlas para un gran lanzamiento. Juzga el éxito por lo que ganan los usuarios, no por lo que decía el plan. |
| 2 | Aceptar con agrado los requisitos cambiantes, incluso tarde | Trata un cambio en lo que necesita el cliente como información, no como una ofensa al plan. Haz tu proceso de cambios lo bastante rápido para que acoger un cambio sea posible. |
| 3 | Entregar software funcionando con frecuencia, prefiriendo el plazo más corto | Mantén corto el intervalo entre versiones, de días a unas pocas semanas. Las versiones pequeñas conllevan menos riesgo cada una y son más fáciles de revertir. |
| 4 | Los responsables del negocio y los desarrolladores trabajan juntos a diario | Pon a quienes entienden la necesidad del negocio en las mismas conversaciones que quienes construyen y operan el servicio, cada día, no en revisiones trimestrales. |
| 5 | Construir en torno a personas motivadas, darles apoyo y confiar en ellas | Da al equipo el acceso, las herramientas y la autoridad para resolver problemas sin una cadena de permisos. La confianza debe ir acompañada de responsabilidades claras. |
| 6 | La conversación cara a cara es la mejor manera de transmitir información | Cuando un servicio falla, habla. Escribe el resultado después. Usa vídeo o una llamada compartida si las personas no están en el mismo lugar. |
| 7 | El software funcionando es la principal medida de progreso | Mide lo que se ejecuta y funciona para los usuarios, como una funcionalidad en uso o un incidente que ya no se repite, no los documentos producidos ni las tareas cerradas. |
| 8 | Desarrollo sostenible: un ritmo constante, indefinidamente | Protege a las personas de los heroísmos permanentes. Un turno de guardia que depende de unas pocas personas agotadas es un riesgo para el servicio. |
| 9 | Atención continua a la excelencia técnica y al buen diseño | Corrige las causas de los fallos repetidos y mantén la plataforma mantenible. El trabajo de calidad de hoy es lo que permite cambiar con rapidez después. |
| 10 | Simplicidad: maximizar el trabajo no realizado | Retira los servicios, pasos, aprobaciones y documentos que ya no cumplen un propósito. Todo lo que conservas hay que operarlo, actualizarlo y explicarlo. |
| 11 | Las mejores arquitecturas surgen de equipos autoorganizados | Deja que quienes están más cerca del trabajo decidan cómo hacerlo dentro de límites claros. Da barreras de protección, no instrucciones detalladas. |
| 12 | Reflexionar a intervalos regulares y ajustar | Realiza revisiones periódicas de cómo trabaja el equipo, también después de los incidentes, y haz al menos un cambio real de cada una. |

### Cuatro temas

Los principios se agrupan en cuatro conjuntos que resultan útiles al planificar una conversación.

- **Valor y cambio (1, 2, 3):** entregar pronto y a menudo, y tratar el cambio como algo normal. Estos principios son los que más chocan con un control de cambios pesado.
- **Personas y comunicación (4, 5, 6):** colaboración diaria, confianza y conversación directa. Estos principios importan sobre todo durante los incidentes y los traspasos.
- **Calidad y sostenibilidad (7, 8, 9, 10):** resultados que funcionan como medida de progreso, un ritmo que las personas puedan mantener, calidad técnica y simplicidad. Estos principios protegen un servicio durante años.
- **Aprendizaje y autoorganización (11, 12):** equipos que deciden cómo trabajar y mejoran su forma de trabajar. Estos principios se conectan con la mejora continua (véase Tema 3.15 — Mejora Continua).

### Principios y prácticas no son lo mismo

Un principio indica una dirección. Una práctica es una manera de seguirlo. Scrum, Kanban y la Programación Extrema son conjuntos de prácticas que, según sus usuarios, siguen los principios (véase Tema 1.4 — Pronóstico de Entrega y Métricas de Planificación, Tema 1.5 — Kanban y Tema 1.6 — Programación Extrema). Un equipo puede seguir una práctica y romper el principio que hay detrás. Una reunión diaria de pie que se convierte en un informe de estado para un jefe conserva el ritual y pierde el sentido de los principios 4 y 5.

### Dónde los principios callan o se discuten

Los principios no dicen nada sobre seguridad, auditoría, regulación ni el coste de una caída. No dicen quién está de guardia a las tres de la madrugada. Un equipo de servicio debe aportar ese conocimiento desde ITSM y desde su propio contexto. Los críticos señalan también que el principio 6 puede ser difícil de cumplir cuando los equipos están repartidos en distintas zonas horarias, y que "el software funcionando como principal medida" puede leerse como una forma de ignorar la documentación. El artículo de Wikipedia sobre el desarrollo ágil de software recoge críticas de este tipo y señala que la evidencia de los beneficios de los métodos ágiles es limitada. Contrasta los principios con tus propios resultados.

## Buenas prácticas

1. **Usa los principios como lista de revisión.** Elige dos o tres principios cada mes y pregunta, ante una versión, un incidente o un proyecto recientes, si el comportamiento del equipo coincidió. Usa sucesos reales, no una discusión general. El valor está en las brechas que encuentres.
2. **Acorta el intervalo entre versiones antes de automatizar.** El principio 3 prefiere el plazo más corto. Pregunta qué te impide publicar cada semana en lugar de cada mes, enumera los obstáculos y elimínalos por orden. La automatización apoyará entonces un ritmo que ya tienes.
3. **Crea una vía para los cambios tardíos.** El principio 2 pide acoger el cambio, algo que solo funciona si existe una manera rápida y segura de aceptarlo. Define una vía ligera para los cambios de bajo riesgo y reserva una revisión más completa para los arriesgados (véase Tema 3.4 — Habilitación de Cambios).
4. **Reúne a personas de negocio y técnicas cada día.** El principio 4 pide trabajar juntos a diario. En un equipo de servicio esto puede significar un responsable del servicio que se une a la reunión diaria, o un representante de producto que se sienta con el centro de servicios una vez por semana.
5. **Equilibra la confianza con la responsabilidad.** El principio 5 pide confiar en las personas motivadas. Indica con claridad qué posee cada equipo, qué puede decidir por sí solo y qué debe escalar. La confianza crece cuando las decisiones y sus resultados son visibles.
6. **Habla primero, registra después.** Durante un incidente, reúne a las personas adecuadas en una sola conversación, en persona o en una llamada, y haz que alguien anote las decisiones y los tiempos a medida que ocurren. Eso sirve al principio 6 y deja un registro para una revisión posterior (véase Tema 3.2 — Gestión de Incidentes).
7. **Cuenta resultados, no actividad.** El principio 7 hace del software funcionando la medida del progreso. Para un servicio, elige medidas como el tiempo para restaurar el servicio, cuántos usuarios usan una funcionalidad nueva y con qué frecuencia se repite un fallo. Evita medidas que premien cerrar tickets deprisa sin arreglar nada (véase Tema 5.6 — Métricas y Medición).
8. **Protege el ritmo.** El principio 8 pide un ritmo que el equipo podría mantener para siempre. Revisa la carga de guardias, las horas extra y el número de interrupciones urgentes, y trata una tendencia al alza como un riesgo para el servicio, no como un fallo personal.
9. **Salda la deuda técnica según un calendario.** El principio 9 vincula la calidad con la agilidad. Reserva una parte visible de cada ciclo para reparaciones, actualizaciones y pruebas, y conéctala con los registros de problemas para que el trabajo se base en evidencia (véase Tema 3.3 — Gestión de Problemas).
10. **Elimina cosas.** El principio 10 valora el trabajo no realizado. Una vez por trimestre, enumera servicios, informes, formularios y pasos de aprobación, y retira los que nadie usa o que ya no reducen el riesgo.
11. **Da a los equipos barreras de protección, no guiones.** El principio 11 sostiene que los buenos diseños surgen de equipos autoorganizados. Fija los límites, como las reglas de seguridad, los presupuestos y los niveles de servicio, y deja que el equipo elija cómo cumplirlos.
12. **Termina cada reflexión con un cambio.** El principio 12 pide al equipo reflexionar y luego ajustar. Tras cada retrospectiva o revisión posterior a un incidente, acuerda un cambio, nombra a un responsable y compruébalo en la siguiente revisión.

## Preguntas para conversar con tu equipo

**¿Cuál de los doce principios seguimos mejor hoy y cuál seguimos menos?**

Da a cada persona la lista y pídele que marque un principio que cree que el equipo sigue bien y otro que sigue mal, y luego comparad. El desacuerdo es útil porque muestra dónde las personas ven el trabajo de forma distinta. Pide un ejemplo reciente detrás de cada marca. Quien facilite debe mantener la charla en los hechos y lejos del carácter de las personas. Termina eligiendo un principio en el que trabajar como equipo.

**¿Cuánto tardamos en poner una mejora pequeña y útil delante de nuestros usuarios y qué la retrasa?**

Esta pregunta pone a prueba los principios 1 y 3. Sigue un cambio pequeño reciente desde la solicitud hasta su publicación, anotando cada espera. Las respuestas típicas incluyen reuniones de aprobación, pruebas manuales y ventanas de publicación. Algunas de esas esperas protegen de un riesgo real, así que pregunta qué protege cada una. Después, elige una espera que acortar.

**¿Cuándo nos perjudicó un cambio tardío en lo que quería un cliente y qué nos habría permitido aceptarlo?**

Pide un caso real y evita las generalidades. A menudo la gente menciona cláusulas del contrato, un alcance fijo o una versión que ya estaba congelada. Busca el punto en el que decir que sí habría costado poco y pregunta qué lo habría hecho posible. Esta pregunta conecta el principio 2 con la forma en que el equipo planifica.

**¿Quién del negocio habla cada día con quienes operan y construyen nuestros servicios y quién debería hacerlo?**

Dibuja el mapa de las personas implicadas en un servicio: el responsable, los usuarios, el personal de soporte, los constructores. Marca con qué frecuencia habla cada pareja. Las brechas suelen aparecer entre el personal de soporte y los constructores, o entre los usuarios y cualquiera con autoridad para decidir. Quien facilite puede preguntar qué brecha ha causado más problemas en los últimos seis meses y proponer un contacto pequeño y regular para cerrarla.

**¿Qué haría falta para que mantengamos este ritmo otros cinco años?**

Esta pregunta pone a prueba el principio 8. Pregunta por la carga de guardias, el trabajo en fines de semana y cómo se siente el equipo ante la idea de tomar vacaciones. Atiende a las respuestas que tratan el heroísmo como algo normal. Pide datos, como cuántas llamadas fuera de horario produjo el último turno, y mantén la discusión en el sistema, no en las personas. Después, elige un cambio que reduzca la carga.

**¿Qué estamos haciendo que podríamos dejar de hacer sin perjudicar a un cliente?**

Esta pregunta aplica el principio 10. Invita a las personas a nombrar informes que nadie lee, reuniones que se repiten entre sí y aprobaciones que nunca rechazan nada. Pregunta quién lo notaría si se eliminara cada una. Las respuestas necesitan comprobarse antes de actuar, así que encarga a alguien averiguarlo. Los equipos suelen descubrir aquí mejoras rápidas, y el ejercicio crea el hábito de cuestionar las reglas antiguas.

## En la práctica: un ejemplo de ITIL ágil

El departamento de TI de un hospital regional da soporte a unas cuarenta aplicaciones clínicas y administrativas con un centro de servicios de seis personas y un pequeño equipo de desarrolladores que mantienen herramientas internas. El personal clínico se queja de que las correcciones de la herramienta de reserva de citas tardan meses, y los desarrolladores dicen que la mayor parte de ese tiempo se va esperando al comité de cambios mensual y a un fin de semana tranquilo para desplegar.

El jefe del departamento dirige un taller de media jornada usando los doce principios como lista de verificación. El grupo examina los últimos seis cambios de la herramienta de reservas. Cinco eran correcciones pequeñas y cada una esperó una media de cinco semanas al comité de cambios. El grupo ve que los principios 2 y 3 no se siguen en la práctica, y que el principio 4 también es débil porque el responsable clínico de la herramienta de reservas solo ve los cambios después de construidos.

El departamento acuerda una prueba. Las correcciones que afecten a una sola pantalla, tengan pruebas automatizadas superadas y puedan revertirse en minutos se tratarán como cambios estándar y se aprobarán por adelantado, con aviso automático al responsable clínico. Una reunión semanal de diez minutos entre el responsable clínico, un desarrollador y un analista del centro de servicios elegirá qué corregir a continuación. El equipo añade una revisión mensual de cómo funcionan los tipos de cambio, lo que sirve al principio 12.

Tres meses después, las correcciones pequeñas llegan a los usuarios en una semana aproximadamente. El centro de servicios informa de menos llamadas repetidas sobre errores conocidos. Queda una dificultad: dos de las reuniones semanales se saltaron cuando el responsable clínico estaba en planta, y una decisión que necesitaba su aprobación esperó una semana. El departamento acuerda nombrar a un suplente. También descubren que parte del personal leía "confía en el equipo" como permiso para saltarse el paso de aviso, así que hacen el aviso automático en lugar de depender de que alguien lo envíe.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega pueden usar los principios como prueba de su propio trabajo. Pregunta si una funcionalidad es lo bastante pequeña para publicarse pronto, si puede monitorizarse y revertirse y si el personal de soporte la conoce. Los principios 3, 7 y 9 son los que más a menudo deciden si una versión es un regalo o una carga para quienes deben operarla.

### Equipos de servicio y operaciones

Los equipos de operaciones reconocerán varios principios como viejas verdades: hablar entre sí durante un incidente, mantener un ritmo sostenible y mantener las cosas simples. Úsalos para defender tiempo para corregir problemas recurrentes, turnos de guardia con los que se pueda vivir y participación temprana en el diseño. Está preparado para explicar qué controles de ITSM existen por buenas razones, de modo que la conversación trate del propósito y no de eslóganes.

### Liderazgo y gobernanza

Los líderes determinan hasta dónde se pueden seguir los principios. Acoger el cambio significa aceptar que los planes se mueven, y confiar en los equipos significa aceptar que no aprobarás todas las decisiones. Pregunta qué evidencia necesitas para sentirte cómodo con esa confianza, como informes de niveles de servicio, rastros de auditoría o revisiones de incidentes, y asegúrate de que el equipo pueda producirla sin mucho trabajo manual.

### Clientes y usuarios

Para los clientes, los principios prometen cambios frecuentes y útiles y voz sobre lo que viene después. También piden algo a cambio: contacto diario o al menos regular, decisiones rápidas y disposición a probar versiones pequeñas. Los clientes que solo aparecen al principio y al final de un proyecto recibirán la forma más lenta de los beneficios.

## Fallos frecuentes

- **Tratar los principios como un reglamento.** Los equipos discuten la redacción y pierden la intención. En su lugar, usa un principio para iniciar una conversación sobre un suceso real y decidir qué cambiar.
- **Leer "acoger el cambio" como "aceptar cualquier cosa".** Sin límites, cada solicitud desestabiliza el servicio. En su lugar, acoge el cambio por una vía definida que compruebe con rapidez el riesgo, el coste y el valor.
- **Publicar a menudo sin calidad.** Versiones frecuentes con pruebas débiles producen caídas frecuentes. En su lugar, trata el principio 9 como condición del principio 3 e invierte en pruebas y reversión antes de acelerar.
- **Confundir un ritmo constante con un ritmo lento.** Un equipo que usa "sostenible" para evitar el trabajo duro pierde confianza. En su lugar, acuerda cómo es un ritmo estable y ambicioso y mídelo durante meses.
- **Sustituir la conversación cara a cara por una herramienta.** Los canales de chat y los tickets se llenan de detalles que nadie lee. En su lugar, mantén una conversación cuando un asunto sea urgente o poco claro y registra las decisiones después.
- **Medir el progreso por la actividad.** Contar tickets cerrados o versiones entregadas premia el movimiento. En su lugar, sigue resultados que los usuarios puedan ver, como el servicio restaurado, las funcionalidades adoptadas y menos incidentes repetidos.
- **Celebrar retrospectivas que no cambian nada.** El equipo habla y el siguiente ciclo es igual. En su lugar, acuerda un cambio en cada retrospectiva y compruébalo primero en la siguiente.
- **Ignorar el silencio de los principios sobre el riesgo.** Los equipos omiten la seguridad y el cumplimiento porque los principios no los mencionan. En su lugar, añádelos como restricciones explícitas y discute cómo cumplirlas en pasos pequeños.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Ritmo de entrega (principios 1–3) | Las versiones son poco frecuentes y grandes | Algunos equipos publican en pasos pequeños | Los equipos comparten un ritmo corto de versiones y una vía para los cambios tardíos | El intervalo entre versiones y el plazo de entrega se siguen y se revisan | Los ritmos de versiones se coordinan entre servicios y proveedores |
| Colaboración (principios 4–6) | El personal de negocio y el técnico se reúnen en los hitos | Algunos equipos se reúnen a diario con representantes del negocio | Cada servicio tiene un responsable con nombre y contacto regular con sus usuarios | Las brechas de colaboración se detectan en las revisiones y se corrigen | Clientes y proveedores participan en la planificación y en las revisiones de incidentes |
| Sostenibilidad y calidad (principios 7–10) | La presión se gestiona con horas extra; se toleran los problemas de calidad | Algunos equipos siguen la carga de guardias y la deuda técnica | El tiempo para reparaciones y un turno justo se integran en la planificación | Los resultados, la carga y los fallos recurrentes se miden y se actúa sobre ellos | La simplificación es rutinaria en toda la organización |
| Aprendizaje y autoorganización (principios 11–12) | Solo se revisa tras fallos graves | Algunos equipos celebran retrospectivas periódicas | Cada equipo revisa su trabajo con un ritmo fijo y registra un cambio | Las acciones de revisión se siguen hasta completarse y se comprueban los resultados | Las mejoras de un equipo se extienden a otros sin dirección central |

## Lista de verificación

- [ ] Cada miembro del equipo ha leído los doce principios en agilemanifesto.org.
- [ ] Hemos revisado una versión o un incidente recientes frente a al menos tres principios.
- [ ] Conocemos nuestro intervalo entre versiones y hemos enumerado lo que nos impide acortarlo.
- [ ] Los cambios de bajo riesgo tienen una vía rápida de aprobación y los arriesgados una más completa.
- [ ] Cada servicio tiene un responsable con nombre que habla con sus usuarios con regularidad.
- [ ] Los incidentes reúnen a las personas adecuadas en una sola conversación, con las decisiones registradas.
- [ ] Seguimos la carga de guardias y la revisamos al menos una vez por trimestre.
- [ ] Una parte visible de cada ciclo se dedica a reparaciones y deuda técnica.
- [ ] Hemos retirado al menos un informe, paso o servicio en el último trimestre.
- [ ] Cada retrospectiva termina con un cambio acordado, un responsable y una fecha para comprobarlo.

## Prompts de IA

**Propósito: revisar una versión o un incidente recientes frente a los doce principios.**

```text
Estás ayudando a un equipo a revisar un suceso reciente frente a los doce principios detrás del Manifiesto Ágil.

Los doce principios, en breve: (1) satisfacer al cliente mediante la entrega temprana y continua; (2) acoger los requisitos cambiantes; (3) entregar con frecuencia, prefiriendo plazos más cortos; (4) los responsables del negocio y los desarrolladores trabajan juntos a diario; (5) construir en torno a personas motivadas y confiar en ellas; (6) conversación cara a cara; (7) el software funcionando es la principal medida de progreso; (8) un ritmo sostenible y constante; (9) atención a la excelencia técnica y al buen diseño; (10) simplicidad, maximizando el trabajo no realizado; (11) equipos autoorganizados; (12) reflexión y ajuste periódicos.

Suceso: [pega una descripción factual y sin culpas de una versión, un incidente o un cambio retrasado, en el orden en que ocurrieron las cosas].

Elige los tres principios más relevantes para este suceso. Para cada uno, indica en dos o tres frases si el comportamiento del equipo coincidió con el principio, citando solo detalles del texto del suceso. Después sugiere dos preguntas para que el equipo las comente. Hazme primero hasta tres preguntas aclaratorias si la descripción del suceso es demasiado escasa. Señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: averiguar qué retrasa los cambios pequeños, usando los principios 2 y 3.**

```text
Quiero entender por qué los cambios pequeños tardan mucho en llegar a nuestros usuarios. Esta es la secuencia de pasos de un cambio pequeño reciente, con lo que duró cada paso: [pega los pasos y las duraciones; por ejemplo "solicitud creada, 1 día; en espera del comité de cambios, 9 días"].

Nuestro proceso de cambios se describe así: [pega una descripción breve del proceso de aprobación de cambios, incluyendo quién aprueba qué].

Enumera las esperas por orden de duración. Para cada espera, sugiere frente a qué riesgo puede estar protegiendo y una forma más ligera de gestionar ese riesgo. No afirmes que ninguna norma o reglamento exige un paso salvo que haya pegado su texto. Señala dónde estás suponiendo y enumera de lo que no estés seguro.
```

**Propósito: convertir los principios en preguntas para una retrospectiva.**

```text
Crea un plan de retrospectiva de 45 minutos para un equipo de [número y tipo de personas, p. ej. "siete personas que construyen y operan un servicio interno de nóminas"]. La retrospectiva debe usar los doce principios del Manifiesto Ágil para revisar el último [periodo, p. ej. "cuatro semanas"].

Contexto: [pega entre 3 y 5 frases sobre lo ocurrido en el periodo, incluyendo cualquier incidente, versión o conflicto].

Incluye una agenda con tiempos, una actividad que haga aflorar los hechos, otra que los agrupe por principio y un paso final en el que el equipo acuerde exactamente un cambio con un responsable y una fecha de revisión. Mantenlo libre de cualquier herramienta concreta. Si falta información, hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: comprobar la simplicidad de un proceso propuesto (principio 10).**

```text
Este es un proceso que usamos: [pega los pasos, quién los hace y los formularios o aprobaciones implicados].

Para cada paso, pregunta qué propósito cumple, a quién beneficia y qué pasaría si se eliminara. Después propón una versión más corta que conserve los propósitos que importan. Señala cualquier paso que exista por un requisito externo que he nombrado: [enumera las leyes, contratos o normas que sepas con certeza que se aplican, o escribe "ninguno conocido"]. No inventes requisitos. Enumera tus suposiciones y de lo que no estés seguro.
```

## Habilidades de IA

- [agile-principles](../../../../skills/agile-principles/SKILL.md): úsala para contrastar una práctica o decisión del equipo con los principios y para conversar sobre lo que significa cada uno en contexto.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): úsala para dirigir la reflexión periódica que pide el principio 12 y convertirla en un cambio real.
- [kaizen](../../../../skills/kaizen/SKILL.md): úsala para planificar mejoras pequeñas y continuas después de una reflexión o revisión.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): úsala para planificar versiones pequeñas y frecuentes de acuerdo con los principios 1 y 3.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): úsala cuando ayudes a un equipo a pasar de seguir rituales a comprender los principios que hay detrás.

## Fuentes principales

- **Principios tras el Manifiesto Ágil** (agilemanifesto.org): el texto primario de los doce principios; léelo completo.
- **Manifiesto para el Desarrollo Ágil de Software** (agilemanifesto.org): los cuatro valores que los principios desarrollan.
- **Historia: el Manifiesto Ágil** (agilemanifesto.org): el relato de los autores sobre cómo se reunió el grupo y qué quería cambiar.
- **Desarrollo ágil de software** (Wikipedia): una visión general con historia, prácticas y críticas, útil para encontrar más lecturas.

## Referencias

1. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
6. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
7. Technical debt — Wikipedia — https://en.wikipedia.org/wiki/Technical_debt
8. Self-organization — Wikipedia — https://en.wikipedia.org/wiki/Self-organization
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
