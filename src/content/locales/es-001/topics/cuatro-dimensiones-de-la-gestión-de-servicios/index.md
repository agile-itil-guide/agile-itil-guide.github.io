# Cuatro Dimensiones de la Gestión de Servicios

**Las cuatro dimensiones de ITIL 4 son una lista de verificación para encontrar lo que le falta a un servicio: las personas y la estructura adecuadas, la información y la tecnología, los socios y proveedores y los flujos de trabajo definidos, y una debilidad en cualquiera de ellas limita el valor de las demás.**

## Por qué importa

Cuando un servicio decepciona, los equipos tienden a recurrir a la solución que mejor conocen. Los ingenieros sospechan de la tecnología, los gerentes sospechan del proceso y recursos humanos sospecha de las habilidades. Cada uno puede tener razón, y las posibilidades de resolver el problema son mejores si se mira en los cuatro lugares. Las cuatro dimensiones dan un marco sencillo para hacerlo.

Las dimensiones son también un freno útil frente a un fallo ágil común. Un equipo excelente entregando código puede aun así entregar un mal servicio si nadie ha pensado en el proveedor de cuya API depende, en las habilidades necesarias para darle soporte por la noche o en la información que necesitará el centro de servicios cuando falle. Igualmente, un grupo de gestión de servicios que perfecciona sus procesos puede descuidar la cultura y las herramientas que los hacen funcionar.

Según la página de ITIL 4 Foundation de PeopleCert, las cuatro dimensiones son organizaciones y personas; información y tecnología; socios y proveedores; y flujos de valor y procesos. Esa lista es la única parte de este tema tomada directamente de las páginas públicas del propietario del marco. Las descripciones que siguen proceden de fuentes de proveedores de formación y de comentaristas, que coinciden entre sí pero son secundarias. Consulta las publicaciones de ITIL 4 cuando necesites la redacción exacta.

## Conceptos clave

### Las cuatro dimensiones

La tabla da cada dimensión, qué cubre tal como se resume ampliamente y una pregunta que hacer sobre un servicio.

| Dimensión | Qué cubre | Una pregunta que hacer |
|---|---|---|
| **Organizaciones y personas** | La estructura, la cultura, los roles, las habilidades y el liderazgo necesarios para hacer el trabajo; se extiende más allá del personal de TI a todos los que interactúan con el servicio | ¿Quién hace qué, con qué habilidades, y la cultura lo apoya? |
| **Información y tecnología** | La información y el conocimiento que usa y crea el servicio, y las herramientas y la tecnología que lo respaldan | ¿Qué necesitamos saber y sobre qué lo ejecutamos? |
| **Socios y proveedores** | Las relaciones con otras organizaciones que contribuyen al servicio, incluido cómo se seleccionan, gestionan e integran los proveedores | ¿Quién más interviene y de qué dependemos de ellos? |
| **Flujos de valor y procesos** | Las actividades y los flujos de trabajo mediante los cuales se crea valor, y cómo se organizan y controlan | ¿Cómo se mueve el trabajo y dónde espera? |

Las fuentes de formación subrayan que las dimensiones son interdependientes. Prestar muy poca atención a cualquiera de ellas limita el valor que una organización puede entregar a sus partes interesadas.

### Relación con el resto del marco

Las dimensiones se aplican a todas las partes del sistema de valor del servicio (véase Tema 2.3 — El Sistema de Valor del Servicio de ITIL). Una práctica, como la gestión de incidentes, puede examinarse a través de cada una: qué personas y roles necesita, qué información y herramientas, qué proveedores y qué procesos. También se conectan con los principios rectores, en especial con "pensar y trabajar de manera holística" (véase Tema 2.4 — Principios Rectores de ITIL).

### Factores externos

Las fuentes de formación y de comentaristas describen también factores externos que afectan a las cuatro dimensiones. Suelen usar la sigla **PESTLE**: político, económico, social (algunas fuentes dicen sociocultural), tecnológico, legal y medioambiental. Son cosas que la organización no puede controlar pero debe tener en cuenta, porque pueden crear riesgos o desencadenar la necesidad de cambiar un servicio. Un cambio en la ley puede alterar qué información puede conservar un servicio; un cambio económico puede modificar los precios de un proveedor; una tecnología nueva puede cambiar lo que esperan los clientes. Las fuentes sugieren revisarlos siempre que se considere cómo responder a una demanda u oportunidad cambiantes.

### Las dimensiones en un equipo ágil

Los equipos ágiles ya trabajan con algunas dimensiones por costumbre y descuidan otras.

