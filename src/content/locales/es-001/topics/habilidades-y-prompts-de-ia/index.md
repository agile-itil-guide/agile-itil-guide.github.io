# Habilidades y Prompts de IA

**Un buen prompt da a un asistente de IA el material, la tarea y las comprobaciones que necesita, y una buena habilidad empaqueta ese saber hacer para que un equipo lo reutilice, lo que convierte los prompts y habilidades de IA de esta guía en puntos de partida que adaptas y verificas.**

## Por qué importa

Cada tema de esta guía termina con prompts y habilidades. Existen porque muchas de las tareas de la gestión de servicios se prestan a un asistente que puede leer un montón de tickets, redactar un manual de procedimientos o convertir notas en un plan. También existen porque una petición vaga a una IA produce resultados vagos y a veces erróneos. La diferencia entre una respuesta útil y una verosímil pero vacía suele estar en cómo se escribió la petición y en qué material la acompañaba.

Este tema explica cómo usar los prompts y las habilidades de la guía, por qué están escritos como están y cómo escribir los tuyos para tu equipo. Trata de hábitos más que de trucos: aportar material real, decir lo que quieres, pedir al asistente que marque lo que no sabe y comprobar lo que vuelve. Se apoya en las cautelas del tema anterior, que describe dónde ayuda la IA y dónde puede perjudicar (véase Tema 6.2 — IA en la Gestión de Servicios de TI).

