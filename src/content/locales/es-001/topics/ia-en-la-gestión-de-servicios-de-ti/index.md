# IA en la Gestión de Servicios de TI

**La inteligencia artificial puede acelerar la detección, la clasificación y el trabajo de conocimiento en la gestión de servicios de TI, y solo es seguro usarla donde una persona sigue siendo responsable, las respuestas se apoyan en tu propio material y se gestionan los riesgos de error, sesgo y exposición de datos.**

## Por qué importa

La gestión de servicios implica mucho lenguaje y reconocimiento de patrones: leer tickets, resumir incidentes, buscar conocimiento, redactar respuestas, detectar señales inusuales en los datos de monitorización. Son las tareas en las que los sistemas de IA recientes parecen más capaces, y los proveedores se han apresurado a añadirlas a los centros de servicios y a las herramientas de operaciones. A los equipos se les preguntará, si no se les ha preguntado ya, si deben usarlas.

La oportunidad es real, y también lo son los peligros. Los sistemas de IA pueden afirmar falsedades con aplomo, reflejar sesgos de su entrenamiento y de los datos que se les dan, exponer información confidencial si se les alimenta con descuido y llevar a las personas a confiar en resultados que no han comprobado. Varios casos muy difundidos muestran el coste de la confianza mal depositada. Una organización de servicios que adopta la IA sin reflexionar puede dañar a sus clientes y su propia reputación.

En 2026, la IA también ha entrado en el marco. La página pública de certificación de PeopleCert describe el nuevo ITIL como "Práctico y nativo de IA por diseño" y enumera un módulo de ITIL AI Governance (Versión 5) que trata de gobernar la IA "de manera responsable y a escala" (véase Tema 2.2 — ITIL). Esta guía no pudo verificar con las publicaciones del propietario qué dice ITIL 5 en detalle sobre la IA, por lo que este tema no describe la postura del marco más allá de esas declaraciones. Se apoya en los artículos de Wikipedia sobre AIOps y sobre la alucinación de la IA, en la página del Marco de Gestión de Riesgos de IA del NIST y en el razonamiento práctico, y señala la práctica como tal.

## Conceptos clave

### Dónde ayuda la IA en la gestión de servicios

La mayoría de los usos entran en unos pocos grupos. La tabla muestra ejemplos y el tipo de riesgo de cada uno, según la lectura de esta guía.

| Uso | Qué hace la IA | Riesgos principales |
|---|---|---|
| **Detección y correlación (AIOps)** | Encuentra anomalías, agrupa sucesos relacionados, sugiere causas probables | Falsas alarmas, sucesos no detectados, razonamiento opaco |
| **Asistencia al centro de servicios** | Sugiere respuestas, resume tickets, redacta contestaciones, enruta solicitudes | Respuestas erróneas o inventadas, tono, privacidad |
| **Trabajo de conocimiento** | Redacta y mejora artículos, busca conocimiento | Contenido fabricado, fuentes obsoletas |
| **Análisis de incidentes y problemas** | Resume cronologías, sugiere hipótesis, redacta revisiones | Causas verosímiles pero infundadas |
| **Apoyo a cambios y versiones** | Revisa cambios, redacta notas, sugiere riesgo | Exceso de confianza, contexto perdido |
| **Código y automatización** | Escribe scripts y configuración | Código inseguro o incorrecto, dependencias ocultas |
| **Análisis e informes** | Resume datos, redacta informes | Cálculos erróneos, cifras inventadas |

### AIOps

El artículo de Wikipedia describe el AIOps como el uso de la IA, el aprendizaje automático y el análisis de macrodatos para automatizar y mejorar la gestión de centros de datos, con el objetivo de detectar, diagnosticar y resolver problemas de TI con más eficiencia que los métodos tradicionales. Dice que Gartner definió por primera vez el AIOps en 2016. El artículo enumera capacidades que incluyen la correlación de sucesos, la detección de anomalías, el análisis de causa raíz, la determinación de causalidad, el análisis predictivo, la gestión de incidentes, la corrección automatizada, la predicción del rendimiento, la asignación de recursos y la gestión de la capacidad. Dice que el AIOps se apoya en datos de observación, como los registros y la monitorización, y en datos de interacción, como los tickets, los sucesos y los registros de incidentes.

