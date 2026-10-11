# Gestión de Servicios Ágil

**La gestión de servicios ágil aplica los valores y métodos ágiles al diseño y la mejora de la propia gestión de servicios, tratando cada proceso como un producto con un responsable, una lista de trabajo pendiente y usuarios que pueden decir si funciona.**

## Por qué importa

La mayor parte de esta guía ha examinado cómo pueden usar los equipos ágiles las prácticas de gestión de servicios. Este tema le da la vuelta a la pregunta: ¿cómo pueden construirse y cambiarse de manera ágil las prácticas de gestión de servicios? Muchas organizaciones tienen procesos para incidentes, cambios y solicitudes que se diseñaron una vez, se desplegaron en un proyecto y se dejaron. Son lentos de cambiar, los odian las personas que deben seguirlos y desentonan con cómo construye ahora software la organización. Eso es lo contrario de lo que sugeriría el principio del Manifiesto de acoger el cambio (véase Tema 1.2 — Principios Ágiles).

El remedio no es abandonar el proceso sino tratarlo como algo que se diseña con sus usuarios, se publica en pasos pequeños y se mejora a partir de la evidencia. Los principios rectores de ITIL 4 dicen lo mismo: empieza donde estás, avanza de forma iterativa con retroalimentación, colabora y promueve la visibilidad, y mantenlo simple y práctico (véase Tema 2.4 — Principios Rectores de ITIL). El artículo de Wikipedia sobre ITIL dice que ITIL 4 se alineó con las formas de trabajar ágiles, DevOps y lean cuando se publicó en 2019. El artículo sobre ISO/IEC 20000 enumera partes recientes de esa norma, entre ellas orientación sobre lo ágil y DevOps, aunque no da su contenido.

Hay poca investigación formal sobre la gestión de servicios ágil como tal, y los artículos de Wikipedia consultados para esta guía no la cubren. Por ello este tema se apoya en la descripción de roles y artefactos de la Guía de Scrum, en los principios ágiles y de ITIL y en el resto de esta guía, y ofrece su enfoque como una síntesis práctica que probar, no como un método establecido.

## Conceptos clave

### Los procesos como productos

Un **proceso**, en este sentido, es cualquier manera repetible de trabajar que una organización de servicios pide a las personas que sigan: cómo notificar un incidente, cómo solicitar acceso, cómo aprobar un cambio. Visto como un producto, un proceso tiene:

- **Usuarios:** las personas que lo siguen y las personas a las que sirve.
- **Un propósito:** el resultado que existe para lograr.
- **Un responsable:** alguien responsable de su valor, como la Guía de Scrum describe al Product Owner como la única persona responsable de maximizar el valor del producto y ordenar su lista de trabajo pendiente (véase Tema 1.4 — Pronóstico de Entrega y Métricas de Planificación).
- **Una lista de trabajo pendiente:** una lista ordenada de mejoras.
- **Versiones:** cambios entregados en pasos pequeños, con notas.
- **Medidas:** evidencia de si funciona.

Pensar así cambia las preguntas. No "¿hemos implantado el proceso de cambios?" sino "¿ayuda el proceso de cambios a las personas a hacer su trabajo y cuál es la siguiente mejora?".

### Roles

| Rol | En un equipo de producto | Para un proceso de gestión de servicios |
|---|---|---|
| **Responsable de producto** | Ordena la lista de trabajo pendiente y es responsable del valor | El responsable del proceso, que decide qué mejorar a continuación y por qué |
| **Desarrolladores / equipo** | Construyen el incremento | Las personas que diseñan y ejecutan el proceso, idealmente incluidos usuarios de entrega y operaciones |
| **Scrum Master o coach** | Ayuda al equipo a aplicar el marco y elimina impedimentos | Un coach que ayuda al equipo a practicar la entrega continua de software y a recoger retroalimentación |
| **Partes interesadas** | Revisan el incremento y dan retroalimentación | Equipos de entrega, el centro de servicios, auditores, clientes |

