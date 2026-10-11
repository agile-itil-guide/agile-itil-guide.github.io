# La Cadena de Valor del Servicio

**La cadena de valor del servicio es un conjunto de seis actividades que los equipos combinan en distinto orden para crear flujos de valor, y describe cómo la entrega continua y la operación del servicio encajan en un solo flujo en lugar de dos separados.**

## Por qué importa

Muchas organizaciones tratan construir y operar como dos etapas: primero un proyecto construye el servicio y luego un grupo de operaciones se hace cargo de él. El traspaso es donde se pierde conocimiento, se difumina la responsabilidad y los clientes sienten la brecha. La cadena de valor del servicio de ITIL 4 se diseñó para sustituir esa imagen por otra en la que las mismas actividades pueden ocurrir en cualquier orden y tantas veces como haga falta, según la situación.

Eso se parece mucho a cómo ya trabajan los equipos ágiles. En una misma semana, un equipo puede planificar una funcionalidad, construir una parte, publicarla, responder a la pregunta de un cliente sobre ella y corregir un problema hallado en producción. Cada una de esas tareas es una actividad distinta de la cadena. Verlas como partes de un solo flujo ayuda al equipo a preguntar dónde espera el trabajo, quién hace cada actividad y cuáles se descuidan.

Este tema describe las seis actividades, cómo se combinan en flujos de valor y cómo puede usar la idea un equipo ágil. Los resúmenes proceden de un proveedor de formación y de un proveedor de software, porque las páginas públicas del propietario del marco leídas para esta guía nombran la cadena de valor del servicio solo de pasada. La página del proveedor enumera las actividades sin describirlas, así que trata las descripciones que siguen como lecturas de uso amplio y consulta las publicaciones de ITIL 4 para la redacción del propietario (véase Tema 2.2 — ITIL).

## Conceptos clave

### Dónde se sitúa la cadena

En el sistema de valor del servicio, la cadena es el modelo operativo en el centro (véase Tema 2.3 — El Sistema de Valor del Servicio de ITIL). La página de un proveedor la describe como la parte del sistema que se ocupa de la canalización de entrega o del ciclo de vida de un producto o servicio, que toma la demanda como entrada y produce valor como salida. También señala que en la práctica el ciclo de vida rara vez es lineal.

### Las seis actividades

La tabla da cada actividad, el propósito que le atribuye la página de un proveedor de formación y cómo puede verse en un equipo ágil. La columna de la derecha es la lectura de esta guía.

| Actividad | Propósito, según lo resume un proveedor de formación | Cómo puede verse en un equipo ágil |
|---|---|---|
| **Planificar** | Define políticas, objetivos y directrices para la dirección de la organización, de modo que todos compartan una comprensión de la visión, el estado actual y la dirección de mejora | Objetivos de producto, hojas de ruta, planificación trimestral y elecciones de cartera |
| **Mejorar** | Mejora continuamente los servicios, las prácticas y los procesos en todas las actividades | Retrospectivas, revisiones posteriores a incidentes y elementos de mejora en la lista de trabajo pendiente |
| **Involucrar** | Interactúa con las partes interesadas para comprender necesidades, aportar información, recoger opiniones y requisitos y gestionar relaciones | Investigación de usuarios, revisiones de sprint, el centro de servicios y conversaciones con clientes |
| **Diseñar y hacer la transición** | Garantiza que los servicios nuevos o modificados cumplan las expectativas de las partes interesadas, desde el diseño hasta el entorno en vivo | Diseñar un cambio, probarlo y prepararlo para la publicación y el soporte |
| **Obtener/construir** | Adquiere o crea los componentes necesarios para los servicios, como recursos físicos, infraestructura, conocimiento o software | Desarrollar software, comprar una herramienta, preparar infraestructura, formar al personal |
| **Entregar y dar soporte** | Entrega los servicios según lo acordado y da soporte continuo para resolver problemas y atender solicitudes | Operar el servicio, gestionar incidentes y solicitudes, desplegar versiones |

### Las actividades no son etapas

La página del proveedor de formación dice que las actividades "no son lineales sino que están interrelacionadas y pueden combinarse de varias maneras para formar múltiples flujos de valor". Un **flujo de valor**, en sus palabras, es un conjunto específico de actividades que crean y entregan a los clientes un servicio o producto concreto. Esta es la idea central. La cadena es un menú de actividades, y un flujo de valor es un camino a través de ella elegido para un propósito concreto.

### Flujos de valor ilustrativos