El artículo afirma beneficios, como una mejora del 15 al 20 por ciento en el tiempo medio de detección y una caída de más del 50 por ciento en los incidentes críticos, pero señala que proceden de un único artículo de una consultora y que el texto no los verifica de forma independiente. No expone críticas, casos de fallo ni limitaciones. Trata las afirmaciones de los proveedores en consecuencia y prueba cualquier herramienta con tus propios incidentes (véase Tema 3.10 — Monitorización y Gestión de Eventos).

### IA generativa y alucinación

El artículo de Wikipedia sobre la alucinación en la IA la define como una respuesta que contiene información falsa o engañosa presentada como un hecho, y señala que el término se critica por antropomorfizar el software. Da causas: el preentrenamiento en la predicción de la palabra siguiente premia adivinar cuando el modelo carece de información, los conjuntos de datos pueden estar incompletos o no ser representativos, y los investigadores de OpenAI sostienen que el entrenamiento y la evaluación premian adivinar sobre reconocer la incertidumbre. Los ejemplos que recoge incluyen:

- **Mata v. Avianca (mayo de 2023):** un abogado presentó seis casos falsos generados por ChatGPT; el juez impuso una multa de 5.000 dólares el 23 de junio de 2023.
- **Moffatt v. Air Canada (febrero de 2024):** un tribunal obligó a una aerolínea a cumplir una política de duelo que su chatbot había inventado.
- Informes de una consultora que contenían citas falsas y un estudio que halló que 69 de 178 referencias de GPT-3 tenían identificadores incorrectos o inexistentes.

Son las consecuencias de confiar en resultados no verificados: responsabilidad legal, exposición financiera y confianza dañada. En la gestión de servicios, un chatbot que inventa una política o un procedimiento crea la misma clase de riesgo.

### Mitigación: fundamentación y comprobaciones

El artículo describe la generación aumentada por recuperación (RAG) como una manera de que el modelo acceda a fuentes externas antes de responder. También enumera métodos relacionados con los datos, métodos del modelo y de la inferencia y propuestas como el software de barandillas y la puntuación de confianza, y señala que ninguna fuente que da cuantifica cuánto reduce la alucinación cada uno de ellos. Para un equipo de servicio, las mitigaciones prácticas son:

- **Fundamenta las respuestas en tu propio material aprobado,** como la base de conocimiento, y muestra la fuente.
- **Mantén a una persona en el circuito** para todo lo que afecte a un cliente, un compromiso o producción.
- **Pide aquello de lo que la IA no está segura** y trata las afirmaciones sin respaldo como no verificadas.
- **Prueba con regularidad** con casos reales, incluidos los casos en que la respuesta correcta es "no lo sé".

### Marcos de gestión de riesgos

El Instituto Nacional de Estándares y Tecnología (NIST) publicó el Marco de Gestión de Riesgos de IA (AI RMF 1.0) el 26 de enero de 2023, que describe como destinado al uso voluntario, para ayudar a gestionar los riesgos de la IA para las personas, las organizaciones y la sociedad y a mejorar la capacidad de incorporar consideraciones de fiabilidad en el diseño, el desarrollo, el uso y la evaluación de productos, servicios y sistemas de IA. La página del NIST nombra cuatro funciones, Gobernar, Mapear, Medir y Gestionar, pero no las describe. También publicó un Perfil de Inteligencia Artificial Generativa (NIST-AI-600-1) el 26 de julio de 2024 para ayudar a las organizaciones a identificar los riesgos propios de la IA generativa, y dice que el marco se está revisando. Lee el propio marco para el detalle. Otras reglas sobre la IA, como leyes y normas, difieren según el país y el sector; pregunta a tus funciones jurídica y de cumplimiento y obtén el texto (véase Tema 5.7 — Gobernanza, Riesgo y Cumplimiento).

### Protección de datos y privacidad

Todo lo que se da a un servicio de IA puede almacenarse, usarse para entrenar o exponerse, según el servicio y las condiciones. Los tickets, los registros y las transcripciones de chat contienen a menudo datos personales, credenciales e información confidencial del negocio. Antes de usar cualquier herramienta de IA con datos reales, averigua adónde van los datos, quién puede verlos, cuánto tiempo se conservan y si se usan para entrenar modelos, y aplica tu política de seguridad de la información (véase Tema 3.13 — Gestión de la Seguridad de la Información). Elimina o sustituye los datos personales y secretos antes de pegarlos en una herramienta que no hayas aprobado.

### Responsabilidad y transparencia

