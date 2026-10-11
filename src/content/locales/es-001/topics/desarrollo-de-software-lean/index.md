# Desarrollo de Software Lean

**El desarrollo de software lean aplica al trabajo de software las ideas lean de eliminar el desperdicio, aprender rápido y optimizar el sistema completo, y da a los equipos de servicio una manera compartida de ver dónde se fugan el tiempo y el esfuerzo en el flujo que va de la solicitud al valor.**

## Por qué importa

Los métodos ágiles te dicen que entregues en pasos pequeños y aprendas. Lean plantea una pregunta más afilada: ¿adónde se va el tiempo? En la mayoría de las organizaciones de servicio, el tiempo de trabajo efectivo sobre una solicitud es una parte pequeña del tiempo transcurrido. El resto es esperar aprobaciones, traspasos entre equipos, repetición del trabajo por defectos y trabajo que nadie quería en primer lugar. Lean te da palabras y herramientas para ver ese desperdicio y eliminarlo.

Lean también pone el foco en el sistema completo. Un equipo que acelera su propia parte mientras crece la cola anterior o posterior no ha mejorado nada para el cliente. Esta visión encaja bien con la gestión de servicios. Un servicio es la suma de muchos equipos, herramientas y proveedores, y un retraso en cualquier punto es un retraso para el usuario. El principio "optimizar el todo" es un recordatorio permanente de mirar el flujo de extremo a extremo.

Lean es la fuente de buena parte de lo que aparece en otros lugares de esta guía. Kanban se nutre de las mismas raíces (véase Tema 1.5 — Kanban), la gestión del flujo de valor aplica el mapeo lean al trabajo digital (véase Tema 5.4 — Gestión del Flujo de Valor) y la mejora continua se hace eco del hábito lean de las pequeñas ganancias constantes (véase Tema 3.15 — Mejora Continua). Este tema explica las ideas y cómo usarlas sin convertirlas en eslóganes.

## Conceptos clave

### De dónde viene lean

