# Gestión de la Configuración

**La gestión de la configuración mantiene una imagen exacta y utilizable de las partes de un servicio y de cómo se relacionan, y su forma moderna es un registro construido a partir de código y descubrimiento en el que se confía porque el propio sistema lo mantiene al día.**

## Por qué importa

Cuando algo se rompe, las primeras preguntas son siempre las mismas. ¿Qué es este componente? ¿Con qué se conecta? ¿Qué cambió? ¿Quién es su responsable? Si encontrar las respuestas lleva una hora, un incidente que podría haberse corregido en minutos se alarga. Cuando se planifica un cambio, las mismas preguntas deciden si comprendes el riesgo. Una buena imagen del servicio y de sus partes es una de las cosas más útiles que puede tener un equipo de operaciones.

También es una de las más difíciles de mantener veraz. Los documentos de la infraestructura, dibujados una vez, están desactualizados en semanas. Las bases de datos de componentes, mantenidas a mano, son erróneas de maneras que nadie puede ver. Las formas de trabajar ágiles y de nube lo empeoran en un sentido, con muchas piezas pequeñas que cambian deprisa, y lo mejoran en otro, porque la configuración puede escribirse como código, guardarse en el control de versiones y aplicarse automáticamente.

El artículo de la Wikipedia en inglés sobre la gestión de la configuración la describe como un proceso de gestión para establecer y mantener la coherencia entre los atributos de un producto y sus requisitos, diseño e información operativa a lo largo de su vida, con raíces en el Departamento de Defensa de EE. UU. en los años cincuenta. El artículo sobre las bases de datos de gestión de la configuración describe el término de ITIL para el almacén de elementos de configuración y sus relaciones. El artículo sobre la infraestructura como código describe la gestión de recursos mediante archivos de definición legibles por máquina. Entre los tres dan la visión tradicional y la moderna, y este tema las conecta.

## Conceptos clave

### La gestión de la configuración en general

Según Wikipedia, la gestión de la configuración (CM) se usa en sistemas militares, en la gestión de servicios de TI bajo ITIL y en la ingeniería civil. Su historia empieza con el Departamento de Defensa de EE. UU. en los años cincuenta como disciplina técnica para el hardware, y las normas militares de finales de los sesenta y los setenta la convirtieron en una disciplina propia. El artículo nombra varias normas, entre ellas ANSI/EIA-649, ISO 10007 (edición de 2017) e IEEE 828-2012. Las disciplinas centrales que enumera, a partir de los manuales militares y de la norma de EIA, son:

| Disciplina | Qué hace |
|---|---|
| **Planificación y gestión** | Un plan que cubre personas, formación, convenciones de nombres, auditorías y requisitos de proveedores |
| **Identificación de la configuración** | Establecer y mantener líneas base que definen la arquitectura y los componentes; los productos que se siguen son los **elementos de configuración (CI)** |
| **Control de la configuración** | Evaluar las solicitudes de cambio y aprobarlas o rechazarlas |
| **Contabilidad del estado de la configuración** | Registrar e informar de las descripciones de los CI y de sus desviaciones de la línea base |
| **Verificación y auditoría** | Comprobaciones independientes de que el sistema coincide con su documentación y sus requisitos |

Una **línea base** es un punto de referencia acordado; una vez que un atributo está en línea base, los cambios pasan por un control formal, se evalúan, se aprueban y luego se vuelve a fijar la línea base. El artículo distingue la gestión de la configuración de la gestión de activos, que se centra en la contabilidad financiera y el valor de los activos de TI (véase Tema 4.1 — Gestión de Activos de TI).

### Gestión de la configuración del software

El artículo describe la gestión de la configuración del software como la identificación de los atributos del software en varios momentos y el control de los cambios para mantener la integridad y la trazabilidad, con los mismos cuatro procedimientos de identificación, control, contabilidad del estado y auditorías. Los sistemas de control de versiones, las herramientas de compilación y los registros de versiones son casos modernos.

### La base de datos de gestión de la configuración