Una persona o un equipo debe seguir siendo responsable de las decisiones a las que contribuye una IA. Cuando la IA redacta una respuesta, el remitente es responsable. Cuando la IA sugiere una causa raíz, el investigador es responsable de comprobarla. Di a los clientes cuándo hablan con un sistema automatizado cuando la ley, un contrato o la equidad lo exijan, y ofrece una vía hacia una persona. Conserva registros de lo que se pidió a la IA y de lo que produjo para decisiones significativas, como harías con otras herramientas (véase Tema 5.1 — Gestión de Servicios Ágil sobre la evidencia).

### Sesgo y equidad

Los sistemas de IA aprenden de datos que reflejan decisiones y lagunas del pasado. Un asistente de clasificación entrenado con tickets históricos puede tratar a algunos grupos de usuarios o a algunos tipos de problemas como de menor prioridad. Comprueba los resultados entre grupos, involucra a personas con perspectivas distintas en las pruebas y vigila los patrones. Las fuentes leídas para esta guía no detallan el sesgo, por lo que esto es una cautela general, no un hallazgo.

### Medir la IA

Mide la calidad y el efecto de cualquier paso de IA, no solo su volumen: con qué frecuencia lo anulan los humanos, con qué frecuencia se equivoca, cuánto tardan las tareas con y sin ella y qué dicen los usuarios (véase Tema 5.6 — Métricas y Medición). Sé cauto con las cifras de los proveedores; las propias afirmaciones de beneficios del artículo sobre AIOps descansan en una sola fuente.

### Habilidades y prompts

La habilidad práctica de trabajar con la IA incluye escribir instrucciones claras, aportar el material adecuado, pedir la incertidumbre y verificar los resultados. El Tema 6.3 — Habilidades y Prompts de IA lo trata en detalle.

### Límites de las fuentes

El artículo sobre AIOps no contiene críticas y sus cifras de beneficios proceden de una sola fuente; el artículo sobre la alucinación está marcado como necesitado de actualización y se leyó en parte; la página del NIST no describe las funciones del marco; y la página de PeopleCert no explica qué dice ITIL 5 sobre la IA. Por ello, este tema da un relato cauteloso y deja los detalles a las fuentes primarias.

## Buenas prácticas

1. **Empieza con un uso de bajo riesgo y una pregunta clara.** Elige una tarea en la que los errores sean baratos y fáciles de detectar, como redactar un resumen de uso interno, y define qué significa el éxito.
2. **Mantén a una persona responsable.** Nombra quién es responsable de aquello a lo que contribuye la IA y exige revisión para todo lo que llegue a un cliente, cambie producción o asuma un compromiso.
3. **Fundamenta las respuestas en material aprobado.** Donde uses la IA para respuestas, conéctala a tu propia base de conocimiento y muestra la fuente. Haz que diga "no lo sé" cuando carezca de ella.
4. **Protege los datos.** Decide qué datos pueden ir a qué herramienta, elimina los datos personales y secretos y usa herramientas aprobadas con condiciones que hayas leído. Involucra pronto al personal de seguridad y jurídico.
5. **Prueba con casos reales.** Reúne un conjunto de tickets e incidentes reales con respuestas conocidas, ejecuta la IA con ellos y registra dónde falla. Repite tras cualquier cambio de herramienta o configuración.
6. **Verifica afirmaciones y referencias.** Comprueba nombres, números, citas y procedimientos con las fuentes, como muestran los casos de citas judiciales inventadas. No aceptes nunca referencias que no hayas visto.
7. **Sé honesto con los clientes.** Di cuándo responde un sistema automatizado donde importe y ofrece una vía fácil hacia una persona.
8. **Vigila el sesgo.** Revisa los resultados entre grupos de usuarios y tipos de problemas e involucra a personas que puedan detectar lagunas. Ajusta o detén el uso donde aparezca daño.
9. **Mide la calidad y el efecto.** Sigue las tasas de anulación, las tasas de error, el tiempo ahorrado y la opinión de los usuarios. Compara con el proceso sin IA y sé escéptico ante las cifras de los proveedores.
10. **Conserva registros.** Para decisiones significativas, conserva lo que se pidió y se produjo, quién lo revisó y qué se decidió. Esto apoya la responsabilidad y la auditoría.
11. **Usa un marco de riesgos.** Adopta un enfoque reconocido, como el AI RMF del NIST o una política organizacional de IA, para estructurar las decisiones sobre dónde se permite la IA. Trátalo como una guía de pensamiento.
12. **Forma a las personas.** Enseña al personal cómo funcionan las herramientas, dónde fallan y qué está permitido. Actualiza la formación a medida que cambien las herramientas y las reglas.