La correspondencia es de esta guía, no una norma. Los responsables de procesos de muchas organizaciones carecen de autoridad o de tiempo, así que el primer paso suele ser darles ambas cosas.

### La lista de trabajo pendiente del proceso

Las ideas de mejora de un proceso proceden de muchos lugares: revisiones de incidentes, retrospectivas, hallazgos de auditoría, quejas de usuarios y métricas (véase Tema 3.15 — Mejora Continua). Una lista de trabajo pendiente del proceso las reúne en una lista ordenada. Los elementos son pequeños y se describen desde la vista del usuario: "Como desarrollador, quiero que los cambios de bajo riesgo se aprueben automáticamente para poder publicar cuando esté listo". El responsable de producto ordena la lista por valor y esfuerzo, y el equipo toma elementos en ciclos cortos.

### Entrega continua de software de los cambios del proceso

En lugar de diseñar un proceso completo y desplegarlo, diseña la versión más pequeña que podría funcionar, pruébala con unos pocos usuarios y aprende:

| Paso | Qué ocurre |
|---|---|
| **Encontrar el problema** | Observar cómo trabaja realmente la gente y dónde tiene dificultades |
| **Diseñar un cambio pequeño** | Un formulario nuevo, una vía de aprobación más corta, una lista de verificación |
| **Probarlo** | Con un equipo, o un tipo de trabajo, durante un periodo corto |
| **Comprobar** | Comparar con lo esperado, usando datos y conversación |
| **Adoptar, ajustar o abandonar** | Extender lo que funcionó; corregir o abandonar lo que no |

Es el ciclo planificar–hacer–comprobar–actuar aplicado al propio proceso (véase Tema 3.15 — Mejora Continua).

### Diseñar con los usuarios

Los diseñadores de procesos que no usan el proceso cometen errores evitables. Involucra a las personas que lo siguen: invita a ingenieros a diseñar el proceso de cambios, a analistas del centro a diseñar el formulario de incidentes y a clientes a diseñar el catálogo de solicitudes. Observa el trabajo real. Prueba con casos reales. Es la "colaboración con el cliente sobre la negociación contractual" aplicada dentro de la organización (véase Tema 1.1 — Manifiesto Ágil).

### Proceso mínimo viable

Un **proceso mínimo viable** es el conjunto más pequeño de pasos, registros y roles que logra el propósito. Añadirle algo necesita una razón. El principio rector "mantenlo simple y práctico" lo respalda. Una prueba útil de cada paso es preguntar qué pasaría si se eliminara y quién lo notaría. Los controles exigidos por ley o contrato se conservan, con la fuente nombrada; los demás se cuestionan.

### Versiones del proceso y comunicación

Cuando un proceso cambia, la gente necesita saberlo. Trata los cambios como versiones: una nota breve que describa qué cambió, por qué y qué hacer de manera distinta, con un contacto para preguntas. Publica en pasos pequeños, con un ritmo que la gente pueda seguir, y evita sorprender a los equipos con cambios grandes. Conserva un historial visible de cambios.

### Normas, auditorías y agilidad

Muchas organizaciones deben satisfacer normas o auditores. ISO/IEC 20000 es una norma para sistemas de gestión de servicios, y Wikipedia enumera una parte reciente de ella con orientación sobre lo ágil y DevOps (véase Tema 2.7 — Marcos y Estándares de ITSM). Un proceso construido en pasos pequeños puede satisfacer las auditorías si los registros muestran cómo funciona y cómo cambia: la lista de trabajo pendiente, las notas de versión y las medidas son en sí evidencia. Habla pronto con los auditores sobre lo que necesitan y muéstrales tu manera de trabajar.

### Gestión de servicios ágil y DevOps

