# Monitorización y Gestión de Eventos

**La monitorización te dice si un servicio funciona tal como lo experimentan los usuarios, y una buena gestión de eventos convierte una avalancha de señales en un pequeño número de alertas que una persona puede entender y sobre las que puede actuar.**

## Por qué importa

Un servicio que no puedes ver es un servicio que no puedes operar. Sin monitorización, un equipo se entera de los fallos por los usuarios y del deterioro lento por nadie. Con una mala monitorización el problema es el contrario: tantas alertas que el ingeniero de guardia deja de creerlas, y la que importa se pierde entre el ruido. Ambos extremos cuestan sueño, confianza y tiempo.

La monitorización y la gestión de eventos también determinan la rapidez con que se puede encontrar y corregir un incidente. Todo en la gestión de incidentes depende de saber rápidamente que algo va mal y de tener suficiente información para averiguar por qué (véase Tema 3.2 — Gestión de Incidentes). Los equipos ágiles que publican a menudo lo necesitan aún más, porque cada versión es una oportunidad de romper algo y cada decisión de reversión depende de ver el efecto.

El libro *Site Reliability Engineering* de Google tiene dos capítulos que abordan directamente el tema: "Monitoring Distributed Systems" y "Practical Alerting from Time-Series Data". Describen la práctica de una organización y defienden un enfoque deliberadamente simple y centrado en el usuario. Este tema los usa como fuente principal, porque los artículos de Wikipedia consultados para esta guía dicen poco sobre la práctica. El vocabulario de ITIL aquí, como evento, alerta y gestión de eventos, procede de descripciones ampliamente publicadas que esta guía no pudo contrastar con el texto del propietario del marco. Lee los capítulos de SRE como una opción bien explicada.

## Conceptos clave

### Monitorización

El capítulo de SRE define la **monitorización** como recoger, procesar y mostrar datos cuantitativos en tiempo real sobre un sistema. Dice que la monitorización apoya el análisis de tendencias a largo plazo, la comparación entre experimentos, las alertas, los paneles y la depuración ad hoc a posteriori. Subraya que la monitorización es un esfuerzo de ingeniería significativo y que los equipos suelen asignarle al menos a una persona.

### Eventos, alertas e incidentes

En el uso de ITSM, un **evento** es un cambio de estado que tiene importancia para la gestión de un servicio. La mayoría de los eventos son informativos. Algunos indican una advertencia o una excepción. Una **alerta** es, como dice el capítulo de SRE, una notificación para un humano, entregada como ticket, correo o aviso (page). Un **incidente** es una interrupción no planificada o una reducción de la calidad (véase Tema 3.2 — Gestión de Incidentes). La gestión de eventos es la práctica de decidir qué eventos importan, qué hacer con ellos y a quién informar. El flujo va de eventos a alertas y, a veces, a incidentes.

### Monitorización de caja negra y de caja blanca

El capítulo distingue dos tipos:

| Tipo | Qué hace | Fortaleza |
|---|---|---|
| **Caja negra** | Prueba el comportamiento visible externamente, tal como lo vería un usuario | Detecta problemas activos; adecuada para avisar (paging) |
| **Caja blanca** | Usa métricas expuestas por las entrañas del sistema, como registros o manejadores internos | Revela problemas inminentes y fallos enmascarados por reintentos; esencial para depurar |

El libro combina ambas. Una sonda de caja negra te dice que el pago está fallando; los datos de caja blanca ayudan a averiguar por qué.

### Síntomas y causas

El capítulo dice que la monitorización debe responder a dos preguntas: qué está roto y por qué. Aconseja centrar las alertas en los síntomas, que son lo que experimentan los usuarios, y avisar por las causas solo cuando son definitivas e inminentes. Que falle una sola máquina es, en sus palabras en el capítulo de alertas, inaceptable como motivo de alerta, porque es demasiado ruidoso. Este es el corazón de un buen enfoque de alertas: avisa a un humano cuando los usuarios están o estarán perjudicados, no cada vez que una pieza se mueva.

### Las cuatro señales de oro

El capítulo propone cuatro señales que vigilar en un sistema orientado al usuario:

- **Latencia:** el tiempo para atender una solicitud. Sigue por separado las solicitudes fallidas, porque un "error lento es aún peor que un error rápido".
- **Tráfico:** la demanda sobre el sistema.
- **Errores:** solicitudes fallidas, ya sea de forma explícita, implícita o por política.
- **Saturación:** cuán "lleno" está el servicio. El rendimiento suele degradarse antes del 100 % de utilización.