## Preguntas para conversar con tu equipo

**¿Dónde estamos ya usando la IA, oficialmente o no?**

Pregunta con honestidad. El personal suele usar herramientas públicas con tickets reales. El objetivo no es castigar sino comprender. Enumera los usos y los datos implicados. Discute cuáles son aceptables y cuáles necesitan una vía más segura. Acordad una política breve.

**¿Con qué tarea querríamos más ayuda y qué pasa si la IA se equivoca?**

Elige una tarea y recorre el caso de fallo. Si la respuesta es un correo de disculpa, el riesgo es pequeño; si es una instrucción errónea a un cliente, el riesgo es mayor. Esto ayuda a ordenar los usos por riesgo. Elige un primer piloto con daño limitado.

**¿Cómo sabríamos que una respuesta de la IA es errónea?**

Pregunta quién comprueba las respuestas y cómo. Respuestas comunes: nadie, o la persona que preguntó. Discute fuentes, pruebas y segundas revisiones. Acordad una comprobación mínima para cada tipo de uso.

**¿Qué datos nos sentimos cómodos poniendo en una herramienta de IA y cuáles no?**

Recoge los tipos: tickets, registros, nombres de clientes, credenciales, contratos. Marca cada uno como aceptable, aceptable tras eliminar las partes sensibles, o nunca. Consulta con seguridad y jurídico. Escríbelo como una guía de una página.

**¿Quién es responsable cuando falla una decisión asistida por IA?**

Usa un ejemplo pasado de una decisión asistida por una herramienta. Pregunta quién respondió. Acordad que una persona con nombre sigue siendo responsable y qué evidencia debería conservar. Anota cualquier laguna en que nadie lo sería.

**¿Qué nos convencería de que una herramienta merece conservarse?**

Pide al equipo que describa la evidencia que aceptaría: tiempo ahorrado con calidad igual o mejor, menos errores, satisfacción de los usuarios. Discute cómo reunirla en una prueba. Acordad una fecha de revisión.

## En la práctica: un ejemplo de ITIL ágil

El centro de servicios de TI de una autoridad tributaria nacional atiende unos 1.200 contactos por semana del personal, muchos sobre preguntas rutinarias. El gerente del centro propone un asistente de IA que sugiera respuestas desde la base de conocimiento y redacte contestaciones. La oficial de seguridad de la autoridad se preocupa por los datos personales de los tickets y por las respuestas erróneas que lleguen al personal.

Acuerdan un piloto limitado. El asistente trabaja solo con artículos de conocimiento aprobados, muestra de qué artículo procede cada sugerencia y dice cuándo no encuentra nada pertinente. Los analistas revisan cada respuesta sugerida antes de enviarla, y la herramienta no puede enviar por sí sola. Los tickets se analizan en busca de datos personales y credenciales, que se eliminan antes de que el asistente los vea. Antes del piloto se usa un conjunto de prueba de 200 tickets pasados con respuestas conocidas, y el equipo registra dónde falla el asistente. El gerente del centro y la oficial de seguridad acuerdan las medidas: con qué frecuencia editan o rechazan los analistas las sugerencias, el tiempo hasta la primera respuesta y una breve pregunta de satisfacción para el personal. El piloto dura tres meses y el gerente informa a una revisión conjunta que incluye a un analista y a un representante del personal.

Al final, los analistas aceptan la mayoría de las sugerencias para las preguntas comunes y baja el tiempo de respuesta en ellas. El conjunto de prueba muestra que el asistente da una respuesta segura pero errónea a las preguntas sobre una política cambiada recientemente, porque el artículo de conocimiento estaba desactualizado. Quedan algunos problemas. Dos analistas empezaron a enviar sugerencias con poca comprobación cuando estaban ocupados, un miembro del personal con una pregunta no estándar recibió una respuesta insulsa que no daba en el blanco y las condiciones del proveedor sobre la conservación de datos eran poco claras. El gerente añade una regla según la cual los cambios de política deben actualizar el artículo de conocimiento antes de entrar en vigor, usa una comprobación por muestreo de las respuestas enviadas a cargo de una analista sénior y pide a compras y a la oficial de seguridad que aclaren las condiciones antes de ampliar el piloto.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega pueden añadir funcionalidades de IA a los productos y usar la IA para escribir código y pruebas. Comprueba la corrección y la seguridad del código generado, mantén los secretos fuera de los prompts y sé claro con los usuarios cuando interviene la IA. Integra en tu servicio la monitorización del comportamiento de la IA.

