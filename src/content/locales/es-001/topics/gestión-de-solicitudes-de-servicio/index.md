# Gestión de Solicitudes de Servicio

**La gestión de solicitudes de servicio atiende las cosas rutinarias que piden los usuarios, como accesos, equipos e información, y el objetivo ágil es hacer que cada solicitud común sea rápida, previsible y en su mayor parte automática, para que las personas cualificadas dediquen su tiempo a los problemas.**

## Por qué importa

Buena parte del trabajo que llega a un centro de servicios no es en absoluto un fallo. Es un usuario que pide algo que el servicio está destinado a proporcionar: una cuenta nueva, acceso a una carpeta, un portátil, una licencia, un restablecimiento de contraseña. Estas solicitudes son previsibles y repetitivas. Bien gestionadas, son rápidas y nadie lo nota. Mal gestionadas, son la fuente de largas esperas, preguntas repetidas y una frustración silenciosa que daña la reputación de un equipo más que cualquier caída aislada.

La atención de solicitudes es también donde más compensan la automatización y el autoservicio. Una solicitud que sigue los mismos pasos cada vez puede diseñarse una vez, probarse y automatizarse en buena parte. El [artículo de Wikipedia sobre la gestión de servicios de TI](https://en.wikipedia.org/wiki/IT_service_management) define una solicitud de servicio como una petición rutinaria de un servicio y menciona la automatización de procesos de TI, que sustituye los pasos manuales rutinarios por pasos automatizados para que el personal pueda centrarse en el trabajo de mayor prioridad. Ese es el objetivo de esta práctica en una frase.

El artículo da poco más sobre las solicitudes. Por eso este tema combina esa definición con orientación práctica extraída de la práctica de gestión de servicios de uso amplio, ofrecida como tal, y con los otros temas de la guía sobre el centro de servicios, el catálogo de servicios y el conocimiento. Donde algo es una práctica común y no un hallazgo de una fuente, el texto lo dice.

## Conceptos clave

### Qué es una solicitud de servicio

Una **solicitud de servicio** es una petición rutinaria de algo que un servicio normalmente proporciona. Se diferencia de un **incidente**, que es una interrupción o interrupción potencial de un servicio, y de un **cambio**, que modifica un servicio (véase Tema 3.2 — Gestión de Incidentes y Tema 3.4 — Habilitación de Cambios). La línea puede difuminarse: "necesito acceso al sistema de finanzas" es una solicitud; "tengo acceso pero el sistema muestra un error" es un incidente; "añadir un campo nuevo al sistema de finanzas" es probablemente un cambio.

Una prueba práctica: si el trabajo sigue un procedimiento conocido, tiene un coste y un riesgo conocidos y la respuesta a "¿está permitido?" ya está decidida de antemano, es una solicitud. Todo lo que necesite un juicio nuevo sobre el riesgo es más probablemente un cambio o un proyecto.

### Por qué importa la distinción

Mezclar solicitudes con incidentes distorsiona ambos. Los recuentos de "tickets" difuminan dos tipos distintos de demanda. Las prioridades chocan, ya que un incidente que detiene el trabajo debe ir antes que una solicitud que puede esperar. Las medidas de respuesta engañan: un tiempo medio largo hasta el cierre puede ocultar que las solicitudes esperan aprobaciones mientras los incidentes se corrigen rápido. Mantener separados los dos permite fijar objetivos adecuados y ver dónde está el retraso (véase Tema 2.1 — Gestión de Servicios de TI).

### Modelos de solicitud

Un **modelo de solicitud** es un patrón repetible para un tipo de solicitud: qué información se necesita, quién debe aprobar, qué pasos hace quién o la automatización y cuál es el tiempo esperado. Los modelos de solicitud son una idea de uso amplio en la gestión de servicios. Dan al equipo una manera de diseñar una vez las solicitudes comunes y ejecutarlas muchas veces. Un catálogo de servicios enumera las solicitudes disponibles (véase Tema 3.8 — Gestión del Catálogo de Servicios).

Un modelo para "portátil para una persona nueva" podría especificar: la información necesaria del gerente, la aprobación (ninguna, si el rol figura en una lista estándar), los pasos (pedir, configurar, enviar) y el tiempo esperado. Un modelo para "acceso a un sistema restringido" incluirá una aprobación del responsable del sistema y un registro para la auditoría.

### Aprobación

Algunas solicitudes necesitan aprobación antes de avanzar: gasto, acceso a datos sensibles o uso de recursos escasos. La pregunta para el diseño es si la aprobación añade un control real. Una aprobación que siempre dice sí es un retraso. Donde se necesiten aprobaciones, hazlas rápidas y visibles, di al aprobador exactamente qué se pide y da una alternativa si no responde. Donde la aprobación depende de un rol, como un gerente que aprueba la solicitud de un miembro de su equipo, considera preaprobar los elementos estándar para el rol.

### Cumplimiento y automatización

El cumplimiento es el trabajo de entregar la solicitud. El artículo sobre ITSM describe la automatización de procesos de TI como automatizar tareas rutinarias para que el personal pueda centrarse en el trabajo de mayor prioridad. Los candidatos a la automatización son las solicitudes que son frecuentes, siguen un procedimiento estable y conllevan poco riesgo: restablecimientos de contraseña, pertenencia a grupos, instalaciones de software estándar. La automatización debe construirse con el mismo cuidado que cualquier cambio, con pruebas y una manera de ver qué hizo.

### Autoservicio

Muchas organizaciones ofrecen un portal donde los usuarios pueden encontrar el servicio que necesitan, ver qué información se requiere y enviar una solicitud sin hablar con nadie. Un buen autoservicio depende de una lista clara de servicios escrita con las palabras de los usuarios y de formularios claros. Un portal que refleje el organigrama y pida información que el usuario no tiene hará que la gente vuelva al correo y al teléfono.

### Gestión de servicios empresariales

El artículo sobre ITSM señala que la gestión de servicios empresariales aplica las herramientas y las ideas de ITSM a otras áreas del negocio, como recursos humanos o instalaciones. La gestión de solicitudes es el lugar más fácil para empezar, porque muchas funciones reciben solicitudes rutinarias: incorporación, viajes, equipos, traslados de oficina. Una plataforma de solicitudes compartida puede servir a varias funciones, cada una con sus propios modelos de solicitud y responsables.

### Medidas

Las medidas comunes incluyen cuánto tardan las solicitudes desde el envío hasta el cumplimiento, con qué frecuencia debe volver el solicitante con preguntas, cuántas solicitudes se cumplen sin esfuerzo humano y la satisfacción del solicitante. Como con cualquier medida, evita los objetivos que premian cerrar las solicitudes pronto. Busca el tiempo de espera, ya que la mayor parte del tiempo transcurrido de una solicitud suele ser espera de aprobación o de información, no trabajo (véase Tema 1.7 — Desarrollo de Software Lean y Tema 5.6 — Métricas y Medición).

### Seguridad y cumplimiento normativo

Las solicitudes a menudo controlan accesos y gastos, por lo que tienen implicaciones de seguridad y auditoría. Los registros deben mostrar quién pidió, quién aprobó, qué se hizo y cuándo. Retira el acceso cuando ya no se necesite, como parte de un modelo de solicitud de baja y no como una ocurrencia tardía (véase Tema 3.13 — Gestión de la Seguridad de la Información).

## Buenas prácticas

1. **Empieza por las solicitudes más comunes.** Enumera las diez solicitudes principales por volumen a partir de tus registros. Diséñalas primero. Unos pocos modelos bien diseñados cubren buena parte de la demanda.
2. **Define un modelo de solicitud para cada una.** Escribe qué información se necesita, quién aprueba, los pasos, quién hace cada uno y el tiempo esperado. Mantén cada modelo en una página.
3. **Usa las palabras del usuario.** Nombra las solicitudes como lo harían los usuarios ("Conseguir un portátil nuevo", no "Solicitud de aprovisionamiento de hardware tipo 2"). Prueba los nombres con usuarios.
4. **Pide solo lo que necesitas.** Cada campo de un formulario debe tener un propósito. Obtén lo que puedas de sistemas que ya tienes, como el departamento del usuario, en lugar de preguntar al usuario.
5. **Preaprueba lo rutinario.** Acuerda con los aprobadores una lista estándar de elementos y roles que no necesitan aprobación caso por caso. Revisa la lista periódicamente.
6. **Haz fáciles y rápidas las aprobaciones reales.** Muestra al aprobador qué se pide y por qué, permite aprobar desde un móvil o por correo y establece un recordatorio automático y un suplente para las ausencias.
7. **Automatiza lo estable y frecuente.** Elige solicitudes que sigan los mismos pasos cada vez y conlleven poco riesgo. Prueba la automatización y registra lo que hizo.
8. **Mantén una vía humana.** Permite que los usuarios pidan ayuda cuando un formulario no se ajusta a su necesidad. Trata esos casos como retroalimentación sobre el modelo.
9. **Separa las solicitudes de los incidentes y los cambios.** Da a cada uno su propia categoría, cola y medidas. Enseña al centro a reclasificar cuando una solicitud resulta ser un fallo o un cambio.
10. **Vigila las esperas.** Mide el tiempo de espera de aprobación o de información, no solo el tiempo total. Elige la espera más larga para reducirla primero.
11. **Cierra el bucle con el solicitante.** Confirma el cumplimiento, pregunta si funcionó y ofrece una manera de decir que no. Una solicitud marcada como hecha pero no entregada es peor que una todavía abierta.
12. **Revisa con regularidad el catálogo de solicitudes.** Retira las solicitudes que nadie hace, fusiona las casi duplicadas y añade otras nuevas a partir de la evidencia (véase Tema 3.8 — Gestión del Catálogo de Servicios).

## Preguntas para conversar con tu equipo

**¿Qué solicitudes atendemos con más frecuencia y cuánto tarda cada una de principio a fin?**

Extrae las diez principales del último trimestre y sigue el tiempo transcurrido de cada una. Marca dónde espera cada solicitud. La sorpresa suele ser que la mayor parte del tiempo es espera, no trabajo. Pregunta quién espera a quién. Quien facilite puede preguntar qué solicitud sería la más fácil de mejorar primero.

**¿Qué aprobaciones de nuestras solicitudes no han dicho nunca que no?**

Revisa una muestra de aprobaciones y cuenta los rechazos. Una aprobación que nunca rechaza puede ser un retraso sin beneficio. Pregunta para qué sirve la aprobación y quién se beneficia. Algunas aprobaciones existen por auditoría o responsabilidad, un propósito legítimo que puede cumplirse de forma más ligera, como notificar al aprobador a posteriori. Elige una que simplificar.

**¿Qué tienen que decirnos los usuarios que ya sabemos?**

Mira un formulario de solicitud y marca los campos cuyas respuestas existen en otro sistema. Cada uno de esos campos es esfuerzo para el usuario y una fuente de errores. Pregunta qué haría falta para rellenarlos previamente. Elige un campo que eliminar o rellenar previamente.

**¿Cuáles de nuestras solicitudes podrían hacerse sin que una persona las toque?**

Enumera las solicitudes que siguen un procedimiento fijo. Para cada una, pregunta qué impide la automatización: herramientas, acceso, miedo al error. Discute las salvaguardas que harían aceptable la automatización, como límites y registros. Elige una para automatizar como experimento.

**¿Cómo averiguan los usuarios lo que pueden pedir?**

Pregunta a algunos usuarios cómo pedirían algo inusual. Si la respuesta es "preguntaría a alguien que conozco", la lista de servicios no funciona. Discute cómo se presenta la lista y si los nombres tienen sentido para los usuarios. Prueba un borrador con dos o tres usuarios.

**Cuando una solicitud resulta ser otra cosa, ¿qué pasa?**

Reúne ejemplos de solicitudes que en realidad eran incidentes o cambios. Pregunta cuánto costó la clasificación errónea. Discute cómo reconoce y reclasifica el centro, y si el formulario de solicitud ayuda a los usuarios a elegir correctamente. Acordad un paso sencillo de reclasificación.

## En la práctica: un ejemplo de ITIL ágil

Una oficina nacional de estadística tiene 3.000 empleados y un departamento de TI de 80. El personal nuevo espera habitualmente diez días para tener un portátil y unas cuentas que funcionen, y los gerentes se quejan de que las personas recién llegadas están ociosas. El centro de servicios gestiona las solicitudes de incorporación como tickets individuales, y cada uno de cinco equipos realiza un paso y pasa el ticket.

Una responsable de mejora mapea una solicitud de incorporación. Descubre que el trabajo real lleva unas tres horas y el resto es espera: a que el gerente aporte los datos, a una aprobación presupuestaria de un portátil estándar y a que cada equipo se dé cuenta del ticket. El equipo diseña un modelo de solicitud para las personas nuevas. El gerente rellena un formulario breve tres semanas antes de la fecha de inicio, con la mayoría de los campos rellenados desde el sistema de recursos humanos. Los portátiles y cuentas estándar para el rol están preaprobados. Un script crea cuentas y grupos; el hardware se pide automáticamente de una lista de existencias; el centro recibe una única lista de tareas. El gerente de la persona nueva recibe actualizaciones y una confirmación.

Tras dos meses, la mediana del tiempo desde la solicitud hasta el portátil listo baja a tres días cuando el formulario se envía a tiempo. Quedan algunas dificultades. Alrededor de un tercio de los gerentes siguen enviando el formulario tarde, por lo que las personas nuevas todavía esperan, y el script falla cuando el registro de recursos humanos carece de código de departamento, lo que produce trabajo de reparación manual. El equipo añade un recordatorio a la lista de verificación de incorporación de recursos humanos, configura una alerta para los scripts fallidos y empieza a hablar con recursos humanos sobre cómo mejorar los datos. También mantienen una vía humana para los roles que no encajan en la lista estándar.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega suelen recibir solicitudes que en realidad son cambios: un campo nuevo, un informe nuevo. Ayuda al centro a reconocerlas y a encaminarlas a tu lista de trabajo pendiente. Donde las solicitudes de tu servicio sean frecuentes, como los accesos, construye una vía de autoservicio con límites claros y registro.

### Equipos de servicio y operaciones

Operaciones y el centro son dueños de la mayoría de los modelos de solicitud. Diseña primero los comunes, elimina las esperas y automatiza donde sea seguro. Protege el tiempo para construir y revisar modelos, ya que el trabajo de solicitudes desplaza con facilidad al trabajo de mejora. Comparte los datos de esperas con aprobadores y gerentes.

### Liderazgo y gobernanza

Los líderes y aprobadores configuran buena parte de la espera. Pregunta qué aprobaciones añaden control y cuáles añaden retraso y acepta la preaprobación donde el riesgo es bajo. Apoya una plataforma de solicitudes compartida entre funciones y pide medidas del tiempo de espera en lugar de recuentos de tickets.

### Clientes y usuarios

Los usuarios se benefician de nombres claros, formularios breves y estimaciones honestas. Proporciona información completa cuando pidas y di cuándo es urgente y por qué. Dile al equipo cuándo una solicitud no entregó lo que necesitabas, porque eso mejora el modelo para la siguiente persona.

## Fallos frecuentes

- **Tratar las solicitudes como incidentes o al revés.** Las prioridades y los informes se distorsionan. En su lugar, sepáralos y enseña la reclasificación.
- **Formularios que piden demasiado.** Los usuarios abandonan el portal. En su lugar, pide solo lo que necesitas y rellena previamente el resto.
- **Aprobaciones como ritual.** Cada solicitud espera una firma que nunca rechaza. En su lugar, preaprueba los elementos rutinarios y mantén rápidas las aprobaciones reales.
- **Automatización sin salvaguardas.** Un script hace el cambio equivocado a escala. En su lugar, prueba, limita y registra la automatización, y monitoriza los fallos.
- **Nombres internos.** Los usuarios no encuentran lo que necesitan. En su lugar, nombra las solicitudes con las palabras de los usuarios y pruébalas.
- **Sin vía humana.** Las necesidades inusuales se pierden. En su lugar, ofrece ayuda y trata las solicitudes raras como retroalimentación.
- **Contar solo la velocidad.** Las solicitudes se cierran pronto. En su lugar, confirma con el solicitante y vigila las solicitudes repetidas.
- **No retirar nunca solicitudes.** La lista se queda obsoleta. En su lugar, revisa el uso con regularidad y retira lo que nadie pide.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Modelos de solicitud | Cada solicitud se gestiona de forma improvisada | Existen modelos para algunas solicitudes frecuentes | Existen modelos para las solicitudes principales con responsables y tiempos esperados | El desempeño de los modelos se mide y se ajusta | Los modelos se comparten entre funciones y proveedores |
| Aprobación | La aprobación es informal o por costumbre | Algunos elementos rutinarios están preaprobados | Las listas de preaprobación y las vías rápidas de aprobación son estándar | Se revisan los resultados y las esperas de las aprobaciones | Las reglas de aprobación se alinean entre funciones con base en datos de riesgo |
| Automatización y autoservicio | Las solicitudes se gestionan manualmente por correo | Algunas solicitudes están disponibles en un portal o automatizadas | Las solicitudes frecuentes de bajo riesgo están automatizadas y el autoservicio es estándar | Se miden el éxito de la automatización y el esfuerzo del usuario | La automatización y el autoservicio abarcan TI, RR. HH. e instalaciones |
| Aprendizaje y mejora | Las solicitudes no se analizan | Se recogen algunos recuentos | Las esperas y las solicitudes repetidas se revisan con regularidad | Las mejoras se planifican a partir de datos y se comprueban los efectos | Las ideas de mejora proceden de usuarios y equipos de toda la organización |

## Lista de verificación

- [ ] Conocemos nuestras diez solicitudes más comunes y cuánto tarda cada una.
- [ ] Cada una tiene un modelo de solicitud: información necesaria, aprobador, pasos, responsable, tiempo esperado.
- [ ] Las solicitudes se nombran con las palabras de los usuarios.
- [ ] Los formularios piden solo la información necesaria y rellenan previamente lo que sabemos.
- [ ] Los elementos rutinarios están preaprobados y las aprobaciones reales tienen una vía rápida y un suplente.
- [ ] Las solicitudes frecuentes de bajo riesgo están automatizadas con pruebas y registros.
- [ ] Las solicitudes, los incidentes y los cambios están separados con un paso de reclasificación.
- [ ] Medimos el tiempo de espera además del tiempo total.
- [ ] Se pide a los solicitantes que confirmen el cumplimiento.
- [ ] La lista de solicitudes se revisa al menos dos veces al año.

## Prompts de IA

**Propósito: encontrar las solicitudes más comunes y las esperas más largas.**

```text
Estos son datos de solicitudes de servicio de los últimos [periodo]: [pega una tabla con tipo de solicitud, fecha de envío, fecha de aprobación si la hay, fecha de cumplimiento y notas; elimina los datos personales].

Usando solo mis datos, enumera los diez tipos de solicitud más comunes con recuentos, el tiempo transcurrido típico de cada uno (da el valor central y el rango) y cuánto de ese tiempo fue espera de aprobación, si los datos lo muestran. Destaca las tres solicitudes con las esperas más largas. Sugiere preguntas para hacer a los responsables. No inventes números ni causas. Si los datos son demasiado escasos, dime qué recoger. Enumera de lo que no estés seguro.
```

**Propósito: escribir un modelo de solicitud para una solicitud.**

```text
Ayúdame a escribir un modelo de solicitud para [solicitud, p. ej. "acceso a una carpeta compartida del equipo"].

Cómo se gestiona hoy, paso a paso, con quién hace cada uno: [pega].
Información que debe proporcionar hoy el solicitante: [enumera].
Aprobaciones de hoy y quién las da: [enumera].
Reglas que debemos cumplir, con el texto de la fuente si está disponible: [pega, o escribe "ninguna conocida"].

Produce un modelo de una página: propósito, quién puede solicitar, información necesaria (marca lo que podría rellenarse previamente desde sistemas existentes), aprobación (y una sugerencia de preaprobación donde el riesgo sea bajo), pasos con quién o qué hace cada uno, tiempo esperado marcado como [por acordar] y cómo se confirma el cumplimiento. Señala las suposiciones. No inventes reglas. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: reescribir un formulario de solicitud para que sea más corto y claro.**

```text
Este es un formulario de solicitud que usamos: [pega los campos y las instrucciones].
Esto es lo que ya sabemos del solicitante por otros sistemas: [enumera, como nombre, departamento, gerente].

Para cada campo, di si es necesario, si podría rellenarse previamente o si podría eliminarse, y da una razón a partir del texto. Reescribe el formulario con etiquetas claras en lenguaje sencillo. No elimines ningún campo que yo haya marcado como exigido por una regla: [enumera, o escribe "ninguno conocido"]. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: decidir qué automatizar primero.**

```text
Esta es una lista de nuestras solicitudes con el volumen mensual, los pasos y cuán arriesgado es cada paso (según mi criterio): [pega].
Herramientas con las que podemos automatizar: [enumera, o escribe "desconocido"].
Salvaguardas que podemos implantar: [enumera, como registros, límites, aprobaciones para excepciones].

Ordena las solicitudes como candidatas a la automatización, usando solo mis datos, y explica cada orden en una frase. Para las dos primeras, enumera qué podría salir mal y una salvaguarda para cada una. No inventes volúmenes. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md): úsala para enumerar las solicitudes que pueden hacer los usuarios, con sus palabras, con responsables.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): úsala para encontrar las solicitudes más comunes y sus volúmenes.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): úsala para analizar los pasos y esperas de una solicitud.
- [user-story](../../../../skills/user-story/SKILL.md): úsala para describir una solicitud desde el punto de vista del usuario con criterios de aceptación.
- [runbook](../../../../skills/runbook/SKILL.md): úsala para documentar los pasos de las solicitudes que siguen siendo manuales.

## Fuentes principales

- **IT service management** (Wikipedia): define una solicitud de servicio, la gestión de servicios empresariales y la automatización de procesos de TI.
- **Help desk** (Wikipedia): contexto sobre la gestión de colas y el enrutamiento de las solicitudes que llegan a un centro.
- **Business process automation** (Wikipedia): contexto general sobre la automatización del trabajo rutinario.
- **ITIL** (Wikipedia): el contexto de la gestión de solicitudes de servicio en ITIL.

## Referencias

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
