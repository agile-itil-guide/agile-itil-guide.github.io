# Pronóstico de Entrega y Métricas de Planificación

**El pronóstico de entrega y las métricas de planificación permiten a un equipo decir, con rangos honestos, cuándo es probable que termine el trabajo y cuánto puede asumir, observando el flujo continuo del trabajo terminado y la capacidad del equipo, y funcionan para los equipos de servicio cuando el trabajo planificado y el trabajo impulsado por interrupciones se cuentan juntos.**

## Por qué importa

Los equipos ágiles buscan la entrega continua de software, y todos los que dependen de esa entrega hacen las mismas preguntas: ¿cuándo estará esto hecho?, ¿cuánto puede asumir el equipo? y ¿qué pasa cuando llega algo urgente? Un equipo que no puede responder a estas preguntas con evidencia recurre a promesas que no puede cumplir, y quienes dependen de él aprenden a desconfiar de cada fecha.

Un equipo que opera servicios lo siente con más agudeza que la mayoría. El trabajo de mejora planificado, las solicitudes de servicio y los incidentes comparten las mismas personas. Un plan que ignora la parte no planificada fracasará la primera semana en que llegue un incidente. Un pronóstico que procede del propio historial del equipo y declara su rango resiste mejor el contacto con la realidad que una fecha que procede de la esperanza.

Este tema describe cómo pronosticar a partir del flujo de trabajo terminado, cómo planificar según la capacidad del equipo y qué métricas de planificación ayudan o confunden. Scrum, los sprints y la velocidad son una manera de planificar; una sección breve hacia el final los trata para los equipos que los usan. Las medidas de aquí se apoyan en las medidas de flujo del Tema 1.5 — Kanban y en la orientación más amplia sobre medición del Tema 5.6 — Métricas y Medición.

## Conceptos clave

### Pronosticar a partir del flujo, no de promesas

Un pronóstico es una afirmación sobre el futuro basada en evidencia del pasado, y conlleva incertidumbre. La Guía de Kanban define una expectativa de nivel de servicio como un pronóstico de cuánto debería tardar un elemento de trabajo en recorrer el flujo de trabajo, basado en tiempos de ciclo pasados, y dice que esto no es un acuerdo. Esa definición es un buen modelo para todo pronóstico de entrega: usa historial real, di qué cubre y evita prometer más de lo que has medido (véase Tema 1.5 — Kanban).

Son habituales dos tipos de pronóstico:

- **¿Cuánto tardará un elemento?** Mira cuánto tardaron elementos similares ya terminados y expón un rango o una afirmación como "la mayoría de los elementos de este tipo terminan en un número dado de días".
- **¿Cuánto terminaremos para una fecha, o cuándo terminará un conjunto de elementos?** Mira cuántos elementos suele terminar el equipo en un periodo y aplica ese rango al trabajo que queda.

### Las medidas de flujo detrás de un pronóstico

La Guía de Kanban define cuatro medidas, que son la materia prima del pronóstico de entrega:

| Medida | Qué te dice | Cómo alimenta un pronóstico |
|---|---|---|
| **Tiempo de ciclo** | Cuánto tardó un elemento terminado desde el inicio hasta el final | La dispersión de los tiempos de ciclo recientes da un rango de cuánto tardará un elemento nuevo |
| **Rendimiento (throughput)** | Cuántos elementos se terminaron en un periodo | El rango del rendimiento reciente da un rango de cuánto se terminará en un periodo futuro |
| **Trabajo en curso (WIP)** | Cuántos elementos están empezados pero no terminados | Demasiado WIP alarga los tiempos de ciclo y hace menos fiable todo pronóstico |
| **Antigüedad del elemento de trabajo** | Cuánto lleva en curso un elemento sin terminar | Muestra los elementos que ya son más antiguos que la mayoría de los terminados, mientras aún hay tiempo de actuar |

La guía señala que los equipos pueden renombrar estas medidas y deberían añadir otras cuando sea útil, y que las medidas solo importan cuando informan cómo trabaja el equipo. Usa percentiles y rangos, no solo promedios, porque las colas largas se esconden en los promedios (véase Tema 5.6 — Métricas y Medición).

### Un método sencillo de pronóstico

