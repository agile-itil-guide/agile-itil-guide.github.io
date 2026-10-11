# Gestión de la Continuidad del Servicio

**La gestión de la continuidad del servicio prepara a una organización para mantener en funcionamiento sus servicios más importantes, o recuperarlos con rapidez, tras una interrupción grave, y su valor solo se demuestra con ejercicios, no con el plan guardado en la estantería.**

## Por qué importa

La mayoría de los incidentes son pequeños y locales. Unos pocos no lo son: un incendio en un centro de datos, la caída de una región de la nube, un ataque de ransomware, el colapso de un proveedor, una pandemia, una inundación. Estos sucesos amenazan la capacidad misma de la organización de entregar, y gestionarlos exige una planificación que la gestión ordinaria de incidentes no cubre. Un equipo que ha pensado de antemano qué importa más y cómo seguirá adelante tiene muchas más posibilidades de salir adelante.

Los equipos ágiles se encuentran con este tema con un reto particular. Sus sistemas cambian cada semana, así que un plan de continuidad escrito una vez y archivado está desactualizado en pocos meses. Los pasos de recuperación que dependían de un servidor o un script concretos pueden dejar de ser válidos. La respuesta ágil no es renunciar a planificar sino hacer de la continuidad una parte viva de cómo se construyen y se operan los servicios: recuperación diseñada desde el principio, probada a menudo y conservada en el control de versiones junto con el código.

