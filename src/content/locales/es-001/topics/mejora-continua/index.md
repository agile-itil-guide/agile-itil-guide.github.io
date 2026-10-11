# Mejora Continua

**La mejora continua es el hábito de hacer un poco mejores los servicios y las formas de trabajar una y otra vez, y solo se vuelve real cuando el trabajo de mejora es visible, tiene responsable, está programado y se comprueba, como cualquier otro trabajo.**

## Por qué importa

Toda práctica de esta guía acaba en el mismo lugar: aprender de lo ocurrido y cambiar algo. Los incidentes llevan a problemas, los problemas llevan a correcciones, las retrospectivas llevan a experimentos y las revisiones de niveles de servicio llevan a objetivos nuevos. La mejora continua es la práctica que las conecta y las mantiene en movimiento. Sin ella, cada práctica produce conocimiento sobre el que nadie actúa.

En muchas organizaciones, la mejora es lo primero que se estruja. La presión de la entrega llena cada día y las ideas de mejora se amontonan en un documento que nadie abre. Los equipos ágiles tienen ventaja, porque las retrospectivas vienen incorporadas, pero son comunes las retrospectivas que no producen ningún cambio. La prueba de una práctica de mejora continua es sencilla: ¿puedes nombrar tres cosas que están mejor este trimestre gracias a ella?