Estas se corresponden de forma natural con los indicadores de nivel de servicio (véase Tema 3.7 — Gestión de Niveles de Servicio). El capítulo advierte también de que las medias ocultan los valores atípicos lentos y sugiere registrar los recuentos de solicitudes en intervalos de latencia para ver la distribución.

### Qué hace buena una alerta

El capítulo ofrece preguntas que hacer antes de escribir una alerta: ¿detecta una condición urgente, accionable y visible para el usuario?, ¿puede ignorarse con seguridad? y ¿puede automatizarse la respuesta? Los avisos deben ser accionables, requerir juicio y referirse a problemas novedosos. Dice que las alertas nunca deben dispararse solo porque "algo parece un poco raro". Los avisos cuyas respuestas son mecánicas y algorítmicas son, a su juicio, una señal de alarma que pide automatización o una reparación de la causa raíz.

### Enrutar las alertas

El capítulo de alertas describe enviar las alertas que merecen un aviso al personal de guardia, las subcríticas a colas de tickets y el resto a paneles de estado. Describe herramientas para enrutar, deduplicar e inhibir alertas y señala que las alertas deben esperar una duración mínima antes de dispararse porque pueden oscilar. Advierte de que "solo puedes alertar sobre los fallos que esperabas", y por eso es importante combinar sondas de caja negra con datos de caja blanca.

### Mantenlo simple

El capítulo defiende los sistemas simples y rápidos frente a la "magia" que aprende umbrales o detecta causalidad, y señala que las jerarquías complejas de dependencias han tenido un éxito limitado. Dice que se mantengan simples las reglas que detectan incidentes reales, que se eliminen las alertas rara vez ejercitadas y las señales no usadas, y que los costes de mantenimiento crezcan más despacio que el tamaño del servicio. Los casos que describe, como un equipo desbordado por las alertas que relajó temporalmente su objetivo y desactivó las alertas por correo para liberar tiempo para correcciones duraderas, muestran disposición a eliminar el ruido.

### Paneles y vistas a largo plazo

El capítulo trata los paneles como vistas resumen preconstruidas de las métricas clave de un servicio y dice que los paneles son mejores que las alertas por correo, que considera de valor muy limitado. También recomienda revisar la frecuencia de avisos a lo largo del tiempo, por ejemplo en informes trimestrales, para mantener informada a la dirección de la carga de avisos. Así la calidad de las alertas se convierte en algo que los gerentes pueden ver (véase Tema 1.2 — Principios Ágiles sobre el ritmo sostenible).

### Límites de las fuentes

Los capítulos de SRE no dan umbrales más allá de un único ejemplo trabajado, no tratan las guías operativas ni los límites de carga de guardias y no describen cómo revisar y retirar alertas con el tiempo, por lo que son asuntos de tu propia práctica. Proceden de una gran organización con abundantes recursos de ingeniería. Los equipos más pequeños pueden aplicar los principios con herramientas más sencillas.

## Buenas prácticas

1. **Monitoriza lo que experimentan los usuarios.** Añade al menos una sonda de caja negra que realice una acción real de usuario, como iniciar sesión o hacer un pedido, y alerta cuando falle.
2. **Vigila las cuatro señales de oro.** Para cada servicio, sigue la latencia, el tráfico, los errores y la saturación. Añade otras medidas solo si responden a una pregunta que te has hecho.
3. **Alerta sobre síntomas.** Avisa cuando los usuarios estén perjudicados o lo estarán pronto. Trata las condiciones internas, como una sola máquina que falla, como información de menor prioridad salvo que sean definitivas e inminentes.
4. **Haz accionable cada aviso.** Antes de crear una alerta, escribe qué debe hacer quien responde. Si no hay nada que hacer, no es un aviso.
5. **Enruta según la urgencia.** Envía las alertas urgentes a la guardia, las menos urgentes a una cola de tickets y la información a un panel. No envíes alertas por correo a personas que las ignorarán.
6. **Usa distribuciones, no solo promedios.** Mira los percentiles altos de latencia, o los intervalos, para que los valores atípicos lentos sean visibles.
7. **Fija una duración mínima.** Exige que una condición se mantenga durante poco tiempo antes de alertar, para evitar oscilaciones. Ajusta la duración con datos reales.
8. **Retira las alertas ruidosas.** Revisa qué alertas se disparan más y no llevaron a ninguna acción. Elimínalas o corrígelas. El capítulo de SRE trata las respuestas mecánicas como una señal para automatizar o reparar.
9. **Prueba tu monitorización.** Rompe algo deliberadamente en un entorno de prueba y comprueba que se dispara la alerta correcta. Incluye el propio sistema de monitorización en las comprobaciones, para que se note su fallo.
10. **Revisa la carga de avisos.** Cuenta los avisos por turno, las interrupciones fuera de horario y las falsas alarmas cada trimestre. Comparte los resultados con los gerentes y úsalos en la planificación.
11. **Mantén la monitorización en la definición de terminado.** Para cada funcionalidad nueva, pregunta qué señales muestran si funciona y qué alerta, si alguna, necesita (véase Tema 3.5 — Gestión de Versiones y Despliegues).
12. **Mantenlo simple.** Prefiere unas pocas reglas comprensibles a un esquema complejo. Elimina las señales no usadas y revisa las reglas tras los incidentes.