Un equipo puede pronosticar sin herramientas especiales:

1. Reúne el rendimiento de cada una de las últimas ocho a doce semanas, o periodos similares, a partir de elementos terminados reales.
2. Toma la cifra más baja, una típica y la más alta.
3. Divide el número de elementos restantes entre cada cifra para obtener un rango de periodos para terminar.
4. Expón el rango, los datos de los que procede y lo que lo cambiaría, como trabajo nuevo, un cambio en el equipo o una dependencia.

Es una regla práctica, no una norma. Supone que el trabajo futuro se parece al pasado y que los elementos tienen un tamaño más o menos similar. Cuando eso es falso, dilo y trata el rango como más amplio. Compara cada pronóstico con lo que ocurrió y ajusta el método, como aconseja el Tema 3.11 — Disponibilidad, Capacidad y Rendimiento para los pronósticos de demanda.

### Capacidad del equipo

La capacidad es cuánto trabajo puede absorber un equipo en un periodo. Para un equipo de entrega no es el número de personas multiplicado por los días del periodo. Las ausencias, las tareas de soporte, las reuniones y el trabajo no planificado reducen lo disponible para los elementos planificados. Una declaración útil de capacidad enumera las personas y los días disponibles y luego resta una parte reservada para el trabajo no planificado, basada en lo que mostraron los últimos periodos.

La habilidad de planificación de capacidad y el Tema 3.11 — Disponibilidad, Capacidad y Rendimiento describen la capacidad de servicios e infraestructura. La misma lógica se aplica a un equipo: planifica con rangos, contrasta con lo ocurrido y revisa el plan cuando cambien los hechos.

### Trabajo planificado y no planificado juntos

Los equipos de servicio reciben incidentes, solicitudes urgentes y cambios que nadie programó. Si no se cuentan, el pronóstico del trabajo planificado será demasiado optimista. Da al trabajo no planificado sus propios tipos de elemento, cuenta cuántos llegan y cuánto tardan, y guarda los datos junto al trabajo planificado. Esto también da al responsable de producto o al responsable del servicio evidencia sobre qué incidentes recurrentes consumen capacidad, lo que respalda las decisiones de corregir las causas (véase Tema 3.3 — Gestión de Problemas).

### Flujo de entrega continua y cadencia de versiones

Los equipos que entregan de forma continua publican cambios pequeños cuando están listos, en lugar de esperar al final de un periodo de planificación. Esto acorta el tiempo entre terminar y entregar y hace más sencillo comprobar los pronósticos: cada elemento terminado es un dato. Los cambios siguen el enfoque de habilitación de cambios de la organización, y los cambios estándar preautorizados ayudan aquí (véase Tema 3.4 — Habilitación de Cambios y Tema 3.5 — Gestión de Versiones y Despliegues).

### Si usas Scrum, sprints y velocidad

Algunos equipos planifican en ciclos de duración fija. La Guía de Scrum de 2020, de Ken Schwaber y Jeff Sutherland, define Scrum como un marco ligero para soluciones adaptativas a problemas complejos. Sus eventos ocurren dentro del Sprint, un intervalo de tiempo de un mes o menos. Esta sección cubre lo mínimo que necesita un equipo si los usa; lee la propia guía antes de cambiar la forma de trabajar de un equipo.

- **Sprint y Objetivo del Sprint:** el Sprint es el intervalo de tiempo y el Objetivo del Sprint es su único propósito. Un objetivo que alguien ajeno al equipo pueda entender orienta mejor las decisiones que una lista de tickets.
- **Product Backlog, Product Owner y Scrum Master:** el Product Backlog es una lista ordenada de lo que necesita el producto. El Product Owner es una persona responsable de su orden, y el Scrum Master es responsable de establecer Scrum y de ayudar al equipo a aplicarlo.
- **Incremento y Definición de Terminado:** un Incremento es un paso utilizable y verificado hacia el Objetivo del Producto, y la Definición de Terminado es el estándar de calidad que debe cumplir el trabajo para contar. Un equipo de servicio puede incluir en ella la monitorización, una guía operativa y una reversión probada.
- **Eventos:** la Planificación del Sprint, la Scrum Diaria, la Revisión del Sprint y la Retrospectiva del Sprint. La retrospectiva es donde el equipo inspecciona cómo trabajó y planifica mejoras (véase Tema 6.1 — Conversaciones de Equipo).
- **Velocidad:** una cifra basada en estimaciones que algunos equipos usan para planificar cuánto trabajo asumir. Úsala solo para la planificación del propio equipo. Si se convierte en un objetivo, los equipos inflan las estimaciones, así que prefiere las medidas de flujo, que cuentan elementos terminados, y las medidas de resultado.