Las prácticas de DevOps, como la automatización y las canalizaciones, son herramientas para implantar procesos (véase Tema 5.2 — DevOps). Cuando un paso del proceso pueda automatizarse, como registrar un cambio desde una canalización, hazlo y trata la automatización como parte del proceso. La gestión de servicios ágil y DevOps comparten el interés por los ciclos cortos y la retroalimentación rápida.

### Límites

El enfoque supone que las personas tienen tiempo y mandato para mejorar el proceso, algo que no siempre es cierto. Puede fallar cuando la titularidad del proceso es nominal, cuando las partes interesadas exigen un diseño terminado antes de probar nada o cuando cada cambio necesita una larga aprobación. También corre el riesgo de una agitación constante si los cambios son demasiado frecuentes para que la gente los absorba. Equilibra la entrega continua del cambio con la estabilidad: cambia con un ritmo previsible.

## Buenas prácticas

1. **Nombra un responsable para cada proceso.** Elige a alguien con autoridad para cambiarlo y tiempo para hacerlo. Aclara su papel: es responsable de lo bien que el proceso sirve a su propósito.
2. **Escribe un propósito de una frase.** Declara para qué sirve el proceso y a quién sirve. Si no puedes, el proceso puede ser candidato a eliminarse.
3. **Mantén una lista de trabajo pendiente del proceso.** Reúne las ideas de revisiones, auditorías, opiniones y datos en una sola lista ordenada. Muéstrala a las personas que siguen el proceso.
4. **Involucra a los usuarios en el diseño.** Incluye a ingenieros, analistas del centro y clientes en talleres y pruebas. Observa el trabajo real antes de cambiarlo.
5. **Empieza con un proceso mínimo viable.** Diseña la versión más pequeña que cumpla el propósito y las necesidades legales. Añade pasos solo cuando un problema lo justifique.
6. **Prueba antes de desplegar.** Haz un piloto con un equipo o un tipo de trabajo durante un periodo corto y definido. Acuerda lo que mirarás antes de empezar.
7. **Publica los cambios en pasos pequeños y con un ritmo.** Publica una nota breve por cada versión del proceso, con un contacto. Evita los cambios grandes y sorpresivos.
8. **Mide el proceso.** Elige unas pocas medidas de si funciona, como el tiempo empleado, la repetición del trabajo y la satisfacción del usuario (véase Tema 5.6 — Métricas y Medición). Revísalas con los usuarios.
9. **Automatiza donde ayude.** Capta registros desde las herramientas, no desde formularios; haz que el camino fácil sea el correcto. Comprueba que la automatización no oculte un juicio que deberían emitir las personas.
10. **Conserva la evidencia para los auditores.** Guarda la lista de trabajo pendiente, las decisiones, las notas de versión y las medidas donde los auditores puedan verlas. Invítalos a una revisión de cómo cambia el proceso.
11. **Retira proceso.** Elimina los pasos, formularios y registros que ya no sirven a su propósito. Trata la eliminación como una mejora.
12. **Revisa cada año la titularidad de los procesos.** Comprueba que cada proceso sigue teniendo un responsable activo, una lista de trabajo pendiente al día y usuarios que pueden llegar a él.

## Preguntas para conversar con tu equipo

**¿Quién es responsable de cada uno de nuestros procesos y qué autoridad tiene para cambiarlo?**

Enumera los procesos principales y nombra al responsable de cada uno. Pregunta qué puede cambiar el responsable sin pedírselo a nadie. A menudo la respuesta es "muy poco". Quien facilite puede preguntar qué haría falta para que el responsable hiciera cambios pequeños con rapidez. Acordad un proceso con el que empezar.

**¿Para qué sirve nuestro proceso de cambios? ¿Podemos decirlo en una frase?**

Pide a cada persona que escriba un propósito. Compara. Las diferencias muestran confusión sobre por qué existe el proceso. Usa la declaración compartida para juzgar cada paso. Elimina o cuestiona los pasos que no la sirvan.

**¿Cuándo cambiamos por última vez un proceso porque lo pidieron los usuarios y cómo nos enteramos?**

