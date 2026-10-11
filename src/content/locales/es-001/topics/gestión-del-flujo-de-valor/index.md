# Gestión del Flujo de Valor

**La gestión del flujo de valor mira todo el camino desde la solicitud hasta el valor, mide dónde espera el trabajo y mejora el flujo entre equipos, porque los mayores retrasos en una organización de servicios suelen estar entre los equipos y no dentro de ellos.**

## Por qué importa

La mayoría de los equipos miden su propio trabajo: tickets cerrados, historias terminadas, cambios publicados. Estas cifras pueden verse bien mientras el cliente espera semanas. La razón es que la mayor parte del tiempo transcurrido de una solicitud típica se pasa esperando, en colas, por aprobaciones, entre equipos. Un equipo que hace más rápido su propio paso puede no cambiar nada para la persona que lo pidió.

El pensamiento lean tiene un método para verlo: el mapa del flujo de valor, que dibuja cada paso desde el comienzo de un proceso hasta el cliente y registra el tiempo y el volumen en cada etapa. ITIL 4 tiene su propia idea de un flujo de valor, un conjunto de actividades que crean y entregan un servicio, combinando las actividades de la cadena de valor en distinto orden (véase Tema 2.6 — La Cadena de Valor del Servicio). Las dos encajan. La idea de ITIL dice qué es un flujo y el método lean muestra cómo medir y mejorar uno.

La gestión del flujo de valor va más allá de un taller puntual de mapeo. Significa gestionar el flujo del trabajo de forma continua, con medidas compartidas, un responsable con nombre y revisiones periódicas que incluyan a todos los equipos del flujo. La lista de capacidades de DORA incluye la visibilidad del trabajo en el flujo de valor y los límites al trabajo en proceso, y su orientación sobre los límites describe hacer visible todo el trabajo, incluido el que está fuera del equipo. Este tema se apoya en el artículo de Wikipedia sobre el mapeo del flujo de valor, en DORA y en la Guía de Kanban, e indica dónde callan las fuentes.

## Conceptos clave

### Qué es un flujo de valor