El [artículo de Wikipedia sobre el proceso de mejora continua](https://en.wikipedia.org/wiki/Continual_improvement_process) lo describe como un esfuerzo constante por mejorar productos, servicios o procesos, ya sea incremental o rupturista, con la retroalimentación, la eficiencia y la evolución mediante pasos pequeños como rasgos clave. El [artículo sobre PDCA](https://en.wikipedia.org/wiki/PDCA) describe el ciclo planificar–hacer–comprobar–actuar que hay detrás de muchos métodos de mejora. Ambos son generales. ITIL trata la mejora continua como un componente del sistema de valor del servicio (véase Tema 2.3 — El Sistema de Valor del Servicio de ITIL) y como una práctica, pero el texto del propietario del marco no estaba disponible para esta guía, por lo que este tema no describe en detalle el modelo de mejora de ITIL.

## Conceptos clave

### Qué es

Según Wikipedia, un proceso de mejora continua (CIP), también llamado mejora continua, es un esfuerzo constante por mejorar productos, servicios o procesos. El artículo lo describe como un metaproceso para sistemas de gestión como la gestión de la calidad, de proyectos y de programas, con tres rasgos clave: retroalimentación, eficiencia y evolución mediante pasos pequeños e incrementales. Atribuye a W. Edwards Deming un papel pionero, quien veía el CIP como parte de un sistema que evalúa el proceso y la opinión del cliente frente a los objetivos de la organización.

### "Continual" o "continuous"

El artículo señala una cuestión terminológica: a finales de los años noventa los desarrolladores de ISO 9001:2000 cambiaron "continuous" por "continual", al parecer porque el comité prefería la mejora por pasos y pensaba que "continuous" podía implicar un cambio minuto a minuto. ITIL usa "continual". En la práctica los términos se usan indistintamente. Lo que importa es la mejora regular y repetida.

### Kaizen

**Kaizen** es un término japonés que significa aproximadamente "cambio para bien". Según el artículo, el libro de Masaaki Imai de 1986 *Kaizen: The Key to Japan's Competitive Success* lo popularizó, y entre sus rasgos están los muchos cambios pequeños, las ideas de los trabajadores actuales, el bajo coste y la titularidad de los empleados. Esto encaja con los equipos ágiles, en los que las personas que hacen el trabajo son las mejor situadas para ver qué mejorar (véase Tema 1.7 — Desarrollo de Software Lean).

### El ciclo PDCA

PDCA (planificar, hacer, comprobar, actuar) es, en palabras de Wikipedia, un método iterativo para controlar y mejorar continuamente procesos y productos. También se llama ciclo de Shewhart, por Walter Shewhart en Bell Telephone Laboratories en los años veinte; W. Edwards Deming lo modificó en los años cuarenta y lo aplicó a la gestión en Japón en los años cincuenta. Los pasos:

| Paso | Qué haces |
|---|---|
| **Planificar** | Establecer los objetivos y los procesos necesarios para entregar los resultados que quieres |
| **Hacer** | Llevar a cabo el plan, preferiblemente a pequeña escala |
| **Comprobar** | Comparar los datos recogidos con los resultados esperados y buscar tendencias |
| **Actuar** | Investigar las causas raíz de los problemas, ajustar el proceso y empezar el siguiente ciclo |

El artículo vincula PDCA con el método científico y su patrón de hipótesis, experimento y evaluación. Una variante, PDSA, sustituye "comprobar" por "estudiar", que prefería Deming. El artículo dice que la iteración es central: cada ciclo refina el conocimiento. Los equipos que llaman a un cambio un "experimento" con una expectativa declarada y una comprobación están usando este patrón.

### De dónde viene la mejora

Las ideas de mejora proceden de muchos lugares en una organización de servicios:

| Fuente | Ejemplo | Dónde se trata |
|---|---|---|
| Incidentes y postmortems | Un fallo muestra que falta una alerta | Tema 3.2 — Gestión de Incidentes |
| Investigación de problemas | Las caídas repetidas muestran un fallo de diseño | Tema 3.3 — Gestión de Problemas |
| Temas del centro de servicios | La misma pregunta aparece cada semana | Tema 3.1 — Centro de Servicios |
| Retrospectivas | El equipo encuentra lento su traspaso | Tema 1.4 — Pronóstico de Entrega y Métricas de Planificación |
| Datos de flujo | Una cola crece en un paso | Tema 1.5 — Kanban |
| Opinión de los clientes | Los usuarios encuentran confuso un formulario | Tema 3.6 — Gestión de Solicitudes de Servicio |
| Revisiones de niveles de servicio | Un objetivo se incumple repetidamente | Tema 3.7 — Gestión de Niveles de Servicio |
| Auditorías y revisiones de riesgos | Se descubre que un control es débil | Tema 5.7 — Gobernanza, Riesgo y Cumplimiento |

La práctica de la mejora continua los reúne en una lista visible, elige qué hacer y comprueba los resultados.

### La mejora como trabajo

La disciplina central es tratar la mejora como trabajo: elementos en una lista de trabajo pendiente con responsables, beneficios esperados y fechas. Sin ello, la mejora depende del entusiasmo y del tiempo libre. Esto también significa hacer abiertamente el compromiso con el trabajo de entrega, para proteger deliberadamente la capacidad. Un arreglo común es reservar una parte de cada ciclo para la mejora o ejecutar ciclos de mejora cortos junto a la entrega.

### Medir la mejora

Para saber que algo ha mejorado, necesitas un antes y un después. Elige una medida relacionada con el cambio, como el tiempo de restablecimiento del servicio, los incidentes repetidos o el tiempo de espera, y mírala antes y después. Evita las medidas fáciles de mover sin mejorar nada. Usa varias y discute lo que significan los números (véase Tema 5.6 — Métricas y Medición). Los artículos consultados no dan evidencia sobre la eficacia de los programas de mejora, así que los resultados propios de los equipos son la evidencia.

### Métodos

Muchos métodos apoyan la mejora: el análisis de causa raíz, Six Sigma y DMAIC para la reducción de defectos basada en datos, el mapeo del flujo de valor y los eventos kaizen. El artículo de Wikipedia sobre la mejora continua no menciona Six Sigma, DMAIC ni el modelo de mejora de ITIL, por lo que esta guía no se los atribuye. Elige los métodos según el tamaño del problema: una acción de retrospectiva para una fricción pequeña, un proyecto basado en datos para un defecto persistente.

### Límites

El artículo no recoge críticas a la mejora continua, y algunas de sus fuentes son débiles o antiguas. Los riesgos prácticos son bien conocidos: la fatiga de mejora cuando llegan demasiados cambios, el teatro de mejora en el que las listas crecen y nada cambia, y la optimización local en la que un equipo mejora su parte y empeora el conjunto. Protégete de ellos con una lista breve y visible y una comprobación periódica de los resultados.

## Buenas prácticas

1. **Mantén una lista de mejoras visible.** Reúne en un solo lugar las ideas procedentes de incidentes, retrospectivas, opiniones y revisiones. Da a cada elemento un responsable, el problema que aborda y el beneficio esperado.
2. **Trata los elementos de mejora como trabajo.** Ponlos en la lista de trabajo pendiente junto a los elementos de entrega y decide en la planificación cuánta capacidad reciben. Protege esa parte cuando suba la presión.
3. **Elige pocos y termínalos.** Trabaja en uno a tres de los elementos más valiosos cada vez. Una lista larga de elementos empezados es señal de teatro de mejora.
4. **Usa el ciclo.** Para cada cambio, declara el plan y el resultado esperado, haz el cambio a pequeña escala, comprueba los datos y decide si adoptarlo, ajustarlo o abandonarlo. Anota la decisión.
5. **Define el éxito antes de empezar.** Elige la medida y lo que esperas ver antes del cambio. Esto evita explicar cualquier resultado como un éxito a posteriori.
6. **Empieza poco a poco y en lo local.** Deja que los equipos mejoren su propio trabajo sin esperar permiso, dentro de límites claros. Reserva los programas mayores para los problemas que cruzan equipos.
7. **Comparte lo que aprendas.** Publica notas breves sobre lo que cambió y lo que ocurrió, incluidos los fallos. Otros equipos pueden reutilizarlo o evitarlo.
8. **Mira el sistema completo.** Antes de adoptar una mejora, pregunta a quién afecta. Una ganancia local que añade trabajo a otro equipo no es una mejora en conjunto (véase Tema 2.4 — Principios Rectores de ITIL sobre pensar de manera holística).
9. **Revisa la lista con regularidad.** Una vez al mes, mira la lista con el equipo y el responsable del servicio: qué está hecho, qué está atascado, qué debe abandonarse. Elimina los elementos que han perdido su sentido.
10. **Celebra resultados, no actividad.** Reconoce las mejoras que hicieron las cosas mejores para los usuarios o el personal, con evidencia. No premies el número de ideas o de reuniones.
11. **Ajusta el método al problema.** Usa experimentos rápidos para los problemas pequeños, métodos basados en datos para los defectos persistentes y busca ayuda especializada para los complejos.
12. **Involucra a usuarios y proveedores.** Pregúntales qué mejorar e invítalos a revisar los resultados donde se vean afectados (véase Tema 3.14 — Gestión de Proveedores).

## Preguntas para conversar con tu equipo

**¿Qué mejoró el último trimestre gracias a algo que decidimos cambiar?**

Pide ejemplos concretos con evidencia. Si a las personas les cuesta, ese es el hallazgo. Si hay ejemplos, pregunta qué los hizo funcionar: un responsable, tiempo, una medida clara. Compáralos con las mejoras que se atascaron. Quien facilite puede preguntar qué patrón es más común en tu equipo.

**¿Adónde van nuestras ideas de mejora?**

Sigue varias ideas recientes: de una revisión de incidentes, de una retrospectiva, de un comentario de un cliente. Averigua dónde acabó cada una. A menudo están dispersas entre documentos y tickets. Discute una lista única, quién la mantiene y cómo se revisa. Crea la primera versión en la sesión.

**¿Cuánta de nuestra capacidad se dedica a la mejora y quién lo decidió?**

Mira los últimos ciclos y estima la proporción. A menudo es mucho menor de lo que cree la gente y nadie la eligió. Pregunta qué piensan el equipo y los gerentes que debería ser. Acordad una proporción inicial y una manera de protegerla.

**¿Cuáles de nuestros cambios comprobamos después?**

Pregunta por los tres últimos cambios y qué evidencia mostró que funcionaron. Muchos nunca se comprobaron. Discute un hábito sencillo: antes del cambio, declara qué esperas ver y cuándo lo mirarás. Elige un cambio actual al que aplicarlo.

**¿Qué mejora nos ayudó a nosotros y perjudicó a otro?**

Reúne ejemplos de mejoras locales que trasladaron un problema a otro lugar. Suelen proceder de cambios en los traspasos o las aprobaciones. Discute cómo preguntar antes a los afectados. El objetivo es una pregunta sencilla que hacer antes de un cambio.

**¿Cuál es el elemento más antiguo de nuestra lista de mejoras y por qué sigue ahí?**

Elige el elemento más antiguo y sigue su historia. Las razones incluyen la falta de responsable, la falta de tiempo, el desacuerdo o que los acontecimientos lo han superado. Decide hacerlo, programarlo o abandonarlo abiertamente. Abandonar un elemento a propósito es señal de una lista sana.

## En la práctica: un ejemplo de ITIL ágil

Una empresa regional de agua tiene una plataforma de facturación a clientes y lectura de contadores que opera un equipo de once personas. Las retrospectivas se celebran cada dos semanas y producen listas de acciones, pero se completan pocas. Los incidentes se revisan y las acciones de esas revisiones se archivan en otro sistema. El regulador de la empresa ha pedido evidencia de cómo aprende la empresa de los fallos de servicio.

La responsable del servicio y el líder del equipo deciden hacer visible la mejora. Crean una única lista de mejoras que reúne las acciones de las retrospectivas, las revisiones de incidentes y la opinión de los clientes. Cada elemento tiene un responsable, un enunciado del problema, el beneficio esperado y una medida. Reservan el 15 por ciento de cada ciclo de dos semanas para elementos de mejora y limitan a tres el número en curso. Para cada uno, siguen planificar, hacer, comprobar y actuar: escriben lo que esperan ver, prueban el cambio en un subconjunto, miran los números pasado un periodo fijado y registran la decisión. Una revisión mensual con la responsable del servicio y una representante del servicio de atención al cliente examina lo que se ha hecho y lo que se ha aprendido.

Tras seis meses, el equipo ha completado nueve elementos, entre ellos una corrección de un fallo repetido en la importación de datos de contadores que redujo casi a cero los incidentes repetidos por esa causa y una explicación más clara de la factura que redujo las llamadas sobre el tema. También tiene evidencia para el regulador en forma de la lista y de las comprobaciones. Quedan algunas dificultades. Dos elementos se completaron sin comprobarse porque el ciclo siguió adelante, y una mejora del proceso de importación hizo más lento el trabajo de un equipo de informes posterior, algo que solo salió a la luz un mes después. El equipo añade a la plantilla de la lista la pregunta "¿quién más se ve afectado?" y un recordatorio en el calendario para cada comprobación.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega son dueños de buena parte de la lista de mejoras. Lleva a un solo lugar las ideas de las retrospectivas y los incidentes, termina lo que empieces y comprueba los resultados. Estate dispuesto a gastar capacidad en la mejora y no solo en funcionalidades nuevas.

### Equipos de servicio y operaciones

Los equipos de operaciones ven primero la fricción. Aporta a la lista los temas de incidentes, los contactos del centro de servicios y los datos de flujo, y participa en la comprobación de los resultados. Defiende las mejoras que reducen el trabajo repetitivo y los incidentes repetidos.

### Liderazgo y gobernanza

Los líderes protegen la capacidad para la mejora y preguntan por los resultados. Pregunta qué ha mejorado y cómo se comprobó, no cuántas ideas hay. Elimina los obstáculos que nombren los equipos y muestra que lo has hecho. Apoya las mejoras que cruzan las fronteras de los equipos.

### Clientes y usuarios

Los clientes y usuarios aportan algunas de las mejores ideas. Dile al equipo qué te frustra y pide enterarte de qué cambió como resultado. Únete a las revisiones en las que se trate tu servicio. Tu opinión sobre si un cambio ayudó es la comprobación más directa que existe.

## Fallos frecuentes

- **Ideas sin responsables.** La lista crece y no se hace nada. En su lugar, exige un responsable y un beneficio esperado para cada elemento.
- **La mejora como tiempo libre.** La entrega la desplaza. En su lugar, reserva capacidad y protégela.
- **Demasiados a la vez.** Todo se empieza y poco se termina. En su lugar, limita el trabajo en curso de los elementos de mejora.
- **Sin comprobación.** Los cambios se adoptan porque estaban planificados. En su lugar, declara de antemano el resultado esperado y mira los datos.
- **Optimización local.** Un equipo mejora y otro sufre. En su lugar, pregunta a quién más afecta antes y después.
- **Teatro de mejora.** Los talleres y los pósteres sustituyen a los resultados. En su lugar, cuenta las mejoras completadas y verificadas.
- **Medidas que se pueden manipular.** El número se mueve y nada mejora. En su lugar, usa varias medidas y mira el trabajo subyacente.
- **Olvidar compartir.** Las lecciones se quedan en el equipo. En su lugar, publica notas breves e invita a otros a reutilizarlas.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Recoger y priorizar | Las ideas están dispersas y sin priorizar | Algunos equipos mantienen listas | Una lista visible por equipo con responsables y beneficios esperados | Las prioridades usan datos de impacto y esfuerzo | Las listas de mejora se alinean entre equipos y con los clientes |
| Capacidad y flujo | La mejora se hace en el tiempo libre | Se reserva algo de capacidad | Una parte protegida de la capacidad y límites al trabajo en curso | Se revisan la capacidad y el rendimiento de la mejora | La capacidad se comparte entre equipos para mejoras transversales |
| Comprobar los resultados | Los resultados no se comprueban | Se revisan algunos cambios | Cada cambio tiene una expectativa declarada y una comprobación | Los resultados se miden y se vinculan con las decisiones | La evidencia se comparte entre equipos y se usa para orientar a la organización |
| Aprendizaje y difusión | Las lecciones se quedan en lo local | Se comparten algunas notas | Las lecciones se publican y se revisan | Se sigue la reutilización de las mejoras | Las mejoras se extienden de forma rutinaria entre equipos y proveedores |

## Lista de verificación

- [ ] Tenemos una lista de mejoras visible con responsables y beneficios esperados.
- [ ] Las ideas de retrospectivas, revisiones de incidentes, temas del centro de servicios y opiniones la alimentan todas.
- [ ] Una parte protegida de cada ciclo se dedica a elementos de mejora.
- [ ] Limitamos el número de elementos de mejora en curso.
- [ ] Cada cambio declara un resultado esperado y un momento para comprobarlo.
- [ ] Comprobamos los resultados y registramos la decisión de adoptar, ajustar o abandonar.
- [ ] Preguntamos a quién más afecta antes de hacer un cambio.
- [ ] La lista se revisa al menos cada mes.
- [ ] Compartimos notas breves sobre lo que cambió y lo que aprendimos.
- [ ] Podemos nombrar tres cosas que están mejor este trimestre gracias al trabajo de mejora.

## Prompts de IA

**Propósito: consolidar las ideas de mejora en una lista única priorizada.**

```text
Estas son ideas de mejora de varias fuentes de los últimos [periodo]: [pega elementos de retrospectivas, revisiones de incidentes, temas del centro de servicios y opiniones, uno por línea, con su fuente].

Fusiona los duplicados, agrupa los elementos relacionados y produce una lista con: un enunciado del problema de una línea para cada uno, la fuente, qué beneficio podría aportar (usa solo lo que implica el texto; si no, escribe "desconocido") y una pregunta sobre el esfuerzo. No ordenes por conjeturas; propón en su lugar una manera de ordenar (por ejemplo por recuento de repeticiones e impacto en los usuarios) y aplícala solo a los datos que te di. Enumera de lo que no estés seguro.
```

**Propósito: convertir una idea de mejora en un pequeño experimento.**

```text
Ayúdame a convertir esta idea de mejora en un pequeño experimento usando planificar, hacer, comprobar, actuar.

La idea: [describe].
El problema que aborda, con evidencia: [pega hechos].
Quién se ve afectado: [enumera equipos y usuarios].
Medidas que ya tenemos: [enumera].

Escribe: una hipótesis en una frase, el cambio más pequeño que podría ponerla a prueba, cuánto tiempo ejecutarlo, qué mediremos antes y después (deja los objetivos como [por acordar]), a quién más preguntar antes de empezar y qué regla de decisión usaremos al final. No inventes datos de referencia. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: revisar el estado de una lista de mejoras.**

```text
Esta es nuestra lista de mejoras con estado, responsable, antigüedad y beneficio esperado: [pega].

Usando solo este texto, identifica: elementos sin responsable; elementos de más de [periodo] sin avance; elementos cuyo beneficio esperado no está claro; y elementos que parecen relacionados y podrían combinarse. Para cada uno, sugiere una pregunta para la revisión mensual. No decidas por nosotros qué abandonar. Enumera de lo que no estés seguro.
```

**Propósito: comprobar si una mejora funcionó.**

```text
Hicimos este cambio: [describe] el [fecha].

Medida antes del cambio, con fechas y valores: [pega datos reales].
Medida después, con fechas y valores: [pega datos reales].
Qué más cambió en el mismo periodo: [enumera, o escribe "desconocido"].

Describe con palabras sencillas lo que muestran los datos, sin afirmar que el cambio lo causó si otros cambios podrían explicarlo. Sugiere comprobaciones adicionales y di si los datos bastan para decidir adoptar, ajustar o abandonar. No inventes números ni estadísticas. Enumera de lo que no estés seguro.
```

## Habilidades de IA

- [kaizen](../../../../skills/kaizen/SKILL.md): úsala para planificar y revisar mejoras pequeñas y continuas.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): úsala para dirigir retrospectivas que produzcan acciones con responsable.
- [dmaic](../../../../skills/dmaic/SKILL.md): úsala para la mejora basada en datos de defectos persistentes, mediante definir, medir, analizar, mejorar y controlar.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): úsala cuando la variación y los defectos sean el problema principal y necesites un enfoque estadístico.
- [futurespective](../../../../skills/futurespective/SKILL.md): úsala para mirar juntos hacia adelante y acordar mejoras para el siguiente periodo.

## Fuentes principales

- **Continual improvement process** (Wikipedia): la definición, kaizen, PDCA y la terminología de continual frente a continuous.
- **PDCA** (Wikipedia): el ciclo planificar–hacer–comprobar–actuar, sus orígenes y variantes como PDSA.
- **Kaizen** (Wikipedia): contexto sobre la mejora pequeña y continua y sus orígenes en la industria japonesa.
- **Lean software development** (Wikipedia): las ideas lean detrás de la mejora continua en el trabajo de software.

## Referencias

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