## Preguntas para conversar con tu equipo

**¿Cómo nos enteramos de nuestros tres últimos incidentes?**

Enumera cada incidente y cómo se notó por primera vez: una alerta, un usuario, un colega. Si la mayoría vino de los usuarios, a la monitorización le faltan los síntomas que importan. Quien facilite puede preguntar qué habría mostrado una sonda. Elige una acción de usuario que monitorizar primero.

**¿Qué alertas ignoramos y por qué?**

Pide a los ingenieros de guardia las alertas que silencian u omiten. Cada una es candidata a corregirse o eliminarse. Pregunta qué hace que las personas confíen o desconfíen de una alerta. Una respuesta franca suele revelar alertas que se disparan por condiciones sobre las que nadie puede actuar. Acordad retirar o corregir tres.

**¿Cuál es la peor noche que hemos tenido de guardia y qué la habría mejorado?**

Reúne historias sin culpas. Busca patrones: avisos repetidos, alertas poco claras, falta de guías operativas, ausencia de escalamiento. Cada patrón es una mejora. Pregunta qué dos cambios ayudarían más. El objetivo es una carga más ligera y una señal más clara.

**Si fallara nuestro sistema de monitorización, ¿cómo lo sabríamos?**

Pregunta quién vigila al vigilante. Muchos equipos no tienen una comprobación de que la monitorización funciona. Discute un latido (heartbeat) sencillo o una sonda desde un sistema aparte. Acordad una comprobación que añadir.

**¿Qué muestran nuestros paneles y quién los mira?**

Enumera los paneles y pregunta quién usó cada uno en el último mes. Los paneles sin uso son desorden; los útiles cuentan una historia sobre el servicio. Pregunta qué pregunta responde cada uno. Conserva un conjunto pequeño que responda a preguntas reales.

**¿Cómo sabríamos que una versión empeoró las cosas?**

Elige una versión reciente y pregunta qué señal habría mostrado un problema. Si la respuesta es "nos lo dirían los usuarios", discute qué señales vigilar después de una versión y quién es responsable. Esta pregunta vincula la monitorización con el despliegue. Escribe una breve lista de verificación posterior a la versión.

## En la práctica: un ejemplo de ITIL ágil

La autoridad de transporte público de una ciudad opera un sitio web y una aplicación de planificación de trayectos que usan 400.000 personas al día. Un equipo de plataforma de diez personas es responsable del servicio con un turno de guardia de cuatro. El equipo tiene cientos de alertas: la CPU de cada servidor, el espacio en disco, la longitud de las colas y los recuentos de errores. Los ingenieros de guardia reciben 40 avisos en una semana típica, la mayoría fuera de horario laboral, y dos incidentes del último trimestre fueron notificados por primera vez por usuarios en las redes sociales.

La líder del equipo y un ingeniero revisan tres meses de avisos. Descubren que tres cuartas partes eran por condiciones que no necesitaban acción o que se resolvían solas. Acuerdan seguir un enfoque sencillo del libro de SRE: alertar sobre lo que experimentan los usuarios. Añaden una sonda que planifica un trayecto estándar cada minuto y mide el éxito y la rapidez, y conservan un pequeño conjunto de alertas sobre la saturación de la base de datos y de la cola. Trasladan el resto a un panel y a un ticket diario. Cada aviso que queda recibe una breve entrada en una guía operativa que dice qué comprobar.