Las páginas leídas para esta guía no dan ejemplos de flujos de valor, así que los siguientes son ilustraciones de esta guía sobre cómo podrían combinarse las actividades. No proceden de publicaciones de ITIL, y un flujo real será distinto.

| Flujo de valor | Un posible camino a través de las actividades |
|---|---|
| **Gestionar un incidente** | Involucrar (un usuario lo notifica) → entregar y dar soporte (restablecer el servicio) → mejorar (revisar y corregir la causa) |
| **Publicar una funcionalidad** | Planificar (decidir el objetivo) → diseñar y hacer la transición (diseñar, probar, preparar el soporte) → obtener/construir (desarrollar) → entregar y dar soporte (publicar) → involucrar (obtener opinión) → mejorar |
| **Atender una solicitud de acceso** | Involucrar (se recibe la solicitud) → entregar y dar soporte (comprobar y conceder el acceso) → involucrar (confirmar con el usuario) |
| **Incorporar a un nuevo proveedor** | Planificar (decidir la necesidad) → involucrar (seleccionar y acordar condiciones) → obtener/construir (integrar) → entregar y dar soporte (operar) → mejorar (revisar el desempeño) |

### Prácticas y la cadena

Las prácticas son las capacidades en las que se apoyan las actividades. La gestión de incidentes, por ejemplo, es una práctica usada en varios flujos de valor. Las fuentes no coinciden en todos los detalles de la correspondencia entre prácticas y actividades, así que evita una tabla rígida. Una prueba mejor es si una práctica contribuye al flujo de valor que estás examinando (véase la Parte 3).

### Flujos de valor y flujo ágil

El pensamiento ágil y lean ya usa flujos de valor (véase Tema 1.7 — Desarrollo de Software Lean). Un mapa de flujo de valor muestra los pasos, los tiempos y las esperas de un camino. La idea de ITIL añade un vocabulario para clasificar los pasos y un recordatorio de que el camino incluye el soporte y la mejora además de la construcción. Para el trabajo digital, esto se vincula con la gestión del flujo de valor (véase Tema 5.4 — Gestión del Flujo de Valor).

### Límites

Las páginas leídas para esta guía no dan ningún método para diseñar o seleccionar flujos de valor, y la página del proveedor no explica cómo se relaciona la cadena con la mejora continua más allá de calificar la mejora de crucial. La cadena es una manera de describir el trabajo, no de decidir cómo hacerlo. Su valor depende de si la usas para mirar flujos reales.

## Buenas prácticas

1. **Elige un flujo de valor y dibújalo.** Elige un flujo que importe a los clientes, como publicar un cambio o atender una solicitud. Enumera los pasos en orden y etiqueta cada uno con la más cercana de las seis actividades.
2. **Incluye el soporte y la mejora en la imagen.** No detengas el flujo en la publicación. Muestra lo que ocurre después: gestionar incidentes y aprender de ellos.
3. **Busca las actividades que faltan.** Si un flujo no tiene un paso de involucrar, nadie habla con los usuarios. Si no tiene un paso de mejorar, no se aprende nada. Añádelos donde importen.
4. **Cronometra las esperas.** Para un flujo, registra cuánto espera el trabajo entre actividades y dónde cruza un límite de equipo. La espera más larga es lo primero que hay que examinar (véase Tema 5.4 — Gestión del Flujo de Valor).
5. **Combina las actividades libremente.** Permite que distintos flujos usen distintos caminos. La corrección de un error menor puede ir directamente de entregar y dar soporte a obtener/construir y volver, sin un paso de planificación.
6. **Incorpora el diseño y la transición al trabajo del equipo.** Incluye las notas de soporte, la monitorización y la formación como parte de la construcción, no como un traspaso al final (véase Tema 3.5 — Gestión de Versiones y Despliegues).
7. **Haz de "involucrar" una actividad continua.** No limites el contacto con los usuarios al comienzo y al final de un proyecto. Incluye al centro de servicios y la opinión de los clientes en la planificación.
8. **Conecta la planificación con la evidencia de operaciones.** Usa datos de incidentes y solicitudes en las conversaciones de planificación para que los objetivos reflejen lo que los usuarios realmente experimentan (véase Tema 5.1 — Gestión de Servicios Ágil).
9. **Nombra un responsable para cada flujo.** Una persona debería poder decir cómo funciona el flujo y poder reunir a los equipos para mejorarlo.
10. **Usa la cadena como lista de verificación de lagunas.** Cuando algo falle, pregunta qué actividad fue débil: plan poco claro, mala interacción, transición apresurada, construcción débil, soporte inestable o ausencia de mejora.
11. **Mantén sencillo el diagrama.** Un esbozo aproximado con seis etiquetas basta. Si el dibujo necesita una leyenda, simplifícalo.
12. **Revisa los flujos tras los cambios.** Cuando cambien las estructuras de equipo, los proveedores o las herramientas, comprueba si los flujos siguen funcionando como se dibujaron.

