# Métricas y Medición

**Una buena medición ayuda a un equipo a ver si su trabajo ayuda a los usuarios y va mejorando, y la manera más segura de usar cualquier medida es como una pregunta que conversar, nunca como un objetivo que alcanzar.**

## Por qué importa

Los equipos necesitan números para orientarse. Sin ellos, las decisiones dependen de la memoria, de las voces más fuertes y de quien habló último. Con los números equivocados, las decisiones pueden ser peores que ninguna: un equipo que cuenta tickets cerrados aprende a cerrar tickets rápido, se resuelvan o no los problemas de los usuarios. La medición es poderosa y cambia el comportamiento de maneras que sus diseñadores no siempre pretenden.

Esta guía ya ha usado muchas medidas: las medidas de entrega de software de DORA (véase Tema 3.4 — Habilitación de Cambios), las cuatro medidas de flujo de la Guía de Kanban (véase Tema 1.5 — Kanban), los indicadores y objetivos de nivel de servicio (véase Tema 3.7 — Gestión de Niveles de Servicio) y la carga de avisos (véase Tema 3.10 — Monitorización y Gestión de Eventos). Este tema las reúne, añade la fijación de metas con objetivos y resultados clave y las medidas de satisfacción del cliente, y las confronta con la advertencia más antigua del campo: la ley de Goodhart.