### Equipos de servicio y operaciones

Los equipos de operaciones se encontrarán con la IA en la monitorización, las herramientas del centro de servicios y el análisis. Trata las sugerencias de la IA como hipótesis, pruébalas y conserva registros. Ayuda a definir qué datos pueden usarse y da retroalimentación para mejorar el material de fundamentación.

### Liderazgo y gobernanza

Los líderes fijan la política, el apetito de riesgo y la responsabilidad respecto de la IA. Pide un inventario de usos, un marco de riesgos y evidencia de los pilotos, no afirmaciones de los proveedores. Asegúrate de que el personal jurídico, de seguridad y de privacidad participe desde el principio.

### Clientes y usuarios

A los clientes y usuarios se les debe decir cuándo tratan con un sistema automatizado donde importe, y tener una vía hacia una persona. Comunica las respuestas erróneas o extrañas, pues son evidencia. Pregunta a los proveedores cómo protegen tus datos y comprueban los resultados de la IA.

## Fallos frecuentes

- **Confiar en resultados no verificados.** Hechos fabricados llegan a los clientes. En su lugar, fundamenta las respuestas en material aprobado y verifica antes de enviar.
- **IA en la sombra.** El personal pega datos reales en herramientas públicas. En su lugar, proporciona herramientas aprobadas y una política clara de datos.
- **Sin persona responsable.** Nadie responde de las decisiones asistidas por IA. En su lugar, nombra un responsable y exige revisión.
- **Creer las cifras del proveedor.** Las afirmaciones de beneficios no se comprueban. En su lugar, prueba con tus propios casos y mide.
- **Fundamentación obsoleta.** La base de conocimiento es errónea y la IA la repite. En su lugar, mantén los artículos al día y con responsable.
- **Sesgo oculto.** Algunos usuarios o asuntos reciben peor trato. En su lugar, prueba entre grupos y revisa los resultados.
- **Automatizar antes de comprender.** La IA actúa en producción sin comprobaciones. En su lugar, empieza con sugerencia y revisión y pasa a la acción solo con salvaguardas sólidas.
- **Sin registros.** Las decisiones no pueden auditarse. En su lugar, conserva registros de lo que se pidió, se produjo y se decidió.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Política y responsabilidad | El uso es ad hoc y no se registra | Algunos equipos tienen reglas | Una política escrita, un inventario de usos y responsables con nombre | Se revisan el cumplimiento de la política y los incidentes | La política se alinea entre equipos, proveedores y reguladores |
| Calidad y fundamentación | Se confía por defecto en los resultados | Algunas comprobaciones en los usos importantes | Las respuestas se fundamentan en fuentes aprobadas y se prueban con casos reales | Las tasas de error y de anulación se miden y se actúa según ellas | La fundamentación y las pruebas se comparten y se mejoran entre equipos |
| Protección de datos y equidad | Los datos se pegan libremente | Existen algunas reglas de datos | Las reglas de tratamiento de datos y las comprobaciones de sesgo son rutina | Los incidentes de datos y los hallazgos de equidad se siguen y se corrigen | Las prácticas de datos y equidad se coordinan en la organización y con los proveedores |
| Valor y aprendizaje | Se da por supuesto el valor | Se hacen algunas pruebas | Los pilotos tienen medidas y decisiones acordadas | Los beneficios y costes se miden frente a líneas base | El aprendizaje del uso de la IA se extiende continuamente entre servicios |

## Lista de verificación

- [ ] Tenemos un inventario de dónde se usa la IA en nuestros servicios o a su alrededor, incluido el uso no oficial.
- [ ] Una persona con nombre es responsable de cada uso asistido por IA.
- [ ] Una política escrita dice qué datos pueden ir a qué herramientas.
- [ ] Los datos personales y los secretos se eliminan o se enmascaran antes de usar herramientas no aprobadas para ellos.
- [ ] Las respuestas mostradas a los clientes o usadas en decisiones se fundamentan en material aprobado y se revisan.
- [ ] Tenemos un conjunto de prueba de casos reales y lo repetimos tras los cambios.
- [ ] Se dice a los clientes cuándo responde un sistema automatizado, donde importa, y tienen una vía hacia una persona.
- [ ] Medimos la tasa de anulación, la tasa de error, el tiempo ahorrado y la opinión de los usuarios.
- [ ] Se conservan registros de las decisiones significativas asistidas por IA.
- [ ] El personal jurídico, de seguridad y de privacidad ha revisado nuestro uso y las condiciones de la herramienta.