| Dimensión | Qué suelen hacer bien los equipos ágiles | Qué se suele pasar por alto |
|---|---|---|
| Organizaciones y personas | Equipos autoorganizados, retrospectivas, atención a la motivación | La carga de guardias, las habilidades fuera del equipo, la cultura de los grupos que dan soporte al servicio |
| Información y tecnología | Automatización, herramientas, control de versiones | El conocimiento para el personal de soporte, la propiedad de los datos, la documentación que usan otros |
| Socios y proveedores | Usar rápidamente servicios de terceros y código abierto | Quién da soporte a una dependencia, qué pasa cuando un proveedor cambia las condiciones o falla |
| Flujos de valor y procesos | Ciclos cortos, tableros visibles | Las partes del flujo ajenas al equipo, como las aprobaciones, las revisiones de seguridad y el traspaso a operaciones |

### Usar las dimensiones para diagnosticar

Un uso práctico es tomar un incidente o un cambio fallido y preguntar en qué dimensión estuvo la debilidad. Unos pocos ejemplos muestran la idea, sin afirmar que sean típicos:

- Una corrección tardó horas porque solo una persona entendía el sistema: organizaciones y personas.
- Se ignoró una alerta porque no decía nada útil: información y tecnología.
- Una restauración se detuvo porque la línea de soporte de un proveedor estaba cerrada: socios y proveedores.
- Un cambio esperó tres días por una firma que no cumplía ninguna función: flujos de valor y procesos.

La mayoría de los problemas reales afectan a más de una. El valor del ejercicio es notar qué dimensión se pasa por alto habitualmente.

### Límites

Las dimensiones son un marco y no un método. No te dicen cómo corregir una dimensión débil y son lo bastante amplias para que casi cualquier problema pueda situarse en más de una. El artículo de Wikipedia sobre ITIL no las describe y esta guía no ha encontrado evidencia independiente sobre lo bien que funcionan en la práctica. Trátalas como estímulos que ayudan a un equipo a hacerse mejores preguntas.

## Buenas prácticas

1. **Revisa cada servicio a través de las cuatro dimensiones.** Para cada servicio importante, escribe dos o tres líneas bajo cada dimensión: qué existe y qué falta. Hazlo cuando diseñes un servicio y de nuevo una vez al año.
2. **Pon a las personas primero en la lista.** Comprueba quién está de guardia, qué habilidades se necesitan y si la carga es justa. Un servicio que depende de unas pocas personas agotadas está en riesgo (véase Tema 1.2 — Principios Ágiles sobre el ritmo sostenible).
3. **Trata la información como parte del servicio.** Identifica la información que necesitan los usuarios, el personal de soporte y otros equipos, y quién es su responsable. Hazla fácil de encontrar (véase Tema 3.9 — Gestión del Conocimiento).
4. **Conoce tu tecnología y mantenla soportable.** Mantén una lista de los componentes principales y de quién puede dar soporte a cada uno. Retira lo que nadie entiende.
5. **Enumera tus proveedores y de qué dependes de ellos.** Incluye proveedores de nube, proveedores de software y equipos internos ajenos al tuyo. Registra a quién llamar, cómo y qué han prometido (véase Tema 3.14 — Gestión de Proveedores).
6. **Incluye a los proveedores en tus revisiones.** Invita a los socios clave a la planificación conjunta o a las revisiones de incidentes. Un proveedor que conoce tus planes tarde no puede ayudar.
7. **Mapea el flujo de valor y los traspasos.** Dibuja cómo fluye el trabajo desde la solicitud hasta el valor, marcando dónde cruza un equipo o un proveedor. Los traspasos son donde más a menudo se pierden información y tiempo (véase Tema 5.4 — Gestión del Flujo de Valor).
8. **Mira primero la dimensión menos desarrollada.** Al mejorar un servicio, empieza por la dimensión más débil, no por la que más le gusta al equipo. Muestra la evidencia detrás de tu elección.
9. **Examina los factores externos una o dos veces al año.** Usa los encabezados de PESTLE para enumerar lo que podría cambiar para cada servicio: leyes, precios, tecnología, actitudes públicas. Anota qué dimensión podría verse afectada por cada uno.
10. **Usa las dimensiones en las revisiones de incidentes y cambios.** Añade una pregunta a la plantilla de revisión: ¿qué dimensión fue la más débil aquí? Con el tiempo, aparecerán patrones.
11. **Mantenlo ligero.** Una página por servicio basta. Si la revisión lleva más de una hora, probablemente estás reuniendo información que nadie usará.
12. **No uses las dimensiones para repartir culpas.** El objetivo es una visión completa del servicio. Trata una laguna como un problema de diseño que resolver juntos, no como un fallo de un equipo.