El [artículo de Wikipedia sobre la planificación de la continuidad del negocio](https://en.wikipedia.org/wiki/Business_continuity_planning) define la continuidad del negocio como la capacidad de una organización de seguir entregando productos o servicios a niveles aceptables tras una interrupción, y trata la planificación de la continuidad como un subconjunto de la gestión de riesgos. La página "Disaster recovery" de la Wikipedia en inglés es solo una página de desambiguación, con un aviso de que se desea un artículo completo, así que este tema usa el artículo sobre la continuidad del negocio para las definiciones y añade orientación práctica de los otros temas de la guía, señalando dónde es práctica y no material de fuentes.

## Conceptos clave

### Continuidad, recuperación y resiliencia

Los términos se usan con laxitud, así que úsalos con cuidado:

| Término | Significado, tal como se usa ampliamente | Foco |
|---|---|---|
| **Continuidad del negocio** | La capacidad de seguir entregando productos o servicios a niveles aceptables tras una interrupción | Mantener en marcha la organización |
| **Planificación de la continuidad del negocio** | Crear sistemas de prevención y recuperación ante las amenazas a la organización | Los planes y los arreglos |
| **Recuperación ante desastres de TI** | Mantener o restablecer la infraestructura vital de tecnologías de la información (la descripción dada en la página de desambiguación de Wikipedia) | La tecnología |
| **Continuidad del servicio (ITSM)** | Asegurar que los servicios de TI puedan restablecerse a los niveles acordados tras una interrupción | Los servicios de TI dentro del plan más amplio |

El artículo de Wikipedia dice que la recuperación ante desastres se solapa con la planificación de la continuidad del negocio, en particular en la fase de solución, y que la continuidad es el resultado buscado al llevar a cabo ambas. La gestión de la continuidad del servicio es la visión de servicios de TI del mismo objetivo.

### Análisis de impacto en el negocio

Un **análisis de impacto en el negocio (BIA)** es, según el artículo, un método para identificar y evaluar cómo afectan las interrupciones a las operaciones y para fijar prioridades de recuperación. Sus objetivos incluyen identificar actividades críticas y dependencias, evaluar impactos financieros, operativos, de reputación y legales, determinar objetivos de recuperación e informar la evaluación de riesgos. Para los servicios de TI, el BIA pregunta de qué servicios no puede prescindir la organización, en qué orden deben volver y de qué depende cada uno (véase Tema 4.4 — Gestión de la Configuración para las dependencias).

### Objetivos de recuperación

El artículo define dos términos clave:

- **Objetivo de tiempo de recuperación (RTO):** el tiempo aceptable para restablecer una función.
- **Objetivo de punto de recuperación (RPO):** la cantidad aceptable de latencia de datos, es decir, cuánta pérdida de datos es tolerable.

También enumera el periodo máximo tolerable de interrupción. El artículo no da ningún método para elegir estos valores para una organización concreta, así que deben proceder del negocio: pregunta cuánto cuestan una hora, un día y una semana de caída, y qué datos puede permitirse perder el negocio. Fijarlos es una decisión de negocio con un precio, ya que el coste de cumplir un objetivo más estricto aumenta (véase Tema 3.11 — Disponibilidad, Capacidad y Rendimiento).

### Planes

Un plan de continuidad o de recuperación describe quién hace qué, y en qué orden, para restablecer los servicios críticos tras una interrupción. Debe cubrir: cómo se activa el plan y quién lo activa, cómo se informa y se reúne a las personas, la secuencia de recuperación de los servicios, dónde ocurrirá la recuperación, de dónde proceden los datos, cómo comunicarse con clientes y personal y cómo volver a la normalidad. Los planes para servicios de TI deben enlazar con las guías operativas de cada sistema (véase Tema 3.9 — Gestión del Conocimiento).

### Pruebas y ejercicios

El artículo cita un libro de la British Standards Institution de 2008 que describe tres tipos de ejercicio: un ejercicio **de mesa (tabletop)** en el que un grupo pequeño discute un aspecto del plan, un ejercicio **medio** en el que varios equipos trabajan en múltiples aspectos con sorpresas programadas y un ejercicio **complejo** que añade activación sin aviso, evacuación real y uso de un sitio de recuperación ante desastres. Describe un mantenimiento en un ciclo anual o bienal, que incluye probar las soluciones técnicas y los procedimientos de recuperación, con los hallazgos volviendo a la fase de análisis. Los ejercicios son donde los planes descubren que están equivocados.

### Niveles de recuperación

El artículo menciona los siete niveles de recuperación ante desastres de SHARE (1992), actualizados después por IBM a ocho niveles (0 a 7). Las fuentes leídas aquí no detallan los niveles. Como práctica general, las organizaciones clasifican los servicios en niveles según la rapidez con que deben restablecerse y ajustan el enfoque de recuperación y el coste al nivel.

### Normas

El artículo cita ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, que sustituyó a la edición de 2012 y exige a las organizaciones definir objetivos de continuidad, niveles mínimos aceptables de servicio y un periodo máximo tolerable de interrupción. ISO 22313:2020 da orientación sobre su uso. Son normas para un sistema de gestión que una organización puede adoptar; no sustituyen a la planificación práctica. Consulta directamente el texto de la norma si tus clientes o reguladores exigen conformidad.

### Continuidad ágil

Las prácticas ágiles y DevOps ayudan a la continuidad:

- **La infraestructura y la configuración como código** permiten reconstruir los entornos desde el control de versiones, lo que hace la recuperación más rápida y comprobable.
- **Las canalizaciones automatizadas** pueden volver a desplegar servicios en un sitio de recuperación.
- **Las versiones frecuentes** mantienen al equipo practicado en desplegar.
- **Los ejercicios periódicos** pueden tratarse como una forma de prueba en la lista de trabajo pendiente.

También crean riesgos: una fuerte dependencia de una sola cuenta en la nube, un sistema de integración continua que es en sí mismo un punto único de fallo y secretos guardados donde no se puede acceder a ellos en un desastre. Planifica para las herramientas de las que depende la propia recuperación.

### Factores humanos

El artículo menciona el brote de SARS de 2002–2003 como ejemplo de equipos compartimentados y rotados, lo que recuerda que la continuidad incluye a las personas: habilidades clave repartidas entre individuos, trabajo remoto, comunicación cuando fallan los canales normales y cuidado del personal bajo estrés.

### Límites de las fuentes

El artículo no da método para fijar objetivos, ni orientación sobre la frecuencia con que probar más allá del ciclo de mantenimiento anual o bienal, ni recomendaciones de herramientas. Es un artículo general de negocio, no de TI. Para el detalle técnico de la recuperación, usa la documentación de tus propias plataformas y las habilidades de la guía sobre planificación y pruebas de recuperación ante desastres.

## Buenas prácticas

1. **Empieza con un análisis de impacto en el negocio.** Identifica los servicios de los que no puede prescindir la organización, el coste de su pérdida a lo largo del tiempo y de qué dependen. Hazlo con los responsables del negocio, no por ellos.
2. **Fija los objetivos de recuperación con el negocio.** Para cada servicio crítico, acuerda un tiempo de recuperación y un punto de recuperación, y registra el coste de cumplirlos. Revísalos cuando cambien el negocio o la tecnología.
3. **Clasifica tus servicios en niveles.** Agrupa los servicios por la rapidez con que deben volver y aplica el enfoque de recuperación que corresponda a cada nivel. No apliques el enfoque más caro a todo.
4. **Escribe un plan breve que la gente pueda usar.** Indica cómo se activa el plan, quién decide, quién hace qué, cómo comunicar y el orden de recuperación. Mantenlo en unas pocas páginas con enlaces a las guías operativas.
5. **Conserva los planes con el código y el entorno.** Guarda los scripts de recuperación, la configuración y las guías operativas en el control de versiones y revísalos cuando cambien los servicios. Un plan que no se actualiza con el sistema fallará.
6. **Planifica para las herramientas de las que depende la recuperación.** Asegúrate de que el acceso a la canalización, los secretos, la documentación y las herramientas de comunicación sobrevive a la pérdida de los sistemas a los que dan soporte.
7. **Haz ejercicios con regularidad.** Empieza con discusiones de mesa, pasa a pruebas técnicas de restauraciones y conmutaciones por error, y realiza ejercicios mayores para los servicios más críticos. Prográmalos como cualquier otro trabajo.
8. **Prueba las restauraciones, no solo las copias de seguridad.** Una copia de seguridad se demuestra restaurando desde ella. Prueba que los datos vuelven, dentro del punto de recuperación, y que el servicio funciona con ellos (véase más abajo la habilidad de pruebas de recuperación ante desastres).
9. **Trata los hallazgos como elementos de la lista de trabajo pendiente.** Cada ejercicio produce lagunas. Regístralas con responsables y fechas y comprueba que se han hecho antes del siguiente ejercicio.
10. **Planifica la comunicación.** Decide quién dice qué a clientes, personal, reguladores y público, y prepara plantillas. Incluye vías externas al canal habitual para contactar con las personas si los canales normales están caídos (véase más abajo la habilidad de comunicación de crisis).
11. **Incluye a los proveedores.** Pregunta a los proveedores críticos por sus propios arreglos de continuidad e inclúyelos en los ejercicios cuando puedas (véase Tema 3.14 — Gestión de Proveedores).
12. **Revisa cada año y después de cualquier incidente grave o cambio importante.** Actualiza el análisis, los objetivos y los planes cuando cambien el negocio o la tecnología, no solo según el calendario.

## Preguntas para conversar con tu equipo

**¿Qué servicios deben volver primero y cómo lo sabemos?**

Pide a cada persona que ordene los servicios por prioridad de recuperación. Compara. El desacuerdo es informativo: muestra que el orden nunca se ha acordado con el negocio. Quien facilite puede preguntar cuánto le costaría a la organización que cada uno estuviera caído una hora, un día y una semana. Lleva la pregunta a los responsables del negocio y acordad una lista.

**¿Cuántos datos podríamos perder y lo ha aceptado alguien?**

Pregunta cuándo se hizo la última copia de seguridad de los datos clave y con qué frecuencia. Compara con lo que toleraría el negocio. Muchos equipos descubren que la respuesta no es lo que suponían. Discute cuánto costaría un punto de recuperación más estricto. Registra la decisión y quién la tomó.

**¿Cuándo restauramos por última vez desde una copia de seguridad y qué pasó?**

Pide una fecha real y un resultado real. Si la respuesta es "nunca", ese es el hallazgo más importante. Si se hizo, pregunta qué salió mal y qué se corrigió. Planifica una prueba de restauración para un servicio crítico en el próximo mes.

**¿Qué necesitamos recuperar que depende de lo que ha fallado?**

Recorre un escenario como la pérdida de una cuenta en la nube o de un centro de datos. Pregunta dónde viven las guías operativas, los secretos y la canalización. Las dependencias del sistema caído son comunes, como una guía operativa guardada en un servidor que está caído. Enuméralas y planifica trasladar o copiar cada una.

**¿Quién tiene la autoridad para declarar un desastre y poner en marcha el plan?**

Pregunta a las personas quién decidiría y si lo saben. El retraso en activar un plan cuesta tiempo. Discute una regla clara y un suplente. Comprueba cómo se contactará con esa persona si los canales habituales están caídos.

**¿Qué haríamos si las personas que más saben no estuvieran disponibles?**

Imagina que el personal clave es ilocalizable. Pregunta quién más podría llevar a cabo la recuperación y qué necesitaría. Esta pregunta vincula la continuidad con la gestión del conocimiento. Planifica una manera de difundir el conocimiento crítico.

## En la práctica: un ejemplo de ITIL ágil

El registro de la propiedad de un gobierno provincial opera un servicio en línea donde abogados y agrimensores presentan transacciones de propiedades. Un equipo de doce personas lo construye y lo opera, usando una única región de un proveedor de nube. Una revisión de la continuidad del negocio descubre que el ministerio clasifica el servicio como crítico, con la expectativa de poder restablecerlo en cuatro horas, y que nadie ha probado nunca si eso es posible.

El equipo empieza con un ejercicio de mesa. El escenario: la región de la nube no está disponible durante un día. Descubren que las guías operativas se guardan en una wiki alojada en la misma región, que el código de infraestructura cubre solo parte del entorno y que las copias de seguridad de la base de datos se copian en la misma región. La expectativa de cuatro horas del ministerio resulta haberla escrito un gerente hace años y nunca se ha valorado su coste. El equipo y el responsable de negocio del ministerio se reúnen. El responsable explica qué significaría una caída de un día para los plazos de presentación y acepta que se necesitan cuatro horas en los días de presentación de fin de mes pero que ocho horas son aceptables el resto del tiempo.

El equipo copia las guías operativas y las copias de seguridad a una segunda región, completa el código de infraestructura y reconstruye el entorno a partir del código en una región de pruebas en un ejercicio de un día. El primer intento lleva once horas, sobre todo por pasos manuales y un secreto que falta. Tras las correcciones, un segundo intento lleva cinco. Quedan algunos problemas. El objetivo de cuatro horas a fin de mes sigue fuera de alcance, el proveedor de identidad que usa el personal para iniciar sesión no tiene un arreglo de recuperación propio y el equipo se da cuenta de que depende de un proveedor cuyo plan de continuidad nunca ha visto. El equipo pone el proveedor de identidad y la cuestión del proveedor en la lista de trabajo pendiente, y el ministerio acepta un tiempo de recuperación más largo para los periodos no punta mientras continúa el trabajo.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega hacen posible o imposible la recuperación mediante el diseño. Construye servicios que puedan reconstruirse a partir del código, mantén los datos replicados y escribe los pasos de recuperación como parte de lo terminado. Participa en los ejercicios y corrige las lagunas que encuentren.

### Equipos de servicio y operaciones

Los equipos de operaciones tienen los planes y dirigen los ejercicios. Mantén los planes breves y vinculados a guías operativas, prueba las restauraciones y las conmutaciones por error y haz visibles las dependencias de la recuperación. Sigue los hallazgos de cada ejercicio hasta que se cierren.

### Liderazgo y gobernanza

Los líderes fijan los objetivos y los pagan. Pide el análisis de impacto en el negocio y los objetivos de recuperación, comprende lo que cuestan y asiste a un ejercicio. Acepta que algunos servicios tardarán más en recuperarse y toma la decisión a propósito.

### Clientes y usuarios

Los clientes y usuarios dependen de que el servicio continúe o vuelva. Di al proveedor cuánto tiempo puedes estar sin él y qué datos no puedes perder. Pregunta por sus arreglos de continuidad y qué debes hacer en un desastre, como una manera alternativa de presentar trabajo urgente.

## Fallos frecuentes

- **Un plan que nadie ha probado.** La primera prueba es el desastre. En su lugar, empieza con ejercicios de mesa y avanza a restauraciones técnicas.
- **Objetivos que nadie acordó.** El tiempo de recuperación lo escribió alguien que ya se fue. En su lugar, fija el tiempo y el punto de recuperación con los responsables del negocio y registra el coste.
- **Copias de seguridad que nunca se restauran.** Las copias existen, pero la restauración falla. En su lugar, prueba las restauraciones según un calendario y mide el tiempo.
- **La recuperación depende de lo que ha fallado.** Las guías operativas, los secretos y las herramientas están en el sistema caído. En su lugar, mapea las dependencias de la recuperación y guarda copias en otro lugar.
- **Un solo nivel para todo.** Todos los servicios reciben el tratamiento más caro, o ninguno. En su lugar, clasifica los servicios en niveles según la necesidad.
- **Planes desactualizados.** Los sistemas cambian y los planes no. En su lugar, conserva los planes con el código y revísalos cuando cambien los servicios.
- **Ignorar a las personas.** Los planes suponen que el personal habitual está disponible. En su lugar, planifica la ausencia y la comunicación cuando los canales están caídos.
- **Ignorar a los proveedores.** Las dependencias críticas no tienen arreglos de continuidad. En su lugar, pregunta a los proveedores e inclúyelos en los ejercicios.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Análisis de impacto y objetivos | Los servicios críticos se dan por supuestos | Algunos servicios tienen objetivos de recuperación aproximados | Los servicios críticos tienen tiempo y punto de recuperación acordados, con costes | Los objetivos se revisan frente a los resultados de los ejercicios y el cambio del negocio | Los objetivos se alinean con clientes, proveedores y reguladores |
| Planes y diseño de la recuperación | La recuperación se improvisa | Algunos servicios tienen notas de recuperación | Existen planes y código de recuperación para los servicios críticos y se conservan con el sistema | Se miden y se mejoran la actualidad de los planes y el tiempo de recuperación | La recuperación se coordina entre servicios, equipos y proveedores |
| Ejercicios y pruebas | Poco o ningún ensayo | Se prueban algunas restauraciones | Las pruebas de mesa y técnicas se hacen según un calendario | Los hallazgos se siguen hasta su cierre y las pruebas se ajustan al riesgo | Los ejercicios incluyen a proveedores y abarcan organizaciones |
| Comunicación y personas | La comunicación es improvisada | Existen algunas listas de contactos | Los planes cubren quién informa a quién, con vías externas al canal habitual y suplentes | Las lagunas de comunicación y de dotación de personal se miden y se cierran | La comunicación se ensaya con clientes, proveedores y reguladores |

## Lista de verificación

- [ ] Hemos identificado nuestros servicios críticos con los responsables del negocio.
- [ ] Cada servicio crítico tiene un tiempo de recuperación y un punto de recuperación acordados, con el coste conocido.
- [ ] Los servicios están agrupados en niveles que se ajustan a sus necesidades de recuperación.
- [ ] Existe un plan breve de recuperación, con quién puede activarlo y cómo localizarlo.
- [ ] El código de recuperación, la configuración y las guías operativas están en el control de versiones y se revisan con los cambios.
- [ ] Las guías operativas, los secretos y las herramientas necesarios para la recuperación sobreviven a la pérdida del entorno principal.
- [ ] Se ha probado una restauración desde una copia de seguridad para cada servicio crítico en el último año.
- [ ] Se ha celebrado un ejercicio de mesa en el último año y se siguen los hallazgos.
- [ ] Existen plantillas de comunicación y vías externas al canal habitual.
- [ ] Hemos preguntado a los proveedores críticos por sus propios arreglos de continuidad.

## Prompts de IA

**Propósito: redactar las preguntas para un análisis de impacto en el negocio.**

```text
Ayúdame a preparar un análisis de impacto en el negocio para estos servicios: [enumera los servicios].

Sobre la organización: [describe el sector y quién depende de los servicios].
Periodos punta o fechas límite: [enumera, o escribe "desconocido"].
Reglas o contratos que fijan requisitos de recuperación, con el texto de la fuente: [pega, o escribe "ninguno conocido"].

Escribe, para cada servicio, un breve conjunto de preguntas para plantear a los responsables del negocio sobre el impacto de una caída tras una hora, un día y una semana (financiero, operativo, de reputación, legal), qué pérdida de datos sería tolerable, de qué depende el servicio y qué soluciones alternativas existen. No inventes impactos ni números. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: planificar un ejercicio de mesa.**

```text
Diseña un ejercicio de mesa de 90 minutos para [número] personas de [equipos] sobre este escenario: [describe, por ejemplo "nuestra región de la nube no está disponible durante 24 horas"].

Servicios dentro del alcance: [enumera].
Planes y guías operativas existentes: [describe, o escribe "ninguno"].

Da un plan con tiempos con: el escenario liberado en tres etapas, indicaciones para cada rol, preguntas sobre las dependencias de la recuperación (dónde viven las guías operativas, los secretos y las herramientas), decisiones que deben tomarse y quién las toma, y un paso final que registre las lagunas con responsables y fechas. No uses acceso real a producción. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: convertir las notas de un ejercicio en una lista de lagunas.**

```text
A continuación están las notas de un ejercicio de continuidad: [pega lo que ocurrió, lo que salió mal, lo que dijo la gente].

Enumera las lagunas encontradas, agrupadas como: plan (qué faltaba o no estaba claro), tecnología (qué falló o fue lento), personas (quién faltaba o no estaba seguro) y dependencias (de qué dependía la recuperación que a su vez no estaba disponible). Para cada laguna, sugiere un título de elemento de la lista de trabajo pendiente y una pregunta sobre prioridad. Usa solo las notas. No inventes causas. Enumera de lo que no estés seguro.
```

**Propósito: escribir el esquema de un breve plan de recuperación de un servicio.**

```text
Ayúdame a esbozar un plan de recuperación para [servicio].

Qué hace y quién depende de él: [describe].
Tiempo de recuperación y punto de recuperación acordados, si los hay: [pega, o escribe "no acordados"].
Dónde se ejecuta, dónde se guardan los datos y las copias de seguridad: [describe].
Dependencias (otros servicios, proveedores, identidad, redes): [enumera].
Personas que pueden recuperarlo: [roles].

Escribe un esquema de plan de no más de dos páginas: cómo se activa, quién decide, comunicación, orden de los pasos de recuperación (con enlaces a las guías operativas como [ENLACE]), evidencia de pruebas necesaria y cómo volver a la normalidad. Marca como suposición cada elemento que lo sea. No inventes tiempos de recuperación. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): úsala para redactar el plan a nivel de organización para mantener en marcha las funciones críticas.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): úsala para planificar la recuperación técnica de los servicios de TI.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): úsala para diseñar pruebas de restauración y de conmutación por error.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): úsala para planificar qué dices a clientes, personal y público durante una interrupción.
- [risk-register](../../../../skills/risk-register/SKILL.md): úsala para registrar los riesgos de continuidad y cómo se gestionan.

## Fuentes principales

- **Business continuity planning** (Wikipedia): definiciones de continuidad, análisis de impacto en el negocio, objetivos de recuperación, ejercicios y normas.
- **ISO 22301** (International Organization for Standardization): la norma de requisitos para los sistemas de gestión de la continuidad del negocio; lee la norma para las afirmaciones de conformidad.
- **Incident management** (Wikipedia): la visión general de varios campos que sitúa la continuidad junto a la respuesta a incidentes.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): la economía de la fiabilidad que enmarca los objetivos de recuperación.

## Referencias

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
