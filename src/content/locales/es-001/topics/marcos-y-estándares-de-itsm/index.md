# Marcos y Estándares de ITSM

**La gestión de servicios de TI tiene muchos marcos y normas que se solapan, y la habilidad útil es saber para qué sirve cada uno: orientación de la que aprender, una norma frente a la cual certificarse o un modelo de gobierno que indica qué controlar.**

## Por qué importa

Pregunta a cinco personas qué significa "seguimos las mejores prácticas de ITSM" y puedes obtener cinco respuestas: ITIL, ISO/IEC 20000, COBIT, FitSM o "lo que haga la herramienta del proveedor". Los términos se usan con laxitud y las diferencias importan. Un cliente que pide la certificación ISO/IEC 20000 no puede quedar satisfecho con formación en ITIL. Un auditor que pregunta por los controles de COBIT no se verá ayudado por un mapa de procesos del centro de servicios.

Para los equipos ágiles, la pregunta es práctica: ¿con cuáles de estos tenemos que lidiar y cuáles podemos tratar como fuente de ideas? A muchos equipos les sorprende saber que ITIL, el más conocido, es orientación en la que se certifican personas y no una norma para organizaciones. A otros les sorprende que la principal norma de ITSM haya añadido recientemente orientación sobre las formas de trabajo ágiles y DevOps.