## Preguntas para conversar con tu equipo

**¿Cuáles son los tres flujos de valor más importantes para nuestros usuarios y quién es responsable de cada uno?**

Pide a las personas que nombren los flujos que más importan, como un usuario que recibe una cuenta nueva o una corrección que llega a producción. Compara las listas. Las diferencias muestran que el equipo tiene imágenes distintas de lo que importa. Quien facilite puede preguntar quién podría responder por cada flujo de extremo a extremo. A menudo nadie puede, y eso es un hallazgo.

**Para un flujo, ¿cuáles de las seis actividades hacemos bien y cuáles omitimos?**

Dibuja el flujo y etiqueta los pasos. Luego busca actividades que faltan. Los equipos suelen descubrir que planifican y construyen bien, e involucran y mejoran mal. Pregunta qué añadiría la actividad que falta y cuánto costaría. Elige una que añadir a pequeña escala.

**¿Dónde espera el trabajo entre actividades y quién es dueño de la espera?**

Marca los traspasos y anota las esperas típicas. Muchas esperas están en la frontera entre equipos. Pregunta si la espera es necesaria, por ejemplo para una comprobación de riesgos, o un accidente de cómo se organizan los equipos. Elige una que acortar.

**¿Cómo averiguamos qué piensan los usuarios de lo que entregamos y con qué rapidez cambia eso nuestros planes?**

Sigue un comentario reciente desde el usuario hasta la lista de trabajo pendiente. Cuenta los pasos. Si tardó semanas o nunca llegó, la actividad de involucrar es débil. Pregunta qué acortaría el camino, como un canal compartido con el centro de servicios. Acordad un cambio.

**¿Qué hacemos después de un incidente o de una versión para mejorar la siguiente?**

Mira los últimos incidentes y versiones en busca de una mejora registrada. Si no hay ninguna, la actividad de mejorar es informal. Pregunta quién es responsable de las acciones de mejora y cómo se siguen. Acordad un lugar sencillo para registrarlas.

**¿Qué flujos cruzan fronteras organizativas y quién habla por el conjunto?**

Enumera los flujos que implican a proveedores, otros departamentos o clientes. Pregunta quién es responsable del flujo de extremo a extremo y qué ocurre en las fronteras. Un buen resultado es nombrar a un coordinador y una conversación periódica a través de la frontera.

## En la práctica: un ejemplo de ITIL ágil

Un grupo hospitalario regional opera un servicio de portal de pacientes que se usa para reservar citas y ver resultados de pruebas. Un equipo de diez personas lo construye y lo opera. El equipo publica funcionalidades nuevas cada dos semanas, pero los pacientes se quejan de que las correcciones de los fallos notificados tardan meses y de que no reciben respuesta a sus mensajes de opinión.

La jefa de servicios digitales pide al equipo que dibuje el flujo de valor de un fallo notificado, desde el mensaje del paciente hasta una corrección en producción. Etiquetan los pasos con las seis actividades. El mensaje llega por un formulario de contacto (involucrar) y permanece días en un buzón compartido antes de que alguien lo clasifique. Un fallo clasificado va a la misma lista de trabajo pendiente que las funcionalidades nuevas (planificar), donde compite mal. Se construye una corrección (obtener/construir), se prueba y se publica con el siguiente lote de funcionalidades (diseñar y hacer la transición, entregar y dar soporte). Nadie informa al paciente (involucrar) y nadie registra lo que el fallo enseñó al equipo (mejorar).

El equipo cambia el flujo. El buzón compartido lo revisa a diario un turno, los fallos se etiquetan y se les da un carril aparte en la lista de trabajo pendiente con el objetivo de la siguiente versión, el paciente recibe una respuesta al recibirse el mensaje y otra cuando la corrección está en vivo, y cada fallo de más de un mes se discute en la revisión quincenal. A los dos meses, la mediana del tiempo de corrección baja y las quejas de los pacientes por el silencio disminuyen. Quedan problemas: los fallos que implican el sistema de citas del hospital, operado por un proveedor, siguen esperando la cola del proveedor, y los mensajes de respuesta los redactan desarrolladores con un lenguaje que a algunos pacientes les resulta difícil de seguir. El equipo invita al proveedor a la revisión y pide al equipo de comunicación que redacte plantillas en lenguaje sencillo.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega suelen dedicar la mayor parte del tiempo a planificar, diseñar y hacer la transición, y obtener/construir. Mira las otras tres: cómo involucras a los usuarios, cómo das soporte a lo que publicas y cómo mejoras. Trata las solicitudes de soporte y el aprendizaje de los incidentes como insumos de la planificación.

