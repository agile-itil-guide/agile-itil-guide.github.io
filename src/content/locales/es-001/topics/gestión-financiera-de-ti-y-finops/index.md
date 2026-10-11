# Gestión Financiera de TI y FinOps

**La gestión financiera de TI muestra lo que cuestan los servicios y el valor que devuelven, y FinOps es la práctica cultural de reunir a ingenieros, finanzas y equipos de negocio para que el gasto en tecnología, sobre todo en la nube, se comprenda y se gestione a medida que ocurre.**

## Por qué importa

El dinero decide qué servicios existen, cuánto personal tienen y cuánto duran. Durante años, las finanzas de TI significaron un presupuesto anual, una hoja de cálculo de reparto de costes y la discusión ocasional sobre quién paga la red. La computación en la nube lo cambió. Cualquiera con los permisos adecuados puede crear recursos en segundos, y la facturación sigue al uso. Un solo trabajo mal configurado puede añadir miles a una factura mensual antes de que nadie lo note, y un cambio meditado puede ahorrar otro tanto.

Para los equipos ágiles, el cambio es de doble filo. Ganan la libertad de experimentar y escalar sin esperar al hardware. También asumen una responsabilidad que antes correspondía a finanzas y compras: saber lo que cuestan sus elecciones. Mientras tanto, el personal de finanzas que planifica en ciclos anuales se enfrenta a un uso que varía a diario. Ninguna de las dos partes puede gestionar bien el coste por sí sola.

La Wikipedia en inglés no tiene ningún artículo titulado "FinOps" en la dirección comprobada. El propio sitio de la FinOps Foundation define FinOps como un marco operativo y una práctica cultural que maximiza el valor de negocio de la tecnología y crea responsabilidad financiera mediante la colaboración entre los equipos de ingeniería, finanzas y negocio. El artículo de Wikipedia sobre la computación en la nube describe modelos de precios y control de costes, y lleva un aviso de mantenimiento de que partes de él pueden no estar verificadas. El vocabulario financiero de ITIL aquí, como presupuestación, contabilidad y facturación, procede de descripciones ampliamente publicadas que esta guía no pudo contrastar con el texto del propietario del marco.

## Conceptos clave

### Gestión financiera de TI

La gestión financiera de TI (en ITIL, "financial management for IT services") se describe ampliamente como la práctica de gestionar el dinero de un proveedor de servicios de TI: planificar presupuestos, contabilizar costes y, cuando procede, cobrar por los servicios. Su objetivo es dar a quienes toman decisiones la información para equilibrar coste y valor. Las fuentes leídas para esta guía no definen la práctica, así que estas descripciones son de uso común, ofrecidas como tales.

| Actividad | Pregunta a la que responde |
|---|---|
| **Presupuestación y planificación** | ¿Cuánto gastaremos, y en qué, en el próximo periodo? |
| **Contabilidad de costes** | ¿Cuánto cuesta prestar cada servicio? |
| **Facturación o reparto** | ¿Quién paga y cómo? |
| **Análisis de valor y de inversión** | ¿Vale un servicio o un cambio lo que cuesta? |

### Showback y chargeback

Se usan ampliamente dos arreglos para repartir el coste. En el **showback**, a los consumidores se les muestra lo que usan y lo que cuesta, pero no se les factura. En el **chargeback**, se les factura o el coste se traslada a su presupuesto. El showback crea conciencia con poca fricción; el chargeback crea responsabilidad y puede crear disputas sobre las reglas de reparto. Elige uno preguntándote qué comportamiento quieres y si los datos son lo bastante buenos para defenderlos.

### La nube y el modelo de pago por uso

Wikipedia dice que la computación en la nube puede reducir el gasto de capital inicial al pasar a un modelo de gasto operativo en el que los costes escalan con el uso, y que la infraestructura como servicio se factura según el consumo. Describe el software como servicio como, normalmente, una tarifa fija mensual o anual por usuario, o pago por uso. Su lista de preocupaciones sobre el control de costes incluye recursos sin usar, configuraciones ineficientes y costes ocultos. Señala que los proveedores ofrecen herramientas de costes y cita FinOps como marco para normalizar las operaciones financieras en la nube.

