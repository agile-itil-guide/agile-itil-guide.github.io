# Gestión de Niveles de Servicio

**La gestión de niveles de servicio convierte lo que necesitan los usuarios en objetivos que un equipo puede medir y defender, y la forma más útil para los equipos ágiles es un número reducido de objetivos centrados en el usuario con un presupuesto explícito para el fallo.**

## Por qué importa

Todo servicio tiene un nivel de calidad, lo haya medido alguien o no. Si no se declara, los usuarios suponen uno y el equipo supone otro, y la diferencia se descubre durante una caída. La gestión de niveles de servicio es la práctica de declarar el nivel, medirlo y actuar según los resultados. Da al equipo algo con lo que orientarse y da a los clientes algo en lo que confiar.

Los equipos ágiles a menudo se resisten a los niveles de servicio porque los asocian con contratos y penalizaciones. Sin embargo, un equipo ágil que publica cada semana está tomando una decisión, lo sepa o no, sobre cuánto riesgo asumir con la disponibilidad. Un objetivo claro hace explícita esa decisión. El libro *Site Reliability Engineering* de Google, en su capítulo sobre objetivos de nivel de servicio, describe cómo hacerlo de una manera que conviene a los equipos que se mueven deprisa: elegir unos pocos indicadores que importen a los usuarios, fijar objetivos y usar el margen entre lo perfecto y lo aceptable, el presupuesto de errores, para decidir cuándo publicar.

