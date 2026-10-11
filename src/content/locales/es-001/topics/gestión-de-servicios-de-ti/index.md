# Gestión de Servicios de TI

**La gestión de servicios de TI (ITSM) es la disciplina de diseñar, entregar, operar y mejorar los servicios de TI en torno a lo que necesitan los clientes, y los equipos ágiles que operan servicios ya la practican, la llamen así o no.**

## Por qué importa

Cuando un equipo entrega software y luego lo opera, se convierte en proveedor de servicios. Los usuarios dependen de él, esperan que esté disponible y quieren ayuda cuando falla. ITSM es el conjunto de prácticas que ha crecido en torno a esa relación. Los equipos que la ignoran suelen redescubrirla por las malas: recibiendo avisos de madrugada, perdiendo la pista de lo que cambió o discutiendo con los clientes sobre lo que se prometió.

ITSM tiene fama de proceso pesado, y parte de esa fama es merecida. Los equipos ágiles, a su vez, tienen fama de avanzar deprisa y dejar que operaciones lidie con el resultado. Ambas famas describen fallos, no la intención de ninguno de los dos campos. ITSM pregunta qué necesita el cliente de un servicio y cómo lo entregará y lo mejorará el proveedor. Esa es una pregunta que también interesa a los equipos ágiles.