Wikipedia describe una **base de datos de gestión de la configuración (CMDB)** como un término de ITIL para una base de datos que almacena información sobre los activos de hardware y software de una organización, los CI, y las relaciones entre ellos. "Representa la configuración autorizada de los componentes significativos del entorno de TI". Puntos clave del artículo:

- **Los CI tienen atributos** como un identificador, nombres, descripciones, titularidad e importancia, que pueden ser cientos.
- **Las relaciones** suelen conectar un CI de origen con un CI de destino. Las relaciones más avanzadas añaden un descriptor, como que una base de datos es un componente de una aplicación.
- **Federación:** las implantaciones suelen federar datos de fuentes como la gestión de activos, de modo que cada fuente conserve el control de sus datos; el artículo contrasta esto con copiar los datos en la CMDB.
- **Usos:** análisis de impacto, análisis de causa raíz, gestión de cambios, gestión de incidentes, inventario y compilaciones.
- **Tipos de CI:** hardware, software, comunicaciones y redes, ubicación, documentación y personas; las organizaciones maduras añaden tipos de negocio como productos y proveedores.
- **Dificultades:** relevancia (recoger datos a lo largo del ciclo de vida de cada CI), mantenimiento (mantener alta la calidad de los datos, lo que necesita varios roles especializados) y usabilidad (las CMDB suelen ser bases de datos simples que carecen de visualización, por lo que puede hacer falta una capa de aplicación adicional).

El artículo nombra el descubrimiento automático de los CI y el seguimiento de los cambios como factores clave de éxito. No indica fecha de fundación, versión concreta de ITIL ni datos de adopción, y está marcado como necesitado de más citas. También dice que ITIL rebautizó el proceso como Gestión de Activos y de la Configuración del Servicio en la versión 3 de ITIL (esto procede del artículo sobre la gestión de la configuración).

### Infraestructura como código

El artículo sobre la infraestructura como código describe la práctica de gestionar y aprovisionar recursos de centros de datos mediante archivos de definición legibles por máquina, en lugar de mediante configuración manual o herramientas interactivas, con las definiciones guardadas en el control de versiones. Distingue:

- Enfoques **declarativos**, que describen el estado final deseado y dejan que el sistema averigüe los pasos, y enfoques **imperativos**, que especifican comandos en orden. El artículo dice que IaC usa con más frecuencia definiciones declarativas.
- Métodos de **empuje (push)**, en los que un sistema de control envía instrucciones a los servidores, y métodos de **tirón (pull)**, en los que los servidores obtienen sus propias instrucciones.

Nombra muchas herramientas, desde CFEngine (1993) hasta Terraform, Ansible, Puppet, Chef, Pulumi y OpenTofu, y relaciona la práctica con DevOps por involucrar a los desarrolladores en la configuración y llevar antes a operaciones. Sus afirmaciones de beneficios, sobre coste, velocidad y reducción de errores humanos, están etiquetadas como necesitadas de citas. Cita un informe de 2020 de Unit 42 que halló unas 200.000 vulnerabilidades potenciales en plantillas de IaC, un recordatorio de que el código también puede tener fallos. El artículo no menciona la deriva de la configuración ni la idempotencia.

### Configuración declarada y descubierta

Una manera útil de pensar en la gestión moderna de la configuración es que hay dos fuentes de verdad, y el valor está en compararlas:

| Fuente | Qué dice | Fortaleza | Debilidad |
|---|---|---|---|
| **Declarada** (código, definiciones en el control de versiones) | Lo que pretendemos que sea el sistema | Revisable, versionada, repetible | Puede no coincidir con lo que se está ejecutando |
| **Descubierta** (escaneos, API de la nube, agentes) | Lo que existe ahora | Refleja la realidad | No dice qué se pretende ni por qué |

Una CMDB alimentada por ambas puede mostrar la **deriva**, la diferencia entre el estado pretendido y el real. Las fuentes leídas para esta guía no usan la palabra, pero nombra el problema que las disciplinas de CM de contabilidad del estado y de auditoría están pensadas para detectar.

### Gestión de la configuración y cambio

