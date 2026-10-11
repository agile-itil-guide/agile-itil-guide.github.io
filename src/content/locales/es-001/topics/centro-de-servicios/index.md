# Centro de Servicios

**El centro de servicios (service desk) es el lugar donde se encuentran los usuarios y el proveedor del servicio, y en una organización ágil su producto más valioso no son los tickets cerrados sino lo que aprende sobre cómo experimentan los usuarios el servicio.**

## Por qué importa

Para la mayoría de los usuarios, el centro de servicios es el servicio. Rara vez ven a los ingenieros, la arquitectura o la canalización; ven a la persona que responde cuando algo va mal. Cómo transcurre esa conversación determina su confianza en todo lo que hay detrás. Un centro amable y competente puede suavizar una mala caída, y uno desdeñoso puede agriar un buen servicio.

El centro es también el mejor sensor que tiene una organización. Cada contacto es una pequeña prueba de lo que los usuarios encuentran confuso, de lo que se rompe y de lo que desearían que hiciera el servicio. Los equipos ágiles que publican a menudo necesitan esa evidencia rápidamente. Un centro aislado de los equipos de entrega produce tickets, y un centro conectado produce mejoras.

El [artículo de Wikipedia sobre la gestión de servicios de TI](https://en.wikipedia.org/wiki/IT_service_management) describe el centro de servicios como un único punto de contacto entre proveedores y usuarios o clientes, que gestiona incidentes y solicitudes de servicio. El [artículo de Wikipedia sobre los help desks](https://en.wikipedia.org/wiki/Help_desk) es breve: cubre la definición, la gestión de colas y el enrutamiento de llamadas, y no dice nada sobre la historia, los niveles de soporte, las métricas ni la diferencia entre un help desk y un service desk. Por eso este tema se apoya en esos dos artículos para las definiciones, y el resto es orientación práctica ofrecida como tal, no como hallazgos establecidos.

## Conceptos clave

### Qué es un centro de servicios

Un **help desk**, según Wikipedia, es un departamento o persona que da asistencia e información, normalmente para problemas electrónicos o informáticos. Un **centro de servicios (service desk)**, en el uso de ITSM, es más amplio: el único punto de contacto para usuarios y clientes, que gestiona tanto incidentes (interrupciones o interrupciones potenciales de un servicio) como solicitudes de servicio (peticiones rutinarias de algo que el servicio normalmente proporciona). El artículo sobre el help desk enumera "service desk" solo como tema relacionado, por lo que allí no se da el límite exacto entre los dos términos. Muchas organizaciones usan las palabras indistintamente; lo que importa es lo que se espera que haga tu centro.

### Usuarios y clientes

El artículo sobre ITSM distingue a los usuarios, que usan el servicio, de los clientes, que lo pagan o lo encargan. Un centro oye sobre todo a los usuarios. También debe saber quiénes son los clientes, porque ellos deciden las prioridades y la financiación. Un buen centro puede hablar con ambos.

### Colas y enrutamiento

Wikipedia dice que los help desks grandes tienen una persona o equipo que gestiona las solicitudes entrantes, a menudo llamados gestores o supervisores de cola, que asignan cada asunto a un equipo especializado según su tipo. Algunos centros usan sistemas telefónicos con distribución automática de llamadas que dirigen las llamadas sobre temas concretos a los analistas con la experiencia adecuada. El enrutamiento es la principal herramienta del centro para emparejar el problema con la persona que puede resolverlo.

### Niveles de soporte

Muchos centros organizan el soporte en niveles, a menudo llamados "tiers". Las fuentes leídas para esta guía no describen niveles, así que lo siguiente es una práctica común descrita en términos generales, no una afirmación de una fuente:

| Nivel | Papel típico |
|---|---|
| Primera línea | Recibe los contactos, los registra, resuelve problemas comunes usando conocimiento documentado y enruta el resto |
| Segunda línea | Gestiona problemas más difíciles que requieren una habilidad técnica más profunda |
| Tercera línea | Especialistas, a menudo los ingenieros que construyen el servicio, que corrigen los fallos subyacentes |

El modelo tiene una debilidad conocida: puede convertir cada nivel en un lugar donde el trabajo espera. Los equipos ágiles suelen intentar acortar el camino para que un analista del centro pueda llegar directamente a un ingeniero (véase Tema 3.2 — Gestión de Incidentes).

### Canales

Los contactos llegan por teléfono, correo, chat, un portal web o en persona. Cada canal conviene a usuarios y problemas distintos. Un portal puede hacer que las solicitudes sean estructuradas y rápidas. Una línea telefónica conviene a una caída urgente. Ofrecer varios canales es bueno, siempre que todos alimenten el mismo registro, de modo que la demanda sea visible en un solo lugar (véase Tema 2.1 — Gestión de Servicios de TI sobre la única puerta de entrada).

### Autoservicio y conocimiento

Muchos centros ofrecen autoservicio: un portal donde los usuarios pueden encontrar respuestas y hacer solicitudes rutinarias sin hablar con nadie. Las fuentes leídas no describen el autoservicio, pero se conecta con dos prácticas de esta guía: una buena base de conocimiento (véase Tema 3.9 — Gestión del Conocimiento) y una lista clara de servicios (véase Tema 3.8 — Gestión del Catálogo de Servicios).

### El centro como fuente de evidencia

Lo que registra un centro puede ser valioso para toda la organización: las preguntas más comunes, los fallos más comunes, cuánto tardan las cosas y lo que dicen los usuarios. Esta evidencia ayuda a los equipos de entrega a decidir qué corregir, ayuda a la gestión de problemas a encontrar causas (véase Tema 3.3 — Gestión de Problemas) y ayuda a la gestión de niveles de servicio a acordar objetivos realistas (véase Tema 3.7 — Gestión de Niveles de Servicio). Un centro que registra solo lo suficiente para cerrar tickets desperdicia esto.

### Medidas

Los centros suelen juzgarse por recuentos: contactos atendidos, tiempo de respuesta, tiempo hasta el cierre. Los recuentos son fáciles de recoger y fáciles de usar mal. El tiempo hasta el cierre puede manipularse cerrando los tickets pronto, y los recuentos de contactos pueden premiar la atención de problemas repetidos en lugar de eliminarlos. Mejores medidas incluyen la satisfacción de los usuarios, con qué frecuencia se resuelve un contacto en el primer toque y si los contactos repetidos sobre el mismo asunto disminuyen con el tiempo. Trata cualquier medida como un estímulo para hacer una pregunta y acuerda qué harás con ella (véase Tema 5.6 — Métricas y Medición).

### Críticas y límites

Los artículos de Wikipedia leídos para esta guía no nombran críticas a los help desks ni a los centros de servicios. Los profesionales suelen plantear algunas preocupaciones conocidas: que los centros se tratan como un coste que minimizar, que los guiones sustituyen al juicio, que las personas que responden no tienen poder para arreglar nada y que la rotación es alta. Son temas muy discutidos pero se presentan aquí como preocupaciones comunes, no como hallazgos de las fuentes.

## Buenas prácticas

1. **Da al centro un propósito claro.** Anota para qué sirve el centro: a quién atiende, qué gestiona y qué traslada. Un centro sin un propósito declarado deriva hacia atender lo que llegue.
2. **Ofrece unos pocos canales buenos que alimenten un solo registro.** Elige los canales que prefieren tus usuarios y asegúrate de que cada uno cree un registro en el mismo lugar. Los canales ocultos, como los mensajes personales a ingenieros, ocultan la demanda.
3. **Separa los incidentes de las solicitudes y de las preguntas.** Usa categorías y ejemplos sencillos para que los analistas clasifiquen de forma coherente. La separación importa para la prioridad y para los informes (véase Tema 3.6 — Gestión de Solicitudes de Servicio).
4. **Pon el conocimiento delante del analista.** Proporciona una orientación breve y con capacidad de búsqueda para los problemas más comunes y actualízala cuando cambie la respuesta. Pregunta a los analistas qué artículos usan y cuáles son erróneos.
5. **Deja que el centro corrija lo que pueda.** Donde sea seguro, da a los analistas la autoridad y las herramientas para resolver problemas comunes, como los restablecimientos de contraseña y la concesión de accesos. Cada escalamiento innecesario cuesta tiempo al usuario.
6. **Crea una línea directa con los ingenieros.** Facilita que los analistas pregunten a un equipo de entrega por un fallo nuevo y que el equipo informe al centro de una versión. Un canal compartido y un contacto con nombre bastan para empezar.
7. **Informa al centro de los cambios antes de que los usuarios los noten.** Comparte con antelación con el centro las notas de versión y los problemas conocidos (véase Tema 3.5 — Gestión de Versiones y Despliegues). Las sorpresas hacen que el centro parezca mal informado.
8. **Registra lo suficiente para aprender y nada más.** Captura la categoría, el servicio afectado, qué pasó y cómo se corrigió. Revisa los campos con regularidad y elimina los que nadie usa.
9. **Revisa los contactos por temas.** Una vez al mes, agrupa los contactos recientes por causa y mira los primeros. Comparte los temas con los equipos de entrega y con la gestión de problemas.
10. **Pregunta a los usuarios cómo fue.** Haz una pregunta breve después de un contacto, como si se resolvió el problema. Lee los comentarios. Combínalo con otra evidencia, porque una puntuación de satisfacción por sí sola es fácil de malinterpretar.
11. **Cuida a las personas.** Proporciona formación, variedad y un camino hacia otros roles. Un centro es tan bueno como las personas que lo atienden, y la alta rotación es un coste que no aparece en los recuentos de tickets.
12. **Trata el centro como parte de la entrega.** Incluye a un representante del centro en las revisiones de sprint y la planificación, y trata la opinión del centro como insumo de la lista de trabajo pendiente (véase Tema 5.1 — Gestión de Servicios Ágil).

## Preguntas para conversar con tu equipo

**¿Qué experimenta un usuario cuando nos contacta, desde el primer momento hasta la respuesta?**

Recorre un contacto típico como si fueras el usuario. Anota cómo encuentra el centro, qué se le pregunta, cuánto espera y qué oye. Pregunta a algunos usuarios si es posible. El objetivo es ver el servicio desde fuera. Quien facilite puede preguntar dónde es más probable que el usuario se sienta ignorado. Después, elige un paso que mejorar.

**¿Qué oímos con más frecuencia y qué se ha hecho al respecto?**

Enumera los cinco motivos de contacto más comunes del último mes. Junto a cada uno, escribe qué se ha hecho, si algo, para reducirlo. Una laguna muestra dónde la evidencia del centro no llega a nadie que pueda actuar. Pregunta quién debería recibir la lista y con qué frecuencia. Acordad enviar la primera este mes.

**¿Dónde no puede un analista resolver algo que podría con la herramienta, el acceso o el conocimiento adecuados?**

Pide a los analistas ejemplos de escalamientos que parecieron innecesarios. Las respuestas típicas incluyen accesos de los que carecen, conocimiento desactualizado y miedo a cometer un error. Trata las respuestas como una lista de mejoras. Pregunta cuáles pueden hacerse ahora con seguridad y qué salvaguardas ayudarían para el resto.

**¿Cómo nos enteramos de los cambios que afectan a los usuarios y con qué antelación?**

Mira las últimas versiones o caídas y pregunta cuándo se enteró el centro de cada una. La información tardía es común. Pregunta qué canal funcionaría: un canal compartido, un informe breve, un contacto con nombre. Los equipos de entrega deben estar en la sala. Acordad una regla sencilla, como ninguna versión sin una nota al centro.

**¿Cuáles de nuestras medidas nos ayudan a mejorar y cuáles solo las informamos?**

Enumera las medidas que produce el centro y pregunta quién usa cada una. Las medidas que nadie usa son candidatas a eliminarse. Pregunta qué medida temen las personas y por qué. Si los analistas manipulan una medida, necesita cambiar. Elige una medida que sustituir o añadir que mostraría si los usuarios están mejor.

**¿Cómo retenemos a las personas que trabajan aquí y qué dicen que necesitan?**

Pregunta a los analistas qué mejoraría el trabajo y qué les haría irse. Las respuestas habituales son variedad, formación, reconocimiento y una forma de crecer. No prometas lo que no puedas cumplir; sí comprométete con un cambio visible. Quien facilite debe tratar la rotación como un riesgo para el servicio y no solo como un asunto de plantilla.

## En la práctica: un ejemplo de ITIL ágil

El centro de servicios de TI interno de una autoridad tributaria nacional da soporte a unos 9.000 empleados con un equipo de 25 analistas. Los contactos llegan por teléfono, correo y un portal. El personal se queja de que debe explicar su problema varias veces, y los equipos de entrega se quejan de que solo se enteran de los fallos cuando llama un gerente enfadado.

El gerente del centro se reúne con los líderes de tres equipos de entrega y propone tres cambios. Primero, un canal de chat compartido conecta a los analistas y los equipos de entrega, con una regla por la que se espera la primera respuesta en una hora laboral. Segundo, cada versión recibe una nota breve para el centro antes del despliegue, escrita por el equipo de entrega con una plantilla de una página. Tercero, el centro produce una lista mensual de los diez motivos de contacto más comunes y la comparte con todos los equipos de entrega, que se comprometen a mirar los tres primeros.

Tras tres meses, el centro y los equipos de entrega informan de que se han corregido varios fallos repetidos, y los analistas dicen sentirse mejor informados. Quedan algunas dificultades. El canal compartido se ha vuelto ruidoso y algunos analistas lo ignoran, las notas de versión llegan tarde los días ajetreados y un equipo de entrega no ha respondido en absoluto a la lista mensual. El gerente del centro pide a los equipos de entrega que designen a una persona para vigilar el canal, traslada las notas de versión tardías a la lista de verificación de versiones y plantea el silencio del equipo que no responde al jefe de TI, quien pide al líder del equipo que asista a la siguiente revisión mensual.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega deben tratar el centro de servicios como un colega y como un cliente. Dile al centro qué está cambiando y qué esperar. Lee sus temas mensuales y lleva los primeros a la lista de trabajo pendiente. Invita a un analista a las revisiones, para que quienes oyen a los usuarios cada día informen los siguientes pasos.

### Equipos de servicio y operaciones

Los equipos de operaciones atienden el centro o trabajan estrechamente con él. Da a los analistas el conocimiento y la autoridad para resolver problemas comunes y haz que el escalamiento sea rápido y respetuoso. Usa la evidencia del centro en la gestión de problemas y la planificación de capacidad, y protege a las personas de ser tratadas como una fábrica de tickets.

### Liderazgo y gobernanza

Los líderes deciden si el centro es un coste que minimizar o una fuente de conocimiento. Pide temas y resultados, no solo volúmenes. Protege la formación y las trayectorias profesionales. Ten cautela con los objetivos que premian cerrar rápido o desviar contactos, que reducen la calidad mientras mejoran las cifras.

### Clientes y usuarios

Los clientes y usuarios se benefician de un centro fácil de alcanzar, que entiende el problema y los mantiene informados. Describe el problema con claridad, di lo que estabas haciendo y comunica al centro qué resultado necesitas. Da tu opinión después de un contacto, porque es una de las pocas señales que llegan al equipo.

## Fallos frecuentes

- **Tratar el centro solo como un centro de costes.** El centro tiene una plantilla mínima y se puntúa por volumen. En su lugar, mide resultados e invierte en las habilidades y herramientas del centro.
- **Canales ocultos.** Los usuarios esquivan el centro enviando mensajes a los ingenieros. En su lugar, haz fáciles los canales oficiales y canaliza hacia el registro las solicitudes informales.
- **Escalar por defecto.** Los analistas lo trasladan todo para evitar culpas. En su lugar, forma, equipa y confía en los analistas para que resuelvan lo que puedan.
- **Conocimiento desactualizado.** Los artículos describen sistemas que cambiaron. En su lugar, asigna responsables y fechas de revisión y pregunta a los analistas qué artículos les fallan.
- **El centro se entera el último.** Las versiones y las caídas lo sorprenden. En su lugar, haz que informar al centro forme parte de la lista de verificación de versiones.
- **Métricas que invitan a la manipulación.** El tiempo hasta el cierre impulsa los cierres prematuros. En su lugar, combina una medida de velocidad con una de calidad y vigila los patrones.
- **Sin retroalimentación a la entrega.** La evidencia del centro no va a ninguna parte. En su lugar, comparte los temas mensuales y espera una respuesta.
- **Ignorar a las personas.** Se aceptan la alta rotación y la baja moral. En su lugar, da formación, variedad y caminos hacia otros roles.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Atención de contactos | Los contactos llegan por muchas vías informales | Existe un centro con algunos canales compartidos | Una puerta de entrada con categorías y enrutamiento acordados | La atención y los resultados se miden y se revisan | La atención de contactos se coordina entre equipos y proveedores |
| Conocimiento y herramientas | Las respuestas viven en la cabeza de las personas | Existe alguna orientación | El conocimiento mantenido y las herramientas comunes apoyan la resolución en primera línea | Se siguen el uso y la exactitud del conocimiento | El conocimiento y las herramientas se comparten con usuarios, equipos de entrega y proveedores |
| Vínculo con la entrega | El centro se entera de los cambios por los usuarios | Algunos equipos de entrega informan al centro | Las versiones incluyen una nota para el centro y un contacto con nombre | El flujo de información se mide y se cierran las lagunas | El centro y los equipos de entrega planifican y revisan juntos |
| Aprendizaje a partir de los contactos | Los contactos se cierran y se olvidan | Se notan algunos temas | Los temas mensuales se comparten y se siguen | Los temas llevan a correcciones planificadas cuyo efecto se comprueba | Los temas alimentan la planificación entre servicios y con los clientes |

## Lista de verificación

- [ ] El centro tiene un propósito escrito que dice a quién atiende y qué gestiona.
- [ ] Todos los canales crean un registro en un solo lugar.
- [ ] Los incidentes, las solicitudes y las preguntas se clasifican de forma coherente.
- [ ] Los analistas tienen orientación con capacidad de búsqueda para los problemas más comunes, con responsables y fechas de revisión.
- [ ] Los analistas pueden resolver problemas comunes sin escalar.
- [ ] Existe una vía directa entre los analistas y los equipos de entrega.
- [ ] Se informa al centro de las versiones y los problemas conocidos antes de que los usuarios los noten.
- [ ] Los temas mensuales se comparten con los equipos de entrega y con la gestión de problemas.
- [ ] Se pregunta brevemente a los usuarios cómo fue un contacto.
- [ ] Existen formación y trayectorias profesionales para el personal del centro.

## Prompts de IA

**Propósito: encontrar temas en un mes de contactos.**

```text
A continuación hay una lista de contactos con nuestro centro de servicios de los últimos [periodo]: [pega descripciones breves y anonimizadas, una por línea; elimina antes los nombres y los datos personales].

Agrúpalos en temas basándote solo en lo escrito. Para cada tema, da un nombre, el número de contactos de mi lista, un ejemplo y una pregunta que los equipos de entrega o la gestión de problemas podrían hacerse. Destaca los tres temas principales por recuento de mi lista. Marca los contactos que no pudiste clasificar. No inventes categorías más allá del texto ni estimes recuentos de contactos que no te di. Enumera de lo que no estés seguro.
```

**Propósito: redactar una nota de versión de una página para el centro de servicios.**

```text
Ayúdame a redactar una nota de versión de una página para un centro de servicios sobre este cambio.

Qué cambió (con palabras sencillas): [describe].
Quién se ve afectado y cuándo: [describe].
Qué podrían preguntar o notificar los usuarios: [enumera, o escribe "desconocido"].
Problemas conocidos y soluciones alternativas: [enumera, o escribe "ninguno conocido"].
Cómo revertir o a quién llamar: [describe].

Escribe la nota en secciones breves: qué cambió, qué notarán los usuarios, qué decir a los usuarios, qué hacer si algo sale mal y a quién contactar. Usa solo mi información. Marca las suposiciones como tales, hazme primero preguntas aclaratorias si falta información y enumera de lo que no estés seguro.
```

**Propósito: mejorar un artículo de conocimiento que usan los analistas.**

```text
Este es un artículo de conocimiento que usan los analistas del centro de servicios: [pégalo].
Esto es lo que dicen los analistas que está mal o falta: [pega sus comentarios, o escribe "todavía ninguno"].

Reescríbelo de modo que un analista de primera línea pueda seguirlo en menos de dos minutos: un síntoma de una línea, pasos para comprobar, la solución, cuándo escalar y a quién, y la fecha y el responsable del artículo. No añadas datos técnicos que no estén en el artículo o en los comentarios. Marca con [COMPROBAR] cualquier paso del que no estés seguro y enumera de lo que no estés seguro.
```

**Propósito: planificar una conversación entre el centro de servicios y un equipo de entrega.**

```text
Planifica una conversación de 45 minutos entre un centro de servicios de [número] analistas y un equipo de entrega de [número] personas.

Fricciones recientes: [describe en unas pocas frases].
Lo que dice cada parte que necesita: [describe, o escribe "desconocido"].

Da una agenda con tiempos, cinco preguntas para cada parte y un paso final que registre un cambio acordado con un responsable y una fecha. Mantenlo libre de cualquier herramienta concreta. Hazme primero preguntas aclaratorias si falta información, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md): úsala para dar al centro una lista clara de los servicios a los que da soporte y de las solicitudes que gestiona.
- [runbook](../../../../skills/runbook/SKILL.md): úsala para convertir las correcciones comunes en procedimientos breves que los analistas de primera línea puedan seguir.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): úsala para diseñar cómo pide opinión el centro a los usuarios.
- [survey-design](../../../../skills/survey-design/SKILL.md): úsala para diseñar una breve encuesta de satisfacción que produzca respuestas utilizables.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): úsala para entender el volumen y los tipos de contactos y planificar la dotación de personal.

## Fuentes principales

- **IT service management** (Wikipedia): la definición del centro de servicios como un único punto de contacto, con incidentes y solicitudes de servicio.
- **Help desk** (Wikipedia): una breve visión general de la definición del help desk, la gestión de colas y el enrutamiento de llamadas.
- **Technical support** (Wikipedia): contexto sobre el campo más amplio del soporte al que pertenecen los help desks.
- **ITIL** (Wikipedia): contexto sobre cómo se sitúa la práctica del centro de servicios dentro de ITIL.

## Referencias

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. Technical support — Wikipedia — https://en.wikipedia.org/wiki/Technical_support
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Customer service — Wikipedia — https://en.wikipedia.org/wiki/Customer_service
6. Issue tracking system — Wikipedia — https://en.wikipedia.org/wiki/Issue_tracking_system
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Call centre — Wikipedia — https://en.wikipedia.org/wiki/Call_centre