El artículo informa de hallazgos de encuestas: una encuesta de Gartner a 200 líderes de TI halló que el 69 por ciento experimentó desviaciones presupuestarias en la nube en 2023, y los demás atribuyeron su éxito al pronóstico, a la monitorización del gasto y a la optimización; y el informe de Flexera de 2024 nombró la gestión del gasto en la nube como el principal reto, y informó de que el gasto en la nube pública superó los presupuestos en un 15 por ciento de media. El artículo lleva un aviso sobre texto no verificado, así que contrasta estas cifras con los informes originales antes de citarlas.

### Qué es FinOps

El sitio de la FinOps Foundation define FinOps como "un marco operativo y una práctica cultural" que "maximiza el valor de negocio de la tecnología" y "crea responsabilidad financiera mediante la colaboración entre los equipos de ingeniería, finanzas y negocio". Dice que el nombre combina "Finance" y "DevOps" y que el enfoque se extiende más allá de la nube al software como servicio, las licencias, los centros de datos y más. Puntos clave del sitio:

- **Es un deporte de equipo.** El sitio nombra estos grupos: ejecutivos, ingenieros, profesionales de FinOps, operaciones, y finanzas y compras, y dice que FinOps cambia cómo trabajan juntos equipos dispares. Un solo equipo no puede hacerlo solo.
- **Usa un enfoque de madurez** descrito como "Crawl, Walk, Run" (gatear, caminar, correr).
- **La Fundación** se describe como un proyecto bajo LF Projects, una serie de la Linux Foundation, y respalda una especificación técnica de código abierto llamada FOCUS (FinOps Open Cost and Usage Specification). También ofrece formación y certificación.

La página leída para esta guía no enumera los principios ni las fases, así que este tema no los enuncia. Consulta directamente las páginas de principios y fases de la Fundación.

### Datos de coste y etiquetado

Se llame como se llame la práctica, depende de poder atribuir el coste. Esto necesita dos cosas: etiquetas en los recursos que digan quién es su responsable y qué servicio apoyan (véase Tema 4.1 — Gestión de Activos de TI) y datos de facturación que puedan agruparse por esas etiquetas. FOCUS existe para normalizar el formato de los datos de coste y uso entre proveedores. El coste sin etiquetar es coste sin responsable.

### Costes unitarios y valor

Una factura total dice poco. Divide el coste por algo que signifique algo para el negocio: por transacción, por usuario, por servicio, por entorno. Un coste total creciente con un coste unitario decreciente puede ser un crecimiento sano. Un coste total decreciente con un coste unitario creciente puede señalar un problema. El coste unitario vincula las finanzas con los niveles de servicio y el valor (véase Tema 3.7 — Gestión de Niveles de Servicio).

### Coste, fiabilidad y velocidad

El dinero compra fiabilidad y velocidad, y cada nivel adicional tiene un precio (véase Tema 3.11 — Disponibilidad, Capacidad y Rendimiento). Un equipo que recorta costes sin cuidado puede reducir la resiliencia. Un equipo que nunca mira el coste puede construir de más. Las conversaciones de FinOps son un lugar para hacer explícito ese compromiso, con los ingenieros describiendo las opciones y las finanzas y el negocio sopesándolas.

### Gobernanza y riesgo

Los controles financieros incluyen presupuestos y alertas, aprobación para compromisos grandes, límites sobre quién puede crear recursos caros y revisiones periódicas. Los compromisos con los proveedores, como los acuerdos de compra a largo plazo, pueden reducir el coste y añadir riesgo si el uso cae. Son decisiones para finanzas, compras e ingeniería conjuntamente (véase Tema 5.7 — Gobernanza, Riesgo y Cumplimiento y Tema 3.14 — Gestión de Proveedores).

