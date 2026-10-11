# DevOps

**DevOps es el esfuerzo por reunir el desarrollo y las operaciones en un solo flujo de trabajo con titularidad compartida, automatización y retroalimentación rápida, y complementa la gestión de servicios al poner en la canalización los controles que le importan a ITIL.**

## Por qué importa

DevOps es el nombre que la mayoría de las organizaciones da al punto de encuentro entre la entrega continua y las operaciones de TI. Nació de una frustración: se recompensaba a los desarrolladores por el cambio y al personal de operaciones por la estabilidad, así que los dos grupos tiraban en direcciones opuestas, y el traspaso entre ellos era donde se perdían velocidad y calidad. DevOps pide a ambos que compartan la responsabilidad de todo el camino desde la idea hasta el servicio en funcionamiento.

Para las personas que trabajan en ITSM, DevOps puede parecer amenazador o redundante. Amenazador, porque parece despreciar los procesos que operaciones construyó tras duras experiencias. Redundante, porque buena parte de lo que recomienda, como las revisiones de incidentes, la automatización y la mejora continua, ya está en ITIL. Ninguna de las dos visiones es del todo correcta. El artículo de Wikipedia sobre DevOps contrasta DevOps con lo que llama el marco "descendente" y rígido de ITIL de los años noventa, lo cual es cierto de las versiones antiguas; ITIL 4 se escribió para alinearse con lo ágil, DevOps y lean (véase Tema 2.2 — ITIL).

La definición de DevOps es discutida, y el artículo de Wikipedia lo dice. Este tema usa el artículo, las páginas de investigación de DORA y el relato de Gene Kim de las "Tres Vías", y nombra lo que está establecido, lo que se debate y lo que esta guía no pudo verificar.

## Conceptos clave

### Qué es DevOps