## Preguntas para conversar con tu equipo

**Para nuestro servicio principal, ¿qué escribiríamos bajo cada una de las cuatro dimensiones y cuál es la más escasa?**

Divide al equipo en cuatro grupos, uno por dimensión, y dales diez minutos. Compara las listas. La escasa suele sorprender a la gente: los equipos de entrega suelen descubrir que socios y proveedores tiene poco, mientras que los equipos de operaciones pueden descubrir lo mismo respecto de la información. Quien facilite puede preguntar qué ha costado la dimensión escasa en los últimos seis meses.

**¿De quién dependemos con quien nunca hemos hablado?**

Enumera los proveedores y equipos internos de los que depende el servicio, incluidos los que se esconden detrás de un producto en la nube. Marca de cuáles tienes un contacto y de cuáles no. Pregunta qué pasaría si fallara cada uno. Es un buen lugar para encontrar riesgos que nadie posee. Elige una dependencia que comprender mejor.

**¿Qué conocimiento existe solo en la cabeza de una persona?**

Pide a las personas que nombren tareas que solo una persona puede hacer y qué información le falta al centro de servicios para dar soporte al servicio. Trata las respuestas como una lista de riesgos. Pregunta cómo podría compartirse el conocimiento en un mes, por ejemplo trabajando en pareja o escribiendo una guía breve. Anota el primer paso y el responsable.

**¿Dónde espera el trabajo fuera de nuestro equipo?**

Sigue una solicitud reciente entre equipos y marca cada espera. Las esperas en aprobaciones, revisiones de seguridad o colas de proveedores están fuera del control del equipo pero no fuera de su influencia. Pregunta quién podría cambiar cada espera y qué evidencia ayudaría. Elige una espera que plantear al responsable.

**¿Qué pasó la última vez que cambió algo fuera de nuestro control, como una ley, un precio o una plataforma?**

Pide un caso real. Mira cuánto tardó en notarse, quién decidió y qué dimensión recibió el golpe. El objetivo es aprender cómo explora el equipo el cambio externo. Pregunta quién es responsable de vigilar y qué vigila.

**Si pudiéramos reforzar solo una dimensión este trimestre, ¿cuál daría más beneficio a nuestros usuarios?**

Deja que las personas defiendan una dimensión con un ejemplo reciente. Evita votar al principio; pide evidencia. Luego acordad una acción en la dimensión elegida con un responsable y una medida. Recuerda decir qué dimensiones decidiste no trabajar, para que la elección sea explícita.

## En la práctica: un ejemplo de ITIL ágil

Una agencia medioambiental nacional opera un portal público de datos que publica lecturas de calidad del aire de miles de sensores. Un equipo de nueve personas lo construye y lo opera. El equipo publica cambios cada semana y sus procesos parecen sanos. Sin embargo, durante una ola de calor el portal se ralentiza hasta arrastrarse, el interés público se dispara y la oficina de prensa de la agencia se entera del problema por las redes sociales.

La responsable del portal usa las cuatro dimensiones para revisar el incidente. En organizaciones y personas, solo dos ingenieros conocen la canalización de ingesta de datos, y uno estaba de vacaciones. En información y tecnología, la monitorización mostraba que la base de datos estaba ocupada pero no mostraba qué lecturas llegaban tarde, de modo que el equipo no pudo decir a la oficina de prensa qué estaba afectado. En socios y proveedores, los datos de los sensores proceden de agencias regionales y de un proveedor de nube, y nadie les había preguntado qué esperar durante la demanda máxima. En flujos de valor y procesos, la oficina de prensa no tiene vía de entrada al proceso de incidentes, por lo que su primer contacto llegó a través de un periodista.

El equipo hace cuatro cambios, uno por dimensión: se forma a un tercer ingeniero en la canalización, el panel muestra la frescura de los datos por región, las agencias regionales y el proveedor de nube son invitados a una breve revisión de capacidad y la oficina de prensa se añade a las notificaciones de incidentes. Una ola de calor posterior se gestiona sin quejas públicas. Quedan algunos asuntos: una agencia regional sigue enviando datos en un formato antiguo que rompe la canalización, y la oficina de prensa encuentra difícil traducir a lenguaje sencillo los mensajes técnicos de estado. El equipo acuerda pedir a la agencia regional un calendario para cambiar su formato y escribir con la oficina de prensa una plantilla breve de estado.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega suelen controlar la tecnología y el proceso, pero pueden pasar por alto a las personas y los proveedores. Pregunta quién dará soporte a lo que construyes, qué habilidades necesita y de qué partes externas depende tu servicio. Proporciona la información que otros necesitan e invítalos a tus revisiones.