### Equipos de servicio y operaciones

Los equipos de operaciones dedican la mayor parte del tiempo a entregar y dar soporte, y a partes de involucrar. Usa la cadena para mostrar cómo tu trabajo depende de actividades anteriores, como el diseño y la transición, y para pedirles lo que necesitas. Participa en la planificación para que el conocimiento operativo llegue al inicio del flujo.

### Liderazgo y gobernanza

Los líderes pueden usar la cadena para preguntar dónde se rompe el flujo en los servicios importantes. Apoya el nombramiento de responsables de flujo y dales autoridad para reunir a los equipos. Evita convertir las seis actividades en seis departamentos; la idea es conectarlas.

### Clientes y usuarios

Los clientes y usuarios participan sobre todo en involucrar, y se benefician cuando la opinión recorre todo el camino hasta los planes y las correcciones. Espera respuestas y resultados visibles. Di al proveedor qué flujo te importa más y qué retrasos te perjudican.

## Fallos frecuentes

- **Leer la cadena como una secuencia.** Los equipos obligan a todo trabajo a pasar por las seis en orden. En su lugar, elige caminos que se ajusten al trabajo.
- **Mapear departamentos, no flujos.** Cada actividad se asigna a un departamento y se pierde el flujo. En su lugar, sigue un trabajo a través de ellos.
- **Olvidar involucrar y mejorar.** El flujo termina en la publicación. En su lugar, incluye el contacto con los usuarios y el aprendizaje en cada flujo.
- **Traspaso en lugar de diseño y transición.** Las notas de soporte, la monitorización y la formación se dejan para el final. En su lugar, incorpóralas al trabajo desde el principio.
- **Sin responsable del flujo.** Nadie puede decir cómo funciona un flujo. En su lugar, nombra a un responsable con autoridad para convocar a los equipos.
- **Diagramas excesivamente detallados.** El mapa se convierte en un póster que nadie lee. En su lugar, mantenlo en una página y actualízalo cuando algo cambie.
- **Tratar el vocabulario como el objetivo.** Los equipos dedican tiempo a etiquetar y no a mejorar. En su lugar, etiqueta solo lo que ayude a encontrar una laguna.
- **Fiarse de resúmenes secundarios.** Las descripciones de las actividades difieren entre fuentes. En su lugar, consulta las publicaciones del propietario cuando importe la precisión.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Visibilidad de los flujos de valor | Los flujos se conocen solo de manera informal | Algunos equipos dibujan algunos flujos | Los flujos clave están mapeados con responsables | Se miden las esperas y los resultados de los flujos | Los flujos cruzan las fronteras organizativas y se mejoran juntos |
| Cobertura de actividades | Dominan la planificación y la construcción | Algunos equipos añaden actividades de involucrar y mejorar | Las seis actividades aparecen en los flujos clave | Las lagunas de cobertura se siguen y se cierran | La cobertura se equilibra entre equipos y proveedores con base en la evidencia |
| Traspasos y transición | Los traspasos son tardíos y no se gestionan | Algunos equipos incluyen el soporte en la construcción | El soporte, la monitorización y la formación forman parte de cada versión | Los problemas de transición se miden y se reducen | La transición se comparte entre entrega, operaciones y proveedores |
| Retroalimentación y mejora | La retroalimentación llega en forma de queja | Parte de la retroalimentación llega a la lista de trabajo pendiente | La retroalimentación y los elementos de mejora se siguen con responsables | Se comprueban los efectos de las mejoras | La retroalimentación y el aprendizaje fluyen continuamente entre equipos y clientes |

## Lista de verificación

