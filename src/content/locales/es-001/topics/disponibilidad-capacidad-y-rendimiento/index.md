# Disponibilidad, Capacidad y Rendimiento

**La disponibilidad, la capacidad y el rendimiento son tres vistas de si un servicio está ahí, es lo bastante grande y es lo bastante rápido cuando lo necesitan los usuarios, y el enfoque ágil es elegir objetivos a partir de las necesidades de los usuarios, ponerles un precio honesto y probarlos antes de que llegue la demanda.**

## Por qué importa

Los usuarios no separan las tres. Un servicio que está "activo" pero es demasiado lento para usarse les ha fallado, y un servicio que es rápido en un día tranquilo y se cae en la hora punta les ha fallado en el momento en que más lo necesitan. Los equipos que miran la disponibilidad, la capacidad y el rendimiento por separado a menudo pasan por alto las maneras en que interactúan: añadir capacidad cambia el coste y la complejidad, perseguir una disponibilidad perfecta limita la rapidez con que puedes cambiar, y ajustar para la velocidad puede reducir la resiliencia.

Los equipos ágiles se enfrentan a una versión particular del problema. Cambian el servicio a menudo, y cada cambio puede alterar el rendimiento o las necesidades de recursos de maneras que nadie ha probado. También tienden a trabajar con horizontes de tiempo cortos, de modo que se pueden pasar por alto necesidades de capacidad que tardan meses en gestionarse, como el hardware, los contratos o las licencias. Las prácticas de este tema ofrecen una manera de mirar hacia adelante sin volver a la planificación a largo plazo porque sí.