El control de la configuración y la habilitación de cambios son socios cercanos (véase Tema 3.4 — Habilitación de Cambios). Las disciplinas de CM dicen que los cambios en los elementos en línea base se evalúan y se aprueban. En una configuración basada en canalización, un cambio en el código que define la infraestructura se revisa y se prueba como cualquier otro, y el registro de la canalización muestra quién cambió qué y cuándo. La CMDB o su equivalente refleja entonces el resultado.

### Usos en la gestión de servicios

Las relaciones registradas en los datos de configuración responden a preguntas de otras prácticas:

- **Incidentes:** ¿qué depende de este componente que falla y quién es su responsable (véase Tema 3.2 — Gestión de Incidentes)?
- **Problemas:** ¿qué componentes intervinieron en incidentes repetidos (véase Tema 3.3 — Gestión de Problemas)?
- **Cambios:** ¿cuál es el radio de impacto de este cambio?
- **Continuidad:** ¿qué hay que recuperar y en qué orden (véase Tema 3.12 — Gestión de la Continuidad del Servicio)?
- **Seguridad:** ¿qué está expuesto y qué ha cambiado?

### Límites de las fuentes

El artículo sobre la gestión de la configuración está marcado como posiblemente necesitado de una reescritura y dice poco sobre la implantación práctica. El artículo sobre la CMDB no tiene sección de críticas y pocas citas. La experiencia en el campo es que las CMDB suelen fallar por intentar contener demasiado, con demasiada exactitud y durante demasiado tiempo. Trátalo como experiencia práctica que ofrece esta guía, no como un hallazgo de las fuentes.

## Buenas prácticas

1. **Parte de las preguntas que necesitas responder.** Enumera las preguntas que hacen quienes responden a incidentes, quienes revisan cambios y quienes planifican la continuidad, como "¿qué depende de esto?" y "¿quién es su responsable?". Registra solo lo que las responde.
2. **Define un conjunto pequeño de tipos de elemento de configuración.** Empieza con servicios, aplicaciones, anfitriones o contenedores, bases de datos y dependencias externas clave. Añade tipos cuando una pregunta lo exija.
3. **Registra las relaciones, no solo los elementos.** Capta qué elementos dependen de cuáles y qué servicio apoyan. Las relaciones hacen útiles los datos para el análisis de impacto.
4. **Nombra un responsable para cada elemento.** Un elemento sin responsable es un riesgo. Haz que la titularidad forme parte de cómo se crean los elementos.
5. **Mantén la configuración pretendida en el control de versiones.** Expresa la infraestructura y la configuración como código, revísala como el resto del código y deja que la canalización la aplique. El repositorio es entonces un registro de la intención y de la historia.
6. **Usa el descubrimiento para encontrar la realidad.** Escanea redes y cuentas de nube para ver lo que existe y compáralo con la configuración declarada. Investiga las diferencias (deriva) en lugar de ignorarlas.
7. **Federa en lugar de copiar cuando puedas.** Deja que cada fuente de datos (registro de activos, cuentas de nube, herramientas de despliegue) sea dueña de sus hechos y enlaza con ellos desde los datos de configuración, como describe el artículo sobre la CMDB.
8. **Automatiza las actualizaciones.** Alimenta los datos de configuración desde la canalización y desde el descubrimiento para que cambien a medida que cambia el sistema. Las actualizaciones manuales se quedarán atrás.
9. **Fija línea base de lo que importa.** Para los servicios críticos, registra la configuración aprobada y aplica un control de cambios formal a las desviaciones. Para el resto basta un control más ligero.
10. **Audita con regularidad.** Compara los datos con la realidad para una muestra de elementos cada trimestre y corrige el proceso detrás de cualquier diferencia. Es la disciplina de verificación y auditoría en la práctica.
11. **Haz fáciles de usar los datos.** Proporciona visualización y búsqueda para quienes responden y quienes planifican, porque los datos que no se pueden leer rápido no se usarán.
12. **Ten presente la seguridad.** Trata el código de configuración como sensible, escanea las plantillas en busca de debilidades y controla quién puede cambiar la línea base. La cifra de Unit 42 del artículo sobre infraestructura como código es un recordatorio del riesgo.