Pide ejemplos. Si no hay ninguno, pregunta adónde van las quejas. Discute cómo podría llegar la opinión al responsable: un canal, una revisión periódica, una breve encuesta. Elige una vía que probar.

**¿Cómo sería una prueba de un mes de un proceso más simple?**

Elige un proceso con fricción conocida. Describe una versión más ligera, quién la probaría, qué medirías y qué te haría parar. Esto convierte una discusión en un experimento. Acordad los detalles y la fecha.

**¿Qué evidencia aceptarían nuestros auditores de un proceso de entrega continua de software?**

Pregunta a un auditor o a un colega de cumplimiento. Enumera lo que produce el proceso: una lista de trabajo pendiente, notas de versión, medidas, registros. Discute las lagunas. Los equipos suelen sorprenderse de cuán dispuestos están los auditores a aceptar evidencia clara de un cambio controlado.

**¿Cómo se enteran las personas de que un proceso ha cambiado?**

Sigue el último cambio. Muchas personas se enteraron por un colega o al tropezarse con él. Discute las notas de versión y un registro de cambios visible. Acordad una manera sencilla de anunciar los cambios y dónde viven.

## En la práctica: un ejemplo de ITIL ágil

Una agencia nacional de seguridad vial tiene un departamento de TI de 90 personas que da soporte a una aplicación que usan la policía y los tribunales. El proceso de incidentes del departamento se escribió hace ocho años: un formulario de 14 campos, tres aprobaciones para cerrar un incidente de alta prioridad y un informe mensual que nadie lee. Los equipos de entrega se saltan el formulario durante las caídas y lo rellenan después, por lo que sus registros son pobres. Un hallazgo de auditoría dice que los registros de incidentes están incompletos.

La jefa de gestión de servicios se nombra a sí misma responsable del proceso de incidentes y forma un pequeño equipo de trabajo: dos analistas del centro de servicios, un ingeniero de cada uno de dos equipos de entrega y un oficial de calidad de la unidad de gobernanza de la agencia. Escribe un propósito para el proceso: restablecer el servicio con rapidez y aprender de lo ocurrido. El equipo observa tres incidentes reales. Descubren que el formulario se rellena después del suceso, sobre todo con los mismos pocos valores, y que las aprobaciones añaden retraso sin cambiar nunca un resultado. Construyen una lista de trabajo pendiente y empiezan por los cambios más pequeños. Una prueba con dos equipos reduce el formulario a seis campos, rellenados automáticamente desde la herramienta de monitorización cuando es posible, elimina dos de las tres aprobaciones y añade una breve revisión sin culpas para cada incidente de alta prioridad.

Tras seis semanas, los equipos de la prueba registran los incidentes durante la caída y no después, y el oficial de calidad encuentra los registros más completos que antes. El equipo publica una nota de versión de una página, extiende el cambio a todos los equipos y muestra al auditor la lista de trabajo pendiente, los resultados de la prueba y las medidas. Quedan algunas dificultades. Un equipo de entrega nunca se unió a la prueba y sigue usando el formulario antiguo, el contrato de un proveedor exige un campo que el formulario nuevo omite y el oficial de calidad teme que se cuestione en la próxima auditoría la supresión de aprobaciones. La jefa de gestión de servicios añade un campo para el caso del proveedor, pide al equipo restante que se una a la siguiente ronda y acuerda con el auditor revisar los registros de incidentes en la próxima reunión trimestral.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega son usuarios de muchos procesos de gestión de servicios. Únete al diseño de los que te afecten, ofrece datos sobre cómo funcionan en la práctica y prueba pilotos. Cuando un paso del proceso pueda automatizarse en tu canalización, ofrécete a construirlo.

### Equipos de servicio y operaciones

