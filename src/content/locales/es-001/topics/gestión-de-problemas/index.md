# Gestión de Problemas

**La gestión de problemas encuentra y elimina las causas de los incidentes recurrentes, y su forma ágil es un flujo constante de correcciones pequeñas basadas en evidencia en la lista de trabajo pendiente, en lugar de investigaciones grandes y ocasionales.**

## Por qué importa

Un equipo que gestiona bien los incidentes pero nunca elimina sus causas está en una cinta de correr. Cada caída se repara, el mismo fallo regresa y los ingenieros de guardia se cansan. La gestión de problemas es la práctica que se baja de la cinta: pregunta por qué ocurrió el incidente, si volverá a ocurrir y qué lo detendría.

Los equipos ágiles están bien situados para hacerlo. Tienen una lista de trabajo pendiente en la que una corrección puede competir con una funcionalidad, trabajan en ciclos cortos que abaratan las correcciones pequeñas y celebran retrospectivas en las que se pueden notar patrones. Lo que a menudo les falta es el hábito de conectar los incidentes entre sí y la disciplina de buscar las causas como es debido. La gestión de problemas aporta ambas cosas.

El [artículo de Wikipedia sobre el análisis de causa raíz](https://en.wikipedia.org/wiki/Root_cause_analysis) es la fuente principal leída para este tema, porque la Wikipedia en inglés no tiene un artículo titulado "Problem management" en la dirección comprobada. Ese artículo describe el análisis de causa raíz (RCA) como un método de resolución de problemas usado en las operaciones de TI y en otros campos, y lleva etiquetas de mantenimiento por citas que faltan. El vocabulario de ITIL que se usa aquí, como error conocido y solución alternativa, procede de descripciones ampliamente publicadas de la práctica, que esta guía no pudo contrastar con el texto del propietario del marco. Consulta las publicaciones actuales del propietario cuando importen las definiciones exactas (véase Tema 2.2 — ITIL).

## Conceptos clave

### Incidente, problema, error conocido

Tres términos se usan juntos y las distinciones importan:

| Término | Significado, tal como se usa ampliamente en ITSM | Ejemplo |
|---|---|---|
| **Incidente** | Una interrupción no planificada de un servicio o una reducción de su calidad | La página de reservas está caída durante veinte minutos |
| **Problema** | La causa subyacente, o presunta, de uno o más incidentes | Una fuga de memoria en el servicio de reservas |
| **Error conocido** | Un problema cuya causa se ha identificado, normalmente con una solución alternativa registrada | Se entiende una fuga de memoria; reiniciar el servicio cada noche evita las caídas hasta que se corrija |

Una **solución alternativa (workaround)** es una manera de reducir o evitar el impacto de un incidente o problema sin eliminar su causa. La gestión de problemas trata de eliminar la causa, y la gestión de incidentes trata de restablecer el servicio (véase Tema 3.2 — Gestión de Incidentes).

### Reactiva y proactiva

El artículo sobre el análisis de causa raíz distingue en términos generales los enfoques reactivo y proactivo. El trabajo reactivo trata los síntomas con rapidez. El trabajo proactivo busca prevenir problemas y pone la exactitud del diagnóstico por delante de la velocidad. En la práctica de ITSM existen ambos: la gestión reactiva de problemas investiga los problemas después de los incidentes, y la gestión proactiva de problemas busca patrones y debilidades antes de que causen incidentes.

### Qué es una causa raíz

El artículo define una causa raíz con una prueba práctica: un factor es la causa raíz de un problema si eliminarlo evita que el problema se repita. Distingue una causa raíz de otros factores causales. Es una regla útil. Si eliminas un factor y el problema aún puede volver, has encontrado un factor que contribuye, no la raíz.

El artículo también advierte de los límites. Dice que la falta de datos de monitorización, los volúmenes muy altos de sucesos, las causas raíz múltiples y los investigadores que se detienen en una raíz superficial complican el análisis. En TI, señala, el RCA suele carecer de árboles de fallos o especificaciones de diseño, por lo que "no hay causa raíz" se ha vuelto un dicho común. Para sistemas complejos, espera varias causas que contribuyen y no un único culpable.

### Principios del análisis de causa raíz

El artículo enumera pasos generales:

1. Describir el problema con claridad.
2. Construir una cronología desde el funcionamiento normal hasta el fallo.
3. Separar la causa raíz de otros factores causales.
4. Trazar un grafo causal que vincule la causa raíz con el problema.

Añade que los investigadores deben mirar las defensas que fallaron o faltaban (análisis de barreras), evitar sesgos en las líneas de investigación, decidir las acciones correctivas y revisar si esas acciones fueron eficaces.

### Métodos

El artículo dice que, según ISO/IEC 31010, el RCA puede usar los cinco porqués, el análisis de modos de fallo y sus efectos (FMEA), el análisis de árbol de fallos, los diagramas de Ishikawa (espina de pescado) y el análisis de Pareto. Atribuye a Kaoru Ishikawa el diagrama causal que lleva su nombre. También califica los métodos de espina de pescado y de los cinco porqués como "no lo bastante rigurosos", una opinión que no respalda con una fuente. Una lectura práctica: los métodos sencillos son buenos puntos de partida para la discusión del equipo, y los fallos complejos o de alto riesgo pueden necesitar otros más rigurosos.

| Método | Qué hace | Cuándo ayuda |
|---|---|---|
| **Cinco porqués** | Pregunta "por qué" repetidamente para pasar de un síntoma hacia una causa | Discusión rápida a nivel de equipo de cadenas de causa sencillas |
| **Diagrama de Ishikawa (espina de pescado)** | Agrupa las posibles causas por categoría | Lluvia de ideas sobre muchas causas posibles |
| **Análisis de Pareto** | Ordena las causas por frecuencia o impacto | Elegir qué problema recurrente abordar primero |
| **Análisis de árbol de fallos** | Mapea las combinaciones de fallos que llevan a un resultado | Fallos críticos para la seguridad o complejos |
| **FMEA** | Mira hacia adelante cómo podrían fallar las partes y cuál sería el efecto | Revisión proactiva del diseño |

### Acciones correctivas eficaces

El artículo dice que las acciones correctivas que se limitan a añadir papeleo o formación son menos eficaces. En la práctica esto sugiere favorecer las acciones que cambian el sistema: automatizar una comprobación, eliminar un modo de fallo, añadir una salvaguarda, mejorar la monitorización. Una acción como "recordar a los ingenieros que tengan cuidado" es débil.

### El principio sin culpas

La investigación de problemas comparte el principio sin culpas descrito para los postmortems en el libro SRE de Google: identificar las causas que contribuyen sin culpar a las personas, ya que las personas pueden formarse y los sistemas pueden corregirse (véase Tema 3.2 — Gestión de Incidentes). Una investigación que encuentra "error humano" y se detiene suele haberse detenido demasiado pronto. Pregunta qué hizo posible el error y qué lo haría más difícil.

### La gestión de problemas en un flujo ágil

Un enfoque ágil práctico es así:

- Los incidentes y los postmortems crean problemas candidatos.
- Una revisión breve y periódica agrupa los incidentes repetidos y ordena los problemas por impacto y frecuencia.
- Los problemas seleccionados entran en la lista de trabajo pendiente como elementos ordinarios, con un responsable, una hipótesis y un límite de tiempo para la investigación.
- Las soluciones alternativas se registran como errores conocidos para que el centro de servicios y los ingenieros de guardia puedan usarlas (véase Tema 3.9 — Gestión del Conocimiento).
- Las correcciones son pequeñas y probadas, se publican de la forma normal y se comprueban después para ver si los incidentes cesaron.

## Buenas prácticas

1. **Vincula los incidentes con los problemas.** Registra qué incidentes parecen tener la misma causa. Sin vínculos no puedes ver el patrón, y sin el patrón no puedes defender una corrección.
2. **Revisa los incidentes en busca de patrones según un calendario.** Una vez al mes, agrupa los incidentes recientes por servicio y causa probable y elige los primeros. Usa el pensamiento de Pareto: unas pocas causas suelen explicar buena parte del dolor.
3. **Trata los problemas como elementos de la lista de trabajo pendiente.** Da a cada problema seleccionado un responsable, un enunciado y un límite de tiempo para la investigación, y deja que compita con otro trabajo. Una cola aparte de "problemas" que nadie programa es un cementerio.
4. **Empieza con un enunciado claro del problema.** Escribe qué ocurre, dónde, con qué frecuencia y cuál es el impacto, usando hechos. Los enunciados vagos llevan a correcciones vagas.
5. **Construye una cronología.** Reúne registros, cambios y sucesos desde el funcionamiento normal hasta el fallo. El artículo enumera la cronología como paso central, y muchas sorpresas vienen de cambios que nadie había conectado.
6. **Busca la causa que, si se elimina, evita la repetición.** Usa la prueba del artículo. Cuando el equipo proponga una causa, pregunta si eliminarla detendría el regreso del problema.
7. **Espera más de una causa.** Busca factores que contribuyen en el diseño, la monitorización, el proceso y el conocimiento de las personas. No te detengas en la primera plausible.
8. **Elige métodos que se ajusten al problema.** Usa los cinco porqués o una espina de pescado para una discusión rápida del equipo, y herramientas más rigurosas para fallos graves o complejos.
9. **Prefiere las acciones que cambian el sistema.** Favorece la automatización, las salvaguardas y una mejor monitorización frente a los recordatorios y la formación. Registra el efecto esperado para poder comprobarlo.
10. **Registra las soluciones alternativas como errores conocidos.** Escribe cómo se ve el síntoma, la solución alternativa y quién es responsable de la corrección. Comparte el registro con el centro de servicios y el personal de guardia.
11. **Comprueba que la corrección funcionó.** Tras una corrección, vigila la repetición durante un periodo acordado e informa del resultado. Una corrección que nunca se comprueba es una esperanza.
12. **Comparte lo que encuentres.** Publica resúmenes breves de problemas y correcciones para que otros equipos puedan reconocer patrones similares.

## Preguntas para conversar con tu equipo

**¿Qué incidente sigue volviendo y qué creemos que lo causa?**

Pide a las personas que nombren el incidente del que están más cansadas. Compara las respuestas. Luego pregunta qué cree cada persona que es la causa y cómo lo sabe. Las creencias suelen diferir, lo que muestra lo poca evidencia compartida que existe. Quien facilite puede preguntar qué datos lo resolverían. Elige uno que investigar con un límite de tiempo.

**¿Cómo sabemos si dos incidentes tienen la misma causa?**

Mira cómo se registran los incidentes y pregunta si alguien podría encontrar rápidamente incidentes relacionados. Las respuestas típicas son texto libre, memoria o suerte. Pregunta qué pequeño cambio en los registros ayudaría, como un campo para el servicio y la causa probable. Acordad uno.

**¿Qué hacemos cuando encontramos "error humano" en una revisión?**

Pide un ejemplo reciente. La pregunta es si la revisión se detuvo ahí. Discute qué hizo posible el error en el sistema: instrucciones poco claras, una herramienta confusa, la presión de tiempo. Compara con la idea de que no puedes arreglar a las personas pero sí los sistemas. Acordad una pregunta que hacer cada vez, como "¿qué hizo fácil hacerlo?".

**¿Qué acciones de revisiones pasadas cambiaron realmente el sistema y cuáles solo añadieron un recordatorio?**

Enumera las acciones de las últimas cinco revisiones y marca cada una como cambio del sistema o recordatorio. El artículo dice que los recordatorios y el papeleo son menos eficaces. Pregunta por qué los recordatorios son tan comunes: son rápidos, baratos y parecen acción. Elige un recordatorio que sustituir por una corrección más fuerte.

**¿Dónde tenemos soluciones alternativas que nadie ha escrito?**

Pregunta a los ingenieros de guardia y a los analistas del centro qué trucos usan. Cada solución alternativa sin escribir es un riesgo. Regístralas como errores conocidos con síntoma, solución alternativa y responsable. Quien facilite puede preguntar quién se beneficia de cada registro. Haz una lista breve esta semana.

**¿Cómo sabremos que una corrección funcionó?**

Elige una corrección reciente y pregunta qué evidencia lo mostró. Si la respuesta es "no hubo más quejas", pregunta cuánto tiempo esperasteis y qué medisteis. Discute una comprobación sencilla: vigilar el síntoma concreto durante un periodo fijado. Acordad registrar la comprobación con cada corrección.

## En la práctica: un ejemplo de ITIL ágil

Una empresa de logística de tamaño medio opera un servicio de planificación de rutas que usan sus conductores y despachadores. El equipo de plataforma, de nueve personas, ha gestionado el mismo incidente más o menos cada dos semanas: los cálculos de rutas agotan el tiempo durante diez a quince minutos por la mañana y luego se recuperan. Cada vez, la ingeniera de guardia reinicia un proceso trabajador y se cierra el incidente. Los despachadores se quejan de que no se puede confiar en la planificación matinal.

La líder del equipo empieza una revisión mensual de incidentes, agrupándolos por servicio y causa probable. Los agotamientos de tiempo matinales encabezan la lista. Escribe un enunciado del problema a partir de los registros de incidentes: los agotamientos de tiempo ocurren en días laborables entre las 7:00 y las 7:30, duran de diez a quince minutos y afectan a todos los despachadores. El equipo construye una cronología que incluye una importación de datos programada a las 7:00 y un cambio reciente que aumentó el tamaño de la importación. Una discusión de cinco porqués sugiere que la importación satura la base de datos. Prueban la corrección obvia, añadir capacidad, pero los incidentes continúan con menor frecuencia, así que concluyen que la capacidad era un factor que contribuía y no la raíz.

Una segunda mirada descubre que la importación bloquea una tabla que los cálculos de rutas también leen. El equipo traslada la importación a una réplica aparte y añade una alerta por esperas de bloqueo. Registran el reinicio como un error conocido con el síntoma y la solución alternativa hasta que la corrección esté en vivo y acuerdan vigilar el síntoma durante seis semanas. Los incidentes cesan. Quedan algunos asuntos: otra importación de un socio sigue ejecutándose en la hora punta y el equipo aún no ha convencido al socio de que cambie su calendario. Ponen el calendario del socio en el orden del día de la próxima planificación y mantienen la alerta de bloqueos.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega tienen el conocimiento para corregir las causas. Lleva los problemas principales a tu lista de trabajo pendiente y trátalos como trabajo que gana confianza. Añade monitorización y pruebas que habrían revelado la causa y escribe el error conocido en un lenguaje que el centro de servicios pueda usar.

### Equipos de servicio y operaciones

Los equipos de operaciones ven los incidentes y mantienen los registros. Vincula los incidentes, dirige la revisión mensual y registra las soluciones alternativas como errores conocidos. Lleva la evidencia a los equipos de entrega de una forma que defienda el caso, con frecuencia, impacto y cronología.

### Liderazgo y gobernanza

Los líderes deciden si la corrección de problemas recibe tiempo. Pide los principales problemas recurrentes y qué se está haciendo al respecto. Resiste la tentación de contar los incidentes cerrados como medida de éxito, ya que premia la reparación. Apoya las correcciones que cuestan esfuerzo pero eliminan el dolor.

### Clientes y usuarios

Los clientes y usuarios se benefician cuando cesan los fallos repetidos. Informa de los problemas recurrentes con fechas y efectos, porque los patrones ayudan al equipo. Pregunta a los proveedores qué han hecho respecto de las causas de las caídas repetidas y espera una respuesta que vaya más allá de "lo reiniciamos".

## Fallos frecuentes

- **Reparar sin eliminar.** Los incidentes se cierran y vuelven. En su lugar, vincula las repeticiones con un problema y corrige la causa.
- **Una cola de problemas que nadie programa.** Los problemas esperan para siempre. En su lugar, pon los problemas seleccionados en la lista de trabajo pendiente con responsables y límites de tiempo.
- **Detenerse en el error humano.** La revisión termina con alguien a quien culpar. En su lugar, pregunta qué hizo posible el error y corrige el sistema.
- **Acciones débiles.** Los recordatorios y la formación sustituyen a los cambios del sistema. En su lugar, prefiere la automatización, las salvaguardas y una mejor monitorización.
- **Buscar una sola causa raíz.** El equipo insiste en un único culpable. En su lugar, acepta varias causas que contribuyen y aborda las más eficaces.
- **No comprobar que la corrección funcionó.** El problema se cierra con la publicación. En su lugar, define una manera de ver si el síntoma vuelve.
- **Soluciones alternativas sin escribir.** El conocimiento vive en las personas. En su lugar, registra los errores conocidos y compártelos.
- **Culto al método.** Los equipos discuten sobre técnicas. En su lugar, elige métodos que se ajusten al problema y dedica el esfuerzo a la evidencia.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Vincular y priorizar | Los incidentes no se vinculan | Algunos equipos anotan las repeticiones | Los incidentes se vinculan con problemas y se revisan en busca de patrones según un calendario | Los problemas se ordenan por impacto y frecuencia medidos | Las prioridades de problemas se comparten entre equipos y proveedores |
| Investigación | La investigación es informal | Algunos equipos usan métodos sencillos | Se usa un enfoque escrito con cronologías y evidencia | Se revisan la calidad y el tiempo de la investigación | Las investigaciones abarcan equipos y proveedores con datos compartidos |
| Acción correctiva | Las correcciones son improvisadas o recordatorios | Algunas correcciones cambian el sistema | Las acciones se eligen por su efecto, con responsables y fechas | Se comprueban los efectos y se mide la repetición | Las correcciones se extienden a sistemas similares de toda la organización |
| Errores conocidos y conocimiento | Las soluciones alternativas no están escritas | Algunas las registran individuos | Los errores conocidos se registran y se comparten con el centro y la guardia | Se siguen el uso y la exactitud de los errores conocidos | Los errores conocidos se comparten con usuarios, proveedores y socios |

## Lista de verificación

- [ ] Los incidentes que parecen compartir una causa están vinculados.
- [ ] Una revisión periódica agrupa los incidentes y elige los principales problemas recurrentes.
- [ ] Los problemas seleccionados están en la lista de trabajo pendiente con responsables y límites de tiempo.
- [ ] Cada problema tiene un enunciado escrito con hechos.
- [ ] Se construye una cronología para cada investigación.
- [ ] Las revisiones preguntan qué en el sistema permitió cualquier error humano.
- [ ] Las acciones favorecen los cambios del sistema frente a los recordatorios, con el efecto esperado registrado.
- [ ] Las soluciones alternativas se registran como errores conocidos y se comparten con el centro y el personal de guardia.
- [ ] Cada corrección tiene una comprobación de repetición durante un periodo acordado.
- [ ] Los resúmenes de problemas y correcciones se comparten con otros equipos.

## Prompts de IA

**Propósito: encontrar incidentes repetidos y problemas candidatos en tus registros.**

```text
A continuación hay descripciones de [número] incidentes de los últimos [periodo], con fechas y el servicio afectado: [pega descripciones anonimizadas, una por línea].

Agrupa los incidentes que parezca que podrían compartir una causa, basándote solo en lo escrito. Para cada grupo, enumera los incidentes, da una descripción de una frase del síntoma común y di con cuánta confianza lo afirmas y por qué (baja, media, alta). Enumera los incidentes que no encajan en ningún grupo. No adivines causas técnicas más allá del texto. Sugiere tres preguntas que el equipo debería hacerse para poner a prueba cada grupo. Enumera de lo que no estés seguro.
```

**Propósito: redactar un enunciado claro de un problema a partir de la evidencia.**

```text
Ayúdame a redactar un enunciado de un problema.

Lo que observamos, con fechas y recuentos: [pega hechos].
Qué está afectado y quién está afectado: [describe].
Lo que sabemos de cuándo empezó y qué cambió en esa época: [pega, o escribe "desconocido"].
Lo que ya hemos probado: [pega].

Redacta un enunciado del problema de tres a cinco frases que describa qué ocurre, dónde, con qué frecuencia y el impacto, sin nombrar una causa. Luego enumera los hechos que aún necesitamos y dónde encontrarlos. Marca todo lo que sea una suposición. No sugieras causas como hechos. Enumera de lo que no estés seguro.
```

**Propósito: preparar una sesión de cinco porqués y registrar la cadena de razonamiento.**

```text
Ayúdame a preparar una discusión de cinco porqués para este problema: [pega el enunciado del problema].

Hechos que tenemos: [enumera la evidencia, como registros, cronologías y cambios].

Prepara: una primera pregunta "por qué" basada en la evidencia, una plantilla en la que cada respuesta registre la evidencia que la respalda y un recordatorio de ramificar cuando haya más de una respuesta posible. Adviérteme contra detenerme en el error humano. Después de la sesión pegaré las notas: no inventes tú mismo las respuestas. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: evaluar si las acciones correctivas propuestas cambian el sistema.**

```text
Estas son las acciones propuestas tras nuestra revisión: [pega una lista].

Para cada una, di si cambia el sistema (por ejemplo automatiza una comprobación, elimina un modo de fallo, añade una salvaguarda, mejora la monitorización) o depende de que las personas recuerden o de la formación, y da una frase de razonamiento solo a partir del texto. Para cada acción de tipo recordatorio, sugiere una alternativa más fuerte como pregunta para el equipo. Sugiere cómo podríamos comprobar si cada acción funcionó, sin inventar números. Enumera de lo que no estés seguro.
```

## Habilidades de IA

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): úsala para guiar una investigación desde un enunciado claro del problema hasta una causa probada.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): úsala para hacer una lluvia de ideas sobre posibles causas por categoría con un equipo.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): úsala para exponer cómo se conectan las causas y los efectos en un fallo complicado.
- [postmortem](../../../../skills/postmortem/SKILL.md): úsala para dirigir la revisión que identifica los problemas candidatos.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): úsala cuando necesites métodos basados en datos para analizar la variación o los defectos recurrentes.

## Fuentes principales

- **Root cause analysis** (Wikipedia): una visión general del método, los principios y los límites, con ISO/IEC 31010 citada para los métodos.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): el enfoque sin culpas para aprender de los fallos.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): cómo la gestión de incidentes alimenta el análisis posterior.
- **Ishikawa diagram** y **Five whys** (Wikipedia): contexto sobre dos métodos sencillos comunes.

## Referencias

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