## Prompts de IA

**Propósito: redactar un inventario de uso de IA a partir de lo que cuenta la gente.**

```text
Ayúdame a estructurar un inventario del uso de IA en nuestra organización de servicios.

Para qué dicen las personas que usan la IA (pega notas; quita los nombres): [pega].
Herramientas mencionadas: [enumera].
Tipos de datos implicados, hasta donde sabemos: [enumera].

Produce una tabla con: uso, herramienta, datos implicados, quién es responsable (usa "desconocido" si no se indica), riesgo si falla (bajo, medio, alto con una razón de una frase tomada de mis notas) y una pregunta que hacer. No adivines sobre herramientas o condiciones que no mencioné. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: diseñar un conjunto de prueba para un asistente de IA.**

```text
Diseña un conjunto de prueba para un asistente de IA que sugiere respuestas a preguntas del centro de servicios.

Las fuentes de conocimiento que usará: [describe].
Tipos de pregunta que recibimos: [enumera con la proporción aproximada si la conoces].
Casos en que la respuesta correcta es "no está en la base de conocimiento" o "escalar": [describe].

Propón una estructura para 100-200 casos de prueba (categorías, cómo elegir ejemplos reales, cómo registrar la respuesta correcta y su fuente), cómo puntuar las respuestas (correcta, parcialmente correcta, errónea, erróneamente segura, correctamente rechazada) y cómo repetir tras los cambios. No inventes contenido de prueba; dime qué recoger. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: escribir una política de uso de IA de una página para un equipo.**

```text
Redacta una política de uso de IA de una página para [equipo].

Herramientas aprobadas: [enumera, o escribe "ninguna todavía"].
Datos que manejamos (tipos y sensibilidad): [enumera].
Reglas que debemos cumplir, con el texto de la fuente de jurídico, seguridad o contratos: [pega, o escribe "ninguna conocida"].
Roles: [enumera].

Escribe secciones en lenguaje llano: para qué puede usarse la IA, qué datos pueden y no pueden ponerse en las herramientas, qué debe comprobar una persona antes del uso, quién es responsable, cómo registrar los usos significativos, cómo comunicar problemas. Marca cada elemento que sea una suposición. No afirmes que una ley exige algo a menos que haya pegado su texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: revisar una respuesta generada por IA antes de que llegue a un usuario.**

```text
Este es un borrador de respuesta que produjo una herramienta de IA para la pregunta de un usuario.

La pregunta del usuario: [pega, sin datos personales].
El artículo o artículos de conocimiento en que debería basarse la respuesta: [pega].
El borrador de respuesta: [pega].

Comprueba el borrador solo frente al artículo. Enumera los enunciados respaldados por el artículo (cita la parte), los que no lo están, todo lo que falta y que el usuario necesitaría, y el tono. Sugiere una versión corregida que use solo el artículo. No añadas hechos. Enumera de lo que no estés seguro.
```

## Habilidades de IA

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): úsala para escribir prompts claros que aporten el material adecuado y pidan la incertidumbre.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): úsala para documentar para qué sirve un modelo, cómo se probó y sus límites.
- [data-governance](../../../../skills/data-governance/SKILL.md): úsala para decidir qué datos pueden usarse con qué herramientas.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): úsala para preparar preguntas para el personal jurídico y de privacidad sobre el uso de la IA.
- [risk-register](../../../../skills/risk-register/SKILL.md): úsala para registrar los riesgos relacionados con la IA, sus responsables y tratamientos.

## Fuentes principales

- **AIOps** (Wikipedia): una breve descripción de la IA para operaciones de TI, sus capacidades y sus beneficios afirmados, sin críticas.
- **Hallucination (artificial intelligence)** (Wikipedia): causas, ejemplos e ideas de mitigación de los resultados falsos.
- **AI Risk Management Framework** (NIST): el marco voluntario y su perfil de IA generativa; lee el propio marco para los detalles.
- **ITIL certifications** (PeopleCert): las declaraciones públicas del propietario sobre el nuevo ITIL y su módulo de gobernanza de la IA.

## Referencias

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