## Preguntas para conversar con tu equipo

**Cuando ocurre un incidente, ¿cuánto tardamos en averiguar qué depende del componente que falla?**

Mira el último incidente y el tiempo dedicado a esta pregunta. Pregunta de dónde vino la respuesta: un diagrama, una persona, una búsqueda. Quien facilite puede preguntar qué habría ahorrado más tiempo. A menudo es una lista de dependencias y responsables de los servicios más importantes. Acordad producir una para un servicio.

**¿Dónde está definida nuestra infraestructura y coincide con lo que se está ejecutando?**

Pregunta si los entornos principales se construyen a partir de código y con qué frecuencia alguien los cambia a mano. Busca diferencias. Si no lo sabes, planifica una comparación para un entorno. Discute cómo evitar los cambios manuales o detectarlos con rapidez.

**¿Qué elementos de nuestros registros de configuración no tienen responsable o no se han confirmado últimamente?**

Toma una muestra y cuenta. Pregunta por qué están en ese estado: sin proceso para los responsables, sin recordatorio, sin consecuencia. Discute un mecanismo ligero, como una confirmación anual o una etiqueta de responsable obligatoria al crear. Elige uno.

**¿Qué datos conservamos que nadie usa?**

Enumera los campos y los tipos de registro y pregunta quién los usó en el último trimestre. El artículo sobre la CMDB nombra el mantenimiento como dificultad central, y los datos sin uso son un coste sin beneficio. Elimina o deja de mantener lo que nadie usa.

**¿Qué necesitaríamos ver para aprobar con confianza un cambio en un servicio crítico?**

Pregunta a quienes revisan. Las respuestas típicas: qué toca el cambio, qué depende de él, qué hizo la última vez. Pregunta cuáles de estas puede dar los datos de configuración. Elige una pieza que falta para añadir.

**¿Quién tiene permiso para cambiar la línea base de nuestros servicios críticos y cómo sabemos cuándo lo hace?**

Pide la lista y la evidencia de los cambios. Discute si se detectan los cambios fuera de la canalización. Acordad cómo se encontrará la deriva y quién actúa.

## En la práctica: un ejemplo de ITIL ágil

Una agencia tributaria nacional ejecuta 120 aplicaciones y una mezcla de servidores propios y servicios en la nube. Un equipo de seis ingenieros de operaciones mantiene una CMDB que se cargó desde una hoja de cálculo hace tres años. Durante un incidente mayor en el portal de declaraciones, los ingenieros descubren que la CMDB enumera un servidor de base de datos que se retiró un año antes y omite el equilibrador de carga que realmente falló. El incidente tarda tres horas más en resolverse porque lleva ese tiempo averiguar de qué depende el portal.

El jefe de operaciones y una ingeniera revisan qué preguntas hacen quienes responden. Estrechan el alcance de la CMDB a servicios, aplicaciones, los principales componentes de infraestructura que hay detrás y dependencias externas clave, y descartan los tipos de poco valor. La infraestructura del portal de declaraciones se traslada a código en el control de versiones, y la canalización escribe en la CMDB un registro de cada componente desplegado. Un escaneo de descubrimiento de la red y de las cuentas de nube se ejecuta cada noche, y un informe enumera las diferencias entre los datos declarados y los descubiertos. Cada elemento tiene un campo de responsable, que el informe también comprueba. Se construye con los datos una vista sencilla de dependencias del portal de declaraciones.

Un trimestre después, la vista de dependencias del portal es lo bastante exacta como para que el equipo del siguiente incidente la use en los diez primeros minutos. El informe nocturno de diferencias encuentra 14 servidores no gestionados, la mayoría de los cuales están retirados o los reclaman sus responsables. Quedan problemas. Los servicios ajenos al portal de declaraciones siguen apoyándose en los datos antiguos, y un equipo sigue haciendo cambios manuales en un servidor de base de datos que la canalización luego sobrescribe, lo que causa una breve caída. El jefe de operaciones extiende el enfoque a los tres servicios siguientes, añade la regla de que los cambios en producción pasan por la canalización y pide al informe de descubrimiento que señale los cambios manuales.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega definen la configuración mediante código. Pon la infraestructura y los ajustes en el control de versiones, revísalos y deja que la canalización los aplique. Etiqueta los recursos con responsable y servicio y describe las dependencias en el repositorio o en el registro del servicio.