El [artículo de Wikipedia sobre DevOps](https://en.wikipedia.org/wiki/DevOps) lo describe como la integración y automatización del desarrollo de software y de las operaciones de TI, lo que puede acortar el tiempo de desarrollo y mejorar el ciclo de vida del desarrollo. Cita a los investigadores académicos Len Bass, Ingo Weber y Liming Zhu, que lo describen como un conjunto de prácticas que buscan reducir el tiempo entre confirmar un cambio en un sistema y su colocación normal en producción. El artículo señala que el término se usa en varios contextos y que su definición se debate, y que estudios académicos de 2015 a 2017 no hallaron consenso sobre sus características.

El artículo informa de que las propuestas de combinar los métodos de desarrollo con el despliegue y las operaciones se remontan a finales de los años ochenta y principios de los noventa, y de que la primera conferencia DevOps Days se celebró en Gante, Bélgica, en 2009, fundada por Patrick Debois. Caracteriza generalmente DevOps por tres principios, titularidad compartida, automatización del flujo de trabajo y retroalimentación rápida, y señala que esta caracterización es en sí misma discutida.

### Las Tres Vías

Gene Kim, autor de *The Phoenix Project* y *The DevOps Handbook*, describe tres principios de los que, sostiene, pueden derivarse los patrones de DevOps. Tal como se resumen en la propia entrada de Kim en el sitio de IT Revolution y en resúmenes secundarios:

| Vía | Idea | Ejemplos |
|---|---|---|
| **La Primera Vía: flujo** | Mirar el desempeño del sistema completo, no de un solo silo; acelerar el trabajo desde la idea hasta el valor | No pasar defectos conocidos aguas abajo; no dejar que la optimización local degrade el conjunto; buscar siempre aumentar el flujo |
| **La Segunda Vía: retroalimentación** | Acortar y amplificar las señales que fluyen de las etapas posteriores hacia las anteriores | Telemetría, canalizaciones que fallan rápido, opinión del cliente |
| **La Tercera Vía: aprendizaje continuo y experimentación** | Construir una cultura que asume riesgos pequeños y deliberados y aprende de ellos | Reservar tiempo para aprender, convertir los descubrimientos locales en mejoras globales |

Coinciden con los temas de esta guía: flujo (véase Tema 1.5 — Kanban y Tema 1.7 — Desarrollo de Software Lean), retroalimentación (véase Tema 3.10 — Monitorización y Gestión de Eventos) y aprendizaje (véase Tema 1.10 — Aprendizaje Ágil). Una nota terminológica: la entrada de Kim llama a la Segunda Vía "amplificar los bucles de retroalimentación", y el Handbook la llama "retroalimentación".

### Prácticas

Según Wikipedia, la integración continua y la entrega continua son críticas para el éxito de DevOps, junto con la automatización. El artículo menciona el control de versiones, las máquinas virtuales, la contenedorización y DevOps de bases de datos, que aplica el control de versiones, las pruebas automatizadas y CI/CD a los cambios de esquema y de datos. Describe GitOps como la gestión de la configuración de despliegue en el control de versiones y DevSecOps como la integración de la seguridad en la entrega mediante pruebas "shift left", incluido el análisis estático y dinámico. La lista de capacidades de DORA incluye la entrega continua, la integración continua, la automatización del despliegue, la automatización de pruebas, el desarrollo basado en trunk, el control de versiones, la gestión de cambios en bases de datos, la monitorización y observabilidad, la seguridad omnipresente, el trabajo en lotes pequeños y los límites al trabajo en proceso (véase Tema 3.5 — Gestión de Versiones y Despliegues).

### Cultura

La lista de capacidades de DORA, leída para esta guía, incluye elementos culturales: cultura organizativa generativa, cultura de aprendizaje, liderazgo transformacional, satisfacción laboral, bienestar y experimentación en el equipo. La página que los enumera no los explica y no los ordena por importancia. Otra página de DORA dice que sus métricas predicen el desempeño organizativo y el bienestar de los miembros del equipo, y advierte contra la titularidad aislada en silos, recomendando la titularidad compartida entre los equipos de desarrollo, operaciones y versiones. Esto concuerda con la Tercera Vía: DevOps trata tanto de cómo trabajan juntas las personas como de las herramientas.

El mnemónico común **CALMS** (culture, automation, lean, measurement, sharing: cultura, automatización, lean, medición, compartir) se usa a menudo para resumir DevOps. El artículo de Wikipedia sobre DevOps no lo menciona, y esta guía no verificó su origen, así que se nombra aquí solo porque los lectores se lo encontrarán.

### DevOps y lo ágil

El artículo dice que la compilación y las pruebas automatizadas, la integración continua y la entrega continua se originaron en el mundo ágil, y que la omisión de las prácticas de ingeniería en Scrum hizo que el trabajo de automatización se escindiera en DevOps. Esto encaja con el Tema 1.4 — Pronóstico de Entrega y Métricas de Planificación, que señala que Scrum no dice cómo construir, probar, desplegar ni operar el software. La Programación Extrema ya contiene muchas de las prácticas de ingeniería (véase Tema 1.6 — Programación Extrema). DevOps extiende la preocupación ágil más allá del momento de la versión.

### DevOps e ITIL

El artículo contrasta DevOps con el marco "descendente" y rígido de ITIL de los años noventa y no trata más la ITSM. Una imagen más justa para hoy:

| | Tiende a enfatizar | Riesgo si se usa solo |
|---|---|---|
| **DevOps** | Flujo, automatización, titularidad compartida, retroalimentación rápida | Descuidar los registros, los controles y la visión más amplia del servicio |
| **ITIL 4** | Valor, prácticas, gobernanza, una amplia gama de prácticas de servicio | Tratar las prácticas como proceso pesado |

El propio esquema de certificación de ITIL 4 incluye un módulo de especialización llamado High Velocity IT (HVIT) en el itinerario Managing Professional, como enumera el artículo de Wikipedia sobre ITIL. Eso muestra que el propietario trata el trabajo digital de ritmo rápido como un tema por derecho propio. Una combinación práctica: usa las prácticas de DevOps para implantar en la canalización las prácticas de ITIL, como registrar los cambios automáticamente, ejecutar pruebas como control de riesgo y monitorizar como práctica de eventos (véase Tema 3.4 — Habilitación de Cambios y Tema 5.1 — Gestión de Servicios Ágil).

### DevOps e ingeniería de fiabilidad de sitios

El artículo de Wikipedia dice que Google desarrolló la ingeniería de fiabilidad de sitios en 2003 y que algunos de sus autores originales ven SRE como una implementación de DevOps. El artículo sobre SRE la llama una implementación específica de DevOps, más estrecha porque se concentra en construir sistemas fiables (véase Tema 5.3 — Ingeniería de Fiabilidad de Sitios).

### Medidas

Las medidas de desempeño de la entrega de software de DORA dan un vocabulario común: plazo de entrega del cambio, frecuencia de despliegue, tiempo de recuperación de un despliegue fallido, tasa de fallos de cambios y tasa de retrabajo de despliegues (véase Tema 3.4 — Habilitación de Cambios y Tema 5.6 — Métricas y Medición). El artículo de Wikipedia informa de que las métricas se publicaron en 2016, de que la medida de recuperación cambió de nombre en el informe de 2023, de que en 2024 se añadió una medida de retrabajo y de que en 2025 DORA sustituyó los niveles de desempeño por siete arquetipos de equipo. También recoge que algunos expertos criticaron la metodología y las métricas de la investigación de DORA. Trata las medidas como preguntas útiles y no como puntuaciones.

### Críticas y límites

Más allá de la falta de una definición asentada, el artículo informa de críticas a la metodología de DORA. Las críticas prácticas comunes, ofrecidas aquí como experiencia práctica y no como hallazgos de las fuentes, incluyen que "DevOps" se use como título de puesto para el antiguo rol de operaciones, que se adopten herramientas sin cambiar la cultura y que se descuide el cumplimiento en la búsqueda de velocidad. El artículo no da estadísticas de adopción.

## Buenas prácticas

1. **Acordad qué queréis decir con DevOps.** Escribe una declaración breve de lo que significa para tus equipos, como la titularidad compartida de un servicio, la entrega automatizada y la retroalimentación rápida. Una definición compartida evita discusiones sobre etiquetas.
2. **Comparte la titularidad del servicio.** Haz que quienes construyen un servicio sean responsables de cómo funciona y dales los medios: guardia, monitorización y acceso. Respáldalos con la experiencia de operaciones.
3. **Automatiza el camino a producción.** Construye una canalización que compile, pruebe y despliegue cada cambio. Registra lo que hizo. Trata la canalización como un producto con usuarios.
4. **Trabaja en lotes pequeños.** Publica cambios pequeños a menudo. Esto reduce el riesgo y acelera la retroalimentación, como sugiere la lista de capacidades de DORA.
5. **Acorta los bucles de retroalimentación.** Haz visibles para el equipo los resultados de las pruebas, la monitorización y la opinión de los usuarios en minutos u horas. Sigue la Segunda Vía: amplifica las señales que fluyen de vuelta.
6. **Mira el flujo completo.** Mapea el camino desde la idea hasta el servicio en funcionamiento y encuentra las esperas más largas, incluidas las que están fuera del equipo de desarrollo. Sigue la Primera Vía: no optimices un silo a costa del conjunto (véase Tema 5.4 — Gestión del Flujo de Valor).
7. **Incorpora la seguridad y el cumplimiento.** Pon comprobaciones automáticas de seguridad y de políticas en la canalización y registra la evidencia como subproducto (véase Tema 3.13 — Gestión de la Seguridad de la Información y Tema 5.7 — Gobernanza, Riesgo y Cumplimiento).
8. **Trata la cultura como un asunto de primer orden.** Invierte en aprendizaje, revisiones sin culpas, seguridad psicológica y objetivos compartidos. La lista de capacidades de DORA incluye la cultura junto a los elementos técnicos por una razón.
9. **Haz tiempo para aprender y experimentar.** Reserva tiempo y lugares seguros para experimentos y comparte las lecciones. Sigue la Tercera Vía.
10. **Usa las prácticas de ITIL donde ayuden.** Conserva las prácticas de incidentes, problemas, cambios y conocimiento, implantadas mediante automatización y registros ligeros. Elimina los pasos que no sirvan a su propósito.
11. **Mide con cuidado.** Sigue medidas al estilo DORA por servicio, mejora frente a tu propio desempeño pasado y evita fijarlas como objetivos (véase Tema 5.6 — Métricas y Medición).
12. **Evita la trampa del título.** No crees un "equipo de DevOps" aparte que se convierta en un nuevo silo entre desarrollo y operaciones. Reparte las prácticas entre los equipos y usa equipos de plataforma o facilitadores para ayudar.

## Preguntas para conversar con tu equipo

**¿Qué significa DevOps aquí y dónde oímos la palabra por primera vez?**

Pide a cada persona una definición de una frase. Compara. El artículo de Wikipedia dice que la definición se debate, así que se esperan diferencias. Escribe una declaración compartida que sea concreta: quién es responsable de qué, qué se automatiza, qué retroalimentación existe. Quien facilite puede preguntar qué ha cambiado hasta ahora a causa de la palabra.

**¿Dónde espera un cambio entre "listo" y "en vivo" y quién es dueño de la espera?**

Sigue un cambio reciente y enumera las esperas: revisiones, aprobaciones, entornos, ventanas de versión. Marca las que están fuera del equipo. Pregunta cuáles protegen de riesgos reales y cuáles son costumbre. Elige una que acortar, trabajando con su responsable.

**Cuando algo se rompe en producción, ¿quién está de guardia y tiene los medios para corregirlo?**

Pregunta a quién se avisa y qué puede hacer por sí solo. Si los constructores no están de guardia, pregunta por qué. Si el personal de operaciones no puede cambiar el código, pregunta qué hace. Discute cómo sería aquí la titularidad compartida y qué apoyo haría falta.

**¿Qué retroalimentación recibimos después de una versión y con qué rapidez?**

Enumera las señales: pruebas, monitorización, tickets de soporte, comentarios de usuarios. Pregunta cuánto tarda cada una en llegar al equipo. Respuestas típicas: pruebas en minutos, tickets en días. Elige una señal que acelerar.

**¿Cuán seguro es probar algo y fallar?**

Pide un ejemplo reciente de un experimento fallido y qué les pasó a las personas implicadas. La Tercera Vía depende de aprender de los fallos pequeños. Discute qué haría más seguros los experimentos, como límites, reversiones y revisión sin culpas.

**¿Cómo aparecen nuestras prácticas de ITIL en la canalización y dónde no?**

Toma las prácticas de cambios, incidentes y conocimiento y pregunta dónde aparece cada una en la automatización. Las lagunas apuntan a trabajo manual o a controles sin evidencia. Acordad una práctica que llevar a la canalización.

## En la práctica: un ejemplo de ITIL ágil

Un servicio postal nacional tiene un grupo de desarrollo de 40 personas y un grupo de operaciones de 25. Los desarrolladores publican una versión mayor cada trimestre y entregan un paquete y un largo documento a operaciones, que lo despliegan durante un fin de semana. Operaciones se queja de que los desarrolladores no entienden la producción, y los desarrolladores se quejan de que no se puede localizar a operaciones cuando un defecto necesita una corrección rápida. Una versión reciente tardó 19 horas, rompió la página de seguimiento de paquetes y llevó a un día de acusaciones cruzadas.

Un nuevo jefe de plataforma propone una prueba con un equipo de producto, el servicio de seguimiento de paquetes. Cuatro desarrolladores y dos ingenieros de operaciones forman un único equipo que es dueño del servicio de extremo a extremo. Los desarrolladores se unen al turno de guardia, apoyados por los ingenieros de operaciones. El equipo construye una canalización que compila, prueba y despliega cada cambio integrado en un entorno de preproducción y despliega en producción con un paso de aprobación que da el responsable del servicio. La propia canalización crea los registros de cambios. Se añade monitorización, las alertas van a todo el equipo y cada incidente de producción recibe una breve revisión sin culpas. El equipo acuerda publicar al menos cada semana, y el jefe de plataforma le pide que siga el plazo de entrega, la frecuencia de despliegue, la tasa de fallos de cambios y el tiempo de recuperación.

Tras cuatro meses, el equipo publica dos veces por semana, la mediana del tiempo desde la integración hasta producción es inferior a un día y el último incidente fue corregido en menos de una hora por el desarrollador que escribió el cambio. No todo funciona. Los ingenieros de operaciones encuentran que las alertas de los desarrolladores son ruidosas, y los desarrolladores se resienten de estar de guardia por la noche. Un equipo vecino que depende del seguimiento de paquetes no fue informado del nuevo ritmo y se sorprendió con un cambio. El jefe de plataforma reserva tiempo para que el equipo afine las alertas, añade un turno con un límite de llamadas nocturnas y organiza una reunión mensual con los equipos dependientes. La auditoría interna pide ver la evidencia de las aprobaciones, y el jefe de plataforma muestra los registros de la canalización y las revisiones de incidentes.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega asumen la responsabilidad operativa: monitorización, guardia y aprendizaje de incidentes. Construye la canalización y la retroalimentación que necesites y pide experiencia de operaciones en lugar de entregar el trabajo. Mantén los cambios pequeños y visibles.

### Equipos de servicio y operaciones

Los equipos de operaciones aportan el conocimiento de cómo fallan los servicios y de qué controles importan. Ayuda a construir la plataforma y las comprobaciones, comparte la guardia y enseña. Evita ser una barrera; conviértete en un facilitador que hace que el camino seguro sea el camino fácil.

### Liderazgo y gobernanza

Los líderes crean las condiciones: objetivos compartidos entre desarrollo y operaciones, tiempo para la automatización, una cultura que aprende del fallo y confianza en la evidencia de la canalización. Evita renombrar equipos sin cambiar los incentivos y pide resultados, no la adopción de DevOps.

### Clientes y usuarios

Los clientes y usuarios ven DevOps como una mejora más rápida y una recuperación más rápida. Espera cambios pequeños y frecuentes y una comunicación clara sobre ellos. Da tu opinión con rapidez, ya que el equipo está preparado para usarla.

## Fallos frecuentes

- **Un equipo de DevOps como nuevo silo.** Desarrollo y operaciones siguen sin hablarse. En su lugar, reparte las prácticas entre los equipos y usa equipos de plataforma para facilitar.
- **Herramientas sin cultura.** Se construye una canalización y nada más cambia. En su lugar, cambia juntos la titularidad, los incentivos y la retroalimentación.
- **Velocidad sin seguridad.** Las versiones se aceleran y los fallos aumentan. En su lugar, invierte en pruebas, monitorización y reversión antes que en el ritmo.
- **Abandonar ITIL por completo.** Los registros y los controles desaparecen. En su lugar, conserva las prácticas e impleméntalas en la canalización.
- **Desarrolladores de guardia sin apoyo.** Sigue el agotamiento. En su lugar, comparte el turno, afina las alertas y limita las llamadas nocturnas.
- **Métricas como objetivos.** Los equipos manipulan los recuentos de despliegues. En su lugar, usa varias medidas y compara con tu propio historial.
- **Ignorar a los equipos dependientes.** Los cambios sorprenden a los vecinos. En su lugar, comunica el ritmo y los cambios a los equipos que dependen del tuyo.
- **Tratar la palabra como el objetivo.** Las etiquetas sustituyen a los resultados. En su lugar, pregunta cómo se ven para tus usuarios un mejor flujo, una mejor retroalimentación y un mejor aprendizaje.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Titularidad compartida | Desarrollo y operaciones se traspasan en la versión | Algunos equipos comparten la guardia | Los equipos son dueños de sus servicios de extremo a extremo con apoyo | Se miden los efectos de la titularidad en la calidad y la carga | Los modelos de titularidad se coordinan entre equipos, plataformas y proveedores |
| Automatización y flujo | La entrega es manual y por lotes | Existen algunas canalizaciones | Una canalización común compila, prueba, despliega y registra los cambios | El plazo de entrega, la frecuencia, el fallo y la recuperación se miden y se ajustan | Las canalizaciones y el flujo se optimizan entre equipos y flujos de valor |
| Retroalimentación | La retroalimentación llega de los usuarios tras los problemas | Algunos equipos monitorizan las versiones | Las pruebas, la monitorización y la opinión de los usuarios llegan a los equipos en minutos u horas | Se miden y se mejoran la velocidad y la calidad de la retroalimentación | Los bucles de retroalimentación abarcan equipos, proveedores y clientes |
| Cultura y aprendizaje | Sigue la culpa al fallo | Algunas revisiones sin culpas | Las revisiones sin culpas, los experimentos y el tiempo de aprendizaje son rutinarios | Las acciones de aprendizaje se siguen y se comprueban los resultados | El aprendizaje se extiende continuamente por la organización |

## Lista de verificación

- [ ] Tenemos una definición escrita y compartida de lo que significa DevOps para nosotros.
- [ ] Los equipos que construyen un servicio comparten la responsabilidad de operarlo.
- [ ] Una canalización compila, prueba y despliega los cambios y registra lo que hizo.
- [ ] Los cambios se publican en lotes pequeños y a menudo.
- [ ] La retroalimentación de pruebas, monitorización y usuarios llega rápido al equipo.
- [ ] Las comprobaciones de seguridad y de políticas se ejecutan en la canalización.
- [ ] La guardia es compartida, con límites a las llamadas nocturnas y alertas afinadas.
- [ ] Las revisiones de incidentes son sin culpas y producen acciones con responsable.
- [ ] Seguimos el plazo de entrega, la frecuencia de despliegue, la tasa de fallos de cambios y el tiempo de recuperación de cada servicio.
- [ ] Los equipos dependientes están informados de nuestro ritmo de versiones y de los cambios importantes.

## Prompts de IA

**Propósito: mapear las esperas entre "listo" y "en vivo".**

```text
Ayúdame a mapear las esperas de un cambio típico en [equipo o servicio].

Los pasos de "listo" a "en vivo", quién hace cada uno, si es manual o automatizado y cuánto espera el trabajo antes (usa datos reales; marca las estimaciones como estimaciones): [pega].

Produce un diagrama de texto sencillo, destaca las tres esperas más largas y qué equipo es dueño de cada una, y sugiere, para cada una, una pregunta sobre si la espera protege de un riesgo real. No inventes duraciones. Si los datos son demasiado escasos, di qué recoger. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: comprobar dónde aparecen las prácticas de ITIL en tu canalización.**

```text
Ayúdame a comparar nuestra canalización con las prácticas de gestión de servicios.

Lo que hace hoy nuestra canalización, paso a paso: [pega].
Las prácticas que queremos comprobar: habilitación de cambios, versiones y despliegues, gestión de incidentes, gestión de problemas, gestión del conocimiento, gestión de la configuración.

Para cada práctica, di qué en la descripción de la canalización parece apoyarla (cita mis palabras), qué falta y una pregunta que hacer. No afirmes que ninguna norma exige algo salvo que haya pegado su texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: planificar un piloto de titularidad compartida con un equipo.**

```text
Planifica un piloto de cuatro meses de titularidad compartida para [servicio], que reúna a [número] desarrolladores y [número] ingenieros de operaciones.

El arreglo actual: [describe quién construye, quién opera, quién está de guardia].
Preocupaciones de cada lado: desarrollo [enumera]; operaciones [enumera].
Medidas que tenemos: [enumera].

Da un plan con: formación del equipo, arreglos de guardia con límites, trabajo de canalización y monitorización, cómo aprende el equipo de los incidentes, qué medidas revisar (deja los objetivos como [por acordar]), qué evidencia conservar para la auditoría y cómo informar a los equipos dependientes. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: diseñar una revisión de incidente sin culpas para un equipo mixto.**

```text
Diseña una revisión sin culpas de 45 minutos para este incidente: [describe el incidente de forma factual].

Personas implicadas: [roles de desarrollo y operaciones].
Información disponible (cronología, alertas, cambios): [enumera].

Da una agenda que construya primero la cronología, identifique las causas que contribuyeron en sistemas y procesos, anote lo que fue bien y termine con como máximo tres acciones con responsables. Incluye indicaciones que eviten la culpa. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): úsala para planificar versiones pequeñas y frecuentes y las comprobaciones que las rodean.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): úsala para construir las pruebas automatizadas de las que depende una canalización.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): úsala para mover las pruebas y comprobaciones de seguridad más temprano en la canalización.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): úsala para diseñar una guardia compartida con límites justos.
- [postmortem](../../../../skills/postmortem/SKILL.md): úsala para dirigir revisiones sin culpas que alimenten la Tercera Vía.

## Fuentes principales

- **DevOps** (Wikipedia): una visión general de las definiciones, las prácticas, las relaciones con lo ágil, SRE y DevSecOps y las métricas de DORA, con los debates señalados.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): la fuente del flujo, la retroalimentación y el aprendizaje continuo.
- **DORA capabilities and metrics** (dora.dev): la lista de capacidades del programa de investigación y sus medidas de entrega de software.
- **The DevOps Handbook** y **The Phoenix Project** (Gene Kim y coautores): los libros que desarrollan en detalle las Tres Vías.

## Referencias

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