Este tema compara los principales marcos y normas, usando los artículos de Wikipedia sobre [gestión de servicios de TI](https://en.wikipedia.org/wiki/IT_service_management), [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT) y [FitSM](https://en.wikipedia.org/wiki/FitSM). Esos artículos varían en calidad y varios llevan avisos de mantenimiento. Donde son débiles, este tema lo dice. Consulta las publicaciones de los propios propietarios antes de fiarte de cualquier detalle para un contrato o una auditoría.

## Conceptos clave

### Tres tipos de cosa

Los nombres de este tema se dividen en tres grupos. Mantenerlos separados evita muchas conversaciones confusas.

| Tipo | Qué te da | Ejemplos nombrados en el artículo de Wikipedia sobre ITSM |
|---|---|---|
| **Orientación (un marco o una biblioteca)** | Ideas y prácticas descritas que adaptar | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **Una norma certificable** | Requisitos frente a los cuales una organización puede ser auditada y certificada | ISO/IEC 20000 |
| **Un modelo de gobierno o de capacidad** | Una manera de dirigir, controlar o evaluar la TI | COBIT, CMMI, TOGAF |

FitSM se sitúa entre los dos primeros, como se describe más abajo.

### ITIL

ITIL es orientación sobre ITSM y la gestión de activos de TI. La certificación es para personas, y no existe evaluación independiente del cumplimiento de ITIL por parte de una organización (véase Tema 2.2 — ITIL). Es la fuente de vocabulario más usada.

### ISO/IEC 20000

ISO/IEC 20000 es una norma internacional para la gestión de servicios de TI. Según Wikipedia, la Parte 1 establece requisitos para un sistema de gestión de servicios que cubre la planificación, la entrega y la mejora de los servicios. Se desarrolló a partir de BS 15000, creada por BSI Group, y se publicó por primera vez en diciembre de 2005. Siguieron actualizaciones: la Parte 1 en junio de 2011 y una segunda revisión, ISO/IEC 20000-1:2018, publicada el 15 de julio de 2018, tras la cual las organizaciones certificadas tuvieron un periodo de transición de tres años. La edición de 2018 tiene diez cláusulas que siguen la estructura de alto nivel de ISO.

La norma tiene muchas partes. El artículo enumera, entre otras: orientación sobre cómo aplicar un sistema de gestión de servicios (Parte 2); orientación sobre el alcance y la aplicabilidad (Parte 3); orientación para la implantación (Parte 5); requisitos para los organismos de certificación (Parte 6); conceptos y vocabulario (Parte 10); y una especificación técnica sobre la relación con ITIL 4 (Parte 11). También enumera partes publicadas recientemente, de 2023 a 2025, con orientación sobre integración y gestión de servicios (SIAM), sobre lo ágil y DevOps y sobre sostenibilidad. Wikipedia no dice qué número de parte cubre cada tema, así que consulta el catálogo de ISO antes de citar uno.

Las organizaciones pueden certificarse, y las personas pueden obtener cualificaciones de entidades como APMG-International, EXIN y PECB. El artículo informa de que la encuesta de ISO de 2024 contó 27.332 certificados, de los cuales 24.056 estaban en China. Eso muestra cuán desigualmente se reparte la certificación entre países, así que no supongas que un cliente de otro lugar la pedirá.

Wikipedia dice que la norma se desarrolló originalmente para reflejar las mejores prácticas de ITIL, pero marca esa afirmación con "citation needed". Trata la relación como estrecha pero no idéntica. El artículo también dice que la norma respalda otros marcos como Microsoft Operations Framework y partes de COBIT.

### COBIT

COBIT, según Wikipedia, es un marco creado por ISACA para la gestión y el gobierno de la TI. Vincula los objetivos del negocio con los objetivos de TI y define responsabilidades para los equipos de negocio y de TI. El artículo describe cinco áreas de proceso: Evaluar, Dirigir y Supervisar; Alinear, Planificar y Organizar; Construir, Adquirir e Implementar; Entregar, Servir y Dar Soporte; y Supervisar, Evaluar y Valorar. Da estas fechas: se publicó por primera vez en 1996, la versión 5 en 2012, y dice que ISACA ofrece certificación en COBIT 2019 y COBIT 5. El artículo vincula COBIT con ITIL, ISO 27000, CMMI, TOGAF y la PMBOK Guide del Project Management Institute.

El propio artículo lleva avisos de mantenimiento sobre fuentes primarias y citas que faltan, y una afirmación, la de que el marco ayuda a las empresas a cumplir la ley y a ser más ágiles, se apoya en una sola fuente. Usa las publicaciones del propio COBIT como autoridad.

### FitSM

FitSM es una familia de normas ligeras. Wikipedia dice que surgió de FedSM, un proyecto financiado por la UE para mejorar la gestión de servicios en infraestructuras electrónicas federadas, y que se publicaron entregables revisados con el nombre FitSM desde mayo de 2013. FitSM-1 contiene unos 85 requisitos auditables que cubren requisitos generales y 14 procesos, y es mucho más corta que la Parte 1 de ISO/IEC 20000 aunque similar en alcance y estilo. Todas las partes se publican con licencias Creative Commons. Las organizaciones no pueden certificarse como conformes con FitSM, aunque la conformidad puede auditarse, y un esquema de certificación de personas comenzó en 2013.

FitSM es útil para equipos pequeños que quieren un conjunto breve de requisitos. El artículo no indica la versión actual ni el estado de su grupo de mantenimiento, así que verifica esos datos antes de fiarte de ella.

### Otros nombres

El artículo sobre ITSM enumera también los siguientes. Esta guía no los trata más.

- **CMMI:** un modelo para establecer, gestionar y mejorar servicios y procesos.
- **TOGAF:** un marco que vincula los objetivos del negocio con los objetivos de arquitectura.
- **Microsoft Operations Framework:** orientación sobre gestión de servicios basada en tecnologías de Microsoft.
- **Application Services Library y Business Information Services Library:** marcos para la gestión de aplicaciones y para la gestión de la información.
- **USM:** un sistema basado en principios adoptado por el gobierno neerlandés.

El artículo añade que los marcos de ITSM se han nutrido de ISO 9000, ISO/IEC 27000 y CMMI. La gestión de la seguridad tiene su propia familia de normas (véase Tema 3.13 — Gestión de la Seguridad de la Información).

### Lo ágil y DevOps en las normas

El artículo sobre ISO/IEC 20000 enumera una parte reciente de la norma con orientación sobre lo ágil y DevOps. Es notable porque muestra que el organismo de normalización trata las formas de trabajo ágiles como algo que un sistema de gestión de servicios debe acomodar. Mientras tanto, ITIL 4 se describe como alineado con lo ágil, DevOps y lean (véase Tema 2.2 — ITIL), y el artículo de Wikipedia sobre ITSM no menciona lo ágil en absoluto. Las fuentes difieren en cuánto se han puesto al día.

### Elegir

No hay un único marco correcto. Una manera sensata de elegir es preguntar qué necesitas:

| Si necesitas… | Considera… |
|---|---|
| Un vocabulario compartido e ideas para las prácticas | ITIL |
| La certificación de tu sistema de gestión de servicios para clientes o licitaciones | ISO/IEC 20000 |
| Un conjunto breve y auditable de requisitos para un equipo pequeño | FitSM |
| Gobierno y control de la TI en la empresa, vinculados a los objetivos del negocio | COBIT |
| Evaluación de la capacidad de los procesos | CMMI |

Esta tabla es el resumen de la guía, no una recomendación de ningún propietario de marco.

## Buenas prácticas

1. **Empieza por la pregunta que necesitas responder.** Anota lo que necesitas: vocabulario, certificación, control o evaluación. Elige el marco que la responda, y no el que tenga el mejor marketing.
2. **Aprende la diferencia entre orientación y normas.** Enseña al equipo que la certificación de ITIL es para personas, la de ISO/IEC 20000 es para organizaciones y COBIT es un modelo de gobierno. Muchas confusiones de contratos y auditorías empiezan aquí.
3. **Averigua qué exigen realmente los clientes y los reguladores.** Pide la cláusula o el requisito exactos. A menudo la petición es de un "marco reconocido", y basta una descripción breve y honesta de tu práctica.
4. **Usa el texto de la norma, no resúmenes, para el cumplimiento.** Cuando afirmes conformidad, trabaja a partir de la norma ISO o de la publicación del propietario del marco. Los resúmenes, incluido este, sirven solo para orientarse.
5. **Mapea tu práctica una vez, no cuatro.** Si debes satisfacer más de un marco, construye una única descripción de tu práctica y relaciónala con cada uno, en lugar de escribir documentos separados.
6. **Mantén el sistema tan pequeño como puedas.** ISO/IEC 20000 pide un sistema de gestión de servicios y registros. Cumple cada requisito con el enfoque más ligero que funcione y automatiza la evidencia a partir de tus herramientas.
7. **Presta atención al alcance.** Un certificado cubre un alcance declarado. Elige un alcance que refleje servicios y equipos reales, y no excluyas las partes que hacen difícil el certificado.
8. **Consulta la orientación sobre lo ágil y DevOps en las normas que uses.** Donde una norma tenga orientación sobre lo ágil y DevOps, léela antes de discutir con un auditor cómo puede un equipo ágil cumplir un requisito.
9. **Considera opciones más ligeras para los equipos pequeños.** FitSM o un subconjunto de ITIL pueden convenir mejor a un equipo pequeño que un sistema certificado completo. Anota a qué renuncias, como la certificación externa.
10. **Mantén alineadas la seguridad y la gestión de servicios.** Si usas ISO/IEC 27001 para la seguridad de la información, comparte registros y revisiones con tu sistema de gestión de servicios para evitar trabajo duplicado (véase Tema 3.13 — Gestión de la Seguridad de la Información).
11. **Documenta tu adaptación.** Anota qué partes de un marco usas, cuáles no y por qué. Esto te protege en las auditorías y ayuda al personal nuevo.
12. **Revisa cada año.** Las normas y los marcos cambian. Asigna a alguien para seguir las actualizaciones e informar de lo que importa a tu equipo (véase Tema 6.4 — Rutas de Aprendizaje y Certificación).

## Preguntas para conversar con tu equipo

**¿Cuáles de estos marcos o normas estamos obligados a usar y cuáles usamos por costumbre?**

Enumera lo que exigen realmente clientes, contratos, reguladores y gerentes, con el documento que lo dice. Luego enumera lo que usa el equipo sin que haya un requisito. Las dos listas suelen diferir más de lo esperado. Quien facilite puede preguntar quién introdujo primero cada uno y por qué. Después, busca la redacción exacta de cualquier requisito que impulse trabajo.

**Si un cliente preguntara si estamos "certificados en ITIL", ¿qué responderíamos?**

Practica una respuesta honesta: las personas pueden certificarse, las organizaciones no, y esto es lo que hacemos. Compara respuestas. Algunas exagerarán. Discute qué necesita probablemente el cliente y qué evidencia podría satisfacerlo, como la certificación ISO/IEC 20000 o una descripción de la práctica. Acordad una frase que todos puedan usar.

**¿Cuánto nos costaría certificarnos en ISO/IEC 20000 y qué ganaríamos?**

Pregunta qué clientes o mercados lo valorarían y qué tendría que cambiar el equipo. No adivines los costes; reúne presupuestos reales o pregunta a un colega que lo haya hecho. Enumera los beneficios que puedas describir: una etiqueta reconocida, un sistema disciplinado, acceso a licitaciones. Decide si investigar más.

**¿De dónde proceden nuestros registros para la auditoría y podrían producirlos automáticamente nuestras herramientas?**

Enumera los registros que piden los auditores y de dónde procede cada uno. Muchos pueden proceder del control de versiones, de las herramientas de tickets y de la monitorización si se configuran con este fin. Pregunta qué registros se producen a mano y por qué. Elige uno que automatizar.

**¿Cómo encajan nuestras prácticas ágiles con lo que esperan las normas y dónde está la laguna?**

Toma un requisito que le importa a tu auditor, como la autorización de cambios, y describe cómo lo cumple un equipo ágil. Donde la norma tenga orientación sobre lo ágil y DevOps, leed juntos el texto pertinente. Anota las lagunas de evidencia, no de intención.

**¿Quién sigue por nosotros los cambios de estos marcos?**

Pregunta quién lee los anuncios de los propietarios de los marcos y de los organismos de normalización. Una respuesta frecuente es "nadie". Decide quién lo hará, cómo informará y cuándo. Quien facilite puede sugerir una nota breve cada trimestre que enumere qué cambió y si importa.

## En la práctica: un ejemplo de ITIL ágil

Una empresa de software de 120 personas vende un producto alojado de programación de horarios a hospitales y universidades. La licitación de un gran cliente universitario exige "un sistema de gestión de servicios de TI certificado". Los fundadores habían supuesto que bastaría con su responsable de soporte formado en ITIL. El responsable de soporte explica que la certificación de ITIL se aplica a personas y que la licitación probablemente se refiere a ISO/IEC 20000.

La jefa de operaciones investiga. Lee la redacción de la licitación, que nombra ISO/IEC 20000-1, y pregunta al cliente qué alcance espera. Lee el índice de la norma y compara sus diez cláusulas con los registros existentes de la empresa, que proceden sobre todo de su herramienta de tickets, del historial de cambios y de las revisiones de incidentes. Descubre que gran parte de la evidencia ya existe, pero que no hay políticas de gestión de servicios documentadas, ni revisiones formales de proveedores, ni revisión por la dirección. También descubre que la norma tiene ahora una parte con orientación sobre lo ágil y DevOps, lo que le ayuda a explicar las versiones semanales de la empresa a un posible auditor.

La empresa decide perseguir la certificación solo para el producto alojado, con un conjunto modesto de documentos y una revisión trimestral por la dirección. Prevé alrededor de un año de trabajo. No todo sale sin tropiezos. Dos ingenieros se resisten a los registros adicionales y un proveedor se niega a proporcionar informes formales de revisión del servicio. La jefa de operaciones sustituye algunos registros manuales por exportaciones de las herramientas de la empresa y negocia con el proveedor un acuerdo de revisión más ligero. La empresa gana la licitación y decide revisar en la próxima auditoría de seguimiento si el sistema ayuda o estorba a las versiones semanales.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega se encuentran con estos marcos como requisitos de clientes y auditores. Averigua qué requisito se aplica y pregunta qué evidencia es aceptable. Muchos requisitos pueden cumplirse con las herramientas que ya usas. Ofrece explicar tu proceso de versiones en el lenguaje de la norma.

### Equipos de servicio y operaciones

Los equipos de operaciones suelen cargar con el sistema de gestión. Mantén útiles los registros, con un propósito declarado para cada uno. Vigila los requisitos que se duplican entre marcos y mapéalos una vez. Comparte el plan con los equipos de entrega para que los registros sean un subproducto del trabajo y no una tarea aparte.

### Liderazgo y gobernanza

Los líderes deciden qué marcos adoptar y cuánto invertir en certificación. Pregunta cuál es el caso de negocio y qué exigen realmente los clientes. Desconfía de comprar la certificación como etiqueta. Asegúrate de que el sistema ayude a la organización a mejorar y de que alguien sea su responsable.

### Clientes y usuarios

Los clientes que piden certificación a menudo quieren garantías. Pregunta a los proveedores qué norma y qué alcance cubre su certificado y qué queda fuera. Un certificado es evidencia de un sistema de gestión, no una garantía de ningún resultado individual.

## Fallos frecuentes

- **Confundir la certificación individual con la organizativa.** Los equipos afirman que una empresa está "certificada en ITIL". En su lugar, declara exactamente qué está certificado y por quién.
- **Perseguir la certificación como etiqueta.** El sistema existe para la auditoría, no para la mejora. En su lugar, haz primero útiles los registros para el equipo.
- **Duplicar documentos entre marcos.** Cada norma recibe su propio archivador. En su lugar, describe tu práctica una vez y mapéala.
- **Estrechar el alcance para evitar las partes difíciles.** El certificado excluye los servicios que importan a los clientes. En su lugar, elige un alcance que refleje los servicios reales.
- **Fiarse de resúmenes.** Las afirmaciones de conformidad se basan en entradas de blog. En su lugar, trabaja a partir del texto de la norma o del propietario del marco.
- **Ignorar la orientación ágil.** Los equipos discuten con los auditores sin leer la parte de la norma que aborda lo ágil y DevOps. En su lugar, léela y prepara ejemplos.
- **Documentar en exceso.** El sistema genera más registros de los que nadie lee. En su lugar, vincula cada registro a un propósito y automatiza la evidencia.
- **Olvidar los cambios.** La norma avanza y el equipo no lo nota. En su lugar, nombra a alguien que siga las actualizaciones.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Comprensión de los marcos | Los nombres se usan con laxitud | Parte del personal sabe decir para qué sirve cada marco | Los equipos comparten una descripción breve y exacta de los marcos en uso | El uso de los marcos se revisa frente a los requisitos y los resultados | Equipos, clientes y proveedores comparten una comprensión exacta |
| Requisitos y alcance | Los requisitos se dan por supuestos | Algunos requisitos se rastrean hasta documentos | Los requisitos y el alcance están documentados | El cumplimiento y el alcance se revisan y se siguen las lagunas | Los requisitos se alinean con socios y clientes |
| Evidencia | La evidencia se reúne a mano para cada petición | Algunos registros se producen desde las herramientas | La evidencia procede sobre todo de las herramientas y se describe de forma coherente | La calidad de la evidencia se mide y se mejora | La evidencia se comparte con auditores y socios automáticamente |
| Actualidad | Los cambios en los marcos pasan inadvertidos | Algunas personas siguen los anuncios | Una persona con nombre informa de los cambios a intervalos fijos | Los cambios se evalúan y se actúa sobre ellos | Los cambios se anticipan y se abordan con los socios |

## Lista de verificación

- [ ] Podemos indicar qué marcos y normas exigen realmente los clientes, los contratos o los reguladores.
- [ ] Sabemos cuáles son orientación, cuáles son normas certificables y cuáles son modelos de gobierno.
- [ ] Nuestras afirmaciones sobre certificación son exactas y especifican el alcance.
- [ ] Trabajamos a partir del texto de la norma o del propietario para cualquier afirmación de cumplimiento.
- [ ] Nuestra práctica está descrita una vez y mapeada con cada marco que debemos satisfacer.
- [ ] La evidencia para las auditorías procede sobre todo de nuestras herramientas.
- [ ] Hemos leído la orientación sobre lo ágil y DevOps de las normas que nos aplican.
- [ ] Alguien está designado para seguir las actualizaciones e informar de ellas.
- [ ] Nuestras decisiones de adaptación están anotadas.
- [ ] Hemos revisado si nuestro alcance coincide con los servicios reales.

## Prompts de IA

**Propósito: relacionar el requisito de un cliente con el texto del marco que lo respalda.**

```text
Un cliente o auditor ha formulado este requisito: [pega la redacción exacta y dónde apareció, por ejemplo una cláusula de licitación].

Este es el texto de la norma o marco pertinente, que he copiado de la publicación del propietario: [pega solo el texto que tengas derecho a usar; mantenlo breve].

Usando solo el texto pegado, di qué parece pedir el requisito, qué no está claro y qué preguntas debería plantear al cliente. No describas el contenido de ninguna norma que yo no haya pegado. No digas si cumplimos. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: describir tu práctica una vez para poder mapearla con varios marcos.**

```text
Ayúdame a escribir una descripción única en lenguaje sencillo de cómo gestionamos [práctica, p. ej. "los cambios en producción"].

Cómo funciona hoy, en pasos, con las herramientas y los registros implicados: [pega].
Marcos con los que necesitamos mapearla: [enumera nombres; pegaré el texto del requisito pertinente de cada uno].

Produce una descripción en pasos numerados breves y luego una tabla con una fila por paso y una columna por marco que muestre qué requisito pegado parece abordar el paso (solo a partir de mi texto pegado). Marca las lagunas como preguntas, no como conclusiones. No afirmes conformidad. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: prepararte para responder honestamente a "¿estáis certificados en ITIL?".**

```text
Escribe una respuesta breve y honesta a un cliente que pregunta si nuestra empresa está "certificada en ITIL".

Hechos que he verificado en fuentes oficiales: [pega, por ejemplo que la certificación de ITIL se aplica a personas; y enumera las certificaciones que tiene nuestro personal].
Lo que hacemos realmente: [describe nuestra práctica en unas pocas frases].
Otras certificaciones que tenemos o consideramos: [enumera].

La respuesta debe ser cortés, exacta, de menos de 150 palabras y evitar exagerar. Ofrece evidencia que podríamos compartir. Usa solo los hechos que te di. Hazme primero preguntas aclaratorias si falta algo y enumera de lo que no estés seguro.
```

**Propósito: planificar la evidencia que podría pedir una auditoría de gestión de servicios.**

```text
Esperamos una auditoría de nuestra gestión de servicios frente a [nombre de la norma y edición].

Los registros que producimos hoy y la herramienta de la que procede cada uno: [enumera].
Las áreas de requisitos que conozco, con la redacción que tengo de la norma: [pega, o escribe "aún no leída"].

Crea una tabla de la evidencia probable por área de requisitos (solo a partir de mi texto pegado), el registro que ya tenemos, la laguna y si el registro podría proceder automáticamente de una herramienta. No inventes requisitos. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): úsala para situar los marcos de gestión de servicios en el panorama más amplio de la arquitectura y el gobierno empresariales.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): úsala para planificar cómo prepararte para una auditoría frente a una norma o un requisito contractual.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md): úsala para diseñar comprobaciones que produzcan automáticamente evidencia de conformidad.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): úsala cuando el alcance de una certificación dependa de proveedores y necesites planificar revisiones de proveedores.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md): úsala cuando marcos como COBIT o la PMBOK Guide se encuentren con tu oficina de proyectos.

## Fuentes principales

- **ISO/IEC 20000-1** (International Organization for Standardization): la propia norma; lee su alcance y los títulos de sus cláusulas en el catálogo de ISO antes de hacer afirmaciones.
- **ISO/IEC 20000** (Wikipedia): la historia, las partes y el panorama de la certificación de la norma, con citas.
- **COBIT** (ISACA y Wikipedia): las publicaciones propias de ISACA son la autoridad; el artículo de Wikipedia da historia y estructura pero tiene fuentes débiles.
- **FitSM** (Wikipedia y el proyecto FitSM): una alternativa breve y de licencia libre; consulta las páginas del proyecto para la versión actual.

## Referencias

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