### Equipos de servicio y operaciones

Los equipos de operaciones suelen ver primero las debilidades de las dimensiones porque viven con las consecuencias. Usa las dimensiones para describir los problemas de una manera sobre la que puedan actuar los equipos de entrega y los gerentes, y para defender el tiempo dedicado a compartir conocimiento y a las relaciones con los proveedores.

### Liderazgo y gobernanza

Los líderes controlan la estructura, las habilidades, los contratos con proveedores y los procesos que cruzan equipos. Pide una revisión de cuatro dimensiones de los servicios importantes y mira la dimensión escasa. Está preparado para financiar las partes poco vistosas, como la formación y las relaciones con proveedores.

### Clientes y usuarios

Los clientes y usuarios experimentan el resultado de las cuatro dimensiones sin verlas. Cuando algo vaya mal, di al proveedor qué viste y qué necesitaste. Esa información le ayuda a encontrar la dimensión débil. Pregunta a los proveedores cómo organizan el soporte, los proveedores y la información de los servicios que usas.

## Fallos frecuentes

- **Corregir la dimensión familiar.** Los ingenieros añaden tecnología a todo problema. En su lugar, pregunta a qué dimensión apunta la evidencia.
- **Olvidar a los proveedores.** El servicio depende de partes que nadie ha conocido. En su lugar, enumera los proveedores y registra contactos, compromisos y riesgos.
- **Tratar a las personas como un dato.** Se dan por supuestas las habilidades y la carga de guardias. En su lugar, revísalas como parte del servicio.
- **Procesos que se detienen en la frontera del equipo.** Los traspasos no se gestionan. En su lugar, mapea el flujo entre equipos y acordad los traspasos.
- **Información que nadie encuentra.** Existe documentación pero el personal de soporte no puede usarla. En su lugar, pregunta a los usuarios de la información qué necesitan.
- **Análisis excesivo.** La revisión se convierte en un documento grande. En su lugar, mantenla en una página por servicio.
- **Usar el marco para culpar.** Se juzga a los equipos por las lagunas. En su lugar, trata las lagunas como problemas de diseño compartidos.
- **Ignorar el cambio externo.** Las leyes, los precios y la tecnología cambian sin aviso. En su lugar, examina los factores PESTLE con regularidad y anota qué dimensión afecta cada uno.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Organizaciones y personas | Los roles y las habilidades son informales | Algunos equipos enumeran habilidades y carga de guardias | Los roles, las habilidades y la carga de trabajo se describen para cada servicio | Las habilidades y la carga se miden y se revisan | La dotación de personal y las habilidades se planifican entre equipos y socios |
| Información y tecnología | El conocimiento y las herramientas están dispersos | Algunos equipos mantienen listas de componentes y de conocimiento | Los componentes y la información tienen responsables y son fáciles de encontrar | Se sigue el uso de la información y las herramientas y se corrigen las lagunas | La información y las herramientas se comparten y mejoran entre equipos y proveedores |
| Socios y proveedores | Los proveedores los gestionan individuos | Algunos proveedores clave están enumerados con contactos | Todos los proveedores clave tienen responsables, contactos y expectativas | Se revisan el desempeño y el riesgo de los proveedores | Los proveedores participan en la planificación y la mejora |
| Flujos de valor y procesos | El trabajo fluye por costumbre | Algunos flujos están dibujados | Los flujos clave están mapeados entre equipos con responsables | El flujo y la espera se miden y se reducen | Los flujos se mejoran conjuntamente con clientes y proveedores |

## Lista de verificación

- [ ] Para cada servicio importante, hemos anotado qué existe y qué falta en cada dimensión.
- [ ] Las personas y las habilidades necesarias para operar cada servicio están identificadas, con la carga de guardias revisada.
- [ ] La información que necesitan los usuarios y el personal de soporte tiene responsable y es fácil de encontrar.
- [ ] Los componentes principales del servicio están enumerados, con alguien capaz de dar soporte a cada uno.
- [ ] Los proveedores clave y los proveedores internos están enumerados con contactos y expectativas.
- [ ] El flujo de trabajo de un servicio se ha mapeado entre equipos.
- [ ] Hemos examinado los factores externos (PESTLE) al menos una vez en el último año.
- [ ] Las revisiones de incidentes y cambios preguntan qué dimensión fue la más débil.
- [ ] La revisión de cada servicio cabe en una página.
- [ ] Hemos elegido una dimensión débil que reforzar este trimestre.