Los equipos de operaciones suelen ser responsables de los procesos. Trata cada uno como un producto: escribe un propósito, mantén una lista de trabajo pendiente, pregunta a los usuarios y publica cambios pequeños. Haz tiempo para la mejora de procesos y defiéndelo, porque el trabajo de entrega lo desplazará con facilidad.

### Liderazgo y gobernanza

Los líderes dan a los responsables de procesos autoridad y tiempo, y fijan la expectativa de que los procesos cambian a partir de la evidencia. Pide el propósito y las medidas de cada proceso, y la lista de trabajo pendiente. Apoya las pruebas y estate dispuesto a aceptar evidencia en formas nuevas.

### Clientes y usuarios

Los clientes y usuarios de los servicios también siguen procesos, como las solicitudes y las aprobaciones. Dile al responsable qué es confuso o lento. Ofrécete a participar en una prueba. Espera que los cambios se anuncien y se expliquen.

## Fallos frecuentes

- **Proceso sin responsable.** Nadie puede cambiarlo. En su lugar, nombra un responsable con autoridad y tiempo.
- **Rediseño de golpe.** Se despliega de una vez un proceso completamente nuevo y se rechaza. En su lugar, cambia en pasos pequeños y haz un piloto.
- **Diseño por comité lejos de los usuarios.** El proceso conviene a los diseñadores. En su lugar, incluye a quienes lo siguen y observa el trabajo real.
- **Agitación constante.** Los cambios llegan con demasiada frecuencia para absorberlos. En su lugar, publica con un ritmo previsible.
- **Olvidar los requisitos legales.** Se elimina un control que era necesario. En su lugar, comprueba para qué se exige cada paso y nombra la fuente.
- **Cambios sin anunciar.** La gente los descubre por accidente. En su lugar, publica notas de versión breves.
- **Evidencia sin conservar.** La auditoría no puede ver cómo cambió el proceso. En su lugar, conserva la lista de trabajo pendiente, las decisiones y las medidas.
- **Sin retirar nada.** Los pasos se acumulan. En su lugar, trata la eliminación como una mejora.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Titularidad y propósito | Los procesos no tienen responsable ni propósito claros | Algunos procesos tienen responsables | Cada proceso tiene un responsable con autoridad y un propósito escrito | Se revisa la eficacia de los responsables y se les apoya | Los responsables trabajan juntos entre equipos para alinear los procesos de extremo a extremo |
| Lista de trabajo pendiente y cambio | Los cambios son proyectos, raros y grandes | Algunos responsables mantienen listas de ideas | Cada proceso tiene una lista ordenada y publica cambios en pasos pequeños | Se miden el flujo de la lista y los efectos de las versiones | Los cambios de proceso se coordinan entre procesos y con proveedores |
| Involucrar a los usuarios | Los diseñadores rara vez consultan a los usuarios | Se hacen algunas pruebas con usuarios | Los usuarios participan en el diseño y las pruebas como norma | La opinión y la satisfacción de los usuarios se miden y se actúa sobre ellas | Clientes y proveedores participan en el diseño de procesos |
| Evidencia y auditoría | Los registros son pobres y los cambios no se registran | Se registran algunos cambios de proceso | La lista de trabajo pendiente, las notas de versión y las medidas sirven de evidencia de auditoría | Los auditores revisan con regularidad el registro de cambios | La evidencia se comparte con auditores y socios de forma continua |

## Lista de verificación

- [ ] Cada proceso principal tiene un responsable con nombre con autoridad y tiempo.
- [ ] Cada proceso tiene un propósito de una frase y un conjunto de usuarios definido.
- [ ] Cada proceso tiene una lista de mejoras ordenada y visible.
- [ ] Usuarios de entrega y operaciones participan en el diseño y las pruebas.
- [ ] Los cambios se pilotan antes del despliegue, con una comprobación definida.
- [ ] Los cambios de proceso se publican con un ritmo y con notas breves.
- [ ] Unas pocas medidas muestran si cada proceso funciona.
- [ ] Los controles legales y contractuales se identifican con sus fuentes.
- [ ] Los auditores han visto la lista de trabajo pendiente, las notas de versión y las medidas.
- [ ] Se eliminan los pasos que ya no sirven a un propósito.