### Límites de las fuentes

La página de la FinOps Foundation es un resumen de la organización que promueve la práctica, y no da fecha de fundación, cifras de miembros ni evidencia de resultados. El artículo sobre la computación en la nube está marcado por texto no verificado y no da mecánicas de precios, tarifas de salida de datos ni detalles de una práctica de FinOps. Este tema debe tratarse como una introducción; lee los materiales de la Fundación y la documentación de tu proveedor para los detalles.

## Buenas prácticas

1. **Haz visible el coste para quienes lo causan.** Muestra a cada equipo el coste de los servicios que posee, al menos cada mes, en una forma que puedan entender. Las personas gestionan lo que pueden ver.
2. **Etiqueta todo lo que cuesta dinero.** Exige etiquetas de responsable, servicio y entorno en los recursos de nube e informa del gasto sin etiquetar. Corrígelo antes de afinar nada más.
3. **Empieza con showback.** Muestra a los equipos sus costes antes de cobrárselos. Pasa al chargeback solo cuando se confíe en los datos y el beneficio esté claro.
4. **Usa costes unitarios.** Expresa el coste por transacción, usuario o servicio, además del total. Revisa la tendencia junto a la demanda y la calidad.
5. **Fija presupuestos y alertas.** Acuerda presupuestos por servicio o equipo y fija alertas mucho antes del límite. Revisa las alertas con los responsables, no solo con finanzas.
6. **Reúne a finanzas e ingeniería en una sola conversación.** Celebra una revisión periódica donde los ingenieros expliquen qué impulsa el coste y finanzas explique las restricciones. Incluye a un responsable de negocio que pueda juzgar el valor.
7. **Busca primero el desperdicio.** Encuentra recursos sin usar o sobredimensionados, entornos inactivos y suscripciones olvidadas. Estos ahorros conllevan poco riesgo (véase Tema 4.2 — Gestión de Activos de Software para las suscripciones).
8. **Sopesa el ahorro frente a la fiabilidad.** Antes de recortar, pregunta qué hace el cambio a la disponibilidad, el rendimiento y la recuperación. Registra el compromiso.
9. **Planifica los compromisos con cuidado.** Los compromisos de compra con los proveedores pueden reducir el coste, pero fijan el gasto. Básalos en un uso estable y revísalos con regularidad.
10. **Da a los equipos autoridad y límites.** Deja que los equipos tomen decisiones de coste dentro de límites acordados y exige aprobación para las decisiones por encima de ellos. La autonomía con visibilidad funciona mejor que el control central por sí solo.
11. **Incluye el coste en el diseño y en la definición de terminado.** Pregunta en las revisiones de diseño cuánto costará operar una funcionalidad y compruébalo después de la versión.
12. **Aprende y comparte.** Publica notas breves sobre lo que ahorró dinero y lo que salió mal. Usa un enfoque de madurez como "gatear, caminar, correr" para hacer crecer la práctica.

## Preguntas para conversar con tu equipo

**¿Sabemos cuánto cuesta operar nuestro servicio principal y quién es responsable de esa cifra?**

Pide el coste mensual del servicio más grande y cómo se calcula. A menudo nadie puede responder, o la respuesta viene de fuentes distintas. Quien facilite puede preguntar qué haría falta para producir la cifra de forma fiable, como etiquetas y un informe. Elige un servicio con el que empezar.

**¿Qué proporción de nuestro gasto en la nube podemos atribuir a un responsable con nombre?**

Pide la proporción sin etiquetar. Una proporción grande significa que el coste no puede gestionarse. Discute por qué los recursos están sin etiquetar: sin regla, sin herramienta o sin incentivo. Acordad una regla de etiquetado y una fecha para un primer informe.

**¿Cuándo encontramos por última vez una sorpresa de coste y cómo nos enteramos?**

Reúne ejemplos: un entorno olvidado, un trabajo descontrolado, una suscripción que se renovó. Pregunta cuánto tiempo estuvo en marcha antes del descubrimiento. Discute alertas y revisiones que lo habrían detectado. Elige una alerta que añadir.