## Prompts de IA

**Propósito: redactar una revisión de cuatro dimensiones de un servicio.**

```text
Ayúdame a redactar una revisión de cuatro dimensiones del servicio [nombre]. Las dimensiones son: organizaciones y personas; información y tecnología; socios y proveedores; flujos de valor y procesos.

Sobre el servicio: [describe qué hace y quién lo usa].
Para cada dimensión, lo que sé: [escribe unas líneas cada una; escribe "desconocido" donde no lo sepas].

Para cada dimensión, di qué existe, qué parece faltar y una pregunta que debería hacer al equipo, usando solo mi texto. Destaca la dimensión más escasa y di por qué. No inventes proveedores, personas ni herramientas. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: clasificar la dimensión más débil en incidentes recientes.**

```text
Estas son descripciones breves y factuales de [número] incidentes o cambios fallidos recientes: [pega, uno por elemento].

Para cada uno, di en cuál de las cuatro dimensiones de ITIL (organizaciones y personas; información y tecnología; socios y proveedores; flujos de valor y procesos) es más probable que estuviera la debilidad, con una frase de razonamiento sacada solo del texto. Cuando se apliquen varias, dilo. Después cuenta cuántos caen en cada dimensión, solo a partir de mi lista, y sugiere dos preguntas sobre el patrón. No inventes causas y enumera de lo que no estés seguro.
```

**Propósito: enumerar proveedores y dependencias de un servicio.**

```text
Ayúdame a construir una lista de dependencias y proveedores para [servicio].

Lo que sé de cómo se construye y se opera: [describe componentes, servicios en la nube, fuentes de datos, otros equipos].
Contratos o acuerdos de soporte que conozco: [enumera, o escribe "desconocido"].

Produce una tabla con columnas: dependencia, quién la proporciona, de qué dependemos de ella, qué pasa si falla (solo según mi texto) y la pregunta que debería hacer al proveedor. Marca todo lo que hayas inferido. No inventes contratos ni niveles de servicio. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: examinar los factores externos de un servicio.**

```text
Ayúdame a preparar un examen de factores externos usando los encabezados PESTLE (político, económico, social, tecnológico, legal, medioambiental) para el servicio [nombre].

Contexto: [describe el sector, los países atendidos y los usuarios].
Cambios próximos conocidos: [enumera leyes, cambios de precios, cambios tecnológicos que conozcas realmente, o escribe "ninguno conocido"].

Para cada encabezado, propón preguntas que investigar (no respuestas) y señala qué dimensión de las cuatro de ITIL podría afectar cada factor. No afirmes que existe o se aplica ninguna ley o reglamento salvo que yo la haya enumerado. Señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): úsala para mapear los socios, proveedores y grupos que dependen de un servicio o contribuyen a él.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): úsala para planificar cómo seleccionas, gestionas y revisas a los proveedores.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): úsala para mapear el flujo de trabajo entre equipos en la dimensión de flujos de valor y procesos.
- [swot-analysis](../../../../skills/swot-analysis/SKILL.md): úsala junto con el examen de factores externos para resumir fortalezas, debilidades, oportunidades y amenazas.
- [training-needs-analysis](../../../../skills/training-needs-analysis/SKILL.md): úsala para encontrar lagunas de habilidades en la dimensión de organizaciones y personas.

## Fuentes principales

- **ITIL 4 Foundation** (PeopleCert): la página del propietario que nombra las cuatro dimensiones entre los temas estudiados.
- **The ITIL Four Dimensions of Service Management** (itsm.tools): un resumen de un sitio de profesionales de cada dimensión y de PESTLE; secundario.
- **PESTLE analysis** (Wikipedia): contexto sobre la herramienta de factores externos.
- **ITIL** (Wikipedia): contexto sobre ITIL 4 y su lugar en la historia del marco.

## Referencias

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. The ITIL Four Dimensions of Service Management — itsm.tools (practitioner site; secondary source) — https://itsm.tools/the-itil-four-dimensions-of-service-management/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. PESTLE analysis — Wikipedia — https://en.wikipedia.org/wiki/PEST_analysis
5. Systems thinking — Wikipedia — https://en.wikipedia.org/wiki/Systems_thinking
6. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
7. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
8. Supply chain management — Wikipedia — https://en.wikipedia.org/wiki/Supply_chain_management