### Equipos de servicio y operaciones

Los equipos de operaciones usan y mantienen los datos de configuración. Mantén reducido el alcance, compara la configuración declarada y la descubierta y persigue la deriva. Devuelve lo que aprendas de los incidentes a los tipos y las relaciones que registras.

### Liderazgo y gobernanza

Los líderes deciden cuánto esfuerzo merecen los datos de configuración. Pregunta qué decisiones apoyan, como el análisis de impacto y la planificación de la continuidad, y júzgalos por el uso. Evita financiar una base de datos enorme por sí misma. Apoya los controles de la canalización que mantienen veraces los registros.

### Clientes y usuarios

Los clientes y usuarios se benefician cuando los incidentes se resuelven más rápido y los cambios rompen menos, algo en lo que ayudan unos buenos datos de configuración. Rara vez ven los datos. Pregunta a los proveedores cómo saben qué afecta un cambio y cómo encuentran la causa de una caída.

## Fallos frecuentes

- **Intentar registrarlo todo.** Los datos son demasiado grandes para mantenerlos veraces. En su lugar, parte de las preguntas y de los servicios críticos.
- **Mantenimiento manual.** Los registros se quedan atrás. En su lugar, alimenta los datos desde la canalización y desde el descubrimiento.
- **Sin relaciones.** Los elementos se enumeran pero no se conectan. En su lugar, capta las dependencias y el servicio al que da soporte cada elemento.
- **Sin responsables.** Nadie confirma ni corrige los registros. En su lugar, exige un responsable y comprueba con regularidad.
- **Cambios manuales fuera de la canalización.** La realidad y la intención se separan. En su lugar, encamina los cambios por la canalización y detecta la deriva.
- **Datos ilegibles.** Quienes responden no pueden usar la base de datos. En su lugar, proporciona búsqueda y visualización.
- **Copiar en lugar de federar.** Los datos duplicados se quedan obsoletos. En su lugar, enlaza con la fuente que es dueña de los hechos.
- **El código de configuración tratado como inofensivo.** Las plantillas llevan vulnerabilidades. En su lugar, escanéalas y revísalas.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Alcance y relaciones | Los componentes se conocen de manera informal | Algunos servicios tienen listas de componentes | Los servicios clave tienen elementos, responsables y dependencias registrados | La cobertura y la exactitud se miden y se cierran las lagunas | Los datos de configuración abarcan equipos, nubes y proveedores |
| Configuración declarada | Los sistemas se configuran a mano | Algunos entornos usan código | La infraestructura y la configuración de los servicios clave son código en el control de versiones | Se siguen el historial de cambios y la deriva | El código de configuración se comparte y se reutiliza entre equipos |
| Descubrimiento y verificación | Se supone la realidad | Se ejecutan escaneos ocasionales | El descubrimiento regular se compara con los datos declarados | Las diferencias y sus causas se miden y se reducen | El descubrimiento y la verificación se automatizan en toda la organización |
| Uso de los datos | Los datos rara vez se consultan | Se usan en algunos incidentes | Se usan de forma rutinaria en incidentes, cambios y planificación de la continuidad | El uso y el beneficio se miden y se mejoran los datos | Los datos apoyan las decisiones de toda la organización y con los socios |

## Lista de verificación

- [ ] Hemos enumerado las preguntas que los datos de configuración deben responder para quienes responden y quienes revisan.
- [ ] Registramos un conjunto pequeño de tipos de elemento con responsables y relaciones.
- [ ] La infraestructura y la configuración de los servicios clave están en el control de versiones.
- [ ] Los cambios en producción de esos servicios pasan por la canalización.
- [ ] Los resultados del descubrimiento se comparan con la configuración declarada según un calendario.
- [ ] Las diferencias (deriva) se investigan y se corrigen.
- [ ] Los registros se alimentan automáticamente desde la canalización y el descubrimiento cuando es posible.
- [ ] Una muestra de registros se audita frente a la realidad cada trimestre.
- [ ] Los datos pueden buscarse y visualizarse con facilidad por quienes responden.
- [ ] El código de configuración se revisa y se escanea en busca de debilidades.