Las fuentes son prácticas. La propia habilidad `skills/prompt-engineering` de la guía describe la redacción de prompts como la práctica deliberada de diseñar e iterar las instrucciones dadas a un modelo de lenguaje, tratando un prompt como un pequeño programa que se escribe, se prueba con casos reales y se revisa. La documentación de Claude Code describe cómo se estructuran las habilidades como directorios con un archivo `SKILL.md`. El [artículo de Wikipedia sobre los modelos de lenguaje de gran tamaño](https://en.wikipedia.org/wiki/Large_language_model) da el contexto. Ninguna fuente leída para esta guía ofrece evidencia sobre qué técnicas de prompting funcionan mejor; trata las técnicas de aquí como hábitos que probar.

## Conceptos clave

### Prompts, habilidades y para qué sirven

Un **prompt** es la instrucción y el material que das a un asistente de IA para una tarea. Una **habilidad**, en el formato usado en la carpeta `skills/` de esta guía, es un paquete reutilizable de saber hacer para un tipo de tarea: un directorio que contiene un archivo `SKILL.md` que dice cuándo usarlo y cómo hacer el trabajo. En la documentación de Claude Code, una habilidad es un directorio con un archivo `SKILL.md` obligatorio cuyo encabezado tiene un nombre y una descripción y cuyo cuerpo da las instrucciones; el asistente usa la descripción para decidir cuándo aplicar la habilidad y carga el cuerpo completo solo cuando se usa.

| | Prompt | Habilidad |
|---|---|---|
| **Alcance** | Una tarea, ahora | Un tipo de tarea, reutilizado |
| **Dónde vive** | En un chat o un documento | En una carpeta, como `skills/` o el directorio de habilidades de un proyecto |
| **Quién lo cambia** | Tú, cada vez | El equipo, con revisión |
| **Lo mejor para** | Análisis específicos de tu propio material | Métodos repetibles, como dirigir una retrospectiva |

### Cómo están construidos los prompts de la guía

Los prompts de esta guía siguen un patrón sencillo, expuesto en la guía de estilo:

1. **Un propósito en negrita de una línea** dice para qué sirve el prompt.
2. **Un bloque delimitado** contiene texto que puedes copiar y pegar.
3. **Marcadores entre corchetes** señalan lo que debes aportar, con una pista de qué poner.
4. **Una tarea** que nombra el resultado deseado.
5. **Límites**: no inventes números, fuentes, citas ni afirmaciones de cumplimiento; usa solo el material pegado.
6. **Una petición de preguntar primero** cuando falta información y de señalar las suposiciones.
7. **Una comprobación final**: "Enumera de lo que no estés seguro".

Estas partes existen por razones. Los marcadores te obligan a traer material real. El límite impide que el asistente rellene las lagunas con invenciones. La petición de preguntas aclaratorias convierte una conjetura de un solo intento en una conversación breve. La última línea hace que el asistente señale sus propios puntos débiles, lo que te ayuda a decidir qué comprobar.

### Patrones que ayudan

La habilidad `prompt-engineering` de la guía enumera técnicas, que esta guía resume con sus propias palabras:

- **Sé específico sobre el resultado que quieres,** como una tabla con columnas con nombre o una lista numerada de como máximo cinco elementos, para que el asistente no adivine la forma.
- **Da ejemplos cuando las instrucciones sean ambiguas,** mostrando el patrón que quieres en una muestra breve.
- **Aporta el contexto que el asistente no puede conocer,** como tu terminología, tus restricciones y el documento en cuestión, y di qué no debe suponer.
- **Itera con casos de prueba reales,** ejecutando el prompt con una variedad de entradas reales y revisándolo donde falle, en vez de juzgarlo por un solo buen ejemplo.

Un prompt ajustado con una entrada puede fallar con otras. La habilidad señala que una entrada breve y de redacción extraña, o a la que le falta un campo, puede romper un prompt que manejaba bien el ejemplo original.

### Hábitos de verificación

Todo resultado necesita una comprobación proporcional al coste de equivocarse. Hábitos que ayudan:

- **Comprueba los hechos con la fuente que pegaste.** Pide al asistente que cite la parte de tu material que respalda cada afirmación.
- **No aceptes nunca referencias que no hayas visto.** Los casos descritos en el tema anterior incluyen citas judiciales inventadas; no las repitas.
- **Separa lo que el asistente vio de lo que supuso.** Los prompts de la guía lo piden.
- **Comprueba tú los cálculos,** o pide el desarrollo y revísalo.
- **Haz una segunda revisión de todo lo que salga del equipo,** como una respuesta a un cliente o una política.
- **Conserva registros de los usos significativos,** como se describe en el Tema 6.2 — IA en la Gestión de Servicios de TI.

### Proteger los datos

Antes de pegar nada en un prompt, pregunta qué contiene y adónde irá. Elimina los datos personales, las credenciales y el detalle comercial confidencial a menos que la herramienta y sus condiciones se hayan aprobado para ellos (véase Tema 3.13 — Gestión de la Seguridad de la Información). Los prompts de la guía te piden anonimizar, pero la responsabilidad es tuya. En caso de duda, describe la situación en términos generales.

### Cómo es una habilidad

Según la documentación de Claude Code y las habilidades de esta guía, una habilidad es un directorio como `skills/runbook/` que contiene `SKILL.md`. El archivo empieza con un encabezado YAML entre marcas `---`, que contiene al menos un `name` y una `description`. La documentación dice que la descripción indica al asistente qué hace la habilidad y cuándo usarla, y recomienda poner primero el caso de uso principal. El cuerpo da el método en markdown. Otros archivos, como documentos de referencia o scripts, pueden estar al lado y cargarse cuando hagan falta; la documentación aconseja mantener breve el propio `SKILL.md`, por debajo de 500 líneas.

Las habilidades copiadas en esta guía siguen la misma forma. Sus descripciones empiezan con "Use when asked to…", lo que aclara cuándo se aplica cada una.

### Dónde viven las habilidades

La documentación describe las habilidades personales en un directorio de habilidades del directorio personal del usuario, las habilidades de proyecto en un directorio de habilidades de un repositorio que puede confirmarse y compartirse con un equipo, y otras ubicaciones como los complementos. Para un equipo, una carpeta de proyecto bajo control de versiones es el lugar natural: las habilidades se revisan, se cambian con el mismo proceso que otro trabajo y están disponibles para todos.

### Escribir tus propias habilidades de equipo

Una habilidad de equipo captura una práctica que el equipo repite y quiere que se haga de manera coherente. Ejemplos para la gestión de servicios: cómo escribir un postmortem con el estilo de la casa, cómo clasificar cierto tipo de ticket, cómo preparar una solicitud de cambio, cómo dirigir tu revisión de los viernes. Para escribir una:

1. **Elige una tarea que repitas** y que tenga una manera buena y conocida de hacerse.
2. **Escribe primero la descripción,** empezando con "Use when…" y el caso de uso principal, para que el asistente y tus colegas sepan cuándo se aplica.
3. **Escribe el método** como pasos breves, con el formato de salida, las comprobaciones y lo que hay que evitar.
4. **Añade ejemplos** de un buen resultado, sin los detalles sensibles.
5. **Di lo que no debe hacer,** como inventar cifras o enviar algo sin revisión.
6. **Pruébala con casos reales** y revísala.
7. **Dale un responsable y una fecha de revisión,** como a cualquier otro documento compartido.

### Habilidades en esta guía

La carpeta `skills/` de este repositorio contiene copias de habilidades de la colección skills-on-ai, enumeradas en `skills/README.md`, y dos habilidades escritas para esta guía: una para lectores y otra para quienes la mantienen. Cada tema enlaza las habilidades más útiles para su asunto, con una frase sobre cuándo usar cada una. Las habilidades copiadas son genéricas, no específicas del contenido de esta guía, así que úsalas como puntos de partida y adapta sus resultados a tu contexto.

### Límites

Ninguna fuente leída para esta guía mide lo bien que funciona una técnica de prompting, y las herramientas de IA cambian rápidamente. La documentación de Claude Code leída era larga y se leyó solo en parte. Lo que sigue es consejo práctico que se ha mantenido en el uso general, ofrecido como hábitos que probar y no como garantías.

## Buenas prácticas

1. **Parte de una tarea real y material real.** Elige algo que necesites hacer y pega los hechos reales, no una descripción de ellos. Rellena cada marcador con detalles concretos.
2. **Enuncia el propósito en una línea.** Di para qué sirve el resultado y quién lo usará. Ayuda al asistente a elegir el nivel de detalle adecuado.
3. **Especifica el resultado.** Nombra el formato, la longitud y la estructura que quieres. Pide una tabla cuando quieras comparar, una lista cuando quieras pasos.
4. **Fija límites.** Di qué no debe hacer el asistente: inventar números, fuentes o citas; suponer hechos no dados; afirmar que una regla se aplica sin el texto.
5. **Pide primero preguntas aclaratorias.** Di al asistente que pregunte lo que necesita antes de responder. Responde brevemente y luego pídele que continúe.
6. **Pídele que separe hechos de suposiciones.** Haz que marque lo que tomó de tu material y lo que supuso. Los prompts de esta guía terminan con "Enumera de lo que no estés seguro".
7. **Solicita evidencia.** Pide citas de tu material que respalden cada afirmación, para poder comprobar con rapidez.
8. **Itera.** Trata la primera respuesta como un borrador. Di qué está mal y pide una revisión, o cambia el prompt y vuelve a probar.
9. **Prueba los prompts con varios casos.** Antes de depender de un prompt, ejecútalo con tres o cuatro entradas reales, incluida una inusual. Anota dónde falla.
10. **Protege los datos.** Elimina los detalles personales y confidenciales antes de pegar. Usa herramientas aprobadas. Sigue la política de tu organización.
11. **Comprueba antes de usar.** Verifica hechos, números y referencias. Haz que una persona revise todo lo que vaya a los clientes o cambie un sistema.
12. **Comparte lo que funciona.** Pon los prompts que resulten útiles, con sus notas, en una habilidad de equipo o un documento bajo control de versiones, con un responsable.

## Preguntas para conversar con tu equipo

**¿Qué tareas repetimos en las que un asistente podría ayudar y qué tendríamos que comprobar?**

Pide a cada persona que enumere tareas y marque el riesgo si el resultado fuera erróneo. Agrúpalas en riesgo bajo, medio y alto. Empieza con una de riesgo bajo. Quien facilite puede preguntar cuál sería el paso de comprobación. Elige una tarea para una prueba.

**¿Qué pegamos hoy en las herramientas de IA y deberíamos hacerlo?**

Sé honesto y sin juzgar. Enumera ejemplos. Compara con la política de datos y las herramientas aprobadas. Acordad una comprobación rápida que la gente pueda aplicar antes de pegar: "¿contiene esto datos personales, secretos o detalle confidencial?"

**¿Cuál de los prompts de esta guía probaríamos primero y con qué material real?**

Hojead juntos los prompts y elegid uno. Identifica el material real que pegar, elimina el detalle sensible y ejecútalo. Comparad los resultados y discutid qué cambiar en el prompt. Es una manera rápida de aprender el patrón.

**¿Cómo sabríamos que un prompt funciona?**

Pide un conjunto de prueba: unas pocas entradas reales con buenos resultados conocidos. Discute cómo puntuar las respuestas y quién decide. Un prompt sin conjunto de prueba es una esperanza. Acordad un conjunto pequeño para un prompt.

**¿Qué práctica repetimos que merece ser una habilidad de equipo?**

Enumera candidatas: un formato de revisión, una rutina de clasificación, una plantilla de informes. Elige una y redactad juntos la descripción y los pasos. Decidid quién es su responsable y cuándo se revisará.

**¿Qué no querríamos que una IA hiciera nunca por sí sola?**

Enumera acciones: enviar a clientes, cambiar producción, aprobar accesos, decidir una prioridad. Discute por qué. Las respuestas son los límites que escribir en tus prompts y habilidades. Acordad una lista corta.

## En la práctica: un ejemplo de ITIL ágil

El centro de servicios de TI de un hospital regional tiene catorce analistas. La jefa del centro ha notado que los colegas usan un asistente de IA de maneras distintas: uno pega tickets enteros, con nombres de pacientes, en un chatbot público; otra escribe prompts elaborados y obtiene resúmenes útiles; la mayoría no lo usa en absoluto. Un artículo de conocimiento reciente, redactado por un asistente, contenía un paso de procedimiento que no existía.

La jefa celebra una sesión de una hora con el enfoque de esta guía. Empieza con los datos: el grupo acuerda una regla de que ningún detalle de pacientes ni credenciales vayan a ninguna herramienta, y de que el asistente aprobado, que el hospital ha licenciado con condiciones adecuadas, es el único que se usa con el texto de los tickets. Elige una tarea, redactar un artículo de conocimiento a partir de un ticket resuelto, y usa el patrón de los prompts de esta guía: un propósito de una línea, un marcador para el ticket anonimizado, instrucciones de usar solo el contenido del ticket, de marcar con una etiqueta cualquier paso inferido y de enumerar de lo que no está seguro. Dos analistas ejecutan el prompt con cinco tickets pasados y el grupo lee juntos los resultados. En un caso el prompt inventa un paso; añaden una línea que pide una cita del ticket para cada paso.

La jefa escribe el prompt mejorado como una habilidad de equipo en la carpeta compartida del centro, con una descripción que empieza "Use when…", un responsable y una fecha de revisión, y añade la regla de que cada artículo redactado lo comprueba una segunda analista antes de publicarse. Tras dos meses, el número de artículos redactados por semana se ha duplicado y los revisores encuentran menos errores que antes. Quedan algunos problemas. Dos analistas siguen pegando detalles en una herramienta pública cuando van con prisa, la habilidad produce una redacción demasiado formal que los analistas reescriben y un revisor admite que lee por encima. La jefa repite la regla de datos en cada reunión de equipo, añade un ejemplo de estilo a la habilidad y pide a los revisores que marquen una breve lista de verificación.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega usan asistentes para código, pruebas y documentación. Aplica los mismos hábitos: material real, límites claros, verificación y revisión. Mantén los secretos fuera de los prompts y guarda los prompts y habilidades útiles junto con el código.

### Equipos de servicio y operaciones

Los equipos de operaciones pueden usar prompts para analizar tickets, redactar manuales de procedimientos y preparar revisiones. Mantén fuera los datos personales, comprueba los resultados con los registros y escribe habilidades para las rutinas que el equipo repite, como los postmortems y los traspasos de turno.

### Liderazgo y gobernanza

Los líderes fijan las reglas sobre qué puede usarse, con qué datos y quién es responsable. Pide un inventario, una política de datos y evidencia de los pilotos. Apoya el tiempo para que los equipos escriban y prueben prompts y habilidades y asegura que las habilidades compartidas tengan responsables.

### Clientes y usuarios

Los clientes y usuarios pueden ver los resultados de prompts y habilidades en respuestas, artículos y resúmenes. Espera que los proveedores los comprueben y te digan cuándo usan herramientas automatizadas donde importe. Comunica los errores, que ayudan a mejorar el material subyacente.

## Fallos frecuentes

- **Peticiones vagas.** El asistente adivina. En su lugar, aporta el material, el propósito y el resultado que quieres.
- **Pegar datos sensibles.** Los detalles personales o confidenciales salen de la organización. En su lugar, elimínalos y usa herramientas aprobadas.
- **Aceptar contenido inventado.** Se usan pasos, números o referencias fabricados. En su lugar, fija límites, pide citas y verifica.
- **Ajuste con un solo ejemplo.** Un prompt funciona una vez y falla en otros casos. En su lugar, prueba con varias entradas reales.
- **Habilidades sin responsables.** Los prompts compartidos se quedan obsoletos. En su lugar, asigna un responsable y una fecha de revisión y mantenlos bajo control de versiones.
- **Exceso de confianza en prompts copiados.** Se usa sin cambios un prompt de internet o de esta guía. En su lugar, adáptalo a tu contexto y comprueba los resultados.
- **Sin segunda revisión.** El resultado de la IA va directo a los clientes. En su lugar, haz que una persona revise todo lo que salga del equipo.
- **Tratar al asistente como una autoridad.** Se toma su aplomo por corrección. En su lugar, pide aquello de lo que no está seguro y comprueba.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Práctica de prompts | Las personas escriben prompts ad hoc | Algunas personas comparten prompts | Los equipos usan un patrón común con propósito, material, límites y comprobaciones | La calidad de los prompts se prueba con conjuntos de casos reales | Los prompts se mejoran entre equipos a partir de resultados de pruebas compartidos |
| Habilidades | No hay habilidades compartidas | Existen algunas habilidades personales | Habilidades de equipo con responsables y fechas de revisión viven bajo control de versiones | Se revisan el uso y los resultados de las habilidades | Las habilidades se comparten y se mantienen entre equipos y socios |
| Verificación y datos | Se confía en los resultados; los datos se pegan libremente | Algunas comprobaciones y reglas de datos | Los hábitos de verificación y una política de datos son rutina | Los errores y los incidentes de datos se siguen y se actúa según ellos | La verificación y la práctica de datos se coordinan en toda la organización |
| Aprendizaje | El aprendizaje es individual | Se comparten algunos consejos | Los equipos celebran sesiones periódicas para mejorar prompts y habilidades | Las mejoras se siguen y se miden | El aprendizaje se extiende continuamente entre equipos |

## Lista de verificación

- [ ] El equipo tiene una regla breve sobre qué datos pueden ir a qué herramientas de IA.
- [ ] Los prompts en que confiamos tienen un propósito declarado, material real, límites y una petición de aquello de lo que el asistente no está seguro.
- [ ] Cada prompt en que confiamos se ha probado con al menos tres entradas reales.
- [ ] Una persona revisa los resultados que salen del equipo.
- [ ] Las referencias y los números de los resultados de la IA se comprueban con las fuentes.
- [ ] Los prompts útiles se guardan con notas en un lugar compartido bajo control de versiones.
- [ ] Las habilidades de equipo tienen una descripción clara "Use when…", un responsable y una fecha de revisión.
- [ ] El equipo ha enumerado las acciones que la IA nunca debe emprender por sí sola.
- [ ] El personal sabe qué herramientas están aprobadas.
- [ ] Revisamos nuestros prompts y habilidades al menos dos veces al año.

## Prompts de IA

**Propósito: mejorar un prompt que ya usas.**

```text
Este es un prompt que uso: [pégalo].
Este es un ejemplo de una entrada que le doy, sin detalles sensibles: [pega].
Esto es lo que obtuve: [pega].
Esto es lo que quería: [describe].

Diagnostica por qué el resultado se quedó corto, usando solo el texto anterior. Sugiere un prompt revisado que: enuncie el propósito, nombre el formato de salida, fije límites (sin hechos, números ni fuentes inventados), pida primero preguntas aclaratorias, solicite citas del material aportado como evidencia y termine pidiendo que enumeres de lo que no estés seguro. Mantén los marcadores entre [corchetes]. No cambies la tarea. Enumera de lo que no estés seguro.
```

**Propósito: convertir una tarea repetida en un borrador de habilidad de equipo.**

```text
Ayúdame a redactar una habilidad de equipo en formato SKILL.md para esta tarea: [nombra y describe la tarea].

Cómo la hacemos hoy, paso a paso: [pega].
Cómo es un buen resultado (un ejemplo sin detalles sensibles): [pega].
Qué no debe ocurrir nunca (por ejemplo inventar cifras o enviar sin revisión): [enumera].

Escribe un SKILL.md con un encabezado YAML que contenga un name y una description que empiece con "Use when" y ponga primero el caso de uso principal, y luego un cuerpo con el propósito, pasos breves del método, el formato de salida, las comprobaciones y lo que hay que evitar. Mantenlo por debajo de 150 líneas. Marca como suposición todo lo que hayas añadido. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: construir un conjunto de prueba pequeño para un prompt.**

```text
Tengo un prompt que [describe lo que hace]: [pégalo].

Ayúdame a diseñar un conjunto de prueba de 5 a 10 entradas: casos típicos, un caso inusual, un caso con un campo que falta y un caso en que la respuesta correcta es "información insuficiente". Dime qué recoger de ejemplos reales (sin detalles sensibles), cómo registrar el resultado esperado y cómo puntuar los resultados (correcto, parcialmente correcto, erróneo, erróneamente seguro, correctamente rechazado). No inventes contenido de prueba; dame las categorías y qué buscar. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: comprobar un borrador escrito por IA frente a su fuente.**

```text
Este es el material fuente: [pega].
Este es un borrador producido por una herramienta de IA a partir de ese material: [pega].

Enumera cada enunciado del borrador, di si la fuente lo respalda (cita el texto que lo respalda), lo contradice o no lo menciona, y sugiere ediciones para eliminar los enunciados sin respaldo. No añadas hechos propios. Da un breve resumen de lo fiable que es el borrador. Enumera de lo que no estés seguro.
```

## Habilidades de IA

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): úsala para escribir, probar y mejorar prompts de modo que den resultados fiables.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): úsala para documentar para qué sirve un modelo y cuáles son sus límites cuando tu equipo depende de uno.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): úsala cuando ayudes a un equipo a construir hábitos en torno a prompts y habilidades con el tiempo.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): úsala para encontrar temas de esta guía, dirigir una conversación de equipo a partir de sus preguntas o adaptar uno de sus prompts.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): úsala al escribir o comprobar un tema, un prompt o un enlace de habilidad de esta guía.

## Fuentes principales

- **Documentación de habilidades de Claude Code** (code.claude.com): la descripción de cómo se estructuran las habilidades como directorios con un archivo `SKILL.md`.
- **Prompt engineering** (la habilidad `skills/prompt-engineering/SKILL.md` de esta guía): un enunciado breve de técnicas y el argumento a favor de probar los prompts con entradas reales.
- **Large language model** (Wikipedia): contexto sobre cómo se construyen estos sistemas y dónde pueden fallar.
- **AI Risk Management Framework** (NIST): el marco voluntario para gestionar los riesgos de la IA, útil para la política del equipo.

## Referencias

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