Según el [artículo de Wikipedia sobre la manufactura lean](https://en.wikipedia.org/wiki/Lean_manufacturing), lean surgió del [Sistema de Producción Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System). Tras la Segunda Guerra Mundial los fabricantes japoneses tenían poco dinero, espacio o materia prima, y Taiichi Ohno y Shigeo Shingo rediseñaron el proceso de Toyota en torno a fábricas pequeñas y poco inventario, apoyándose en las enseñanzas de W. Edwards Deming. John Krafcik acuñó el término "lean" en un artículo de 1988, y James Womack y Daniel Jones lo definieron formalmente en su libro de 1996 *Lean Thinking*.

El término "desarrollo de software lean" procede del libro de 2003 *Lean Software Development: An Agile Toolkit* de Mary y Tom Poppendieck, según el [artículo de Wikipedia sobre el desarrollo de software lean](https://en.wikipedia.org/wiki/Lean_software_development). El libro adapta al software los principios de la manufactura lean y compara las herramientas lean con las prácticas ágiles. Las charlas de los Poppendieck en conferencias ágiles ayudaron a llevar las ideas a la comunidad ágil.

### Cinco principios del pensamiento lean

Womack y Jones expusieron cinco principios del pensamiento lean, tal como los recoge el artículo sobre manufactura:

1. **Valor:** definir el valor desde el punto de vista del cliente.
2. **Flujo de valor:** identificar toda la secuencia de pasos que crea ese valor y cuestionar los pasos que no añaden ninguno.
3. **Flujo:** hacer que los pasos restantes fluyan sin interrupción.
4. **Arrastre (pull):** dejar que la demanda del cliente arrastre el trabajo a través del sistema, en lugar de empujarlo.
5. **Perfección:** seguir mejorando, de modo que se siga eliminando el desperdicio.

### Siete principios para el software

El artículo de Wikipedia sobre el desarrollo de software lean enumera siete principios para el software:

| Principio | Qué pide | En el trabajo de servicio |
|---|---|---|
| **Eliminar el desperdicio** | Quitar todo lo que no añade valor para el cliente | Abandonar aprobaciones que nunca rechazan, informes que nadie lee y funcionalidades que nadie usa |
| **Amplificar el aprendizaje** | Acortar el ciclo desde probar algo hasta aprender cómo fue | Publicar cambios pequeños y observar lo que hacen los usuarios |
| **Decidir lo más tarde posible** | Retrasar los compromisos hasta tener datos, manteniendo abiertas las opciones | No fijar el diseño de todo el futuro de un servicio antes de saber cómo se usa |
| **Entregar lo más rápido posible** | Reducir el tiempo de la idea al valor; la entrega rápida permite ver y analizar los resultados antes | Acortar el camino de los cambios pequeños y las solicitudes rutinarias |
| **Empoderar al equipo** | Dejar que quienes hacen el trabajo tomen las decisiones sobre él | Dar al centro de servicios la autoridad para resolver problemas comunes sin escalar |
| **Incorporar la integridad** | Construir la calidad a medida que se hace el trabajo, en lugar de inspeccionarla después | Pruebas automatizadas, monitorización y guías operativas claras como parte del trabajo |
| **Optimizar el todo** | Mejorar el flujo de extremo a extremo, no el rendimiento de una parte | Medir el tiempo de la solicitud a la resolución entre equipos, no la cola de cada equipo |

El artículo dice que estos principios solo tienen éxito aplicados juntos y con buen juicio sobre el entorno. También califica de mito la creencia de que "las prisas generan desperdicio", argumentando que la entrega rápida ayuda a los equipos a ver y analizar los resultados antes. Esa afirmación es una opinión, no una ley: la velocidad sin calidad incorporada sí produce desperdicio, y por eso "incorporar la integridad" está junto a "entregar lo más rápido posible".

### Desperdicio en el trabajo de software y de servicio

Los siete desperdicios de lean (llamados *muda*) proceden de la lista de Shingo para la manufactura: inventario, sobreproducción, sobreprocesamiento, transporte, movimiento excesivo, espera y defectos. El artículo sobre lean en software los traslada al software así:

| Desperdicio de manufactura | Equivalente en software | Ejemplo en un equipo de servicio |
|---|---|---|
| Inventario | Trabajo a medio hacer | Una larga lista de cambios empezados pero sin terminar |
| Sobreproducción | Funcionalidades extra | Un informe o servicio que nadie pidió |
| Sobreprocesamiento | Procesos extra | Cuatro aprobaciones para un cambio de bajo riesgo |
| Transporte | Cambio de tarea | Un ingeniero tironeado entre incidentes y trabajo de proyecto |
| Espera | Espera | Un ticket esperando en la cola de otro equipo |
| Movimiento | Traspasos | Una solicitud que pasa por cinco personas |
| Defectos | Defectos | Un error que causa repetición del trabajo e incidentes repetidos |

A veces se añaden a la discusión sobre el desperdicio los términos japoneses *mura* (irregularidad) y *muri* (sobrecarga). Los artículos de Wikipedia consultados aquí enumeran solo los siete desperdicios, así que usa los términos adicionales con cuidado y defínelos cuando lo hagas.

### Mapeo del flujo de valor

El artículo sobre lean en software nombra el mapeo del flujo de valor como la técnica para encontrar desperdicio, eliminándolo en rondas repetidas. Un mapa muestra cada paso del camino de la solicitud al valor entregado, con el tiempo que el trabajo pasa siendo trabajado y el tiempo que pasa esperando. El resultado suele ser una sorpresa: un camino que dura semanas puede contener horas de trabajo real.

### Arrastre, flujo y kanban

El principio lean de arrastre está detrás de los límites de Kanban al trabajo en curso. El artículo de software describe un desarrollo justo a tiempo en el que el cliente declara el resultado necesario y el equipo organiza sus propias tareas, tomando trabajo según lo permite la capacidad. Las tarjetas kanban son una forma visible de ese arrastre (véase Tema 1.5 — Kanban).

### Kaizen: mejora pequeña y constante

Kaizen significa mejora continua e incremental. El artículo sobre manufactura lo rastrea hasta los equipos de mejora de Toyota en 1936. En un equipo de servicio aparece como cambios pequeños hechos a menudo por las personas más cercanas al trabajo, como una plantilla revisada, una nueva comprobación automática o un traspaso más claro. Se diferencia de los grandes programas de mejora en que nunca espera a un ciclo presupuestario.

### Límites de lean

Los artículos consultados no nombran críticas formales, pero los límites prácticos son bien conocidos. Lean surgió de la manufactura repetible, y el trabajo del conocimiento varía mucho más. Contar el desperdicio puede reducir la holgura que un equipo necesita para afrontar sorpresas, así que un equipo cargado por completo responde con lentitud a un incidente. Trata lean como una lente que encuentra desperdicio y conserva capacidad de reserva donde la variación es alta (véase Tema 3.11 — Disponibilidad, Capacidad y Rendimiento).

## Buenas prácticas

1. **Define el valor desde el lado del cliente.** Para cada servicio, escribe qué recibe realmente el usuario y cuándo lo recibe. Úsalo para juzgar cada paso: ¿añade valor para el usuario o solo sirve a nuestro propio proceso?
2. **Mapea el flujo de valor de un tipo de solicitud real.** Elige una solicitud o un cambio comunes y síguelo desde el primer contacto hasta la entrega. Registra el tiempo de trabajo y el tiempo de espera en cada paso. Un mapa aproximado dibujado en una hora es más útil que uno perfecto dibujado en un trimestre.
3. **Nombra los desperdicios que encuentres.** Usa las siete categorías como lista de verificación: trabajo a medio hacer, funcionalidades extra, procesos extra, cambio de tarea, espera, traspasos, defectos. Nombrarlos facilita hablar de ellos sin culpar a las personas.
4. **Ataca primero la espera más larga.** El mayor retraso del mapa suele estar entre los pasos, no dentro de ellos. Reducirlo suele rendir más que pulir un paso que ya es rápido.
5. **Limita el trabajo en curso.** Terminar el trabajo es más rápido que hacer malabares con él. Pon un tope al número de elementos abiertos por equipo y observa qué pasa con el tiempo que lleva cada uno.
6. **Incorpora la calidad.** Añade comprobaciones en el momento del trabajo, como pruebas automatizadas, revisión por pares y monitorización previa a la publicación, para encontrar pronto los defectos. Inspeccionar al final es más lento y caro.
7. **Retrasa las decisiones que aún no puedes tomar bien.** Mantén abiertas las opciones hasta tener datos, pero fija una fecha en la que decidirás. Así evitas tanto el compromiso temprano con un diseño equivocado como la indecisión sin fin.
8. **Empodera a las personas más cercanas al trabajo.** Deja que los analistas del centro de servicios, los ingenieros de guardia y los desarrolladores tomen decisiones dentro de límites claros. Declara los límites, como umbrales de gasto o de riesgo, y revísalos tras los incidentes.
9. **Mira el todo, no la parte.** Mide el tiempo de extremo a extremo de la solicitud a la resolución y coméntalo con todos los equipos implicados. Un cambio que ayuda a un equipo y frena a otro no es una mejora.
10. **Haz la mejora pequeña, frecuente y local.** Anima a cada equipo a hacer una pequeña mejora cada una o dos semanas y a compartir lo que aprendió. Registra el cambio y su resultado.
11. **Conserva holgura donde la variación es alta.** No llenes cada hora de un equipo de guardia. Deja capacidad para las sorpresas y júzgala por la rapidez con que el equipo se recupera cuando algo sale mal.
12. **Usa lean con otras prácticas.** Combina los mapas de flujo de valor con las medidas de flujo de Kanban y con la gestión de problemas para los defectos recurrentes (véase Tema 3.3 — Gestión de Problemas).

## Preguntas para conversar con tu equipo

**Si siguiéramos una solicitud común de principio a fin, ¿cuánto del tiempo transcurrido sería trabajo real?**

Elige una solicitud típica y reúne las fechas de cada paso. Marca el tiempo en que alguien trabajaba en ella y el tiempo que estuvo en una cola. La proporción suele ser una sorpresa. Pregunta a las personas dónde esperaban que estuvieran las esperas y dónde estaban. Quien facilite debe resistirse al principio a las soluciones y pedir al grupo que acuerde lo que muestra el mapa.

**¿Cuál de los siete desperdicios vemos con más frecuencia en nuestro trabajo diario?**

Da a las personas la lista y pide un ejemplo reciente de cada uno. Espera que salgan a menudo el trabajo a medio hacer, el cambio de tarea, la espera y los traspasos. Pregunta cuáles puede cambiar el equipo por sí solo y cuáles necesitan a otros equipos o gerentes. Termina eligiendo un desperdicio que reducir este mes.

**¿Qué hacemos que nuestros clientes no echarían de menos si lo dejáramos?**

Enumera informes, reuniones, formularios y aprobaciones. De cada uno, pregunta quién lo usa y qué pasa si se detiene. Algunos serán necesarios para la auditoría o la seguridad, lo cual es una buena razón. Otros resultarán ser costumbre. Asigna a alguien para comprobar cada elemento dudoso antes de eliminarlo.

**¿Dónde inspeccionamos la calidad al final en lugar de incorporarla?**

Mira tus procesos de versiones, cambios e incidentes en busca de comprobaciones al final de la línea. Pregunta qué defectos encuentran esas comprobaciones y cuándo podrían haberse encontrado antes. Las respuestas típicas incluyen las pruebas tras terminar el desarrollo y la revisión de documentos a posteriori. Elige una comprobación que adelantar y describe cómo sabrás si ayudó.

**¿Quién puede tomar decisiones en nuestro equipo sin preguntar y quién debería poder?**

Pide a las personas que enumeren las cinco últimas decisiones que quisieron tomar y no pudieron, y por qué. Busca patrones, como límites de gasto, aprobaciones de cambios o decisiones de prioridad. Pregunta qué haría seguro acercar una de esas decisiones al trabajo, como una barrera de protección o una revisión a posteriori. No empujes hacia el sí; el objetivo es encontrar lo que las personas creen necesario.

**Si todo lo que hacemos ahora fuera más rápido, ¿qué se rompería primero?**

Esta pregunta pone a prueba juntos "entregar lo más rápido posible" e "incorporar la integridad". Pregunta dónde un flujo más rápido sobrecargaría a un equipo, una herramienta o una persona. Las respuestas típicas son las pruebas, las aprobaciones y la carga de guardias. Trata las respuestas como lo siguiente que mejorar. Recuerda que lean valora el flujo del sistema completo, así que el cuello de botella es donde invertir.

## En la práctica: un ejemplo de ITIL ágil

El departamento de TI de una agencia tributaria nacional opera un servicio interno para que el personal solicite acceso a software. Una solicitud típica tarda unas tres semanas, y el personal se queja con fuerza. El equipo de cinco personas que atiende las solicitudes cree que trabaja duro y se sorprende por la queja.

Un gerente dirige una sesión de mapeo del flujo de valor con el equipo, el grupo de seguridad y dos usuarios del negocio. Juntos siguen diez solicitudes recientes. Cada solicitud pasa por ocho pasos: envío del formulario, aprobación del jefe directo, aprobación del propietario de los datos, revisión de seguridad, comprobación de licencia, asignación del ticket, instalación y confirmación. El mapa muestra que el trabajo real lleva aproximadamente una hora, y casi todas las tres semanas son espera entre pasos, sobre todo por las dos aprobaciones y la revisión de seguridad. En tres de los diez casos, la solicitud se devolvió al usuario por faltar un campo en el formulario.

El grupo acuerda tres cambios. El formulario recibe campos obligatorios y una breve guía, lo que elimina las devoluciones. Las solicitudes de una lista corta de aplicaciones comunes y de bajo riesgo reciben una única aprobación del jefe directo, con el propietario de los datos informado. El grupo de seguridad acuerda revisar cada semana una muestra de esas solicitudes, en lugar de cada solicitud antes de la instalación. Tras dos meses, el tiempo típico baja a aproximadamente una semana. Queda una dificultad: las solicitudes de aplicaciones sensibles siguen tardando tres semanas, y el grupo de seguridad señala que el muestreo detectó dos solicitudes que debieron rechazarse. Ajustan la lista de aplicaciones elegibles para la aprobación rápida y deciden revisarla cada trimestre.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega pueden usar lean para mirar más allá de su propio sprint o tablero. Mapea el camino de una idea a las manos de un usuario, incluidas las pruebas, la revisión de seguridad y las aprobaciones de versiones, y encuentra dónde espera el trabajo. Trata el trabajo sin terminar como desperdicio y prefiere terminar a empezar.

### Equipos de servicio y operaciones

Los equipos de operaciones ven desperdicio a diario: incidentes repetidos, traspasos entre niveles y solicitudes que rebotan. Usa mapas para mostrar dónde espera el trabajo y usa la gestión de problemas para eliminar las causas de las repeticiones. Defiende la capacidad de reserva mostrando lo que pasa con el flujo cuando cada hora está planificada.

### Liderazgo y gobernanza

Los líderes configuran el sistema que crea la mayor parte del desperdicio: reglas de aprobación, ciclos de financiación e informes. Pregunta a tus equipos dónde esas reglas cuestan más tiempo y de qué riesgo protege cada una. Está preparado para sustituir un control por una comprobación más ligera que cumpla el mismo propósito.

### Clientes y usuarios

Los clientes definen el valor en el pensamiento lean y sienten el desperdicio como retraso. Espera que te pregunten qué necesitas realmente y con qué rapidez. Di al equipo qué parte de un servicio te importa más, porque eso orienta adónde va el esfuerzo. A cambio, puedes esperar esperas más cortas y previsibles.

## Fallos frecuentes

- **Recortar capacidad en nombre del desperdicio.** Los equipos funcionan a plena carga y no pueden responder a las sorpresas. En su lugar, conserva holgura donde la variación es alta y juzga por la rapidez con que el equipo se recupera.
- **Mapear sin actuar.** El mapa del flujo de valor cuelga de una pared y nada cambia. En su lugar, elige la mayor espera y acuerda un cambio con un responsable antes de que termine la sesión.
- **Optimizar un solo equipo.** Una ganancia local traslada la cola a otro lugar. En su lugar, mide el tiempo de extremo a extremo y acuerda los cambios con todos los equipos del flujo.
- **Eliminar controles sin entenderlos.** Un paso que parecía desperdicio protegía de un riesgo real. En su lugar, pregunta qué protege cada paso y sustitúyelo por una comprobación más ligera cuando puedas.
- **Usar las palabras de lean como eslóganes.** La gente dice "desperdicio" para despachar el trabajo de los colegas. En su lugar, usa los términos para describir el flujo y mantén la conversación en el sistema.
- **Priorizar la velocidad sobre la calidad.** Una entrega más rápida produce más defectos y repetición del trabajo. En su lugar, trata "incorporar la integridad" como requisito previo de la velocidad.
- **Aplicar cifras de manufactura al trabajo del conocimiento.** Los objetivos de una fábrica no encajan con el trabajo variable. En su lugar, usa lean como una manera de ver y preguntar, y fija las medidas con tus propios datos.
- **Tratar lean como un proyecto puntual.** Las ganancias se desvanecen cuando la atención se desplaza. En su lugar, haz que las pequeñas mejoras formen parte de la rutina de cada equipo.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Ver el desperdicio | El desperdicio se siente pero no se describe | Algunos equipos mapean su propio trabajo | Los equipos usan categorías de desperdicio y mapas de flujo de valor compartidos | La espera y la repetición del trabajo se miden a lo largo del flujo de valor | Los mapas y las medidas cruzan equipos y proveedores |
| Flujo y arrastre | El trabajo se empuja y se empieza en bloque | Algunos equipos limitan el trabajo en curso | Las reglas de arrastre y los límites son estándar | Las medidas de flujo orientan los cambios de límites y políticas | El flujo se coordina en todo el flujo de valor |
| Incorporar la calidad | La calidad se inspecciona al final | Algunos equipos prueban pronto y revisan el trabajo | Las comprobaciones automáticas y las revisiones integradas son estándar | Se siguen y reducen las tasas de defectos que escapan | Las prácticas de calidad se comparten y mejoran entre equipos |
| Mejora continua | La mejora sigue a las crisis | Algunos equipos hacen pequeños cambios regulares | Cada equipo tiene una rutina regular de mejora | Las mejoras se siguen y se comprueba su efecto | Las mejoras se extienden de forma rutinaria entre equipos y proveedores |

## Lista de verificación

- [ ] Hemos definido qué significa el valor para al menos un servicio desde el lado del usuario.
- [ ] Hemos mapeado el flujo de valor de un tipo común de solicitud, con tiempo de trabajo y tiempo de espera.
- [ ] El equipo sabe nombrar los siete desperdicios y dar un ejemplo reciente de cada uno.
- [ ] El trabajo en curso está limitado y el trabajo sin terminar es visible.
- [ ] Las comprobaciones de calidad ocurren durante el trabajo además de al final.
- [ ] Hemos elegido al menos una espera que reducir, con un responsable y una fecha.
- [ ] El equipo tiene límites claros para las decisiones que puede tomar sin preguntar.
- [ ] Medimos el tiempo de extremo a extremo de al menos un flujo entre equipos.
- [ ] Conservamos capacidad de reserva para las sorpresas donde la demanda varía.
- [ ] Cada equipo hace y registra una pequeña mejora con un ritmo regular.

## Prompts de IA

**Propósito: analizar un flujo de valor a partir de los tiempos que aportes.**

```text
Ayúdame a analizar un flujo de valor para [tipo de solicitud, p. ej. "solicitudes de acceso a software"].

Estos son los pasos en orden, con quién hace cada paso, cuánto tiempo se trabajó realmente en él y cuánto esperó el elemento antes y después. Usa números reales de unos pocos casos recientes: [pega como una tabla, con una fila por paso y una columna por caso].

Calcula, usando solo mis números, el tiempo total transcurrido, el tiempo total de trabajo y la proporción de tiempo dedicada a esperar. Identifica las tres esperas más largas. Para cada espera, pregunta de qué protege el paso y sugiere una alternativa más ligera. No inventes datos. Si faltan números, pregúntame primero, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: clasificar ejemplos de desperdicio del trabajo de tu propio equipo.**

```text
Esta es una lista de cosas que frustran a nuestro equipo o a nuestros clientes: [pega entre 8 y 12 ejemplos breves y factuales].

Clasifica cada uno en los siete desperdicios del desarrollo de software lean: trabajo a medio hacer, funcionalidades extra, procesos extra, cambio de tarea, espera, traspasos y defectos. Si un elemento no encaja en ninguno, dilo. Da una frase de razonamiento por elemento basada solo en lo que escribí. Después di qué dos categorías parecen más comunes en esta lista y sugiere dos preguntas que el equipo debería discutir. Señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: comprobar si eliminar un control es seguro.**

```text
Estamos considerando eliminar o simplificar este control: [describe la aprobación, el informe o el paso].

Para qué creemos que sirve: [describe el propósito, o escribe "desconocido"].
Quién usa su resultado: [enumera personas o equipos, o escribe "desconocido"].
Reglas que sabemos que se aplican (auditoría, seguridad, legales), con el texto real si lo tienes: [pega el texto, o escribe "ninguna conocida"].

Enumera las preguntas que deberíamos responder antes de cambiarlo. Describe dos formas más ligeras de cumplir su propósito y una manera de comprobar después del cambio que no ha pasado nada peor. No afirmes que ninguna ley o norma se aplica salvo que haya pegado su texto. Señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: planificar un taller de mapeo del flujo de valor.**

```text
Planifica un taller de mapeo del flujo de valor de 90 minutos para [número] personas de [equipos o roles]. Queremos examinar [tipo de solicitud o servicio].

Incluye: una agenda con tiempos, quién debe asistir, qué datos llevar (usa solo datos que realmente tengamos), cómo dibujar el mapa paso a paso, cómo marcar el tiempo de trabajo y el tiempo de espera y un paso final que registre un cambio acordado con un responsable y una fecha. Mantenlo libre de cualquier herramienta concreta. Hazme primero preguntas aclaratorias si falta información y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): úsala para mapear los pasos, el tiempo de trabajo y el tiempo de espera de una solicitud de principio a fin.
- [kaizen](../../../../skills/kaizen/SKILL.md): úsala para planificar mejoras pequeñas y continuas una vez que se ha encontrado el desperdicio.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): úsala para analizar cómo se mueve el trabajo entre roles y encontrar traspasos y retrasos.
- [kanban](../../../../skills/kanban/SKILL.md): úsala para aplicar el arrastre y los límites de trabajo en curso al flujo que has mapeado.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): úsala cuando los defectos y la variación, no solo la espera, sean el problema principal y necesites un método basado en datos para reducirlos.

## Fuentes principales

- **Desarrollo de software lean** (Wikipedia): los siete principios, la correspondencia de desperdicios y enlaces para seguir leyendo.
- **Manufactura lean** (Wikipedia): la historia de lean en Toyota, los desperdicios y los cinco principios del pensamiento lean.
- **Lean Software Development: An Agile Toolkit** (Mary y Tom Poppendieck, 2003): el libro que llevó las ideas lean a la comunidad ágil.
- **Lean Thinking** (James Womack y Daniel Jones, 1996): la exposición formal de los cinco principios de lean.

## Referencias

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