Este tema combina ese capítulo con el [artículo de Wikipedia sobre los acuerdos de nivel de servicio](https://en.wikipedia.org/wiki/Service-level_agreement) para las definiciones de acuerdos, y con vocabulario de ITIL de uso amplio que esta guía no pudo contrastar con el texto del propietario del marco. El capítulo de SRE refleja la práctica de una organización y defiende un enfoque específico; léelo como una opción bien explicada, no como una regla universal.

## Conceptos clave

### Indicador, objetivo, acuerdo

El capítulo de SRE distingue tres términos que a menudo se confunden:

| Término | Significado | Ejemplo |
|---|---|---|
| **Indicador de nivel de servicio (SLI)** | Una medida cuantitativa cuidadosamente definida de algún aspecto del nivel de servicio | La fracción de solicitudes bien formadas que tienen éxito |
| **Objetivo de nivel de servicio (SLO)** | Un valor o rango objetivo para un SLI | Al menos el 99,9 % de las solicitudes tienen éxito a lo largo de un mes |
| **Acuerdo de nivel de servicio (SLA)** | Un contrato explícito o implícito con los usuarios que incluye consecuencias por cumplir o incumplir los objetivos, con mayor frecuencia financieras | Un reembolso si la disponibilidad cae por debajo de un nivel declarado |

La prueba del capítulo para distinguir un SLA de un SLO es si hay una consecuencia explícita. Si no la hay, es un SLO. Los números de ejemplo de la tabla son ilustraciones, no recomendaciones.

El artículo de Wikipedia describe un SLA como un acuerdo, normalmente un contrato vinculante, entre un proveedor y un cliente que define aspectos del servicio como la calidad, la disponibilidad y las responsabilidades. Enumera contenidos típicos: una descripción del servicio, niveles de rendimiento, monitorización e informes, cómo se notifican los problemas, plazos de respuesta y de resolución y consecuencias por incumplimiento. Nombra métricas comunes como el tiempo medio entre fallos, el tiempo medio de reparación, el tiempo de actividad, la resolución en la primera llamada y el tiempo de respuesta. Señala que las grandes organizaciones suelen usar SLA internos entre unidades. Describe tipos según el alcance: basados en el cliente, basados en el servicio y multinivel.

### Elegir indicadores

El capítulo de SRE aconseja elegir unos pocos indicadores que reflejen lo que importa a los usuarios, no todas las métricas que puedas seguir. Los sistemas orientados al usuario suelen centrarse en la disponibilidad, la latencia y el rendimiento. Los sistemas de almacenamiento añaden la durabilidad, y todos los sistemas deberían seguir la corrección. Sugiere que la medición del lado del cliente puede detectar problemas que las métricas del lado del servidor pasan por alto. Una consecuencia práctica para los equipos de servicio: empieza por la experiencia del usuario, como "puedo reservar una cita y tarda unos segundos", y luego encuentra un indicador que la aproxime.

### Los promedios ocultan el dolor

El capítulo argumenta contra fiarse de los promedios: "es mejor pensar en la mayoría de las métricas como distribuciones y no como promedios". Los percentiles altos, como el 99 o el 99,9, muestran los peores casos plausibles, mientras que la mediana muestra el caso típico. Los promedios pueden ocultar una larga cola de solicitudes lentas. Si tu medida es un promedio, unos pocos usuarios podrían estar pasándolo muy mal sin que el número se mueva.

### Elegir objetivos

La orientación del capítulo sobre los objetivos es directa y útil:

- **Parte de los usuarios.** "Empieza pensando (¡o averiguando!) qué les importa a tus usuarios, no qué puedes medir."
- **No te ancles en el desempeño actual.** Elegir un objetivo basado en lo que logras ahora puede consolidar un esfuerzo heroico.
- **Mantenlo simple.** Las agregaciones complicadas oscurecen los cambios y son más difíciles de razonar.
- **Evita los absolutos.** Las promesas de disponibilidad "siempre" no son realistas.
- **Ten el menor número posible de SLO.** Cada uno debería valer la pena defenderse en una discusión de prioridades.
- **La perfección puede esperar.** Es mejor empezar con un objetivo laxo que se aprieta que con uno que luego hay que relajar.

### Presupuestos de errores

El capítulo dice que exigir un cumplimiento del 100 % no es realista y frena la innovación. En su lugar, los equipos permiten un **presupuesto de errores**: la tasa a la que se puede incumplir un SLO, seguida a diario, semanal o mensualmente. El presupuesto informa las decisiones sobre versiones. Cuando queda mucho presupuesto, un equipo puede asumir más riesgo con el cambio; cuando está casi agotado, el equipo frena el cambio e invierte en fiabilidad. Esto da a los equipos ágiles y a operaciones una manera compartida y numérica de discutir velocidad frente a estabilidad, en lugar de discutir por autoridad.

### Fijar expectativas

El capítulo señala que publicar un SLO fija las expectativas de los usuarios. Los equipos pueden mantener un margen de seguridad con un objetivo interno más estricto. También advierte contra el exceso de rendimiento, ya que los usuarios acaban dependiendo de cualquier rendimiento que observen. Si un servicio es mucho mejor que su objetivo declarado, los usuarios construirán sobre ello y el objetivo ya no protege al equipo.

### El bucle de control

El capítulo describe los SLI y los SLO como la base de un bucle de control: monitorizar los SLI, compararlos con los SLO, decidir si hace falta actuar, averiguar qué acción cumplirá el objetivo y tomarla. Sin un SLO, un equipo no puede saber si debe actuar ni cuándo (véase Tema 3.10 — Monitorización y Gestión de Eventos).

### Acuerdos internos y externos

Un SLA es entre un proveedor y un cliente. Dentro de un proveedor, los equipos dependen unos de otros y de los proveedores externos. El artículo de Wikipedia menciona que los SLA pueden respaldarse con acuerdos de nivel operativo (OLA) pero no los explica. En el vocabulario de ITIL, un OLA es un acuerdo entre equipos internos que respalda un SLA, y un contrato de respaldo es el equivalente con un proveedor externo. Las fuentes leídas aquí no confirman esas definiciones, así que contrástalas con las publicaciones de ITIL. La conclusión práctica es que una promesa a un cliente solo vale lo que valen las promesas que hay detrás (véase Tema 3.14 — Gestión de Proveedores).

### Expectativas de nivel de servicio en Kanban

En Kanban, una **expectativa de nivel de servicio** es un pronóstico de cuánto debería tardar un elemento de trabajo, basado en tiempos de ciclo pasados (véase Tema 1.5 — Kanban). No es un acuerdo, pero sirve a un propósito similar para los elementos de trabajo y puede alimentar objetivos para solicitudes e incidentes.

## Buenas prácticas

1. **Empieza por lo que necesitan los usuarios.** Pregunta a los usuarios y clientes qué importa más y qué duele cuando falla. Escríbelo con sus palabras antes de elegir una medida.
2. **Elige unos pocos indicadores.** Para cada servicio, elige de dos a cuatro indicadores que reflejen la experiencia del usuario, como la tasa de éxito y la rapidez. Resiste la tentación de añadir más hasta que hayas usado estos.
3. **Usa percentiles para la rapidez.** Mide el extremo lento de la distribución, no solo el promedio, para que los usuarios con una mala experiencia sean visibles.
4. **Fija primero objetivos laxos y luego apriétalos.** Empieza con un objetivo que puedas cumplir y defender y apriétalo cuando tengas datos y confianza. Esto sigue el consejo del capítulo de que la perfección puede esperar.
5. **No copies el desempeño actual.** Si tu servicio es ahora excelente, no fijes un objetivo a ese nivel salvo que los usuarios lo necesiten. Un objetivo más laxo da margen para el cambio y evita el esfuerzo heroico.
6. **Acuerda un presupuesto de errores y úsalo.** Define cuánto fallo es aceptable en un periodo y deja que el presupuesto restante oriente las decisiones de versiones. Revísalo en una reunión periódica con entrega y operaciones juntas.
7. **Escribe el acuerdo en lenguaje sencillo.** Un SLA debe decir qué se proporciona, cómo se mide, cómo se notifican los problemas, qué ocurre cuando se incumplen los objetivos y cuándo se revisa. Evita términos que solo un abogado o un ingeniero pueda leer.
8. **Separa los objetivos de los acuerdos.** Mantén objetivos internos más estrictos que los acuerdos que firmes. El margen te da espacio para reaccionar antes de deber nada.
9. **Sabe de qué depende tu promesa.** Enumera los equipos y proveedores en los que se apoya tu nivel de servicio y comprueba que sus compromisos respaldan los tuyos.
10. **Informa en una forma que los clientes puedan usar.** Comparte los resultados con regularidad, con un breve comentario sobre lo que pasó y lo que estás haciendo. Evita los paneles sin comentarios.
11. **Revisa los objetivos con los clientes.** Al menos una vez al año, pregunta si los niveles siguen coincidiendo con lo que necesitan los clientes y con lo que puedes entregar. Cámbialos cuando la respuesta sea que no.
12. **No uses los niveles de servicio para castigar a las personas.** Úsalos para iniciar conversaciones y decisiones. Un objetivo usado como palo se manipulará (véase Tema 5.6 — Métricas y Medición).

## Preguntas para conversar con tu equipo

**¿Cómo es un buen día para nuestros usuarios y cómo lo sabríamos?**

Pide al equipo que describa, con las palabras del usuario, cómo es una buena experiencia del servicio. Luego pregunta qué medimos que se corresponda con ella. A menudo las medidas que tenemos describen nuestros sistemas y no la experiencia del usuario. Quien facilite puede preguntar si nos daríamos cuenta de que un grupo de usuarios tuvo un mal día. Elige un indicador que añadir o cambiar.

**¿Tenemos un número que prometemos o al que aspiramos y quién lo acordó?**

Enumera los objetivos que existen, formal o informalmente. De cada uno, pregunta quién lo fijó, cuándo y con qué base. Muchos objetivos resultan haberse fijado por costumbre o por alguien que ya se fue. Discute cuáles deben confirmarse, cambiarse o abandonarse. Acordad quién es responsable de cada uno.

**¿Cuánto fallo podemos permitirnos y qué haríamos con el margen?**

Introduce la idea de un presupuesto de errores. Pregunta qué nivel de indisponibilidad toleraría el usuario y qué podría hacer el equipo con el margen, como versiones más rápidas. El objetivo es ver el compromiso en números. No esperes respuestas precisas; pide una primera estimación que poner a prueba.

**¿Dónde ocultan nuestros promedios malas experiencias?**

Mira una medida que informe de un promedio. Pregunta qué experimenta el uno por ciento más lento de los usuarios. Si no lo sabes, discute cómo averiguarlo. A menudo un pequeño grupo de usuarios o una hora concreta del día tiene una experiencia mucho peor. Planifica mirar un percentil durante un mes.

**¿De qué dependemos y no hemos preguntado?**

Enumera los servicios, proveedores y equipos en los que se apoya tu servicio. De cada uno, pregunta qué ha prometido y cómo sabrías si incumpliera. Muchas dependencias no tienen un nivel declarado. Elige la más importante y abre una conversación.

**¿Cuándo cambió por última vez un objetivo y qué lo desencadenó?**

Pide el último cambio. Si fue hace mucho, pregunta qué ha cambiado desde entonces en las necesidades de los usuarios o en la capacidad del equipo. Discute una revisión periódica. Buenos desencadenantes son las necesidades nuevas de los usuarios, los incidentes que revelaron un objetivo poco realista o un cambio de arquitectura.

## En la práctica: un ejemplo de ITIL ágil

Un operador nacional de lotería opera un servicio en línea de compra de boletos. Un equipo de doce personas lo construye y lo opera. El negocio tiene una regla informal de que el servicio debe estar "siempre activo", mientras que el equipo publica dos veces por semana y ha tenido cuatro caídas breves en un año. Tras un mal fin de semana, el patrocinador ejecutivo exige "100 % de disponibilidad", y el líder del equipo teme que esto ponga fin a las versiones frecuentes.

El líder del equipo y el patrocinador celebran un taller con la jefa de atención al cliente. Preguntan qué importa a los jugadores. La respuesta es que los jugadores deben poder comprar un boleto en la hora anterior al cierre de un sorteo; fuera de esa hora el servicio puede estar caído unos minutos sin daño. Definen un indicador: la proporción de intentos de compra que tienen éxito en las dos horas anteriores al cierre de cada sorteo. Fijan un objetivo que el equipo cree poder cumplir, algo por debajo de su desempeño reciente, y acuerdan un presupuesto de errores para cada mes. También acuerdan que cuando el presupuesto esté casi agotado, las versiones que afecten a la compra se detienen hasta el mes siguiente, y el equipo invierte en fiabilidad.

Tres meses después el presupuesto se agota una vez, en un mes con un fallo del proveedor de pagos, y el equipo pausa las versiones arriesgadas durante dos semanas sin conflicto. El objetivo da al equipo y al patrocinador una manera compartida de hablar. Quedan algunas dificultades. El propio compromiso del proveedor de pagos es más débil que el objetivo del equipo, de modo que la promesa del equipo depende de un proveedor que no la ha acordado. La medida también ignora una página de pago lenta de la que se quejan los usuarios, porque cuenta solo el éxito. El equipo añade un indicador de rapidez en el percentil 99 y abre conversaciones con el proveedor sobre sus niveles de servicio.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega deben ayudar a elegir indicadores y usar el presupuesto de errores en la planificación. Incorpora la medición al servicio para que los números sean fiables. Trata un presupuesto agotado como una razón para trabajar en la fiabilidad, no como un castigo.

### Equipos de servicio y operaciones

Los equipos de operaciones suelen ejecutar la monitorización e informar de los niveles. Mantén reducido el conjunto de medidas, muéstralas con comentarios y lleva los datos a las conversaciones de planificación. Mantén una lista de aquello de lo que depende tu servicio y comprueba que los compromisos encajan.

### Liderazgo y gobernanza

Los líderes y patrocinadores fijan las expectativas. Evita pedir perfección; pregunta qué necesitan los usuarios y qué cuesta el compromiso. Apoya el uso de un presupuesto de errores como regla compartida y asegúrate de que se aplica también a tus propias peticiones. Revisa los niveles de servicio con los clientes según un calendario.

### Clientes y usuarios

Los clientes y usuarios se benefician cuando el nivel de servicio se declara y se cumple. Di qué te importa, incluido cuándo. Pide informes en una forma que puedas entender y dile al proveedor cuándo el nivel declarado ya no se ajusta a tus necesidades.

## Fallos frecuentes

- **Demasiadas métricas.** Nadie sabe cuál importa. En su lugar, elige unas pocas que reflejen la experiencia del usuario.
- **Solo promedios.** Un grupo de usuarios sufre mientras el promedio parece bien. En su lugar, incluye una medida de percentil alto.
- **Objetivos copiados del desempeño actual.** El equipo queda encerrado en el heroísmo. En su lugar, fija los objetivos a partir de las necesidades de los usuarios y apriétalos con datos.
- **Exigir el 100 %.** Las versiones se detienen y la innovación se frena. En su lugar, acuerda un presupuesto de errores y una regla para usarlo.
- **Promesas que no puedes respaldar.** El nivel de servicio depende de proveedores que no lo han acordado. En su lugar, comprueba las dependencias y alinea los compromisos.
- **Acuerdos que nadie lee.** Los términos están en lenguaje jurídico. En su lugar, escribe con sencillez y revisa con los clientes.
- **Paneles sin comentarios.** Se informa de números sin significado. En su lugar, añade una breve explicación de lo que pasó y de lo que cambiará.
- **Castigar los incumplimientos.** La gente oculta los problemas. En su lugar, usa los incumplimientos para impulsar decisiones y aprendizaje.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Definir niveles | Los niveles se dan por supuestos o son informales | Algunos servicios tienen objetivos declarados | Cada servicio tiene indicadores y objetivos basados en el usuario con responsables | Los objetivos se revisan frente a las necesidades de los usuarios y los datos | Los niveles se fijan conjuntamente con clientes y proveedores |
| Medir | Las medidas son improvisadas | Algunos indicadores se miden | Los indicadores se miden de forma fiable, incluidos los percentiles | Se revisa la calidad de la medición y se corrigen las lagunas | La medición se comparte y se valida entre equipos y proveedores |
| Usar presupuestos de errores | El fallo no está planificado | Algunos equipos discuten el fallo aceptable | Los presupuestos orientan las decisiones de versiones en los servicios clave | Se revisa el uso del presupuesto y se ajustan las reglas | Los presupuestos se coordinan entre servicios dependientes |
| Acuerdos y dependencias | Las promesas son informales | Existen algunos acuerdos | Los acuerdos están en lenguaje sencillo, con dependencias conocidas | Los acuerdos y los compromisos de proveedores se contrastan con los resultados | Los acuerdos forman una cadena coherente entre equipos, proveedores y clientes |

## Lista de verificación

- [ ] Para cada servicio, hemos descrito con las palabras de los usuarios cómo es lo bueno.
- [ ] Cada servicio tiene de dos a cuatro indicadores que reflejan la experiencia del usuario.
- [ ] Al menos una medida de rapidez usa un percentil alto, no solo un promedio.
- [ ] Los objetivos se fijan a partir de las necesidades de los usuarios, no solo del desempeño actual.
- [ ] Existe un presupuesto de errores que orienta las decisiones de versiones de al menos un servicio.
- [ ] Los acuerdos están escritos en lenguaje sencillo y se revisan con los clientes.
- [ ] Las dependencias de otros equipos y proveedores están enumeradas con sus compromisos.
- [ ] Los resultados se informan con regularidad con comentarios.
- [ ] Los objetivos se revisan al menos una vez al año.
- [ ] Los datos de niveles de servicio se usan en la planificación y no como un palo.

## Prompts de IA

**Propósito: convertir las necesidades de los usuarios en indicadores y objetivos candidatos.**

```text
Ayúdame a pasar de las necesidades de los usuarios a indicadores y objetivos para [servicio].

Lo que hacen los usuarios con el servicio y lo que les importa (con sus palabras, con cualquier opinión o queja): [pega].
Mediciones que ya podemos recoger: [enumera].
Reglas o contratos que fijan niveles, con el texto de la fuente: [pega, o escribe "ninguno conocido"].

Propón de dos a cuatro indicadores candidatos que reflejen la experiencia del usuario, di cómo se mediría cada uno con los datos que enumeré y sugiere cómo expresar un objetivo para cada uno, dejando los objetivos numéricos como [por acordar con usuarios y datos]. Marca cualquier indicador que todavía no podamos medir. No inventes objetivos ni cifras de desempeño. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: analizar si los promedios ocultan malas experiencias.**

```text
Estos son los tiempos de respuesta (u otras mediciones) de [servicio] a lo largo de [periodo]: [pega una columna de valores reales, o cifras resumen como mediana, percentil 90 y 99 si las tienes].

Usando solo mis datos, calcula o describe el promedio, la mediana y los percentiles altos si los datos lo permiten. Explica con palabras sencillas lo que sugiere para los usuarios la diferencia entre el promedio y los percentiles altos. Sugiere un indicador y una pregunta para hacer. No inventes datos y di si los datos son demasiado escasos. Enumera de lo que no estés seguro.
```

**Propósito: redactar el esquema de un acuerdo de nivel de servicio en lenguaje sencillo.**

```text
Redacta un esquema de acuerdo de nivel de servicio para [servicio] entre [proveedor] y [cliente].

Lo que proporcionamos: [describe].
Medidas y objetivos ya acordados o en propuesta: [pega, o escribe "por acordar"].
Horario de soporte y contactos: [describe].
Dependencias de proveedores: [enumera].
Términos que debemos incluir por contrato o ley, con el texto de la fuente: [pega, o escribe "ninguno conocido"].

Produce un esquema con secciones en lenguaje sencillo: descripción del servicio, horario, medidas y cómo se miden, cómo notificar un problema, expectativas de respuesta y resolución (marcadas [por acordar]), qué ocurre si se incumplen los objetivos, informes, fecha de revisión. No inventes términos jurídicos. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: planificar una política de presupuesto de errores.**

```text
Ayúdame a redactar una política de presupuesto de errores para [servicio].

Objetivo y periodo: [por ejemplo, "tasa de éxito de los intentos de compra en las dos horas anteriores al cierre de un sorteo, medida mensualmente"].
Desempeño actual si se conoce: [pega, o escribe "desconocido"].
Ritmo de versiones: [describe].
Quién decide y quién se ve afectado: [roles].

Redacta una política de una página: cómo se calcula el presupuesto a partir del objetivo, cómo se sigue y se muestra su uso, qué ocurre en tres etapas de consumo (usa [por acordar] para los umbrales), quién puede anularla y cómo, y cómo se revisa la política. No inventes números. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): úsala para redactar o revisar un acuerdo en lenguaje sencillo.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): úsala para elegir e interpretar medidas del desempeño de la entrega y del servicio.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): úsala para seleccionar indicadores de alerta temprana que muestren que un nivel de servicio está en riesgo.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): úsala para comprobar que la capacidad respalda los niveles que prometes.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): úsala para alinear los compromisos de los proveedores con los niveles que ofreces.

## Fuentes principales

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): la explicación pública más clara de los indicadores, objetivos, acuerdos, percentiles y presupuestos de errores.
- **Service-level agreement** (Wikipedia): la definición, los contenidos típicos, los tipos y la historia de los SLA.
- **DORA's software delivery performance metrics** (dora.dev): medidas relacionadas de velocidad y estabilidad de la entrega.
- **Quality of service** (Wikipedia): contexto sobre cómo se describe y se mide la calidad del servicio.

## Referencias

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