**¿Qué recortaríamos si el presupuesto bajara un diez por ciento y qué perderíamos?**

Pide al equipo que proponga opciones y nombre las consecuencias, incluidas las de fiabilidad. Esta pregunta hace explícitos los compromisos. No trates las respuestas como un plan; úsalas para iniciar una conversación con finanzas y el negocio sobre el valor.

**¿Qué decisiones sobre gasto toman hoy los ingenieros y cuáles deberían tomar?**

Enumera las decisiones de coste que toman los equipos: tamaños, entornos, herramientas, compras. Pregunta qué información usan. Discute qué límites serían razonables. Acordad una decisión que delegar con límites.

**¿Cómo hablan entre sí finanzas e ingeniería y cuándo?**

Pregunta a ambos grupos. Las respuestas típicas: en el momento del presupuesto o cuando algo va mal. Discute una revisión conjunta periódica. La página de la FinOps Foundation nombra la colaboración entre ingenieros, finanzas y equipos de negocio como el corazón de la práctica. Acordad quién organizará la primera.

## En la práctica: un ejemplo de ITIL ágil

Un servicio nacional de bibliotecas trasladó su catálogo digital, su buscador y sus archivos públicos a un proveedor de nube a lo largo de tres años. El departamento de finanzas pregunta a la directora de TI por qué la factura mensual de la nube se ha triplicado desde el traslado y por qué es difícil de explicar. Un equipo de diez personas opera la plataforma, y cada uno de los cinco equipos de proyecto tiene su propia cuenta de nube.

La directora de TI y una analista de finanzas empiezan pidiendo los datos de coste agrupados por servicio. La mayoría de los recursos están sin etiquetar, así que solo un tercio del coste puede atribuirse. Acuerdan una regla de etiquetado con los cinco equipos y ejecutan un informe semanal que enumera el gasto sin etiquetar por cuenta. En seis semanas, la proporción sin etiquetar baja a menos de una décima parte. La analista establece entonces un informe mensual de showback para cada equipo, que muestra el coste por servicio y el coste por mil búsquedas para el servicio de búsqueda. En la primera revisión, los ingenieros detectan un entorno de desarrollo que ha funcionado a tamaño de producción durante un año y un trabajo de procesamiento de datos que explora un archivo con más frecuencia de la necesaria. Ambos se corrigen. Una reunión mensual con el jefe de colecciones de la biblioteca permite a los ingenieros explicar qué impulsa el coste, como el gran volumen de imágenes escaneadas, y permite al jefe decidir qué colecciones digitalizar primero.

Tras dos trimestres, los costes unitarios bajan y la factura es previsible. No todo va sin tropiezos. Un cambio de recorte de costes en el índice de búsqueda reduce la velocidad en las horas punta, y los usuarios se quejan hasta que el equipo restablece la capacidad. El departamento de finanzas también quiere comprar un compromiso de un año con el proveedor, mientras que los ingenieros dudan de que el uso vaya a mantenerse estable, ya que está planificada una migración. Acuerdan comprometerse solo por la parte estable del uso y revisar el compromiso cuando el plan de migración esté claro.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega toman la mayoría de las decisiones de coste mediante el diseño y la configuración. Etiqueta lo que crees, vigila tus costes y pregunta cuánto costará operar una funcionalidad. Explica los factores de coste a finanzas y al negocio en términos sencillos.

### Equipos de servicio y operaciones

Los equipos de operaciones ven la utilización y el desperdicio. Comparte los datos sobre recursos inactivos y sobredimensionados, ayuda a fijar alertas sensatas y asegúrate de que los ahorros de coste no socaven la resiliencia. Mantén visible el vínculo entre coste, capacidad y niveles de servicio.

### Liderazgo y gobernanza