## Prompts de IA

**Propósito: decidir qué registrar enumerando las preguntas que necesitas responder.**

```text
Ayúdame a decidir qué datos de configuración registrar para [servicio].

Las preguntas que hacen quienes responden y quienes revisan cambios, con nuestras palabras: [enumera].
Lo que registramos hoy: [describe, o escribe "nada"].
Dónde viven los datos (herramientas, repositorios, cuentas de nube): [enumera].

Para cada pregunta, di qué tipos de elemento y relaciones harían falta para responderla, de dónde podrían proceder los datos automáticamente y qué seguiría necesitando una persona. Propón un conjunto mínimo de tipos de elemento y campos. Marca las conjeturas. No inventes herramientas que no tengamos. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: resumir la deriva entre la configuración declarada y la descubierta.**

```text
Esta es una lista de elementos encontrados por el descubrimiento y una lista de elementos declarados en nuestro código o registros de configuración.

Descubiertos: [pega nombres o ID, con tipo y atributos clave].
Declarados: [pega nombres o ID, con tipo y atributos clave].

Usando solo estas listas, identifica los elementos encontrados pero no declarados, los declarados pero no encontrados y aquellos en los que los atributos difieren. Agrúpalos y sugiere una pregunta que hacer sobre cada grupo (por ejemplo si está retirado, si lo posee otra persona o si se creó a mano). No adivines la causa. Enumera de lo que no estés seguro.
```

**Propósito: construir una vista de dependencias para un servicio.**

```text
Ayúdame a describir las dependencias de [servicio] para que quienes responden puedan usarlas en un incidente.

Qué hace el servicio: [describe].
Componentes que conozco (aplicaciones, bases de datos, red, servicios de nube, proveedores externos): [enumera con cómo se conectan].
Responsables que conozco: [enumera].

Produce un diagrama de texto sencillo y una tabla con: componente, qué depende de él, responsable (o "desconocido") y qué comprobar primero si falla (solo a partir de mi texto; si no, "preguntar al responsable"). Destaca los puntos únicos de fallo que aparezcan en mi descripción. No inventes componentes. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: planificar una auditoría trimestral de los registros de configuración.**

```text
Planifica una auditoría trimestral de una hora de nuestros registros de configuración de [alcance].

Cómo se crean y actualizan hoy los registros: [describe].
Tamaño de muestra que podemos manejar: [número].

Da un método: cómo elegir una muestra, cómo comprobar cada elemento frente a la realidad, qué registrar, cómo calcular la proporción exacta (solo a partir de los resultados de la auditoría) y cómo convertir los errores en correcciones del proceso. Mantenlo sin herramientas concretas. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [configuration-management](../../../../skills/configuration-management/SKILL.md): úsala para planificar qué registrar, cómo mantenerlo veraz y cómo usarlo.
- [change-request](../../../../skills/change-request/SKILL.md): úsala para escribir registros de cambios que hagan referencia a los elementos afectados.
- [runbook](../../../../skills/runbook/SKILL.md): úsala para convertir el conocimiento de configuración en pasos que quienes responden puedan seguir.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): úsala para situar servicios, aplicaciones e infraestructura en un panorama arquitectónico.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): úsala para mantener la configuración y el diseño cambiando de forma segura con el tiempo.

## Fuentes principales

- **Configuration management** (Wikipedia): la historia, las disciplinas centrales, las líneas base y las normas de la gestión de la configuración.
- **Configuration management database** (Wikipedia): la definición, los contenidos, los usos y las dificultades de una CMDB.
- **Infrastructure as code** (Wikipedia): gestionar recursos mediante definiciones legibles por máquina, con una lista de herramientas y notas sobre beneficios y riesgos.
- **ITIL** (Wikipedia): el marco en el que aparecen la CMDB y la gestión de la configuración.

## Referencias

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