- [ ] Hemos dibujado al menos un flujo de valor que importa a los usuarios.
- [ ] Cada paso del dibujo está etiquetado con la actividad de la cadena de valor más cercana.
- [ ] El flujo incluye la interacción con los usuarios y un paso que registra las mejoras.
- [ ] Sabemos dónde espera el trabajo y durante cuánto tiempo, al menos aproximadamente.
- [ ] El trabajo de diseño y transición, como la monitorización y las notas de soporte, forma parte de la construcción.
- [ ] Una persona con nombre es responsable del flujo de extremo a extremo.
- [ ] La opinión de los usuarios llega a la lista de trabajo pendiente y recibe respuesta.
- [ ] Los datos de incidentes y solicitudes se usan en la planificación.
- [ ] El flujo se revisa después de cambios significativos.
- [ ] Hemos consultado la publicación del propietario para la definición exacta de cada actividad.

## Prompts de IA

**Propósito: etiquetar con las seis actividades los pasos de un flujo real.**

```text
Ayúdame a etiquetar los pasos de un flujo de valor con las seis actividades de la cadena de valor del servicio de ITIL: planificar; mejorar; involucrar; diseñar y hacer la transición; obtener/construir; entregar y dar soporte.

El flujo (qué entrega y a quién): [describe].
Los pasos en orden, con quién hace cada uno y cuánto esperó antes de él, si se sabe: [pega].

Para cada paso, sugiere la actividad más cercana y da una frase de razonamiento usando solo mi texto. Después enumera qué actividades de las seis no aparecen y qué podría significar, como preguntas y no como conclusiones. No inventes pasos ni duraciones. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: encontrar dónde se pierde la opinión en su camino hacia la lista de trabajo pendiente.**

```text
Quiero rastrear cómo llega la opinión de los usuarios a nuestra lista de trabajo pendiente.

Dónde llega la opinión (canales): [enumera].
Qué ocurre con un comentario después de llegar, paso a paso, con quién hace cada paso: [pega].
Un ejemplo reciente, con fechas: [pega].

Describe el camino en orden e identifica los pasos en los que la opinión podría perderse o retrasarse, usando solo mi texto. Sugiere tres preguntas para las personas implicadas y un pequeño cambio para acortar el camino. No inventes causas. Hazme primero preguntas aclaratorias si falta información y enumera de lo que no estés seguro.
```

**Propósito: planificar un taller de flujo de valor con personal de entrega y operaciones.**

```text
Planifica un taller de 90 minutos para [número] personas de entrega y operaciones para dibujar un flujo de valor: [nombre del flujo].

Preparación: traerán [datos, como fechas de ejemplos recientes].
Restricciones: [por ejemplo remoto, distintas zonas horarias].

Da una agenda con tiempos, instrucciones para dibujar el flujo paso a paso, cómo etiquetar los pasos con las seis actividades de la cadena de valor, una manera de marcar esperas y traspasos y un paso final para acordar un cambio con un responsable y una fecha. Mantenlo libre de cualquier herramienta concreta. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: escribir una guía breve de la cadena de valor para personas nuevas en el equipo.**

```text
Escribe una guía de una página sobre la cadena de valor del servicio de ITIL para personas nuevas en el equipo.

Usa solo estas notas, que he verificado: [pega los nombres de las seis actividades y las descripciones que hayas contrastado con fuentes oficiales, además de ejemplos de nuestro propio trabajo].

Incluye: para qué sirve la cadena, un flujo de ejemplo de nuestro trabajo y tres preguntas que una persona nueva puede hacer para encontrar a qué actividad pertenece una tarea. Mantén el lenguaje sencillo. No añadas afirmaciones sobre ITIL más allá de mis notas. Señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): úsala para dibujar un flujo, cronometrar sus esperas y etiquetar sus pasos.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): úsala para analizar cómo se mueve el trabajo entre roles y encontrar problemas de traspaso.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): úsala para planificar cómo entrega un equipo en pasos pequeños a través de las actividades de construcción y publicación.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): úsala para diseñar maneras de recoger opinión de los usuarios para la actividad de involucrar.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): úsala para dirigir las revisiones que hacen real la actividad de mejorar.

## Fuentes principales

- **ITIL 4 Foundation** (PeopleCert): la página del propietario que nombra la cadena de valor del servicio entre los temas estudiados.
- **ITIL service value system** (Purple Griffon): el resumen de un proveedor de formación de las seis actividades y los flujos de valor; secundario.
- **The ITIL 4 Service Value System** (ManageEngine): el resumen de un proveedor que nombra las actividades; secundario.
- **Value-stream mapping** (Wikipedia): contexto sobre la técnica de mapeo que usa la práctica lean para encontrar desperdicio.

## Referencias

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL service value system — Purple Griffon (training provider; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
3. The ITIL 4 Service Value System — ManageEngine (software vendor; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