Los líderes y finanzas fijan los presupuestos, las reglas y la responsabilidad. Pide costes unitarios y tendencias, apoya un modelo de showback o chargeback en el que la gente confíe y toma las decisiones sobre compromisos junto con los ingenieros. Evita los recortes que perjudiquen la fiabilidad sin discutir el compromiso.

### Clientes y usuarios

Los clientes y usuarios pagan los servicios directa o indirectamente. Pregunta a los proveedores qué determina el precio de los servicios que usas y diles qué valor te importa más. Si se te factura, espera explicaciones claras y una manera de cuestionar las cifras.

## Fallos frecuentes

- **Coste sin etiquetar.** Nadie es responsable de la factura. En su lugar, exige etiquetas e informa de la laguna.
- **Finanzas e ingeniería en salas distintas.** Cada parte actúa con información parcial. En su lugar, celebra una revisión conjunta periódica con un responsable de negocio.
- **Chargeback antes de confiar en los datos.** Las disputas consumen tiempo. En su lugar, empieza con showback y mejora los datos.
- **Totales sin costes unitarios.** El crecimiento parece desperdicio o al revés. En su lugar, sigue el coste por transacción, usuario o servicio.
- **Recortar costes a costa de la resiliencia.** Los ahorros causan caídas. En su lugar, declara el compromiso e involucra al responsable del servicio.
- **Comprometerse en exceso.** Las compras a largo plazo fijan un gasto que el uso no puede sostener. En su lugar, comprométete solo con el uso estable y revisa.
- **Solo control central.** Los equipos esperan aprobación y esquivan el proceso. En su lugar, da a los equipos autoridad dentro de límites, con visibilidad.
- **Citar cifras de encuestas como hechos.** Los números de encuestas de proveedores impulsan decisiones. En su lugar, contrasta las fuentes originales y usa tus propios datos.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Visibilidad y atribución | El coste se ve solo como una factura total | Algunos equipos ven su coste | La mayor parte del gasto está etiquetado y atribuido a servicios y responsables | Los costes unitarios y las tendencias se revisan frente a la demanda y la calidad | Los datos de coste se comparten entre equipos, proveedores y finanzas con un formato común |
| Gobernanza y presupuestos | Los presupuestos son anuales y fijos | Existen algunos presupuestos y alertas | Los presupuestos, las alertas y los límites de aprobación son estándar | Se investigan las desviaciones y se ajustan las reglas | Las reglas presupuestarias se alinean en toda la organización y con los socios |
| Colaboración | Finanzas e ingeniería se reúnen en el momento del presupuesto | Algunas conversaciones conjuntas | Una revisión conjunta periódica con un responsable de negocio | Se siguen y se mejoran las decisiones y los resultados | Finanzas, ingeniería, negocio y proveedores comparten objetivos y datos |
| Optimización | Los ahorros vienen de las crisis | Se encuentra parte del desperdicio | El desperdicio, el dimensionamiento y los compromisos se revisan con regularidad | Los ahorros se miden frente a los riesgos para la fiabilidad | La optimización es rutinaria, compartida y equilibrada con los objetivos del servicio |

## Lista de verificación

- [ ] Podemos indicar el coste mensual de cada servicio importante y quién es su responsable.
- [ ] Los recursos de nube llevan etiquetas de responsable, servicio y entorno, y el gasto sin etiquetar se informa cada semana o cada mes.
- [ ] Los equipos reciben un informe de costes periódico de los servicios que poseen (showback).
- [ ] Seguimos al menos un coste unitario para cada servicio importante.
- [ ] Existen presupuestos y alertas con responsables, y las alertas se disparan mucho antes de los límites.
- [ ] Finanzas, ingeniería y un responsable de negocio se reúnen con regularidad para hablar de coste y valor.
- [ ] Revisamos los recursos y suscripciones sin usar y sobredimensionados al menos cada trimestre.
- [ ] Los recortes de costes se revisan por sus efectos en la fiabilidad y el rendimiento.
- [ ] Los compromisos de compra se basan en un uso estable y se revisan.
- [ ] Hemos contrastado con las fuentes originales las cifras de encuestas de proveedores antes de usarlas.