Tras un mes, los avisos bajan a unos cinco por semana, y los dos incidentes siguientes fueron detectados ambos por la sonda antes de que los usuarios se quejaran. Quedan algunos problemas. La sonda cubre solo un tipo de trayecto y un fallo que afectaba a los trayectos en bicicleta pasó inadvertido durante un día. Un ingeniero también informa de que la decisión de "pasar al panel" ocultó un problema lento de disco que más tarde causó un fallo. El equipo añade sondas para otros tipos de trayectos, añade al turno una revisión diaria del panel y acuerda revisar la carga de avisos cada trimestre.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega saben lo que se supone que debe hacer el software y dónde es probable que falle. Incorpora las señales al código: registros útiles, métricas y comprobaciones de salud. Define sondas para las acciones clave de los usuarios y trata la monitorización como parte de lo terminado. Participa en las revisiones de alertas para que los avisos reflejen problemas reales.

### Equipos de servicio y operaciones

Los equipos de operaciones llevan el busca y los paneles. Mantén pocas alertas y accionables, enruta según la urgencia y sigue la carga de avisos. Devuelve las alertas ruidosas a los equipos que son sus responsables, con evidencia, y comparte lo que aprendas de los incidentes sobre qué vigilar.

### Liderazgo y gobernanza

Los líderes deben pedir datos de carga de avisos y de detección de incidentes, no más alertas. Apoya el tiempo para retirar ruido y añadir señales útiles. Trata un número creciente de avisos fuera de horario como un riesgo para el servicio y para las personas.

### Clientes y usuarios

Los clientes y usuarios se benefician cuando los problemas se encuentran antes de que los noten. Informa de los problemas con detalles, como lo que probaste y cuándo, porque eso ayuda a afinar la monitorización. Pregunta a los proveedores cómo detectan los fallos y con qué rapidez, y si publican información de estado.

## Fallos frecuentes

- **Alertar sobre todo.** El busca suena constantemente y se pierde la confianza. En su lugar, avisa por síntomas y envía el resto a tickets o paneles.
- **Monitorizar sistemas, no usuarios.** Todas las máquinas están en verde mientras los usuarios no pueden iniciar sesión. En su lugar, añade sondas de caja negra de acciones reales de usuario.
- **Sin acción asociada.** Llegan avisos sin nada que hacer. En su lugar, exige que cada aviso tenga una respuesta descrita, o elimínalo.
- **Solo promedios.** Un grupo de usuarios sufre mientras la media parece bien. En su lugar, mira los percentiles altos o las distribuciones.
- **Reglas complejas e ingeniosas.** Los umbrales aprendidos y los árboles de dependencias confunden a quienes responden. En su lugar, prefiere reglas simples y comprensibles.
- **Monitorización sin vigilar.** El sistema de monitorización falla en silencio. En su lugar, compruébalo con latidos y pruebas.
- **Respuestas mecánicas.** Las personas repiten la misma corrección tras cada aviso. En su lugar, automatiza la respuesta o corrige la causa.
- **Ignorar la carga de avisos.** Los avisos nocturnos se tratan como normales. En su lugar, mídelos y revísalos, y trata una carga alta como un riesgo.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Visibilidad de la experiencia del usuario | Los usuarios notifican la mayoría de los problemas | Algunos servicios tienen sondas o métricas para acciones de usuario | Las acciones clave de los usuarios tienen sondas y se siguen las señales de oro de cada servicio | Se miden el tiempo de detección y la cobertura y se corrigen las lagunas | La monitorización se comparte entre equipos, proveedores y clientes |
| Calidad de las alertas | Muchas alertas, poca acción | Algunos equipos podan las alertas | Los avisos se basan en síntomas, son accionables y se enrutan según la urgencia | Se miden y se revisan la precisión y el ruido de las alertas | El diseño de las alertas se mejora entre equipos a partir de evidencia compartida |
| Respuesta y automatización | Las respuestas se improvisan | Existen algunas guías operativas | Los avisos enlazan con guías operativas y las respuestas mecánicas se automatizan | Se miden el tiempo de respuesta y el uso de la automatización | Las respuestas se coordinan entre equipos y proveedores |
| Personas y carga | La carga de avisos no se sigue | Algunos equipos cuentan los avisos | La carga de avisos se revisa cada trimestre | La carga se equilibra y se reduce a partir de datos | La carga y el aprendizaje se comparten entre equipos y se reflejan en la planificación |

## Lista de verificación