## Prompts de IA

**Propósito: redactar una declaración de propósito y una lista de usuarios para un proceso.**

```text
Ayúdame a escribir una declaración de propósito para este proceso: [nombre y breve descripción].

Quién lo sigue: [roles].
A quién sirve: [roles].
Qué va mal hoy: [ejemplos].
Reglas o contratos que exigen partes de él, con el texto de la fuente: [pega, o escribe "ninguna conocida"].

Escribe tres declaraciones de propósito alternativas de una frase, cada una centrada en un resultado y no en los pasos. Luego enumera preguntas para los usuarios, para comprobar cuál se acerca más. No inventes reglas. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: convertir opiniones y revisiones de incidentes en una lista de trabajo pendiente del proceso.**

```text
Estos son comentarios, quejas, hallazgos de auditoría y acciones de revisión sobre [proceso]: [pega uno por línea, con su fuente].

Agrupa los elementos relacionados. Para cada grupo, escribe un elemento de la lista de trabajo pendiente con la forma "Como [rol], quiero [cambio] para [resultado]", usando solo lo que dice el texto. Añade una nota sobre quién se ve afectado y una pregunta sobre la evidencia. Deja la prioridad en blanco. Enumera los elementos que parezcan requisitos de ley o contrato, citando el texto, y los elementos que entren en conflicto. Enumera de lo que no estés seguro.
```

**Propósito: diseñar una prueba de un mes de un proceso más ligero.**

```text
Diseña una prueba de un mes de una versión más ligera de [proceso].

Pasos actuales y dónde tiene dificultades la gente: [describe].
Cambio propuesto: [describe].
Equipos que podrían participar: [enumera].
Controles que deben permanecer, con la fuente: [enumera, o escribe "ninguno conocido"].

Da: el alcance de la prueba, lo que esperamos ver, qué medir antes y durante (deja los objetivos como [por acordar]), cómo recoger la opinión de los usuarios, condiciones para detener y qué evidencia conservar para los auditores. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: escribir una nota de versión para un cambio de proceso.**

```text
Escribe una nota de versión breve para un cambio en [proceso].

Qué cambió: [describe].
Por qué: [describe].
Quién se ve afectado y desde qué fecha: [describe].
Qué debe hacer la gente de manera distinta: [describe].
Dónde hacer preguntas: [contacto].

Escribe menos de 150 palabras en lenguaje sencillo, con un encabezado, una lista breve de cambios y qué hacer. Usa solo mi información. Hazme primero preguntas aclaratorias si falta algo y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): úsala para dejar claro quién es responsable de cada proceso y quién es consultado.
- [user-story](../../../../skills/user-story/SKILL.md): úsala para escribir los elementos de la lista de trabajo pendiente del proceso desde el punto de vista del usuario.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): úsala para estudiar cómo funciona realmente un proceso y dónde tiene dificultades.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): úsala para revisar con sus usuarios cómo está funcionando un proceso.
- [kaizen](../../../../skills/kaizen/SKILL.md): úsala para planificar mejoras pequeñas y continuas de un proceso.

## Fuentes principales

- **La Guía de Scrum** (Ken Schwaber y Jeff Sutherland, scrumguides.org): la fuente de los roles y artefactos que se usan aquí como analogía de la titularidad del proceso y de las listas de trabajo pendiente.
- **Principios tras el Manifiesto Ágil** (agilemanifesto.org): el lado ágil del enfoque de diseño.
- **ITIL** (Wikipedia): la historia de la alineación de ITIL 4 con las formas de trabajar ágiles, DevOps y lean.
- **ISO/IEC 20000** (Wikipedia): la lista de partes, incluida la orientación reciente sobre lo ágil y DevOps.

## Referencias

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