## Prompts de IA

**Propósito: analizar un informe de costes en busca de gasto sin responsable y de gasto inusual.**

```text
Este es un informe de costes del último [periodo], agrupado por cuenta, servicio y etiqueta: [pega datos reales; elimina los detalles sensibles].

Usando solo estos datos, calcula: el coste total, la proporción sin etiqueta de responsable, los cinco mayores elementos de coste y su proporción del total, y cualquier elemento cuyo coste haya cambiado en más de [umbral que elijas, p. ej. 25 %] respecto del periodo anterior si lo incluí. Para cada elemento inusual, sugiere una pregunta para su responsable. No adivines causas ni inventes números. Enumera de lo que no estés seguro.
```

**Propósito: definir un coste unitario para un servicio.**

```text
Ayúdame a definir un coste unitario para [servicio].

Qué hace el servicio: [describe].
Lo que le importa al negocio (transacciones, usuarios, búsquedas, documentos): [describe].
Datos de coste que tenemos: [describe las fuentes y cómo se agrupan].
Datos de demanda que tenemos: [describe].

Propón dos o tres costes unitarios candidatos, cómo calcular cada uno a partir de los datos que enumeré, qué podría distorsionarlos y qué decisiones ayudaría a tomar cada uno. No inventes cifras. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: prepararte para una revisión conjunta entre ingeniería y finanzas.**

```text
Planifica una revisión mensual de 45 minutos entre ingeniería, finanzas y un responsable de negocio sobre el coste de [servicio o cartera].

Insumos: [informe de costes, coste unitario, estado del presupuesto, pronóstico; describe lo que tienes].
Preocupaciones de cada parte: ingeniería [enumera]; finanzas [enumera]; negocio [enumera].

Da una agenda con tiempos, cinco preguntas para cada grupo, una plantilla de resumen de una página con solo las cifras que yo aporte y un paso final que registre decisiones y responsables. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: sopesar una propuesta de ahorro frente a la fiabilidad.**

```text
Estamos considerando este cambio de ahorro de costes: [describe].
Ahorro esperado, con la fuente: [pega, o escribe "no estimado"].
Lo que el servicio promete a los usuarios (niveles de servicio): [pega].
Desempeño actual frente a esas promesas: [pega].
Dependencias conocidas: [enumera].

Enumera las maneras en que el cambio podría afectar a la disponibilidad, el rendimiento, la recuperación y la seguridad, como preguntas para el responsable del servicio. Sugiere una pequeña prueba, qué monitorizar y qué nos haría revertirlo. No inventes estimaciones. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): úsala para pronosticar el gasto de TI y de nube y explicar las desviaciones.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): úsala para estimar la carga futura de modo que los pronósticos de coste reflejen la demanda.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): úsala para vincular las necesidades de recursos con el coste y los niveles de servicio.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): úsala para gestionar los contratos y compromisos con los proveedores.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): úsala para elegir y financiar servicios e iniciativas por valor y coste.

## Fuentes principales

- **What is FinOps?** (FinOps Foundation, finops.org): la definición propia de la Fundación y la descripción de la colaboración entre los equipos de ingeniería, finanzas y negocio.
- **Cloud computing** (Wikipedia): contexto sobre los modelos de precios, el control de costes y la responsabilidad compartida, con un aviso sobre texto no verificado.
- **Total cost of ownership** (Wikipedia): contexto sobre contar todos los costes de un activo o servicio a lo largo de su vida.
- **Software as a service** (Wikipedia): contexto sobre los precios por suscripción.

## Referencias

1. What is FinOps? — FinOps Foundation, finops.org — https://www.finops.org/introduction/what-is-finops/
2. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
3. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
4. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Operating expense — Wikipedia — https://en.wikipedia.org/wiki/Operating_expense
8. Capital expenditure — Wikipedia — https://en.wikipedia.org/wiki/Capital_expenditure
9. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