El [artículo de Wikipedia sobre la ley de Goodhart](https://en.wikipedia.org/wiki/Goodhart%27s_law) da el adagio en su forma habitual, "Cuando una medida se convierte en objetivo, deja de ser una buena medida", y lo atribuye al economista británico Charles Goodhart, que escribió en un artículo de 1975 sobre política monetaria del Reino Unido que toda regularidad estadística observada tiende a colapsar una vez que se ejerce presión sobre ella con fines de control. La redacción habitual es posterior, y el artículo la atribuye a Keith Hoskin (1996) y al artículo de 1997 de Marilyn Strathern. La idea tiene una larga historia en distintos campos y es el lugar adecuado para empezar este tema.

## Conceptos clave

### Medidas, objetivos y la ley de Goodhart

Una **medida** describe algo. Un **objetivo** es un número que se espera que alguien alcance. El paso de lo primero a lo segundo es donde empiezan los problemas. Una vez que se recompensa o castiga a las personas por un número, encuentran maneras de mover el número que no equivalen a mejorar aquello que describe. El artículo da ejemplos de política monetaria, sistemas escolares y atención sanitaria. En una organización de servicios, ejemplos fáciles son: el tiempo de cierre de tickets baja porque se cierran tickets antes de tiempo, los recuentos de despliegues suben porque se dividen los cambios y la disponibilidad parece subir porque se reclasifican las caídas.

El remedio no es evitar medir, sino medir con cuidado:

- Usa varias medidas que tiren en sentidos opuestos, como velocidad y calidad.
- Discute los números con las personas cuyo trabajo describen.
- No vincules recompensas o disciplina individuales a un solo número.
- Cambia las medidas cuando dejen de ser informativas.

### Tipos de medida

| Tipo | Pregunta a la que responde | Ejemplos |
|---|---|---|
| **Resultado** | ¿Están mejor los usuarios y el negocio? | Satisfacción de los usuarios, éxito de las tareas, ingresos, incidentes que perjudican a los usuarios |
| **Flujo** | ¿Cómo se mueve el trabajo? | Tiempo de ciclo, rendimiento, antigüedad del elemento de trabajo, trabajo en curso |
| **Desempeño de la entrega** | ¿Con qué calidad llegan los cambios a producción? | Plazo de entrega del cambio, frecuencia de despliegue, tasa de fallos de cambios, tiempo de recuperación |
| **Nivel de servicio** | ¿Satisface el servicio las necesidades de los usuarios? | Disponibilidad, latencia, tasa de errores frente a los objetivos |
| **Salud y sostenibilidad** | ¿Se puede seguir así? | Carga de avisos, toil, horas extra, ánimo del personal |
| **Coste** | ¿Cuánto cuesta por unidad de valor? | Coste por transacción o por usuario |

Un conjunto equilibrado toma de varias filas, para que mejorar una no se compre a costa de otra.

### Medidas de DORA

Las medidas de desempeño de entrega de software de DORA son el plazo de entrega del cambio, la frecuencia de despliegue, el tiempo de recuperación de despliegues fallidos, la tasa de fallos de cambios y la tasa de repetición de trabajo en despliegues. La guía de DORA sobre las métricas dice que velocidad y estabilidad no son un compromiso, pues las medidas están correlacionadas en la mayoría de los equipos. Advierte contra fijarlas como metas, confiar en una sola, comparar aplicaciones muy distintas y competir con otros equipos, y aconseja mejorar frente al propio desempeño pasado. El artículo de Wikipedia sobre DevOps añade que algunos expertos criticaron la metodología y las métricas de la investigación de DORA, así que trátalas como preguntas útiles con límites (véase Tema 5.2 — DevOps).

### Medidas de flujo

La Guía de Kanban define cuatro medidas: trabajo en curso, rendimiento, antigüedad del elemento de trabajo y tiempo de ciclo. Señala que los equipos pueden renombrarlas y deben añadir otras según haga falta, y dice que las medidas importan solo cuando informan las prácticas de definir el flujo de trabajo, gestionar los elementos en él y mejorarlo. La antigüedad del elemento de trabajo es especialmente útil porque muestra problemas cuando aún hay tiempo de actuar (véase Tema 5.4 — Gestión del Flujo de Valor).

### Medidas de nivel de servicio

Los indicadores y objetivos de nivel de servicio (véase Tema 3.7 — Gestión de Niveles de Servicio) dan la vista más directa de lo que experimentan los usuarios. El libro de SRE aboga por pocos indicadores elegidos entre lo que importa a los usuarios, por percentiles y no solo promedios, y por objetivos que no sean la perfección. Los presupuestos de errores convierten la diferencia en una regla de decisión compartida (véase Tema 5.3 — Ingeniería de Fiabilidad de Sitios).

### Objetivos y resultados clave

Los **objetivos y resultados clave (OKR)** son un marco de fijación de metas. El artículo de Wikipedia describe un OKR como un objetivo, una meta significativa, concreta y claramente definida, emparejado con de tres a cinco resultados clave, que son criterios de éxito medibles. Atribuye a Andrew Grove haber popularizado el enfoque en Intel en la década de 1970 y haberlo documentado en *High Output Management* (1983), y a John Doerr haberlo llevado a Google en 1999. El artículo dice que los OKR se puntúan de 0,0 a 1,0, que los resultados clave aspiracionales apuntan a cerca de 0,7 y que Doerr recomienda una tasa de éxito objetivo de aproximadamente el 70 por ciento, de modo que un resultado clave que siempre se cumple debe reevaluarse. Aconseja evitar los objetivos de trabajo habitual y favorecer los indicadores adelantados sobre los rezagados.

El artículo también recoge críticas: la mayoría de las organizaciones han dejado de fijar OKR para contribuyentes individuales, que tienden a parecer listas de tareas y a confundirse con las evaluaciones de desempeño, y los OKR de varios niveles pueden crear un enfoque en cascada. No da evidencia independiente de eficacia y lleva una etiqueta de mantenimiento sobre depender de fuentes cercanas al tema. Para los equipos de servicio, los OKR pueden conectar resultados (por ejemplo, "los usuarios completan el registro sin ayuda") con resultados clave medibles, siempre que no se conviertan en objetivos individuales.

### Satisfacción del cliente

Medir lo que piensan los usuarios es difícil de hacer bien. Un instrumento común es el **índice de recomendación neto (NPS)**. Según Wikipedia, se basa en una pregunta sobre la probabilidad de que los encuestados recomienden una empresa, producto o servicio, con promotores que puntúan 9 o 10, pasivos 7 u 8 y detractores 6 o menos; la puntuación es el porcentaje de promotores menos el porcentaje de detractores. Fred Reichheld, de Bain & Company, lo popularizó en un artículo de 2003 de la *Harvard Business Review*. El artículo registra límites: los académicos cuestionan si predice con fiabilidad el crecimiento de la empresa, un único ítem necesita grandes números de respuestas, dice poco sobre problemas concretos, el exceso de encuestas provoca quejas y vincularlo con la paga puede distorsionar el comportamiento, por lo que Reichheld recomendó desacoplar ambos. Existen otros instrumentos, como las puntuaciones de satisfacción del cliente y de esfuerzo del cliente, pero el artículo no los discute.

Sea cual sea el instrumento, haz una pregunta breve, permite siempre una respuesta de texto libre, lee los comentarios y da seguimiento a lo que aprendas.

### Medir a las personas y la sostenibilidad

Las medidas de carga y salud del personal, como la carga de avisos, el toil, las horas extra y el ánimo, son medidas de la sostenibilidad del servicio (véase Tema 5.3 — Ingeniería de Fiabilidad de Sitios). Trátalas como información sobre el sistema y no como medidas del desempeño de las personas.

### Medir la IA y la automatización

Cuando se introduce un paso automatizado o asistido por IA, añade medidas de su calidad: con qué frecuencia lo anulan los humanos, con qué frecuencia se equivoca y cuánto cuesta (véase Tema 6.2 — IA en la Gestión de Servicios de TI).

### Límites

Las medidas son parciales. Omiten lo difícil de contar, como la confianza, el oficio y el juicio. Pueden engañar cuando los datos están incompletos o las definiciones difieren entre equipos. Los artículos leídos aquí ofrecen poca evidencia empírica sobre si los programas de medición mejoran los resultados. Trata cualquier programa como un experimento y revísalo.

## Buenas prácticas

1. **Empieza por la pregunta.** Pregunta qué decisión informaría una medida y quién actuaría según ella. Si nadie lo haría, no la recojas.
2. **Elige un conjunto pequeño y equilibrado.** Escoge pocas medidas entre resultado, flujo, entrega, nivel de servicio y salud. Asegúrate de que algunas tiren en sentidos opuestos.
3. **Define cada medida con precisión.** Escribe qué se cuenta, de dónde y qué se excluye. Dos equipos que usan la misma palabra para cosas distintas producen números que no se pueden comparar.
4. **Mide por servicio o equipo y compara con su propio pasado.** Evita clasificar equipos. DORA aconseja mejorar frente al propio desempeño pasado y tener cuidado al comparar aplicaciones distintas.
5. **No conviertas un solo número en objetivo.** Usa las medidas como estímulo de conversación y fija las metas como resultados. Cuando una medida es un objetivo, vigila el amaño (véase la ley de Goodhart).
6. **Empareja los números con historias.** Para cualquier tendencia, mira unos pocos casos reales. Los números dicen dónde mirar; los casos dicen por qué.
7. **Mira las distribuciones.** Usa percentiles y rangos, no solo promedios, en las medidas de tiempo y tamaño.
8. **Prefiere los indicadores adelantados cuando puedas.** Medidas como la antigüedad del elemento de trabajo muestran el problema antes de que llegue, a diferencia de las medidas de resultados pasados.
9. **Fija las metas con objetivos y resultados clave con cuidado.** Si usas OKR, mantenlos al nivel de equipo y organización, evita los objetivos de trabajo habitual y trata un resultado que siempre se cumple como señal de apuntar más alto.
10. **Pregunta a los usuarios, brevemente y a menudo.** Usa una pregunta corta con texto libre, lee los comentarios y responde. No vincules las puntuaciones de las encuestas a la paga individual.
11. **Vigila el coste de medir.** Prefiere los datos que las herramientas producen como subproducto del trabajo. Abandona los informes manuales que nadie usa.
12. **Revisa las propias medidas.** Una o dos veces al año, pregunta qué medidas llevaron a decisiones y cuáles no, y retira las segundas.

## Preguntas para conversar con tu equipo

**¿Cuál de nuestras medidas ha llevado a una decisión en los últimos seis meses?**

Enumera las medidas y pide una decisión vinculada a cada una. Las medidas sin vínculo son candidatas a eliminarse. Quien facilite puede preguntar en qué medida confía menos la gente y por qué. Elimina o corrige una.

**¿Qué pasa con nuestro comportamiento cuando un número es un objetivo?**

Pide un ejemplo reciente en que un número fuera un objetivo. Indaga qué hizo la gente para alcanzarlo. El adagio de Goodhart es el marco. Pregunta cómo sería una medida mejor o un emparejamiento de medidas. Acordad un cambio.

**¿Medimos juntas la velocidad y la calidad?**

Enumera las medidas de velocidad y las de calidad. Si las listas están desequilibradas, discute el efecto. Por ejemplo, medir el tiempo de cierre de tickets sin los contactos repetidos invita al cierre prematuro. Elige un emparejamiento.

**¿Qué nos dicen los usuarios sobre cómo va y cómo preguntamos?**

Mira las preguntas que haces a los usuarios y con qué frecuencia. Lee en voz alta algunas respuestas de texto libre. Pregunta qué cambió gracias a ellas. Acordad una pregunta breve que probar.

**¿Cuáles de nuestras medidas podrían usarse para juzgar a personas y qué deberíamos hacer al respecto?**

Identifica las medidas que la gente podría temer. Discute los riesgos y acordad reglas explícitas sobre para qué no se usarán los números. Ponedlas por escrito.

**Si solo pudiéramos conservar cinco medidas, ¿cuáles conservaríamos?**

Pide a cada persona que elija cinco y compara. La coincidencia muestra el núcleo; las diferencias muestran necesidades distintas. El resultado es un conjunto inicial. Comprueba que cubre resultados, flujo, niveles de servicio y salud.

## En la práctica: un ejemplo de ITIL ágil

El grupo de TI de un ferrocarril nacional opera los sistemas de información al pasajero. El grupo presenta cada mes al equipo ejecutivo un panel de 40 medidas. Pocos lo leen, y dos medidas dominan la conversación: el número de incidentes cerrados dentro del plazo objetivo y el número de versiones por trimestre. El equipo de incidentes ha aprendido a cerrar incidentes rápido y a abrir otros nuevos por el mismo fallo, y varios equipos de entrega dividen el trabajo en versiones triviales para cumplir el recuento.

El jefe del grupo de TI pide a un pequeño equipo que reconstruya las medidas. Empiezan preguntando qué decisiones debería informar el panel. Para cada servicio eligen un puñado de medidas: un indicador y objetivo de nivel de servicio orientados al usuario, el plazo de entrega del cambio y la tasa de fallos de cambios, la antigüedad de los elementos de problemas abiertos, la carga de avisos por ingeniero y una encuesta mensual de satisfacción de una pregunta al personal de las estaciones con un cuadro de texto libre. Los antiguos recuentos se retiran. El equipo ejecutivo acuerda que ninguna medida se usará para clasificar equipos ni para fijar bonos individuales, y el jefe de TI lo escribe como regla en el panel. Se pide a los equipos que fijen metas de mejora para los servicios que poseen como objetivos con resultados clave, solo a nivel de equipo.

Tras un año, el panel tiene doce medidas y la revisión mensual se ha convertido en una conversación sobre los problemas abiertos más antiguos y los comentarios de texto libre. Los incidentes repetidos bajan y las versiones tienen más sentido. Quedan algunas dificultades. La encuesta de satisfacción recibe pocas respuestas del personal nocturno, el plazo de entrega de un equipo parece malo porque es el único que cuenta el tiempo desde la idea y no desde la confirmación, y un gerente ha empezado a citar la puntuación de la encuesta en una evaluación de desempeño. El jefe de TI pide al equipo que alinee las definiciones, recuerda la regla a los gerentes y organiza una breve encuesta en el cambio de turno de la noche.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega deben elegir medidas que les ayuden a orientarse, tomar los números de sus herramientas y discutirlos en las retrospectivas. Vigila las medidas que premian dividir el trabajo u ocultar fallos. Comparte lo que aprendes con otros equipos.

### Equipos de servicio y operaciones

Los equipos de operaciones llevan muchas de las medidas de nivel de servicio y de salud. Mantén claras las definiciones y fiables los datos, incluye la carga de avisos y el toil y presenta los números con casos y comentarios. Resiste cuando una medida se use como objetivo.

### Liderazgo y gobernanza

Los líderes dan forma a la cultura de la medición. Di para qué se usarán y para qué no los números, pide tendencias e historias y no clasificaciones, y resiste añadir medidas por cada nueva preocupación. Revisa de vez en cuando el conjunto completo.

### Clientes y usuarios

Los clientes y usuarios son a la vez fuente de medidas y objeto de ellas. Responde a las encuestas breves cuando puedas y di qué importa. Pregunta a los proveedores qué miden sobre tu experiencia y qué han hecho con los resultados.

## Fallos frecuentes

- **Medidas como objetivos.** Sigue el amaño. En su lugar, usa las medidas para conversar y fija las metas como resultados.
- **Un solo número.** Una única medida distorsiona el comportamiento. En su lugar, usa un conjunto equilibrado que tire en sentidos opuestos.
- **Definiciones incoherentes.** Los equipos cuentan de manera distinta. En su lugar, define cada medida y su fuente.
- **Clasificaciones.** Los equipos compiten y ocultan problemas. En su lugar, compara cada equipo con su propia historia.
- **Solo promedios.** Se ocultan las colas largas. En su lugar, mira distribuciones y percentiles.
- **Medir lo fácil.** Los números convenientes sustituyen a los importantes. En su lugar, parte de las decisiones y los resultados de los usuarios.
- **OKR individuales como listas de tareas.** Las metas se convierten en evaluaciones de desempeño. En su lugar, mantén los OKR al nivel de equipo y organización.
- **Fatiga de encuestas y vínculos con la paga.** Los usuarios dejan de responder o se manipulan las puntuaciones. En su lugar, mantén las encuestas breves y desacopladas de la paga.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Elección y definición | Las medidas son ad hoc | Algunos equipos definen unas pocas medidas | Se usa por servicio un conjunto equilibrado con definiciones claras | El conjunto se revisa por su utilidad y sus lagunas | Las medidas se alinean entre equipos, proveedores y clientes |
| Uso en las decisiones | Los números se informan pero rara vez se usan | Algunos equipos los discuten en las revisiones | Las medidas alimentan decisiones y mejoras regulares | Las decisiones vinculadas a medidas se siguen y se aprende de ellas | Las medidas orientan las decisiones en toda la organización |
| Protección contra el amaño | Los objetivos se fijan sobre números individuales | Cierta conciencia de la distorsión | Las reglas sobre cómo pueden usarse las medidas están escritas y se cumplen | Se vigilan los indicios de amaño y se ajustan las medidas | La cultura de la medición se comparte en toda la organización |
| Medidas de usuarios y salud | Pocos datos de usuarios o personal | Algunas encuestas o datos de carga | Las encuestas breves a usuarios y las medidas de sostenibilidad son rutina | Los resultados llevan a acciones planificadas y se comprueban | Las voces de usuarios y personal moldean las prioridades entre servicios |

## Lista de verificación

- [ ] Cada medida que informamos tiene una decisión declarada que informa.
- [ ] Usamos un conjunto pequeño y equilibrado que incluye medidas de resultado, flujo, nivel de servicio, entrega y salud.
- [ ] Cada medida tiene una definición y una fuente escritas.
- [ ] Los equipos se comparan con su propia historia, no se clasifican.
- [ ] Hemos escrito para qué no se usarán las medidas.
- [ ] Las medidas de tiempo muestran distribuciones o percentiles.
- [ ] Se pregunta a los usuarios regularmente una pregunta breve con espacio para comentarios y se leen las respuestas.
- [ ] Si usamos OKR, son de nivel de equipo u organización y no objetivos individuales.
- [ ] Los datos se toman de las herramientas como subproducto del trabajo siempre que es posible.
- [ ] Revisamos las propias medidas al menos una vez al año.

## Prompts de IA

**Propósito: elegir un conjunto equilibrado de medidas para un servicio.**

```text
Ayúdame a elegir un conjunto pequeño y equilibrado de medidas para [servicio].

Qué hace el servicio y quién lo usa: [describe].
Decisiones que el equipo y su responsable deben tomar el próximo trimestre: [enumera].
Datos que ya tenemos: [enumera herramientas y registros].
Medidas que informamos actualmente: [enumera].

Propón de cinco a ocho medidas entre resultado, flujo, desempeño de la entrega, nivel de servicio y salud (por ejemplo antigüedad del elemento de trabajo, plazo de entrega del cambio, un indicador de disponibilidad, carga de avisos y una pregunta breve de satisfacción). Para cada una, di qué decisión informa, qué datos necesita y una manera en que podría amañarse. No fijes objetivos. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: descubrir cómo podría amañarse una medida.**

```text
Esta es una medida que usamos y cómo se usa: [describe la medida, su definición y quién la ve o es recompensado por ella].

Enumera maneras en que la gente podría cambiar su comportamiento para mejorar el número sin mejorar el trabajo subyacente, usando solo la descripción. Sugiere una medida emparejada que revele cada distorsión y una pregunta que hacer al equipo. No acuses a nadie. Enumera de lo que no estés seguro.
```

**Propósito: escribir OKR para un equipo de servicio sin convertirlos en tareas.**

```text
Ayúdame a redactar OKR para [equipo] para el próximo trimestre.

Contexto: [describe el servicio y el principal problema de los usuarios].
Resultados que queremos para los usuarios: [enumera].
Medidas que ya recogemos: [enumera].
Riesgos que hemos visto con las metas en el pasado: [por ejemplo, amaño o listas de tareas].

Redacta dos o tres objetivos, cada uno con de tres a cinco resultados clave que sean resultados medibles (no tareas), usando solo medidas que podamos recoger, y deja los valores objetivo como [por acordar con el equipo]. Para cada resultado clave, nombra la fuente de datos y una posible distorsión. No fijes OKR individuales. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: analizar comentarios de texto libre de una encuesta.**

```text
Estos son comentarios de texto libre de nuestra última encuesta a usuarios: [pega comentarios anonimizados].

Agrupa los comentarios en temas basándote solo en lo que dicen. Para cada tema, da un nombre, el número de comentarios de mi lista, dos citas breves de ejemplo y una pregunta para el equipo. Destaca los temas que aparecen tanto en comentarios positivos como negativos. No infieras datos demográficos ni sentimientos más allá del texto. Si la muestra es pequeña, dilo. Enumera de lo que no estés seguro.
```

## Habilidades de IA

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): úsala para elegir e interpretar medidas de entrega y de desempeño del servicio.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): úsala para elegir medidas de alerta temprana de los riesgos de un servicio.
- [survey-design](../../../../skills/survey-design/SKILL.md): úsala para diseñar encuestas breves a usuarios y personal que produzcan respuestas utilizables.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): úsala para recoger y responder a la retroalimentación de usuarios y colegas.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): úsala para vincular las medidas de resultados con aquello en lo que trabajará el equipo a continuación.

## Fuentes principales

- **DORA's software delivery performance metrics** (dora.dev): definiciones de las cinco medidas y cautelas sobre su uso.
- **Goodhart's law** (Wikipedia): el origen y la redacción del adagio según el cual una medida usada como objetivo deja de ser una buena medida.
- **Objectives and key results** (Wikipedia): el marco, sus orígenes, la puntuación y las críticas.
- **Net promoter score** (Wikipedia): la definición, los usos y las críticas de una medida de satisfacción.

## Referencias

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