La guía dice que Scrum es un marco, no un método completo. No cubre la respuesta a incidentes, los niveles de servicio ni el proceso de cambios, y usar solo partes de él no hace que el resultado sea Scrum. Si lo adaptas, nombra la variación con honestidad. Una mezcla de eventos de Scrum y flujo de Kanban se llama a veces [Scrumban](https://en.wikipedia.org/wiki/Scrumban).

## Buenas prácticas

1. **Pronostica a partir de tu propio historial.** Usa los tiempos de ciclo y el rendimiento de los elementos terminados recientemente y indica el periodo que cubren los datos. No tomes prestadas cifras de otro equipo.
2. **Da un rango, no una sola fecha.** Muestra un caso bajo, uno típico y uno alto, y di qué movería el resultado. Una fecha sin rango promete una certeza que no tienes.
3. **Cuenta el trabajo no planificado.** Registra incidentes, solicitudes urgentes e interrupciones como elementos de trabajo con sus propios tipos. Mide cuántos llegan y cuánto tardan.
4. **Fija la capacidad con datos.** Enumera las personas y los días disponibles, resta ausencias y tareas de soporte y reserva una parte para el trabajo no planificado según los periodos recientes. Revisa esa parte con regularidad.
5. **Limita el trabajo en curso.** Demasiado trabajo empezado alarga los tiempos de ciclo y debilita todo pronóstico. Fija un límite y revísalo cuando cambien los datos (véase Tema 1.5 — Kanban).
6. **Vigila a diario la antigüedad de los elementos de trabajo.** La antigüedad muestra problemas en los elementos sin terminar mientras aún hay tiempo de actuar. Revisa primero los más antiguos.
7. **Usa percentiles y distribuciones.** Di que la mayoría de los elementos de un tipo terminan en un número de días y muestra la cola lenta. Los promedios la ocultan.
8. **Compara los pronósticos con los resultados reales.** Después de cada periodo, registra lo que se pronosticó y lo que ocurrió. Ajusta el método, no solo la cifra.
9. **Usa las estimaciones para planificar, no para juzgar.** Si el equipo estima elementos, usa las cifras para su propia planificación y no clasifiques a personas ni equipos con ellas (véase Tema 5.6 — Métricas y Medición).
10. **Haz visibles los pronósticos para quienes dependen de ellos.** Comparte el rango y los supuestos con clientes y partes interesadas, y actualízalos cuando cambien los hechos.
11. **Lleva el trabajo de mejora al mismo flujo.** Pon las correcciones de problemas, el trabajo de monitorización y la automatización junto a las funcionalidades, para que los compromisos sean visibles (véase Tema 3.15 — Mejora Continua).
12. **Si usas sprints y velocidad, mantenlos pequeños y honestos.** Acuerda qué partes de Scrum sigues, nombra la variación y prueba un enfoque basado en el flujo si dominan las interrupciones.

## Preguntas para conversar con tu equipo

**¿Cómo respondemos hoy a "¿cuándo estará esto hecho?" y en qué se basa la respuesta?**

Pide las tres últimas respuestas que dio el equipo y en qué se basó cada una. Compáralas con lo que ocurrió. Los equipos suelen descubrir que las fechas procedían de la esperanza o de la opinión de la persona de mayor rango. Después, pregunta qué historial podría usar el equipo en su lugar.

**¿Qué parte de nuestro tiempo se va en trabajo que nadie planificó y lo sabemos por datos?**

Contabiliza los elementos planificados, las solicitudes urgentes y los incidentes de las últimas semanas. Quien facilite puede preguntar si la proporción es estable o varía según la temporada, y quién decide cuándo una interrupción gana al trabajo planificado. Acordad cómo registrarlo a partir de ahora.

**¿Cómo son nuestros tiempos de ciclo y qué diríamos si un cliente preguntara cuánto tarda una solicitud típica?**

Representa o enumera los tiempos de ciclo de los últimos elementos terminados. Pregunta cuánto tardan la mayoría, cuánto tardan los más lentos y qué explica los lentos. Discute si una expectativa de nivel de servicio basada en este historial sería justa y quién debería conocerla.

**¿Cuáles de nuestros elementos actuales son ya más antiguos que la mayoría de los terminados?**

Mira los elementos abiertos más antiguos. Pregunta por qué está atascado cada uno, quién puede desbloquearlo y qué hará el equipo hoy. Termina decidiendo con qué frecuencia revisará la antigüedad el equipo.

**¿Cuándo fue la última vez que un pronóstico nuestro resultó equivocado y qué cambiamos después?**

Pide un ejemplo reciente, el pronóstico y el resultado. Busca lo que el pronóstico pasó por alto: trabajo no planificado, una dependencia o elementos más grandes de lo esperado. Acordad un cambio en el método y cómo lo comprobará el equipo.

**Si usamos sprints o velocidad, ¿qué hacen por nosotros y qué perderíamos si los abandonáramos?**

Pregunta con honestidad qué problema resuelve cada uno. Busca evidencia, como mejor enfoque u objetivos más claros, y también daños, como estimaciones infladas o interrupciones ignoradas. Quien facilite debe vigilar cualquier cambio que elimine los bucles de retroalimentación, que son las partes útiles. Acordad un experimento y cómo comparar los resultados.

## En la práctica: un ejemplo de ITIL ágil

El departamento de TI de un hospital regional tiene un equipo de siete personas que mantiene la aplicación de programación de pacientes. Los responsables de las clínicas piden fechas y el equipo se las ha ido dando. La mayoría de las fechas se incumplen, porque siguen llegando incidentes de las plantas, solicitudes de las clínicas y parches de seguridad, y el equipo dedica la mayor parte de los días a ellos.

El líder del equipo empieza a registrar todos los elementos, planificados o no, con sus fechas de inicio y fin. Tras ocho semanas, los datos muestran que cerca de la mitad del tiempo del equipo se va en trabajo no planificado y que la mayoría de los elementos planificados terminan en menos de dos semanas, con una cola larga de elementos que esperan a otro equipo. El equipo acuerda tres cambios. Expresará cada pronóstico como un rango, usando el rendimiento y los tiempos de ciclo recientes. Reservará la mitad de su capacidad para el trabajo no planificado y planificará solo con el resto. Revisará cada mañana los elementos abiertos más antiguos.

Durante los dos meses siguientes, los pronósticos son casi siempre acertados, y los responsables de las clínicas, que ahora ven un rango y sus supuestos, planifican en torno a él. El responsable del servicio, un gerente de operaciones de clínica, puede ver qué incidentes recurrentes consumen capacidad y sube la prioridad de una corrección de un fallo recurrente de sincronización de citas; el fallo cesa. Quedan dificultades. Un incidente mayor sigue desplazando parte del trabajo, y los gerentes a quienes gustaban las respuestas rápidas del acuerdo anterior encuentran menos satisfactorios los rangos. El equipo acuerda decirles qué cambió en el pronóstico cada vez que se mueva y comparar su enfoque con un método de ciclo fijo para el trabajo de mejora en la próxima revisión.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega son los que más ganan pronosticando con sus propios datos de flujo. Registra el trabajo cuando empieza y cuando termina, limita el trabajo en curso y publica cambios pequeños de forma continua. Comparte el rango con quienes esperan y usa la Definición de Terminado, si la tienes, para incluir el trabajo operativo que hace soportable una versión.

### Equipos de servicio y operaciones

Los equipos de operaciones son dueños del trabajo no planificado que hace fallar los pronósticos. Registra incidentes, solicitudes y cambios como elementos de trabajo y comparte los patrones recurrentes para que influyan en el orden del trabajo. Usa los datos de tiempo de ciclo para fijar expectativas realistas con los clientes y sé explícito sobre cuánta capacidad se dedica a la mejora planificada.

### Liderazgo y gobernanza

Los líderes obtienen una imagen más honesta de los rangos de pronóstico y las medidas de flujo que de los informes de estado. Pide rangos con sus supuestos, la precisión de los pronósticos a lo largo del tiempo y lo que el equipo cambió a causa de los datos. Evita fijar objetivos sobre cifras individuales, lo que produce manipulación, y acepta que un pronóstico se moverá cuando lo hagan los hechos.

### Clientes y usuarios

Los clientes y usuarios se benefician de expectativas más claras y menos fechas incumplidas. Pide al equipo el tiempo esperado para tu tipo de solicitud y espera que se apoye en el historial. Si tu solicitud es urgente, espera que te pregunten por qué, porque adelantarla afecta al trabajo de todos los demás.

## Fallos frecuentes

- **Prometer fechas por esperanza.** Las fechas proceden de la opinión y se incumplen. En su lugar, pronostica a partir de los elementos terminados recientemente y muestra el rango.
- **Ignorar el trabajo no planificado.** Las interrupciones arruinan el plan en cada periodo. En su lugar, cuéntalas como elementos de trabajo y reserva capacidad basándote en datos.
- **Pronósticos de un solo número.** Una fecha oculta la incertidumbre. En su lugar, da un caso bajo, uno típico y uno alto con sus supuestos.
- **Usar solo promedios.** Se oculta la cola larga de elementos lentos. En su lugar, usa percentiles y distribuciones.
- **Empezar demasiado.** Un trabajo en curso elevado alarga todos los tiempos de ciclo. En su lugar, limítalo y termina antes de empezar.
- **Usar la velocidad o el rendimiento como objetivo de desempeño.** Los equipos inflan las estimaciones o dividen los elementos para quedar bien. En su lugar, usa las cifras para planificar y juzga los resultados (véase Tema 5.6 — Métricas y Medición).
- **No comprobar nunca el pronóstico.** El método nunca mejora. En su lugar, compara cada pronóstico con lo que ocurrió.
- **Aplicar ciclos fijos a un trabajo que no encaja.** Una cola de solicitudes impredecibles forzada a periodos fijos genera frustración. En su lugar, prueba un enfoque basado en el flujo y compara los resultados.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Pronóstico | Las fechas proceden de la opinión | Algunos equipos usan datos pasados | Los equipos pronostican como rangos a partir de sus propios datos de flujo | Se sigue la precisión de los pronósticos y se mejora el método | Los pronósticos se coordinan entre equipos y proveedores |
| Medidas de flujo | Se recogen pocas medidas | Algunos equipos registran el tiempo de ciclo o el rendimiento | Las cuatro medidas de flujo se recogen de forma coherente | Las medidas se revisan y se usan para fijar expectativas | Los datos de flujo se comparten entre equipos y se usan para planificar juntos |
| Capacidad y trabajo no planificado | No se cuentan las interrupciones | Algunos equipos siguen el trabajo no planificado | La capacidad para el trabajo no planificado se fija con datos | La proporción y las causas del trabajo no planificado se revisan y se reducen | Operaciones y entrega planifican la capacidad juntos |
| Uso de estimaciones y ciclos fijos | Las estimaciones se usan para juzgar a las personas | Algunos equipos usan estimaciones para su propia planificación | Los equipos acuerdan qué prácticas usan y nombran las variaciones | Los efectos de las prácticas se revisan frente al flujo y los resultados | Las prácticas se ajustan entre equipos a partir del aprendizaje compartido |

## Lista de verificación

- [ ] Los pronósticos proceden del propio historial de elementos terminados del equipo.
- [ ] Cada pronóstico es un rango con supuestos declarados.
- [ ] Los incidentes, las solicitudes y el trabajo de mejora se registran todos como elementos de trabajo.
- [ ] La capacidad para el trabajo no planificado se fija con datos y se revisa.
- [ ] Se siguen el tiempo de ciclo, el rendimiento, el trabajo en curso y la antigüedad de los elementos.
- [ ] El trabajo en curso tiene un límite que el equipo revisa.
- [ ] Los elementos abiertos más antiguos se revisan con regularidad.
- [ ] Los pronósticos se comparan con los resultados reales después de cada periodo.
- [ ] Las estimaciones y la velocidad, si se usan, no son objetivos.
- [ ] Cualquier uso de Scrum, sprints o una variación está anotado y nombrado con honestidad.

## Prompts de IA

**Propósito: construir un rango de pronóstico a partir de tus propios datos de rendimiento.**

```text
Ayúdame a pronosticar la entrega de un equipo de [número y tipo de personas].

Rendimiento (elementos terminados) de cada una de las últimas [número] semanas: [pega las cifras reales como una lista].
Elementos restantes: [número], y una nota sobre cuán similares son en tamaño: [pega].
Cambios conocidos que pueden afectar a las próximas semanas (ausencias, trabajo nuevo, dependencias): [pega, o escribe "ninguno conocido"].

Calcula el rendimiento semanal más bajo, el típico y el más alto a partir de las cifras, y divide los elementos restantes entre cada uno para dar un rango de semanas. Indica los supuestos. No extrapoles más allá de los datos ni inventes cifras. Si los datos son demasiado escasos, dilo y pregunta qué añadir. Enumera de lo que no estés seguro.
```

**Propósito: analizar los tiempos de ciclo y proponer una expectativa de nivel de servicio.**

```text
A continuación están las fechas de inicio y fin de los últimos [número] elementos de trabajo terminados de tipo [tipo]: [pega como una tabla; usa solo datos reales].

Calcula el tiempo de ciclo de cada elemento. Describe la dispersión: cuánto tardan la mayoría de los elementos, cuánto tardan los más lentos y qué podría explicar los lentos. Sugiere una expectativa de nivel de servicio con la forma "la mayoría de los elementos de este tipo terminan en N días" e indica con cuánta confianza lo permiten los datos. No la expreses como una promesa. Si los datos son pocos, dilo y pregunta qué recoger. Enumera de lo que no estés seguro.
```

**Propósito: medir cuánta capacidad se va en trabajo no planificado.**

```text
A continuación hay una lista de los elementos de trabajo que nuestro equipo completó durante las últimas [número] semanas, cada uno marcado como planificado o no planificado, con el tiempo que llevó: [pega como una tabla; usa solo datos reales].

Calcula la proporción de tiempo en trabajo planificado y no planificado para cada semana, usando solo los números que te di. Describe el patrón, sugiere qué proporción de la capacidad reservar para el trabajo no planificado y nombra dos supuestos detrás de la sugerencia. Hazme primero preguntas aclaratorias si los datos son escasos y enumera de lo que no estés seguro.
```

**Propósito: revisar los elementos abiertos más antiguos y planificar cómo desbloquearlos.**

```text
Nuestros elementos de trabajo abiertos, con fechas de inicio y estado actual: [pega como una tabla; usa solo datos reales].
Tiempos de ciclo de nuestros últimos [número] elementos terminados: [pega].

Calcula la antigüedad actual de cada elemento abierto y señala los que son más antiguos que la mayoría de los terminados. Para cada elemento señalado, sugiere dos preguntas sobre lo que lo bloquea. No adivines la causa. Enumera de lo que no estés seguro.
```

## Habilidades de IA

- [kanban](../../../../skills/kanban/SKILL.md): úsala para configurar medidas de flujo, límites de trabajo en curso y una expectativa de nivel de servicio.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): úsala para comprobar si la capacidad disponible cubre la demanda prevista y qué hacer ante una brecha.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): úsala para estimar la carga futura como un rango a partir de datos pasados y planes del negocio.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): úsala para elegir una métrica, nombrar su vector de manipulación y su salvaguarda, y rellenar una carta de métricas.
- [scrum](../../../../skills/scrum/SKILL.md): úsala si el equipo planifica en sprints, para configurar o revisar sus roles, eventos y artefactos.

## Fuentes principales

- **La Guía de Kanban** (kanbanguides.org): define las medidas de flujo y la expectativa de nivel de servicio como un pronóstico basado en tiempos de ciclo pasados.
- **La Guía de Scrum** (Ken Schwaber y Jeff Sutherland, scrumguides.org): la definición autorizada y breve de Scrum, para los equipos que usan sprints.
- **Kanban (desarrollo)** (Wikipedia): una visión general de las medidas de flujo y del sistema de arrastre de Kanban.
- **Scrum (desarrollo de software)** (Wikipedia): una visión general de la historia, los roles, los eventos y las críticas de Scrum.

## Referencias

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