El libro *Site Reliability Engineering* de Google, en su capítulo "Embracing Risk", es una fuente clara sobre la economía de la disponibilidad: dice que su enfoque no aspira a una fiabilidad del 100 %, porque pasado cierto punto maximizar la estabilidad limita la rapidez con que se pueden desarrollar funcionalidades nuevas, y los costes de la fiabilidad suben bruscamente. El [artículo de Wikipedia sobre la planificación de capacidad](https://en.wikipedia.org/wiki/Capacity_planning) da definiciones y estrategias generales. Ambos son parciales, y el vocabulario de ITIL usado aquí procede de descripciones ampliamente publicadas que esta guía no pudo contrastar con el texto del propietario del marco.

## Conceptos clave

### Disponibilidad

La **disponibilidad** es la capacidad de un servicio de hacer lo que necesitan los usuarios cuando lo necesitan. Una manera común de expresarla es como un porcentaje a lo largo de un periodo. El capítulo de SRE señala dos maneras de medirla. Para un sistema individual, la disponibilidad se basa en el tiempo: el 99,99 % permite unos 52,56 minutos de inactividad no planificada al año. Para los servicios distribuidos que están parcialmente activos en todo momento, es mejor medirla como la tasa de éxito de las solicitudes en una ventana móvil; el ejemplo del capítulo es un servicio con 2,5 millones de solicitudes diarias y un objetivo del 99,99 %, que permite hasta 250 errores. El capítulo se centra en la inactividad no planificada. La inactividad planificada necesita su propio acuerdo con los usuarios.

### El precio de cada nueve adicional

El capítulo dice que los costes de la fiabilidad suben de forma no lineal: un nueve más puede costar 100 veces el incremento anterior, incluidos los recursos redundantes y el coste de oportunidad de que los ingenieros no construyan funcionalidades orientadas al usuario. Da una ilustración: subir la disponibilidad del 99,9 % al 99,99 % en un servicio con 1 millón de dólares de ingresos vale unos 900 dólares en valor, así que la inversión compensa solo si el nueve adicional cuesta menos que eso. Los números son el ejemplo de la fuente, y los tuyos deben proceder de tus propios ingresos o valor. El principio se mantiene: elige la disponibilidad que necesitan los usuarios y pon precio a todo lo que vaya más allá.

### Tolerancia al riesgo

El capítulo describe trabajar con los responsables de producto para convertir los objetivos de negocio en objetivos explícitos. Los factores incluyen la disponibilidad requerida, la forma de los fallos (una tasa baja y constante de errores frente a caídas totales ocasionales, siendo la exposición de datos especialmente grave), el coste y otras medidas como la latencia. Señala que la infraestructura que da servicio a muchos clientes puede ofrecerse con niveles de servicio definidos explícitamente, de modo que cada cliente elige el nivel más barato que cubra sus necesidades.

### Presupuestos de errores

El capítulo explica el presupuesto de errores como una medida compartida y objetiva entre los equipos de producto, a los que se mide por la velocidad, y los equipos de fiabilidad, a los que se mide por la fiabilidad. Mientras queda presupuesto, las versiones continúan. Cuando se agota, las versiones se ralentizan y el esfuerzo se desplaza a la fiabilidad (véase Tema 3.7 — Gestión de Niveles de Servicio).

### Capacidad

El artículo de Wikipedia define la planificación de capacidad como determinar la capacidad de producción que necesita una organización para atender una demanda cambiante, y dice que en TI es sinónimo de gestión de la capacidad: estimar los recursos de almacenamiento, hardware, software y conectividad necesarios en un periodo futuro. El artículo distingue la **capacidad de diseño**, la producción máxima posible, de la **capacidad efectiva**, la producción tras las restricciones. En la práctica, planifica para la capacidad efectiva, que siempre es inferior a la cifra de diseño.

### Estrategias de capacidad

El artículo describe cuatro estrategias para añadir capacidad:

| Estrategia | Qué significa | Compromiso |
|---|---|---|
| **Anticiparse (lead)** | Añadir capacidad antes de la demanda | Buen servicio y plazos cortos, pero arriesgado si la demanda es impredecible |
| **Rezagarse (lag)** | Añadir capacidad solo después de funcionar al límite o más allá | Menor riesgo de construir de más, pero puede perder clientes |
| **Igualar (match)** | Añadir capacidad en incrementos pequeños a medida que cambia la demanda | Equilibrada, requiere buena monitorización |
| **Ajustar (adjustment)** | Añadir o reducir capacidad en cantidades pequeñas o grandes a medida que cambian la demanda o la arquitectura | Flexible, requiere un aprovisionamiento rápido |

El artículo describe la planificación a corto, medio y largo plazo (operativa, táctica y estratégica), de días a años. En un entorno de nube, "igualar" y "ajustar" suelen ser más fáciles porque los recursos pueden añadirse con rapidez, pero el coste y los contratos siguen necesitando planificación (véase Tema 4.5 — Gestión Financiera de TI y FinOps).

### Rendimiento

El **rendimiento** es lo rápido y bien que responde el servicio. El capítulo del libro de SRE sobre la monitorización sugiere medir la latencia, el tráfico, los errores y la saturación, y advierte de que las medias ocultan los valores atípicos lentos (véase Tema 3.10 — Monitorización y Gestión de Eventos). La saturación, cuán "lleno" está el servicio, vincula el rendimiento con la capacidad: el capítulo señala que el rendimiento suele degradarse antes del 100 % de utilización.

### Cómo interactúan las tres

- Más capacidad puede elevar la disponibilidad y el rendimiento, con un coste.
- Los objetivos de alta disponibilidad suelen necesitar redundancia, que es capacidad adicional.
- Ajustar para el máximo rendimiento puede reducir el margen para el fallo.
- Los cambios en el servicio alteran las tres, y por eso importan las pruebas.

Una disciplina útil es declarar juntos los objetivos de cada servicio: cuán disponible, cuán rápido y cuánta carga debe soportar.

### Demanda y pronóstico

La capacidad depende de la demanda. La demanda procede de los usuarios y del negocio: campañas de marketing, picos estacionales, clientes nuevos. El negocio sabe más del futuro que TI, así que pregunta. Planifica con rangos en lugar de números únicos y revisa el pronóstico con regularidad (véase más abajo la habilidad de pronóstico de la demanda).

### Pruebas

Las afirmaciones sobre capacidad y rendimiento son hipótesis hasta que se prueban. Las pruebas de carga y de rendimiento aplican una demanda realista para ver cómo se comporta el servicio, y las pruebas de caos introducen fallos para ver si la disponibilidad se mantiene. Pueden formar parte de la canalización de entrega.

### Límites de las fuentes

El artículo de Wikipedia sobre la planificación de capacidad no menciona la gestión de capacidad de ITIL ni analiza la relación entre capacidad, rendimiento y disponibilidad, y su sección sobre activos está marcada como carente de citas. El capítulo de SRE describe las prácticas de una organización muy grande con una economía particular. Úsalos para los principios, no para los números.

## Buenas prácticas

1. **Declara juntos los objetivos de disponibilidad, rendimiento y carga.** Para cada servicio, escribe cuán disponible debe estar, cuán rápido debe responder y cuánta carga debe soportar. Básalos en las necesidades de los usuarios y acuérdalos con el responsable del servicio y los clientes.
2. **Pon precio a los objetivos.** Estima lo que cuesta un nivel adicional de disponibilidad o de velocidad, en dinero y en funcionalidades retrasadas. Compáralo con lo que ganarían los usuarios y el negocio. Usa tus propias cifras, no el ejemplo de un libro.
3. **Mide la disponibilidad de una manera que se ajuste al servicio.** Para los servicios que están parcialmente activos todo el tiempo, usa la tasa de éxito en una ventana móvil como hace el capítulo de SRE. Para los sistemas simples, usa medidas basadas en el tiempo. Cuenta por separado la inactividad no planificada y la planificada.
4. **Planifica para la capacidad efectiva.** Estima lo que puede soportar el servicio tras las restricciones reales, como la sobrecarga, el fallo de componentes y el mantenimiento. Conserva un margen.
5. **Elige una estrategia de capacidad a propósito.** Decide si anticiparte, rezagarte o igualar para cada recurso, según los plazos, el coste de la escasez y el coste de construir de más. Anota la elección y revísala.
6. **Pregunta al negocio por la demanda.** Reúnete con los líderes de marketing, ventas y operaciones con un ciclo regular para enterarte de campañas, lanzamientos y picos estacionales. Registra la carga esperada con rangos.
7. **Vigila la saturación.** Sigue cuán llenos están los recursos clave y fija alertas mucho antes del punto en que se degrada el rendimiento. Conoce el nivel al que tu servicio empieza a ralentizarse.
8. **Prueba antes del pico.** Ejecuta pruebas de carga y de rendimiento que se parezcan al tráfico real, antes de los picos conocidos y después de cambios significativos. Corrige lo que encuentres mientras haya tiempo.
9. **Prueba el fallo, no solo la carga.** Practica la pérdida de un componente, una zona o un proveedor en un entorno seguro y comprueba si la disponibilidad se mantiene (véase más abajo la habilidad de pruebas de caos).
10. **Incluye la capacidad en el trabajo de cambios y versiones.** Pregunta en el diseño y la revisión si un cambio altera las necesidades de recursos. Añade comprobaciones de rendimiento a la canalización para las rutas que importan (véase Tema 3.5 — Gestión de Versiones y Despliegues).
11. **Usa el presupuesto de errores para resolver los compromisos.** Cuando hay presupuesto, gástalo en cambio. Cuando se ha agotado, dedica esfuerzo a la fiabilidad y la capacidad. Revisa la regla con entrega y operaciones juntas.
12. **Revisa los pronósticos frente a los resultados reales.** Cada trimestre, compara la demanda prevista y la real y ajusta tu método. Trata las sorpresas como información.

## Preguntas para conversar con tu equipo

**¿Qué necesitan realmente nuestros usuarios en disponibilidad, velocidad y capacidad y quién lo decidió?**

Pide los objetivos actuales y de dónde salieron. A menudo se fijaron hace mucho, o los fijó el equipo sin preguntar a los usuarios. Pregunta a usuarios y clientes qué duele más. Discute si los objetivos coinciden. Quien facilite puede preguntar qué pasaría si el objetivo estuviera un escalón más abajo y qué liberaría.

**¿Cuánto nos cuesta el siguiente nueve?**

Elige un servicio con un objetivo alto de disponibilidad. Estima cuánto costaría subirlo o bajarlo un escalón, en dinero y en trabajo retrasado. Compáralo con el valor para los usuarios. El ejemplo del capítulo de SRE muestra con qué rapidez la aritmética puede volverse en contra de un objetivo más alto. Haz el cálculo con tus propios números y registra los supuestos.

**¿Cuál es el próximo pico de demanda que conocemos y qué hemos hecho para prepararnos?**

Enumera los picos conocidos: una campaña, una fecha límite, una avalancha estacional. De cada uno, pregunta quién conoce la carga esperada y si el servicio se ha probado a ese nivel. A menudo nadie ha preguntado. Acordad una persona que reúna los números y una fecha para la prueba.

**¿Dónde está nuestro servicio más cerca de la saturación y qué pasa cuando llega?**

Pide el recurso más intensamente usado. Mira la tendencia. Pregunta qué hace el servicio en ese límite: se ralentiza, da errores o falla. Si nadie lo sabe, pruébalo. Elige un umbral en el que actuar y una alerta para él.

**¿Cuáles de nuestros últimos cambios afectaron al rendimiento o la capacidad y lo sabíamos de antemano?**

Revisa los cambios recientes y pregunta cómo se comprobó el rendimiento. Si no se hizo, discute cuál sería una comprobación ligera. Las opciones típicas son una prueba en la ruta crítica o una versión canario con monitorización. Acordad una para la próxima versión.

**Si un componente fallara ahora mismo, ¿qué pasaría con la disponibilidad?**

Toma un servicio clave y sigue el fallo de una base de datos, una zona o un proveedor. Pregunta qué supone el diseño y qué se ha probado. Las diferencias entre el supuesto y la evidencia son riesgos. Planifica una prueba de fallo controlada en un entorno seguro.

## En la práctica: un ejemplo de ITIL ágil

Una autoridad nacional de pensiones opera un servicio en línea donde los ciudadanos consultan sus derechos y envían formularios. El servicio tiene un año tranquilo salvo las semanas posteriores a la publicación de los extractos anuales, cuando el tráfico sube a varias veces el nivel normal. El año pasado el servicio se ralentizó hasta el punto de que muchos usuarios desistieron, y el centro de atención telefónica quedó desbordado. El equipo de plataforma, de nueve personas, y el gerente de operaciones quieren evitar una repetición.

El equipo empieza preguntando a la oficina de comunicación por la carga esperada. La oficina dice que los extractos se enviarán en dos tandas y da las fechas, pero no cifras. El equipo estima el rango a partir de los datos del año pasado y fija un objetivo: la página de formularios debe responder en un tiempo aceptable para el pico esperado, y el servicio debe seguir disponible durante las dos tandas. Realizan una prueba de carga en una copia de producción y descubren que la base de datos es el primer recurso en saturarse, muy por debajo del pico previsto. Adoptan una estrategia de anticiparse para la base de datos, ya que el plazo para añadir capacidad es largo, y una de igualar para los servidores web, que pueden añadirse en minutos. Una prueba de fallo muestra que perder un nodo de la base de datos reduce a la mitad la capacidad, algo inaceptable en el pico, así que añaden uno de reserva.

En el pico, el servicio se mantiene activo y los tiempos de respuesta se sostienen en la primera tanda. En la segunda tanda, un componente de confirmación de pagos que nadie había probado se ralentiza bajo carga y algunos usuarios ven retrasos. El equipo no conocía el límite de esa dependencia y no se le había dicho que la segunda tanda sería mayor. Añaden el componente a la siguiente prueba de carga, piden a la oficina de comunicación que facilite antes el volumen de cada tanda y acuerdan revisar el proceso de pronóstico el trimestre siguiente.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega afectan a las tres mediante el diseño y el cambio. Incluye el rendimiento y la capacidad en las revisiones de diseño y en la canalización. Informa a operaciones de los cambios que alteran la carga y pregunta al negocio por la demanda esperada.

### Equipos de servicio y operaciones

Los equipos de operaciones suelen llevar la monitorización y los planes de capacidad. Sigue la saturación y la tendencia, mantén una visión de los plazos de los recursos y lleva evidencia a la planificación. Ayuda al negocio a comprender qué cuesta cada nivel de disponibilidad.

### Liderazgo y gobernanza

Los líderes fijan el precio que están dispuestos a pagar por la fiabilidad y la velocidad. Pide objetivos que coincidan con las necesidades de los usuarios, con sus costes, y acepta que la disponibilidad perfecta no es una aspiración sensata. Apoya las pruebas antes de los picos conocidos y el presupuesto para la resiliencia donde importa.

### Clientes y usuarios

Los clientes y usuarios sienten el resultado. Dile al proveedor cuándo esperas una carga adicional, como una campaña o una fecha límite, y qué te importa más en velocidad y disponibilidad. Informa de la lentitud además de las caídas, porque ambas son fallos desde tu lado.

## Fallos frecuentes

- **Objetivos por costumbre.** Se exigen "cinco nueves" sin preguntar por qué. En su lugar, deriva los objetivos de las necesidades de los usuarios y ponles precio.
- **Picos sorpresa.** El negocio conoce una campaña y TI no. En su lugar, reúnete con un ciclo regular y registra la carga esperada.
- **Promedios para el rendimiento.** Los valores atípicos lentos pasan inadvertidos. En su lugar, mira los percentiles altos y la saturación.
- **Capacidad añadida solo tras los problemas.** Se usa la estrategia de rezagarse por accidente. En su lugar, elige una estrategia a propósito, basada en los plazos.
- **Resiliencia sin probar.** La redundancia existe sobre el papel. En su lugar, prueba el fallo de componentes en un entorno seguro.
- **Cambios sin comprobaciones de rendimiento.** Una versión degrada la velocidad. En su lugar, añade comprobaciones a la canalización para las rutas que importan.
- **Olvidar las dependencias.** Un componente de terceros limita todo el servicio. En su lugar, enumera las dependencias y pruébalas.
- **Tratar el pronóstico como fijo.** Los planes ignoran el error. En su lugar, usa rangos y compara los pronósticos con los resultados reales.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Objetivos y coste | Los objetivos son informales o copiados | Algunos servicios tienen objetivos declarados | Los servicios tienen objetivos acordados de disponibilidad, rendimiento y carga con costes conocidos | Los objetivos y costes se revisan frente a los resultados | Los objetivos se fijan conjuntamente con clientes y proveedores y se ajustan con evidencia |
| Demanda y planificación de capacidad | La capacidad se añade tras los problemas | Algunos equipos pronostican los picos conocidos | La demanda se recoge del negocio con un ciclo, con una estrategia de capacidad declarada | Se sigue la exactitud de los pronósticos y se mejoran los métodos | La planificación se coordina entre equipos, proveedores y el negocio |
| Pruebas | Pocas pruebas de carga o de fallo | Algunas pruebas antes de grandes eventos | Las pruebas de carga y de fallo son rutinarias para los servicios clave | Los resultados de las pruebas impulsan mejoras con seguimiento | Las pruebas se comparten y se coordinan entre servicios dependientes |
| Monitorización y respuesta | Los problemas se notan tarde | Se sigue parte de la saturación | La saturación, la latencia y los errores se monitorizan con alertas antes de los límites | Las tendencias y umbrales se ajustan a partir de datos | Las señales y respuestas se coordinan entre equipos y proveedores |

## Lista de verificación

- [ ] Cada servicio tiene objetivos declarados de disponibilidad, rendimiento y carga, con su fuente.
- [ ] Hemos estimado cuánto costaría el siguiente nivel de disponibilidad.
- [ ] Sabemos cómo se mide la disponibilidad de cada servicio y qué cuenta como inactividad.
- [ ] Hemos elegido una estrategia de capacidad para cada recurso clave.
- [ ] Nos reunimos con el negocio con regularidad para enterarnos de la demanda esperada.
- [ ] La saturación de los recursos clave se monitoriza con alertas antes de los límites.
- [ ] Se han realizado pruebas de carga antes del último pico conocido.
- [ ] Se ha probado en un entorno seguro el fallo de al menos un componente clave.
- [ ] Los cambios que afectan al rendimiento o la capacidad se señalan en la revisión.
- [ ] Los pronósticos se comparan con la demanda real cada trimestre.

## Prompts de IA

**Propósito: convertir datos medidos en una vista del margen de capacidad.**

```text
Estas son las mediciones de [recurso, p. ej. "CPU de la base de datos"] de [servicio] a lo largo de [periodo]: [pega valores reales o cifras resumen como el pico diario y la media].
Límite conocido al que se degrada el rendimiento, si lo sabes: [pega, o escribe "desconocido"].
Cambio esperado de la demanda: [describe, con la fuente].

Usando solo mis datos, describe la tendencia y cuánto margen parece haber en el pico observado, con palabras sencillas. Muestra cómo cambiaría el margen si la demanda creciera en las cantidades que te di. No inventes límites ni tasas de crecimiento. Di qué datos adicionales harían el análisis más fiable y enumera de lo que no estés seguro.
```

**Propósito: poner precio a un objetivo más alto de disponibilidad.**

```text
Ayúdame a comparar el coste y el valor de subir el objetivo de disponibilidad de [servicio] de [objetivo actual] a [objetivo propuesto].

Cuánto vale el servicio, con la fuente (ingresos, coste de una caída u otro valor; usa solo las cifras que te dé): [pega].
Qué requeriría la disponibilidad adicional (redundancia, personal, herramientas), con las estimaciones de coste que tengo: [pega, o escribe "desconocido"].
Disponibilidad medida actual: [pega].

Calcula la inactividad no planificada permitida o el recuento de errores en cada objetivo usando solo los números que te di, muestra la diferencia y compárala con las cifras de valor y coste si las proporcioné. Indica tus supuestos. No inventes costes ni ingresos. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: planificar una prueba de carga antes de un pico conocido.**

```text
Planifica una prueba de carga de [servicio] antes de este evento: [describe el pico, con fecha y fuente de la carga esperada].

Arquitectura, en breve: [describe componentes, dependencias y proveedores].
Rango de carga esperado, con la fuente: [pega].
Entorno de pruebas disponible: [describe].

Da un plan con: objetivos, qué medir (distribución de la latencia, errores, saturación), escenarios que ejecutar, cómo aumentar la carga, qué hacer con los resultados y riesgos para producción o para los proveedores (por ejemplo acuerdos que deben hacerse antes de probar). No inventes cifras. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: diseñar una prueba de fallo.**

```text
Ayúdame a diseñar una prueba de fallo controlada para [servicio].

Lo que quiero aprender: [por ejemplo si la disponibilidad se mantiene si falla un nodo de la base de datos].
Entorno para la prueba: [describe, p. ej. un entorno de pruebas parecido a producción].
Salvaguardas disponibles: [monitorización, reversión, personas a mano].

Describe un plan de prueba paso a paso: hipótesis, qué romper y cómo, qué observar, quién está presente, qué detiene la prueba y cómo registrar lo ocurrido. Mantenlo alejado de producción salvo que yo diga que es seguro. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): úsala para estimar los recursos que necesita un servicio con el tiempo y elegir una estrategia para añadirlos.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): úsala para estimar la carga futura como un rango a partir de datos pasados y planes del negocio.
- [load-testing](../../../../skills/load-testing/SKILL.md): úsala para diseñar pruebas que apliquen una demanda realista antes de un pico.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): úsala para comprobar la velocidad y el uso de recursos en las rutas críticas como parte de la entrega.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): úsala para probar si la disponibilidad se mantiene cuando fallan componentes.

## Fuentes principales

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): la economía de la disponibilidad, la medición basada en solicitudes y el presupuesto de errores.
- **Capacity planning** (Wikipedia): definiciones y las estrategias de anticiparse, rezagarse, igualar y ajustar.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): las señales de oro, incluida la saturación.
- **High availability** (Wikipedia): contexto sobre el diseño de sistemas para el funcionamiento continuo.

## Referencias

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