Este tema da el vocabulario que se usa en el resto de la guía: qué es un servicio, quiénes son los clientes y los usuarios, qué abarca ITSM y de dónde proceden sus principales marcos. Usa el [artículo de Wikipedia sobre la gestión de servicios de TI](https://en.wikipedia.org/wiki/IT_service_management) como mapa. Ese artículo es breve y enumera marcos más de lo que los explica, así que el tema añade interpretación práctica y señala cuándo lo hace.

## Conceptos clave

### Qué es ITSM

El artículo de Wikipedia define ITSM como el conjunto de actividades que realiza una organización para diseñar, construir, entregar, operar y controlar los servicios de TI ofrecidos a los clientes. Contrapone ITSM a enfoques orientados a la tecnología, como la gestión de redes y la gestión de sistemas. ITSM, dice, adopta un enfoque de procesos, se centra en las necesidades del cliente más que en los sistemas y subraya la mejora continua.

El artículo cita una encuesta de 2017 de CIO WaterCooler que informa de que las empresas usan ITSM sobre todo para apoyar la experiencia del cliente (35 %) y la calidad del servicio (48 %). Es una sola encuesta y el artículo no describe su muestra, así que trata las cifras como una ilustración de cómo describen sus objetivos los profesionales y no como una medida de cuán común es cada objetivo.

### Servicio, cliente y usuario

Un **servicio** es una manera de entregar valor a otros sin que tengan que asumir los costes y riesgos. Los pagos en línea de un banco, la reserva de citas de un hospital y el almacenamiento compartido de archivos de una empresa son servicios. El artículo distingue a los **usuarios**, que usan el servicio, de los **clientes**, que lo pagan o lo encargan. En la TI interna de una empresa, el cliente puede ser el jefe de una unidad de negocio y los usuarios su personal. En un servicio público, el cliente puede ser un ministerio y los usuarios los ciudadanos. Los dos grupos tienen necesidades distintas, y un proveedor que escucha solo al cliente puede perder de vista lo que experimentan los usuarios.

### Actividades típicas de ITSM

El artículo nombra unas pocas ideas centrales y la práctica estándar de ITSM añade otras. Juntas dan una forma reconocible:

| Actividad | Para qué sirve | Dónde la trata esta guía |
|---|---|---|
| **Centro de servicios** | Un único punto de contacto entre proveedores y usuarios; gestiona incidentes y solicitudes de servicio | Tema 3.1 — Centro de Servicios |
| **Gestión de incidentes** | Restablecer el servicio cuando algo lo interrumpe o lo amenaza | Tema 3.2 — Gestión de Incidentes |
| **Solicitudes de servicio** | Proporcionar las cosas rutinarias que piden los usuarios, como accesos o equipos | Tema 3.6 — Gestión de Solicitudes de Servicio |
| **Problemas y cambios** | Encontrar y corregir las causas subyacentes y controlar las modificaciones de los servicios | Tema 3.3 — Gestión de Problemas y Tema 3.4 — Habilitación de Cambios |
| **Niveles de servicio y catálogo** | Acordar qué se ofrece y con qué calidad | Tema 3.7 — Gestión de Niveles de Servicio y Tema 3.8 — Gestión del Catálogo de Servicios |
| **Mejora continua** | Hacer mejores los servicios con el tiempo | Tema 3.15 — Mejora Continua |

El artículo define un **incidente** como una interrupción o interrupción potencial de la disponibilidad o calidad del servicio, y una **solicitud de servicio** como una petición rutinaria de un servicio. Nombra los **acuerdos de nivel de servicio (SLA)** solo de pasada, por lo que la guía los explica en el Tema 3.7 — Gestión de Niveles de Servicio.

### Gestión de servicios empresariales y automatización

El artículo señala dos extensiones. La **gestión de servicios empresariales (ESM)** aplica las herramientas y las ideas de ITSM a otras partes de un negocio, como recursos humanos o instalaciones, que también reciben solicitudes y entregan servicios. La **automatización de procesos de TI** sustituye los pasos manuales rutinarios por pasos automáticos para que el personal pueda centrarse en el trabajo de mayor prioridad. Ambas importan a los equipos ágiles: la ESM muestra que la disciplina no está atada a TI, y la automatización es cómo los equipos pequeños siguen el ritmo del volumen.

### Marcos y normas

El artículo enumera muchos marcos y normas. La lista siguiente repite sus descripciones de una línea y se amplía en el Tema 2.7 — Marcos y Estándares de ITSM.

| Nombre | Qué dice el artículo |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | Prácticas detalladas para ITSM y la gestión de activos de TI, que alinean la TI con los objetivos del negocio |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | Una norma internacional para sistemas de gestión de servicios, frente a la cual una organización puede certificarse |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | Un marco de gobierno de TI con objetivos de control, métricas y modelos de madurez |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | Una norma ligera, en gran medida alineada con ISO/IEC 20000 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | Un modelo para establecer, gestionar y mejorar servicios |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | Un marco que vincula los objetivos del negocio con los objetivos de arquitectura |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Orientación sobre gestión de servicios basada en tecnologías de Microsoft |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | Un marco para la gestión profesional de aplicaciones |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | Un marco de mejores prácticas para la gestión de la información |
| Business Process Framework (eTOM) | Un marco de procesos para proveedores de telecomunicaciones |

El artículo añade que los marcos de ITSM se han nutrido de ISO 9000, ISO/IEC 27000 y CMMI, y que ITIL versión 2 y BS 15000, el precursor de ISO/IEC 20000, estaban alineados entre sí. También describe USM, un sistema de gestión basado en principios adoptado por el gobierno neerlandés.

### Lo que el artículo no cubre

El artículo no tiene sección de historia, ni críticas, ni mención de lo ágil o de DevOps. Ese silencio importa. ITSM ha sido criticada por la carga de procesos y la lentitud del cambio, y los equipos ágiles han sido criticados por descuidar las operaciones, pero no encontrarás ninguna de las dos críticas allí. Esta guía cubre el vacío en la Parte 5, empezando por el Tema 5.1 — Gestión de Servicios Ágil. Cuando este tema menciona problemas, se apoya en las otras fuentes de la guía y en la experiencia práctica, y lo dice.

### ITSM e ITAM

El artículo sobre ITIL describe ITIL como un marco que cubre tanto ITSM como la gestión de activos de TI (ITAM). ITAM es la disciplina de saber qué activos de TI tiene una organización, cuánto cuestan y cómo se usan. Los servicios dependen de los activos y las dos disciplinas comparten información, por lo que la Parte 4 sigue de cerca a ITSM (véase Tema 4.1 — Gestión de Activos de TI).

## Buenas prácticas

1. **Define tus servicios desde el lado del cliente.** Enumera lo que los clientes y usuarios realmente usan, con sus palabras, como "iniciar sesión", "reservar una cita" y "enviar una factura". Agrupa la tecnología que hay detrás de cada uno. Es el comienzo de un catálogo de servicios (véase Tema 3.8 — Gestión del Catálogo de Servicios).
2. **Nombra quiénes son los clientes y los usuarios.** Para cada servicio, anota quién lo paga o lo encarga y quién lo usa. Si son personas distintas, comprueba que ambos grupos tengan voz.
3. **Da a cada servicio un responsable.** Nombra a una persona responsable de cómo funciona y mejora el servicio con el tiempo. Sin responsable, los problemas del servicio no son tarea de nadie.
4. **Empieza por las actividades que más duelen.** Si el dolor son las caídas, refuerza primero la gestión de incidentes. Si nadie sabe qué cambió, empieza por los registros de cambios. No despliegues todas las prácticas de ITSM a la vez.
5. **Usa una única puerta de entrada.** Da a los usuarios un solo lugar para pedir ayuda y hacer solicitudes, y hazlo fácil. Un centro de servicios difícil de alcanzar se esquiva, y entonces pierdes la información de la que depende ITSM.
6. **Separa los incidentes de las solicitudes y de los problemas.** Un incidente es una interrupción, una solicitud es una petición rutinaria y un problema es una causa subyacente. Las colas mezcladas ocultan patrones y distorsionan las medidas.
7. **Registra lo que importa y nada más.** Conserva registros de incidentes, cambios y activos que vayas a usar para tomar decisiones. Elimina los campos que nadie lee. Los registros son un coste, y deberías poder decir para qué sirve cada uno.
8. **Elige los marcos por el problema, no por moda.** Usa ITIL, ISO/IEC 20000, COBIT o modelos más ligeros como fuentes de ideas para el problema que tienes. Adopta las partes que ayudan y di cuáles dejaste fuera.
9. **Automatiza lo rutinario.** Busca pasos repetitivos, como los restablecimientos de contraseña y la concesión de accesos, y automatízalos con cuidado. Revisa periódicamente las acciones automatizadas para que no se alejen de lo que necesitan los usuarios.
10. **Mide lo que sienten los clientes.** Sigue la disponibilidad, el tiempo de restablecimiento del servicio y la satisfacción de los usuarios antes de contar la actividad interna. Usa la encuesta del artículo de Wikipedia como recordatorio de que los profesionales ya nombran la experiencia del cliente y la calidad como objetivos principales.
11. **Mira más allá de TI.** Si otras partes de la organización gestionan mal las solicitudes, considera herramientas y prácticas compartidas mediante la gestión de servicios empresariales. No impongas el vocabulario de TI a los demás.
12. **Mejora de forma continua.** Reserva tiempo regular para revisar lo que funciona, usando datos de incidentes y solicitudes, y para hacer cambios pequeños (véase Tema 3.15 — Mejora Continua).

## Preguntas para conversar con tu equipo

**¿Qué servicios prestamos, con las palabras que usarían nuestros usuarios?**

Pide a cada persona que escriba las tres cosas para las que los usuarios más a menudo cuentan con nosotros. Compara las listas. Las diferencias suelen mostrar que el equipo tiene imágenes distintas del servicio o que describe los servicios por tecnología en lugar de por uso. Quien facilite puede preguntar qué servicio no tiene un responsable claro. Después, acordad una primera lista de servicios.

**¿Quiénes son los clientes y quiénes los usuarios de nuestro servicio principal y quieren lo mismo?**

Nombra a la persona que encarga o paga y a las personas que usan. Pregunta qué quiere cada una del servicio. En la TI interna, al cliente pueden importarle el coste y el riesgo, y a los usuarios la rapidez y la facilidad. Pregunta dónde chocan y cómo se entera el equipo. Elige un conflicto para conversarlo con personas reales.

**¿Adónde van los usuarios cuando necesitan ayuda y cuántas vías hay?**

Cuenta las vías: un portal, un número de teléfono, el correo, el chat, el escritorio de un colega. Pregunta qué vía prefieren los usuarios y por qué. Varias vías informales significan que parte de la demanda es invisible. La discusión debe terminar con una decisión sobre qué vías conservar, cuáles fusionar y cómo capturar lo que llega por las vías informales.

**¿Con qué soltura distinguimos un incidente de una solicitud y de un problema y qué pasa cuando los mezclamos?**

Toma diez tickets recientes y clasifícalos. Los desacuerdos muestran que las definiciones difieren dentro del equipo. Pregunta qué hacen las categorías mezcladas a los informes y a las prioridades. Por ejemplo, muchas solicitudes dentro de una cola de incidentes pueden hacer que la gestión de incidentes parezca lenta. Acordad definiciones y ejemplos sencillos.

**¿Qué prácticas de ITSM nos faltan o hacemos solo sobre el papel?**

Enumera las prácticas de la tabla anterior y califica cada una como funcionando, funcionando en parte o solo sobre el papel. Pide un ejemplo reciente de cada una calificada como funcionando. Quien facilite debe resistir el impulso de llenar todos los huecos y preguntar qué hueco causa más daño a los clientes.

**¿Qué querríamos que hiciera un marco por nosotros y qué tememos que nos haga?**

Recoge esperanzas y temores sobre adoptar ITIL o ISO/IEC 20000. Las esperanzas suelen ser coherencia y credibilidad. Los temores suelen ser el papeleo y la lentitud. Pregunta cómo conseguir lo primero sin lo segundo. Por ejemplo, adoptar el vocabulario y unas pocas prácticas y evitar los formularios. Anota las condiciones que necesitaría el equipo.

## En la práctica: un ejemplo de ITIL ágil

Un minorista en línea de tamaño medio ha pasado de ser el sitio web de un fundador a un negocio con un equipo de doce ingenieros, una base de clientes creciente y un pequeño grupo de personal de soporte. Los clientes envían los problemas por correo a un buzón compartido y llaman a un móvil personal cuando falla el pago. Los ingenieros arreglan lo que oyen y rara vez escriben nada. Tras una caída de pagos que duró tres horas, el fundador pregunta por qué nadie lo supo hasta que llamó un cliente.

El jefe de ingeniería propone el ITSM más ligero posible. El equipo enumera sus servicios en términos del cliente: navegar y buscar, pago y cobro, seguimiento de pedidos y cuentas de clientes. Cada uno recibe un responsable. Una dirección de soporte compartida se convierte en la única puerta de entrada, que alimenta una herramienta de tickets sencilla con tipos separados para incidentes y solicitudes. Cualquier incidente que dure más de 30 minutos recibe una revisión breve, escrita en un documento compartido. Los cambios en el pago y el cobro se anuncian en un canal del equipo antes de que ocurran.

Tras tres meses, el equipo sabe cuántos incidentes gestiona y descubre que la mayoría proceden de dos causas. Corrige ambas y la caída del pago no se repite. Quedan algunas dificultades. Los clientes siguen llamando al fundador cuando están molestos, así que parte de la demanda esquiva la herramienta de tickets. Los ingenieros también refunfuñan porque escribir las revisiones lleva tiempo, y se omitieron dos revisiones en un mes ajetreado. El jefe de ingeniería decide mantener las revisiones breves, pedir al fundador que reenvíe las llamadas a la dirección de soporte y revisar si hace falta un proceso más completo al estilo de ITIL tras otro trimestre de datos.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega que también operan lo que construyen ya están haciendo ITSM. Nombra tus servicios, registra los incidentes y los cambios de manera ligera y comparte los datos con quien da soporte a tus servicios. Trata el centro de servicios como una fuente de evidencia sobre aquello con lo que los usuarios tienen dificultades.

### Equipos de servicio y operaciones

El personal de operaciones y del centro de servicios lleva la mayor parte de la práctica de ITSM. Las ideas ágiles pueden ayudar haciendo visible tu trabajo, acortando los bucles de retroalimentación con los usuarios y trasladando la mejora de proyectos anuales a cambios pequeños y regulares. Explica el propósito detrás de cada regla de ITSM para que los colegas puedan adaptarla con sensatez.

### Liderazgo y gobernanza

Los líderes deciden cuánta estructura exigir y cuánta evidencia pedir. Pide resultados que sientan los clientes y unas pocas medidas que los equipos puedan producir con sus herramientas. Ten cautela al comprar un marco como señal; el artículo de Wikipedia enumera muchos y ninguno sustituye a conocer tus propios servicios.

### Clientes y usuarios

Los clientes y los usuarios son la razón de ser de ITSM. Espera una vía clara para pedir ayuda, información honesta sobre qué esperar y alguien que sea responsable de cada servicio. A cambio, da información oportuna y concreta cuando algo vaya mal, para que el proveedor pueda aprender de ello.

## Fallos frecuentes

- **Proceso por el proceso.** Los formularios y las aprobaciones se multiplican y nadie recuerda por qué. En su lugar, vincula cada práctica a un propósito y elimina las que ya no sirvan a uno.
- **Sin una única puerta de entrada.** Los usuarios acuden a quien conocen y la demanda es invisible. En su lugar, ofrece una vía fácil y canaliza hacia ella las solicitudes informales.
- **Mezclar incidentes, solicitudes y problemas.** Los informes engañan y las causas quedan ocultas. En su lugar, usa definiciones sencillas y clasifica los tickets de forma coherente.
- **Servicios descritos por tecnología.** Los usuarios no encuentran lo que necesitan y los responsables no están claros. En su lugar, describe los servicios en términos del cliente y nombra un responsable de cada uno.
- **Adoptar un marco al por mayor.** Los equipos copian un marco grande y se entierran en procesos. En su lugar, empieza por el problema y toma solo las partes que ayudan.
- **Ignorar a los usuarios.** El proveedor habla solo con el cliente que paga. En su lugar, escucha tanto a clientes como a usuarios y busca conflictos.
- **Medir la actividad.** Los recuentos de tickets y llamadas sustituyen a la evidencia de la calidad del servicio. En su lugar, mide la disponibilidad, el tiempo de restablecimiento del servicio y la satisfacción de los usuarios.
- **Tratar ITSM como algo separado de la entrega.** Los equipos de entrega publican y dejan que operaciones se las arregle. En su lugar, conéctalos mediante servicios compartidos, datos compartidos y revisiones conjuntas (véase Tema 5.1 — Gestión de Servicios Ágil).

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Definición de servicios | Los servicios se describen por tecnología o no se describen | Algunos servicios se enumeran con responsables | Todos los servicios se describen en términos del cliente con responsables con nombre | Las descripciones de servicio se contrastan con el uso y la opinión de los usuarios | Las definiciones de servicio se comparten con clientes y proveedores y se ajustan juntos |
| Soporte y solicitudes | La ayuda se pide por vías informales | Algunos equipos tienen una herramienta de tickets o un buzón compartido | Una puerta de entrada con tipos claros para incidentes y solicitudes | La demanda y los tiempos de resolución se siguen y se revisan | El soporte se coordina entre equipos y proveedores con datos compartidos |
| Registros y medidas | Se guardan pocos registros | Algunos equipos registran incidentes y cambios | Los registros son coherentes y cada uno tiene un propósito declarado | Las medidas orientadas al cliente se revisan con regularidad | Las medidas se comparten entre servicios y se usan para fijar prioridades juntos |
| Mejora | Las correcciones siguen a las crisis | Algunos equipos revisan los incidentes | La revisión regular de los datos de incidentes y solicitudes lleva a cambios planificados | El trabajo de mejora tiene recursos y se comprueban sus resultados | La mejora es rutinaria entre equipos y con los clientes |

## Lista de verificación

- [ ] Tenemos una lista de nuestros servicios en lenguaje del cliente.
- [ ] Cada servicio tiene un responsable con nombre.
- [ ] Sabemos quiénes son los clientes y quiénes los usuarios de cada servicio.
- [ ] Los usuarios tienen una puerta de entrada clara para ayuda y solicitudes.
- [ ] Los incidentes, las solicitudes y los problemas se registran como cosas distintas.
- [ ] Cada tipo de registro tiene un propósito declarado y se eliminan los campos que no se usan.
- [ ] Medimos al menos una cosa que sienten los clientes, como la disponibilidad o el tiempo de restablecimiento del servicio.
- [ ] Revisamos con regularidad los datos de incidentes y solicitudes y actuamos sobre ellos.
- [ ] Podemos decir qué ideas de marcos usamos y cuáles hemos dejado fuera.
- [ ] Hemos identificado las tareas rutinarias que pueden automatizarse con seguridad.

## Prompts de IA

**Propósito: redactar una lista de tus servicios en lenguaje del cliente.**

```text
Ayúdame a describir los servicios que presta mi equipo con las palabras que usarían nuestros usuarios.

Quiénes somos y qué operamos: [describe el equipo y sus sistemas principales en unas pocas frases].
Quién usa qué: [enumera los grupos de usuarios y qué hace cada grupo con nuestros sistemas].
Cómo llamamos actualmente a nuestros servicios: [pega una lista, o escribe "ninguno"].

Produce un borrador de lista de 5 a 10 servicios, cada uno con una descripción de una frase desde el punto de vista del usuario, los grupos de clientes o usuarios y un rol sugerido como responsable. Marca cada elemento que sea una conjetura. No inventes sistemas que no mencioné. Hazme primero preguntas aclaratorias si falta información y enumera de lo que no estés seguro.
```

**Propósito: clasificar tickets recientes en incidentes, solicitudes y problemas.**

```text
Aquí hay [número] tickets o mensajes recientes a nuestro equipo: [pega descripciones breves y anonimizadas, una por línea].

Definiciones a usar: un incidente es una interrupción no planificada o potencial de un servicio; una solicitud de servicio es una petición rutinaria de algo que el servicio normalmente proporciona; un problema es la causa subyacente de uno o más incidentes.

Clasifica cada elemento como incidente, solicitud o posible problema, con una frase de razonamiento que use solo lo que escribí. Enumera los elementos que no pudiste clasificar y la pregunta que debería hacer para decidir. Al final, dime la proporción de cada categoría solo a partir de mi lista. No inventes detalles y enumera de lo que no estés seguro.
```

**Propósito: elegir un primer conjunto pequeño de prácticas de ITSM para tu situación.**

```text
Ayúdame a elegir un primer conjunto de prácticas de gestión de servicios de TI para un equipo en esta situación.

Tamaño y tipo de equipo: [describe].
Nuestros mayores dolores (con un ejemplo reciente de cada uno): [enumera].
Herramientas y registros existentes: [enumera, o escribe "ninguno"].
Reglas que debemos cumplir (auditoría, seguridad, contratos), con el texto de la fuente si lo tienes: [pega, o escribe "ninguna conocida"].

De estas prácticas: centro de servicios, gestión de incidentes, gestión de problemas, habilitación de cambios, gestión de solicitudes de servicio, gestión de niveles de servicio, gestión del catálogo de servicios, gestión del conocimiento, mejora continua, propón las dos o tres con las que empezar y di por qué, usando solo la información anterior. Di qué dejarías para más adelante. Señala las suposiciones, hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: preparar una conversación entre un equipo de entrega y el centro de servicios.**

```text
Planifica una conversación de 45 minutos entre un equipo de entrega y el centro de servicios sobre cómo se traspasan los cambios nuevos.

Equipo de entrega: [describe]. Centro de servicios: [describe].
Ejemplo reciente de un traspaso que salió mal: [describe de forma factual].
Lo que dice el centro de servicios que necesita: [enumera, o escribe "desconocido"].

Produce una agenda, cinco preguntas para cada parte y un paso final que registre un cambio acordado con un responsable. Mantenlo libre de cualquier herramienta concreta. Hazme primero preguntas aclaratorias si falta información, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md): úsala para redactar o revisar una lista de servicios en lenguaje del cliente, con responsables y descripciones.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): úsala cuando estés listo para acordar con los clientes qué nivel de servicio esperar.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): úsala para preparar cómo gestiona tu equipo un incidente antes de que ocurra.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): úsala para entender qué tipos de solicitudes e incidentes llegan y en qué volumen.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): úsala para dejar claro quién es responsable de cada servicio y a quién se consulta o se informa.

## Fuentes principales

- **IT service management** (Wikipedia): una definición breve con una lista de marcos y normas relacionados, útil como mapa.
- **ITIL** (Wikipedia): la historia y las versiones del marco de ITSM más conocido, incluidos los cambios de titularidad.
- **ISO/IEC 20000** (Wikipedia): contexto sobre la norma internacional para sistemas de gestión de servicios.
- **Enterprise service management** (Wikipedia): una introducción a la aplicación de las ideas de ITSM más allá de TI.

## Referencias

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
3. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
4. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
5. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
9. Application Services Library — Wikipedia — https://en.wikipedia.org/wiki/Application_Services_Library
10. Business Information Services Library — Wikipedia — https://en.wikipedia.org/wiki/Business_Information_Services_Library
11. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
12. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