- [ ] Cada servicio importante tiene al menos una sonda de una acción real de usuario.
- [ ] Seguimos la latencia, el tráfico, los errores y la saturación de cada servicio.
- [ ] Cada aviso tiene una respuesta escrita y se refiere a una condición visible para el usuario o inminente.
- [ ] Las alertas se enrutan según la urgencia a la guardia, los tickets o los paneles.
- [ ] Los percentiles altos o las distribuciones son visibles para la latencia.
- [ ] Revisamos qué alertas se disparan más y retiramos las que no llevan a ninguna acción.
- [ ] El propio sistema de monitorización se comprueba.
- [ ] La carga de avisos (avisos por turno, interrupciones fuera de horario) se revisa cada trimestre.
- [ ] Las funcionalidades nuevas incluyen la monitorización en su definición de terminado.
- [ ] Tras cada versión, alguien comprueba las señales con una lista breve.

## Prompts de IA

**Propósito: revisar una lista de alertas en busca de ruido y de capacidad de acción.**

```text
Esta es una lista de nuestras alertas con la frecuencia con que se disparó cada una en los últimos [periodo] y qué ocurrió después (se actuó, se ignoró, se resolvió sola): [pega como una tabla; usa datos reales].

Usando solo mis datos, agrupa las alertas en: se dispararon a menudo sin acción; se dispararon y llevaron a acción; se dispararon rara vez. Para cada una del primer grupo, sugiere una pregunta para su responsable (por ejemplo si puede eliminarse, enrutarse a un ticket o convertirse en una alerta basada en síntomas). No inventes frecuencias ni resultados. Dime qué datos adicionales ayudarían y enumera de lo que no estés seguro.
```

**Propósito: definir una sonda para un recorrido de usuario.**

```text
Ayúdame a definir una sonda de caja negra para esta acción de usuario en [servicio]: [describe, por ejemplo "un usuario busca un trayecto y recibe resultados"].

Qué cuenta como éxito: [describe].
Qué es demasiado lento: [escribe "desconocido" o describe con palabras, no con números].
Qué sistemas toca la acción: [enumera].

Describe los pasos que debe realizar la sonda, qué debe registrar (éxito, tiempo empleado y dónde falló), qué condición de alerta proponer (deja los umbrales como [por acordar]) y qué comprobaría primero quien responde. Señala las suposiciones. No inventes detalles del sistema. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: escribir la sección de respuesta de una alerta.**

```text
Para esta alerta, escribe una entrada de respuesta breve para el personal de guardia.

Nombre y condición de la alerta: [pega].
Qué significa para los usuarios: [describe].
Qué sé que hay que comprobar primero: [enumera].
A quién escalar: [rol, o escribe "desconocido"].

Escribe: qué significa la alerta, las tres primeras comprobaciones, cómo saber si los usuarios están afectados, cuándo escalar y una nota sobre si la respuesta podría automatizarse. Usa solo mi información; marca con [COMPROBAR] todo lo que hayas añadido. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: preparar una revisión trimestral de la carga de avisos.**

```text
Ayúdame a preparar una revisión trimestral de la carga de avisos de [equipo].

Datos del trimestre (avisos por semana, avisos fuera de horario, avisos sin acción, incidentes detectados por la monitorización frente a los detectados por usuarios): [pega cifras reales].
Contexto: [describe los cambios del periodo].

Resume los datos en lenguaje sencillo, usando solo mis cifras. Destaca tendencias y valores atípicos como preguntas, no como conclusiones. Sugiere tres preguntas para el equipo y una para la dirección. No inventes causas. Si los datos están incompletos, di qué recoger. Enumera de lo que no estés seguro.
```

## Habilidades de IA

- [runbook](../../../../skills/runbook/SKILL.md): úsala para escribir la respuesta que acompaña a cada aviso.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): úsala para diseñar un turno justo y planificar cómo se reparte y se revisa la carga de avisos.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): úsala para elegir e interpretar medidas del desempeño del servicio y de la entrega.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): úsala para comprobar la latencia y la saturación bajo carga antes de que los problemas lleguen a los usuarios.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): úsala para probar que los fallos se detectan y se gestionan provocándolos deliberadamente en un entorno seguro.

## Fuentes principales

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): definiciones, las cuatro señales de oro, síntomas frente a causas y consejos sobre alertas simples.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): cómo funcionan en la práctica las reglas de alerta, el enrutamiento y las oscilaciones.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): el vínculo entre indicadores, objetivos y alertas.
- **IT service management** (Wikipedia): el lugar de la monitorización y los incidentes en ITSM.

## Referencias

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