Un **flujo de valor** es la secuencia de pasos por los que una solicitud se convierte en valor entregado. El [artículo de Wikipedia sobre el mapeo del flujo de valor](https://en.wikipedia.org/wiki/Value-stream_mapping) describe el método como una técnica de gestión lean que analiza el estado actual y diseña un estado futuro para los sucesos que llevan un producto o servicio desde el comienzo de un proceso hasta el cliente. En la visión de ITIL, un flujo de valor es un conjunto específico de actividades que crean y entregan a los clientes un servicio o producto concreto (véase Tema 2.6 — La Cadena de Valor del Servicio).

Ejemplos en una organización de servicios: gestionar un incidente desde la notificación hasta el restablecimiento, entregar un cambio desde la idea hasta producción, incorporar a un cliente nuevo o atender una solicitud de acceso.

### Mapeo del flujo de valor

El artículo dice que el mapa visual resultante muestra cada paso crítico y cuantifica el tiempo y el volumen en cada etapa. Describe dos mapas: un **mapa del estado actual**, construido observando y siguiendo el flujo real de material e información, y un **mapa del estado futuro**, que muestra el proceso ideal tras las mejoras. El estado actual debe construirse primero. El artículo cita *Learning to See* de Mike Rother y John Shook (Lean Enterprise Institute, 1999) como fuente. Enumera el desarrollo de software, el desarrollo de productos, la gestión de proyectos y los procesos administrativos y de oficina como áreas de uso, y menciona dos enfoques centrados en el software de Ali y colegas: el análisis de artefactos de desarrollo y el análisis del flujo de información.

El artículo no define el plazo de entrega, el tiempo de proceso ni el porcentaje completo y exacto, no enumera símbolos y no discute críticas. Sin embargo, la página de DORA sobre la entrega continua se refiere al mapeo del flujo de valor como una manera de exponer cuellos de botella comparando el tiempo transcurrido con el tiempo que añade valor y midiendo el porcentaje completo y exacto (%C/A). Los términos siguientes son de uso común:

| Término | Significado, en el uso común |
|---|---|
| **Plazo de entrega (lead time)** | Tiempo total transcurrido desde el comienzo de una solicitud hasta la entrega |
| **Tiempo de proceso** (o tiempo de contacto) | Tiempo en que alguien está realmente trabajando en la solicitud |
| **Tiempo de espera** | Tiempo que la solicitud permanece inactiva entre pasos |
| **Porcentaje completo y exacto (%C/A)** | Proporción del trabajo que llega a un paso y no necesita corrección ni información que falta |
| **Eficiencia del flujo** | Tiempo de proceso dividido por el plazo de entrega, como porcentaje |

La eficiencia del flujo es una razón simple calculada a modo de ilustración de esta guía, y las fuentes leídas no la definen.

### Medidas de flujo

La Guía de Kanban nombra cuatro medidas de flujo (véase Tema 1.5 — Kanban): **trabajo en curso** (elementos empezados pero no terminados), **rendimiento** (elementos terminados por periodo), **antigüedad del elemento de trabajo** (tiempo desde que empezó un elemento sin terminar) y **tiempo de ciclo** (tiempo de principio a fin de un elemento completado). Funcionan al nivel del flujo de trabajo de un equipo. La gestión del flujo de valor aplica las mismas ideas entre equipos: mide el tiempo transcurrido desde la solicitud hasta la recepción del cliente, no desde el momento en que un solo equipo la toma.

Las medidas de entrega de software de DORA, como el plazo de entrega del cambio, se aplican a una porción del flujo, desde la confirmación hasta producción (véase Tema 3.4 — Habilitación de Cambios). La parte anterior, de la idea a la confirmación, también forma parte del flujo de valor y a menudo tiene las esperas más largas.

### Límites al trabajo en proceso

La página de DORA sobre los límites al trabajo en proceso (WIP) los describe como topes al número de elementos que puede haber en cada etapa de un flujo de trabajo. Dice que la investigación de DORA vincula los límites de WIP con un mejor desempeño de la entrega de software solo en combinación con otras capacidades, como las pantallas visuales y los bucles de retroalimentación de la monitorización, y no da tamaños de efecto. Su consejo de implantación incluye hacer visible todo el trabajo, incluido el que está fuera del equipo, fijar cada límite según la capacidad del equipo, mantener firmes los límites y no subirlos cuando la gente está ociosa, tomar trabajo solo cuando se abre un hueco, seguir el plazo de entrega y su variabilidad, reducir los traspasos y bajar gradualmente los límites para exponer la siguiente restricción. Los escollos que nombra incluyen ignorar el trabajo anterior y posterior, lo que lleva a la optimización local, y fijar límites demasiado altos.

### Ver el flujo completo

El escollo de la "optimización local" es el central. Un flujo con cinco equipos tiene cinco colas. Si un equipo duplica su velocidad, el plazo de entrega del flujo puede apenas cambiar, porque los demás siguen esperando. La gestión del flujo de valor busca la **restricción**, el paso que limita el conjunto, y la mejora primero (véase Tema 1.7 — Desarrollo de Software Lean sobre optimizar el todo).

### Titularidad y gobernanza

Un flujo cruza equipos, por lo que necesita a alguien responsable del conjunto. Un responsable del flujo de valor (o un grupo pequeño) tiene el mapa, las medidas y la lista de mejoras, y convoca a los equipos. Sin responsable, nadie responde del flujo y las mejoras se quedan dentro de las fronteras de los equipos. Esto se vincula con la propiedad de productos y servicios (véase Tema 5.5 — Propiedad de Productos y Servicios).

### Herramientas

Las herramientas de software para la gestión del flujo de valor recogen datos de los tickets, el control de código fuente y las canalizaciones para mostrar el flujo a lo largo de la cadena de herramientas. Las fuentes leídas para esta guía no tratan tales herramientas. Si evalúas alguna, comprueba qué datos necesita, cuán exactos son y si las medidas responden a una pregunta que tienes. Un mapa aproximado dibujado a mano con los equipos implicados es un buen punto de partida y a menudo revela más que un panel.

### Límites

El artículo de Wikipedia no discute críticas, y la página de DORA sobre WIP no da tamaños de efecto ni valores objetivo. Las cautelas prácticas, ofrecidas como experiencia, incluyen el mapeo que nunca lleva al cambio, las medidas usadas para clasificar equipos y los mapas dibujados de memoria por los gerentes en lugar de observando elementos reales.

## Buenas prácticas

1. **Elige un flujo que importe.** Elige un flujo que importe a los usuarios, como un cambio que llega a producción o una solicitud de acceso. Un flujo estrecho y real enseña más que uno amplio y abstracto.
2. **Mapea a partir de elementos reales.** Sigue varios elementos recientes de principio a fin y registra las fechas reales, no el documento del proceso. La observación supera al recuerdo, como sugiere el énfasis del artículo en observar y seguir el flujo real.
3. **Registra el tiempo y la espera en cada paso.** Para cada paso, anota el tiempo de trabajo y la espera anterior. Las esperas suelen ser la historia.
4. **Incluye a todos los del flujo.** Invita a personas de cada equipo que toque el elemento, incluidos aprobadores y proveedores. Haz el mapeo juntos, para que nadie se sorprenda del resultado.
5. **Calcula el plazo de entrega, el tiempo de proceso y la eficiencia del flujo.** Compara el tiempo transcurrido con el tiempo de trabajo y mira cuánto es espera. Usa los números para iniciar conversaciones.
6. **Mira la exactitud.** Pregunta con qué frecuencia llega el trabajo a un paso incompleto o erróneo y exige repetirlo. Un paso con un porcentaje bajo de completo y exacto causa retraso aguas abajo.
7. **Encuentra la restricción.** Identifica el paso que limita todo el flujo y mejóralo primero. Mejorar otros pasos da poco beneficio.
8. **Dibuja el estado futuro.** Diseña con los equipos un flujo mejor, no uno ideal, y elige los dos primeros cambios. Acordad responsables y fechas.
9. **Limita el trabajo en proceso.** Pon tope a lo que contiene cada etapa, fija los límites según la capacidad, manténlos cuando la gente esté ociosa y bájalos gradualmente, como describe la orientación de DORA.
10. **Haz visible el trabajo.** Muestra el flujo en un tablero o mapa compartido que incluya trabajo ajeno a cualquier equipo. Actualízalo a medida que se mueven los elementos.
11. **Nombra un responsable del flujo.** Elige a una persona responsable del desempeño del flujo que pueda convocar a los equipos y llevar las mejoras a los líderes.
12. **Revisa con regularidad.** Celebra una breve revisión mensual del plazo de entrega, las esperas y la lista de mejoras. Vuelve a dibujar el mapa tras cambios significativos.

## Preguntas para conversar con tu equipo

**Si siguiéramos una solicitud desde el primer contacto hasta la recepción del cliente, ¿cuánto tardaría y cuánto de ese tiempo sería trabajo?**

Elige un elemento reciente y reúne las fechas. Pide a las personas que adivinen la respuesta antes de mirar. La conjetura suele ser optimista. Calcula la proporción de tiempo de trabajo. Quien facilite puede preguntar dónde ocurrió la mayor espera y quién era su responsable. Elígela como primer objetivo.

**¿Con quién del flujo no hemos hablado nunca?**

Enumera los equipos, aprobadores y proveedores que toca un elemento. Marca aquellos con los que el equipo nunca se ha reunido. Pregunta qué se ganaría invitándolos a una sesión de mapeo. Respuestas típicas: comprender por qué esperan o qué necesitan para trabajar más rápido. Invita a uno.

**¿Qué entregamos incompleto y qué recibimos incompleto?**

Pide ejemplos de trabajo que volvió para repetirse. Anota qué traspasos causan más devoluciones y qué falta. Es la idea del porcentaje completo y exacto en términos sencillos. Acordad una lista de verificación breve para un traspaso.

**¿Dónde está la restricción en nuestro flujo y qué pasa si aceleramos otra cosa?**

Discute qué paso tiene la cola más larga. Pregunta qué pasaría con el tiempo de extremo a extremo si otro paso duplicara su velocidad. La idea es ver que mejorar algo que no es la restricción cambia poco. Elige trabajar en la restricción.

**¿En cuántas cosas trabaja cada equipo a la vez y qué pasaría si lo limitáramos?**

Cuenta el trabajo en curso por equipo. Discute qué significaría dejar de empezar. Temores típicos: algo importante esperará. Beneficios típicos: las cosas terminan. Acordad un tope de prueba para un equipo y una manera de juzgar el resultado.

**¿Quién es responsable de este flujo en su conjunto?**

Pide al equipo que nombre a la persona. Si nadie, discute quién podría serlo y qué autoridad necesitaría. Quien facilite puede señalar que las mejoras entre equipos rara vez ocurren sin un responsable. Propón un nombre y llévalo al líder pertinente.

## En la práctica: un ejemplo de ITIL ágil

Un regulador medioambiental nacional concede permisos a operadores industriales. Los solicitantes se quejan de que un permiso típico tarda unos cuatro meses, y al grupo de servicios digitales del regulador, de doce personas, se le pide que lo acelere. El grupo ya había construido un formulario en línea más rápido, pero el tiempo transcurrido apenas ha cambiado.

La jefa del grupo convoca a personas de todas las partes del flujo: el equipo de solicitudes, dos revisores técnicos, un oficial jurídico, la oficina de tasas y el equipo que emite los documentos del permiso. Mapean seis permisos recientes desde la fecha de presentación hasta la fecha en que el permiso llegó al solicitante. Los resultados son aleccionadores. El tiempo total fue de unos 110 días, y el tiempo de trabajo, de unos 12. La mayor espera estuvo en la cola de revisión técnica, donde las solicitudes esperaban de media 40 días antes de que alguien las abriera, y alrededor de un tercio de las solicitudes llegaban con información que faltaba y había que pedir de nuevo. La oficina de tasas y el equipo de documentos añadían cada uno una semana de espera por el procesamiento por lotes.

El grupo acuerda tres cambios. El formulario en línea comprueba los elementos que suelen faltar antes de la presentación. El equipo de revisión técnica fija un límite de trabajo en proceso y una regla de abrir cada solicitud en cinco días laborables para comprobar que está completa. La oficina de tasas y el equipo de documentos pasan de lotes semanales a procesamiento diario. Nombran a la jefa de servicios digitales responsable del flujo y revisan mensualmente el plazo de entrega. Tras tres meses, la mediana del plazo de entrega es de unos 70 días y baja la proporción de solicitudes devueltas por información que falta. Quedan algunos problemas. El equipo de revisión dice que el límite dificulta manejar las solicitudes grandes y complejas, y el oficial jurídico es un punto único de retraso que nadie había contado. La responsable del flujo pide al equipo de revisión que separe los casos complejos en su propio carril y trabaja con la oficina jurídica para tener un segundo revisor.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega ven solo una parte del flujo. Únete a las sesiones de mapeo, comparte tus datos y mira lo que ocurre antes de que el trabajo te llegue y después de que lo publiques. Trata el plazo de entrega del flujo como un objetivo compartido, no solo de tu propio paso.

### Equipos de servicio y operaciones

Los equipos de operaciones suelen tener las colas más largas: accesos, aprobaciones, entornos, soporte. Sé abierto sobre tu capacidad y tus restricciones. Usa el mapa para pedir a los equipos anteriores entradas completas y para explicar tus prioridades.

### Liderazgo y gobernanza

Los líderes pueden eliminar restricciones entre equipos que los equipos no pueden. Nombra responsables de flujo, pide el plazo de entrega de extremo a extremo y responde a las mejoras que sugiere el mapa. Evita usar las medidas del flujo para clasificar equipos, lo que desalienta los datos honestos.

### Clientes y usuarios

Los clientes y usuarios experimentan el flujo completo. Di al equipo dónde duelen los retrasos, da información completa al principio y únete a una sesión de mapeo si te invitan. Tu visión de cuándo terminó realmente la solicitud es el verdadero final del flujo.

## Fallos frecuentes

- **Optimizar un solo equipo.** Una ganancia local no cambia nada de extremo a extremo. En su lugar, encuentra y aborda la restricción.
- **Mapear de memoria.** El mapa refleja lo que creen los gerentes. En su lugar, sigue elementos reales con fechas reales.
- **Voces ausentes.** Los proveedores y aprobadores no están en la sala. En su lugar, incluye a todos los equipos del flujo.
- **Un mapa y ningún cambio.** El póster cuelga de la pared. En su lugar, acuerda uno o dos cambios con responsables antes de que termine la sesión.
- **Sin responsable.** Nadie responde del flujo. En su lugar, nombra un responsable del flujo con autoridad para convocar.
- **Medidas como clasificaciones.** Los equipos ocultan las esperas. En su lugar, usa las medidas para entender el flujo y discútelas abiertamente.
- **Límites que se mueven.** Los límites de WIP se suben cada vez que la gente está ociosa. En su lugar, mantén los límites y corrige las causas, como aconseja DORA.
- **Primero la herramienta.** Se compra un panel antes de conocer las preguntas. En su lugar, empieza con un mapa dibujado a mano y añade herramientas según haga falta.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Ver el flujo | El flujo se juzga por intuición | Algunos equipos mapean sus propios pasos | Los flujos clave se mapean de extremo a extremo a partir de elementos reales, con todos los equipos | El plazo de entrega, las esperas y la exactitud se miden y se revisan | Los flujos se mapean y se miden entre organizaciones y proveedores |
| Mejorar el flujo | Los equipos aceleran sus propios pasos | Se prueban algunos cambios entre equipos | Una lista de mejoras centrada en la restricción por flujo con responsables | Las mejoras se vinculan al plazo de entrega medido y se comprueban | La mejora del flujo es rutinaria y se comparte entre flujos |
| Límites y visibilidad | El trabajo en curso es ilimitado y oculto | Algunos equipos usan tableros y límites | El trabajo es visible entre equipos con límites acordados | Los límites se ajustan con datos del plazo de entrega | Los límites y la visibilidad se coordinan entre flujos |
| Titularidad y gobernanza | Nadie es responsable del flujo | Existen coordinadores informales | Cada flujo clave tiene un responsable con nombre y una revisión periódica | Los responsables responden de resultados medidos | Los responsables colaboran entre flujos para optimizar el conjunto |

## Lista de verificación

- [ ] Hemos elegido un flujo importante y lo hemos mapeado a partir de elementos reales.
- [ ] El mapa muestra el tiempo de trabajo y el tiempo de espera en cada paso.
- [ ] Personas de cada equipo del flujo participaron en el mapeo.
- [ ] Conocemos el plazo de entrega de extremo a extremo y cuánto es espera.
- [ ] Hemos identificado la restricción y elegido uno o dos cambios.
- [ ] El trabajo en proceso es visible entre equipos, con límites acordados en las etapas clave.
- [ ] Una persona con nombre es responsable del flujo.
- [ ] Una breve revisión periódica mira el plazo de entrega, las esperas y la lista de mejoras.
- [ ] Seguimos con qué frecuencia llega el trabajo incompleto a un traspaso.
- [ ] Las medidas del flujo no se usan para clasificar equipos.

## Prompts de IA

**Propósito: calcular el plazo de entrega y la eficiencia del flujo a partir de elementos reales.**

```text
Tengo datos de tiempos de [número] elementos recientes del flujo [nombre]. Para cada elemento y cada paso tengo la fecha en que empezó y terminó el trabajo y la fecha en que llegó al paso: [pega una tabla con fechas reales, nombres de pasos y el equipo responsable].

Usando solo mis fechas, calcula para cada elemento el plazo de entrega total, el tiempo de trabajo (fin menos comienzo de cada paso), el tiempo de espera (llegada a un paso menos el fin del paso anterior) y la eficiencia del flujo (tiempo de trabajo dividido por el plazo de entrega). Muestra la media y el rango entre los elementos y las tres esperas más largas por equipo y paso. No inventes números. Si faltan fechas, di qué recoger. Enumera de lo que no estés seguro.
```

**Propósito: planificar un taller de mapeo del flujo de valor.**

```text
Planifica un taller de mapeo del flujo de valor de 2 horas para el flujo [nombre].

Participantes: [roles y equipos].
Datos que traer (fechas reales de [número] elementos recientes): [describe lo que existe].
Restricciones: [por ejemplo remoto].

Da una agenda con tiempos: acordar el comienzo y el fin del flujo, recorrer elementos reales, marcar los pasos con el tiempo de trabajo y el de espera, registrar la repetición del trabajo y los traspasos incompletos, identificar la restricción, dibujar un estado futuro y acordar uno o dos cambios con responsables y fechas. Incluye indicaciones para mantener la conversación en el sistema. Mantenlo libre de cualquier herramienta concreta. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: analizar la calidad de los traspasos entre dos equipos.**

```text
Los equipos A y B se traspasan trabajo en el flujo [nombre]. Estos son ejemplos de elementos que volvieron para repetir el trabajo o pedir información, con el motivo: [pega, uno por línea].

Agrupa los motivos en categorías usando solo el texto. Cuenta los elementos por categoría a partir de mi lista. Para las dos categorías principales, sugiere un elemento para una lista de verificación de traspaso que el equipo A podría usar y una pregunta para el equipo B. No infieras causas más allá del texto. Enumera de lo que no estés seguro.
```

**Propósito: diseñar una prueba de límites de trabajo en proceso.**

```text
Diseña una prueba de cuatro semanas de límites de trabajo en proceso para [equipo] que trabaja en [flujo o etapa].

Elementos en curso actuales por persona o etapa: [pega recuentos reales].
Datos de plazo de entrega que tenemos: [describe].
Capacidad, en personas: [número].

Propón límites para cada etapa basados en la capacidad, cómo mostrar el trabajo y su antigüedad en un tablero, reglas para tomar trabajo, qué hacer cuando alguien está ocioso (sin subir los límites), qué medir (deja los objetivos como [por acordar]) y qué nos haría parar. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): úsala para mapear un flujo, registrar tiempos y encontrar la restricción.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): úsala para estudiar cómo se mueve el trabajo entre roles y dónde espera.
- [kanban](../../../../skills/kanban/SKILL.md): úsala para configurar la visualización y los límites de trabajo en proceso del flujo.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): úsala para entender qué entra en el flujo y en qué volumen.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): úsala para decidir qué flujos e iniciativas merecen inversión.

## Fuentes principales

- **Value-stream mapping** (Wikipedia): la definición de los mapas del estado actual y futuro y una referencia a *Learning to See*.
- **Work in process limits** (DORA, dora.dev): orientación sobre fijar y mantener límites y evitar la optimización local.
- **La Guía de Kanban** (kanbanguides.org): definiciones de las cuatro medidas de flujo.
- **Lean software development** (Wikipedia): los desperdicios y principios detrás del pensamiento del flujo de valor.

## Referencias

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
