# Habilitación de Cambios

**La habilitación de cambios existe para que los cambios beneficiosos ocurran de forma segura y rápida, y la evidencia de la investigación sobre entrega de software es que el riesgo se controla mejor con cambios pequeños, revisión por pares y comprobaciones automatizadas que enviando cada cambio a un comité.**

## Por qué importa

El cambio es donde más a menudo chocan la entrega continua y la gestión de servicios. Los equipos de entrega quieren publicar a menudo, porque los cambios pequeños y frecuentes son más fáciles de entender y revertir. Operaciones y gobernanza quieren evitar caídas y conservar registros, porque cambios pasados han roto servicios. Ambos tienen razón. El desacuerdo suele ser sobre cómo controlar el riesgo: mediante la aprobación antes del cambio o mediante la calidad del cambio y la rapidez de la recuperación.

La práctica se llama habilitación de cambios en ITIL 4. El nombre nuevo es una declaración de propósito. El objetivo es habilitar que ocurran cambios beneficiosos, no impedir los cambios. Las versiones anteriores de ITIL llamaban a la práctica gestión de cambios y le daban un papel fuerte en las aprobaciones y los calendarios, algo que muchos equipos vivieron como una barrera.

Este tema usa la mejor evidencia disponible: la orientación del programa de investigación DORA sobre la aprobación de cambios y sus métricas de entrega de software, leída de las propias páginas del programa. Las páginas de DORA informan de que la aprobación externa pesada se asocia con un peor desempeño de entrega. También carecen de tamaños de efecto o detalle estadístico, y remiten a un informe de 2019 para la investigación subyacente, así que trata la orientación como sólida pero no definitiva y pruébala en tu propio contexto. El vocabulario de ITIL aquí procede de descripciones ampliamente publicadas que esta guía no pudo contrastar con el texto del propietario del marco (véase Tema 2.2 — ITIL).

## Conceptos clave

### Qué hace la habilitación de cambios

Un **cambio** es la adición, modificación o eliminación de cualquier cosa que pueda afectar a un servicio. La habilitación de cambios es la práctica de asegurar que los cambios se evalúen, autoricen y programen de modo que el riesgo se gestione y los cambios beneficiosos avancen. La práctica también conserva un registro de lo que cambió, algo vital para la respuesta a incidentes porque muchos incidentes empiezan con un cambio reciente (véase Tema 3.2 — Gestión de Incidentes).

### Tipos de cambio

Se describe ampliamente que ITIL 4 reconoce tres tipos de cambio, cada uno con un camino distinto:

| Tipo | Qué es | Camino típico |
|---|---|---|
| **Cambio estándar** | Un cambio de bajo riesgo y bien comprendido que sigue un procedimiento documentado | Preautorizado; registrado, sin aprobación caso por caso |
| **Cambio normal** | Un cambio que necesita evaluación y autorización | Se evalúa su riesgo e impacto y luego lo autoriza la persona o el grupo adecuados |
| **Cambio de emergencia** | Un cambio que debe hacerse con urgencia, por ejemplo para restablecer el servicio | Autorización acelerada, con una revisión más completa después |

Los nombres y las definiciones exactas deben contrastarse con las publicaciones del propietario. El principio es estable: ajusta el nivel de control al riesgo.

### Autoridad de cambios

Cada tipo de cambio necesita a alguien con autoridad para aprobarlo. En la práctica antigua solía ser un comité asesor de cambios (CAB). La página de DORA no suprime el CAB; sugiere un papel "estratégico": coordinar entre equipos, apoyar la mejora de procesos y tomar decisiones de compromiso para el negocio, como el tiempo de salida al mercado frente al riesgo. Para los cambios rutinarios, dice, la aprobación se implementa mejor mediante la revisión por pares durante el desarrollo, respaldada por la automatización.

### Qué informa DORA sobre la aprobación

La página de DORA sobre cómo agilizar la aprobación de cambios dice:

- La aprobación externa pesada, como un CAB o la firma de un alto directivo, se asocia con un peor desempeño de la entrega de software.
- La página no informa de evidencia de que una revisión externa más formal reduzca las tasas de fallos de los cambios.
- Argumenta que la aprobación pesada frena la entrega, lo que lleva a versiones más grandes y menos frecuentes con mayor riesgo, y dice que sus datos respaldaron esta hipótesis.

La página nombra escollos: confiar en un CAB central para detectar errores, aplicar el mismo proceso de aprobación a todos los cambios sea cual sea el riesgo, no mejorar el proceso con métricas y añadir proceso y aprobaciones como respuesta a la inestabilidad en producción, algo que, dice, tiende a empeorar las cosas. "No se encontró evidencia" significa que no se encontró evidencia del beneficio; no demuestra que la revisión externa no tenga efecto. La página no da criterios sobre qué cuenta como cambio de alto riesgo, ni orientación para normativas concretas, ni un plan de transición para sectores regulados.

### La alternativa: control en la canalización

DORA sugiere cumplir la separación de funciones mediante la revisión por pares registrada en la plataforma de desarrollo, y usar pruebas continuas, integración continua y monitorización para detectar, evitar y corregir pronto los cambios malos. También sugiere tratar la plataforma como un producto que da a los desarrolladores retroalimentación rápida sobre seguridad, rendimiento, estabilidad y defectos, señalar los cambios de alto riesgo para un escrutinio adicional y hacer el proceso normal de cambios lo bastante rápido para gestionar las emergencias. El control está en la evidencia que produce la canalización: quién revisó, qué pruebas pasaron, qué se desplegó y cómo se puede deshacer.

### Medir el cambio

La página de DORA sobre las métricas de desempeño de la entrega de software enumera cinco medidas:

| Medida | Qué es | Grupo |
|---|---|---|
| Plazo de entrega del cambio | Tiempo desde que un cambio se confirma en el control de versiones hasta su despliegue en producción | Rendimiento |
| Frecuencia de despliegue | Con qué frecuencia ocurren los despliegues | Rendimiento |
| Tiempo de recuperación de un despliegue fallido | Cuánto se tarda en recuperarse de un despliegue que falla y necesita intervención inmediata | Rendimiento |
| Tasa de fallos de cambios | La proporción de despliegues que necesitan intervención inmediata, como una reversión o una corrección urgente | Inestabilidad |
| Tasa de retrabajo de despliegues | La proporción de despliegues no planificados que resultan de un incidente en producción | Inestabilidad |

La página dice que velocidad y estabilidad no son un compromiso: las medidas están correlacionadas para la mayoría de los equipos y los mejores rinden bien en las cinco. Advierte contra fijar las medidas como objetivos (ley de Goodhart), fiarse de una sola métrica, comparar aplicaciones muy distintas y competir con otros equipos. Sugiere que los equipos mejoren frente a su propio desempeño pasado. La página no da umbrales de referencia ni fórmulas, así que define cada medida para tu propio contexto antes de usarla (véase Tema 5.6 — Métricas y Medición).

### Registros y la vista de configuración

Un registro de cambio debería decir qué cambió, por qué, quién lo aprobó y cuándo se hizo, e idealmente enlazar con los servicios afectados. Las herramientas de control de versiones, compilación y despliegue pueden producir buena parte de esto automáticamente. Vincular los cambios con la configuración de los servicios apoya el análisis de impacto y la respuesta a incidentes (véase Tema 4.4 — Gestión de la Configuración).

### Cambio y versión

La habilitación de cambios decide si un cambio puede avanzar. La gestión de versiones y despliegues lo lleva a producción (véase Tema 3.5 — Gestión de Versiones y Despliegues). En la entrega continua los dos se funden en la práctica, con las aprobaciones integradas en la canalización.

## Buenas prácticas

1. **Clasifica los cambios por riesgo.** Define una lista breve de tipos de cambio, con criterios y ejemplos. Ajusta el camino al riesgo, de modo que los cambios rutinarios sean rápidos y los arriesgados reciban atención.
2. **Preautoriza los cambios de bajo riesgo.** Para los cambios bien comprendidos, probados y reversibles, acuerda un procedimiento estándar y deja que avancen sin aprobación caso por caso. Regístralos automáticamente.
3. **Haz de la revisión por pares la aprobación por defecto.** Exige que una segunda persona revise los cambios antes de integrarlos y registra la revisión en la plataforma de desarrollo. Esto cumple la separación de funciones para la mayoría de los cambios, como describe la página de DORA.
4. **Automatiza las comprobaciones.** Ejecuta pruebas, análisis de seguridad y comprobaciones de políticas en cada cambio y haz que los resultados formen parte del registro. Una aprobación basada en evidencia es más fuerte que una basada en un formulario.
5. **Mantén los cambios pequeños.** Los cambios pequeños son más fáciles de revisar, probar y revertir. Si un cambio parece arriesgado, pregunta si puede dividirse.
6. **Haz fácil y ensayada la reversión.** Para cada tipo de cambio, sabe cómo deshacerlo y practícalo. La capacidad de recuperarse rápido reduce la necesidad de predecir cada fallo.
7. **Señala los cambios de alto riesgo.** Define señales, como los cambios en la lógica de pagos o en la infraestructura compartida, que desencadenen una revisión adicional. Aplica el camino más pesado solo a ellos.
8. **Da a la autoridad de cambios un papel estratégico.** Usa cualquier comité central para coordinar entre equipos, resolver conflictos y tomar decisiones de compromiso para el negocio. No lo uses como punto de control de cada cambio.
9. **Gestiona las emergencias por el camino normal.** Haz el proceso habitual lo bastante rápido y fiable para que los cambios de emergencia lo sigan, con una revisión posterior. Las vías de emergencia usadas a menudo indican que el camino normal es demasiado lento.
10. **No añadas aprobaciones tras un incidente por defecto.** La página de DORA dice que añadir proceso en respuesta a la inestabilidad tiende a empeorar las cosas. Pregunta primero si la corrección son mejores pruebas, cambios más pequeños o una recuperación más rápida.
11. **Mide el proceso.** Sigue el plazo de entrega, el tiempo de espera de aprobación, la proporción de cambios que pasan sin aprobación manual y la tasa de fallos de cambios. Usa las medidas para mejorar, no para clasificar equipos.
12. **Explica el proceso.** La página de DORA señala que comunicar con claridad el proceso existente y ayudar a los equipos a navegar por él se vincula con un mejor desempeño incluso antes de cambiarlo. Publica una guía de una página con ejemplos.

## Preguntas para conversar con tu equipo

**¿Qué proporción de nuestros cambios son de bajo riesgo y bien comprendidos y cómo se aprueban hoy?**

Toma un mes de cambios y clasifícalos. La mayoría de los equipos descubre que la gran mayoría son rutinarios. Pregunta cuánto esperan los cambios rutinarios a la aprobación y qué aporta quien aprueba. Quien facilite puede preguntar si alguien recuerda un cambio rutinario cuyo fallo evitó la aprobación. Usa la respuesta para identificar un primer candidato a la preautorización.

**¿Qué detecta realmente nuestro paso de aprobación?**

Enumera los últimos diez cambios que fueron rechazados o retrasados en la aprobación y por qué. Compara con los problemas que llegaron a producción a pesar de la aprobación. Si la aprobación detecta poco, pregunta qué detectaría los mismos problemas antes, como pruebas o revisión por pares. Recuerda que la página de DORA no informa de evidencia de que una revisión externa más formal reduzca las tasas de fallos de los cambios. Acordad un cambio que probar.

**¿Cómo desharíamos un cambio malo y con qué rapidez?**

Elige un cambio reciente y describe la reversión. Si no está claro, no se ha probado o es manual, ese es el riesgo. Pregunta cuánto tardaría y quién lo haría. Acordad ensayar una reversión este mes. Un equipo que puede recuperarse en minutos puede aceptar más cambio.

**¿Cuáles de nuestros cambios necesitan un escrutinio adicional y cómo los reconoceríamos?**

Reúne ejemplos de cambios que causaron incidentes graves. Busca rasgos que compartan: infraestructura compartida, controles de seguridad, migraciones de datos. Redacta tres señales que marcarían un cambio como de alto riesgo. Pregunta quién debería revisar los cambios señalados y con qué rapidez.

**¿Cuándo hemos añadido un control tras un incidente y ayudó?**

Pide ejemplos. Enumera lo que se añadió, los problemas que abordaba y si el problema se repitió. La página de DORA nombra añadir aprobaciones como respuesta a la inestabilidad como un escollo. Discute si otra respuesta, como mejores pruebas o cambios más pequeños, habría funcionado. Anota una lección.

**¿Qué evidencia aceptaría un auditor de nuestra canalización en lugar de una firma?**

Pide a un auditor o a un colega de cumplimiento que se una. Enumera la evidencia que la canalización ya produce: revisiones, resultados de pruebas, registros de despliegue. Pregunta qué falta. Muchos auditores aceptan la revisión por pares registrada y la evidencia automatizada cuando es fiable. Acordad una descripción breve del control y un periodo de prueba.

## En la práctica: un ejemplo de ITIL ágil

El departamento de TI de un hospital regional da soporte a un sistema de programación clínica que actualiza un equipo interno de siete personas. Cada cambio, desde la corrección de una errata hasta una migración de base de datos, va a un comité asesor de cambios semanal. Las correcciones pequeñas esperan hasta ocho días. Los clínicos se quejan, y los desarrolladores han empezado a agrupar correcciones en versiones mayores para evitar la cola, lo que hace cada versión más arriesgada.

El jefe de TI y la presidenta del comité revisan un año de cambios. La mayoría eran pequeños, dos habían causado incidentes y el comité no había detectado ninguno de los dos. Diseñan un enfoque de tres carriles. Los cambios estándar, como los cambios de texto y de configuración dentro de límites acordados, con pruebas automatizadas superadas y una reversión probada, se preautorizan y se registran automáticamente. Los cambios normales necesitan una revisión por pares registrada en la plataforma de desarrollo y una comprobación frente a una breve lista de señales de alto riesgo, como los cambios en el tratamiento de datos de pacientes. Los cambios señalados como de alto riesgo van al comité, que se reúne dos veces por semana. Los cambios de emergencia siguen el camino normal con una revisión posterior a la implantación.

Tras cuatro meses, los cambios estándar salen en vivo en un día y el comité ve aproximadamente una quinta parte del volumen que veía antes. La tasa de fallos de cambios no sube. Quedan problemas. Dos desarrolladores aplican las señales de alto riesgo de manera incoherente y un cambio señalado llegó tarde al comité, y la auditoría interna pide evidencia de que las revisiones por pares no son un mero trámite. El equipo escribe ejemplos de las señales, añade una revisión por muestreo de las revisiones por pares a cargo de una ingeniera sénior y acuerda con la auditoría revisar la evidencia en la próxima reunión trimestral.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega cargan con la mayor parte del control: revisión, pruebas, cambios pequeños y reversión. Intégralos en la canalización y haz visible la evidencia. Mantén pequeños los cambios e informa a operaciones de lo que viene. Usa el proceso de cambios como lugar para compartir información de riesgo, no solo para obtener permiso.

### Equipos de servicio y operaciones

Los equipos de operaciones saben qué cambios han perjudicado a los servicios. Comparte ese conocimiento como señales para una revisión adicional y ayuda a construir comprobaciones que los detecten pronto. Apoya caminos más ligeros para los cambios de bajo riesgo y conserva los registros que hacen más rápida la respuesta a incidentes.

### Liderazgo y gobernanza

Los líderes deciden cuánta aprobación exige la organización. La orientación de DORA sugiere pedir evidencia de control y no firmas en cada cambio. Apoya la medición del plazo de entrega y de la tasa de fallos de cambios y evita añadir proceso tras los incidentes sin examinar las causas. Acuerda con la auditoría qué evidencia es aceptable.

### Clientes y usuarios

Los clientes y usuarios se benefician de mejoras pequeñas y frecuentes y de menos grandes perturbaciones. Espera que se te informe de los cambios que te afectan, en lenguaje sencillo y por adelantado. Si tienes necesidades especiales, como periodos de congelación, díselo pronto al proveedor para que puedan planificarse.

## Fallos frecuentes

- **Un camino para todos los cambios.** Los cambios rutinarios hacen cola detrás de los arriesgados. En su lugar, clasifica por riesgo y da a cada clase su propio camino.
- **La aprobación como único control.** Una firma sustituye a la calidad. En su lugar, incorpora pruebas, revisión y reversión a la canalización.
- **Un comité que revisa lo que no puede evaluar.** Los miembros aprueban cambios que no entienden. En su lugar, envía los cambios a personas con el conocimiento y usa el comité para coordinar.
- **Agrupar para evitar la cola.** Los equipos combinan cambios, lo que hace cada versión más arriesgada. En su lugar, haz la cola lo bastante corta para que los cambios pequeños sean el camino fácil.
- **Añadir controles tras cada incidente.** El proceso crece y la velocidad cae. En su lugar, busca la causa y corrígela con pruebas, cambios más pequeños o una recuperación más rápida.
- **Revisión por pares de trámite.** Las revisiones son formales pero superficiales. En su lugar, muestrea las revisiones, comparte ejemplos de buenas y mantén los cambios lo bastante pequeños para revisarlos.
- **Sin reversión.** Los cambios no pueden deshacerse. En su lugar, exige y ensaya una reversión para cada tipo de cambio.
- **Manipular las métricas.** Los equipos dividen cambios u ocultan fallos para quedar bien. En su lugar, usa varias medidas, revísalas juntas y céntrate en la mejora a lo largo del tiempo.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Clasificación y caminos | Todos los cambios siguen un camino o ninguno | Algunos equipos tienen una vía rápida para cambios simples | Los tipos de cambio con criterios y caminos distintos son estándar | La proporción de cambios por camino y los tiempos de espera se miden y se ajustan | Los caminos se ajustan entre equipos con base en evidencia compartida |
| Aprobación y evidencia | La aprobación es por firma o no se registra | Algunos cambios se revisan por pares | La revisión por pares y las comprobaciones automatizadas se registran en la mayoría de los cambios | La calidad de las revisiones y la evidencia se muestrean y se mejoran | La evidencia fluye automáticamente hacia la auditoría y los socios |
| Recuperación | La reversión es improvisada | Algunos cambios tienen pasos de reversión | La reversión está definida y ensayada para cada tipo de cambio | El tiempo de recuperación se mide y se reduce | Las prácticas de recuperación se comparten y se prueban entre equipos y proveedores |
| Medición y mejora | Pocas medidas | Algunos equipos siguen el plazo de entrega | El plazo de entrega, la frecuencia, la tasa de fallos y el tiempo de recuperación se siguen por servicio | Las medidas impulsan mejoras planificadas y no se usan como objetivos | Los equipos aprenden de las medidas de los demás y mejoran en toda la organización |

## Lista de verificación

- [ ] Hemos definido tipos de cambio con criterios y ejemplos.
- [ ] Los cambios de bajo riesgo y bien comprendidos están preautorizados y se registran automáticamente.
- [ ] La revisión por pares se registra en la plataforma de desarrollo para los cambios normales.
- [ ] Las pruebas y comprobaciones automatizadas se ejecutan en cada cambio.
- [ ] Cada tipo de cambio tiene una reversión que se ha ensayado.
- [ ] Tenemos señales que marcan los cambios de alto riesgo para un escrutinio adicional.
- [ ] Cualquier comité central tiene un papel claro en la coordinación y los compromisos.
- [ ] Seguimos el plazo de entrega del cambio, la frecuencia de despliegue, el tiempo de recuperación de un despliegue fallido y la tasa de fallos de cambios de cada servicio.
- [ ] Nuestros auditores han dicho qué evidencia aceptan en lugar de firmas.
- [ ] Tenemos una guía de una página del proceso de cambios con ejemplos.

## Prompts de IA

**Propósito: clasificar por riesgo y camino de aprobación los cambios del mes pasado.**

```text
A continuación hay una lista de los cambios que hicimos el mes pasado: [pega una línea por cambio con una descripción breve, quién lo revisó, cuánto esperó a la aprobación y si causó un incidente; elimina los datos personales].

Ayúdame a clasificarlos en tres grupos: rutinarios y de bajo riesgo, necesitan evaluación normal y necesitan escrutinio adicional. Para cada grupo, di qué rasgos de los cambios de mi lista te llevaron a la agrupación, usando solo el texto. Calcula la proporción de cada grupo y la espera media de aprobación solo con mis números. Sugiere qué cambios rutinarios podrían preautorizarse y qué salvaguardas querría primero. No adivines riesgos más allá de lo que escribí. Enumera de lo que no estés seguro.
```

**Propósito: redactar un procedimiento de cambio estándar.**

```text
Ayúdame a redactar un procedimiento para un cambio estándar (preautorizado): [nombra el cambio, por ejemplo "actualizar un valor de configuración dentro de límites acordados"].

Cómo se hace hoy, paso a paso: [pega].
Comprobaciones que existen: [pruebas, análisis, revisiones].
Cómo deshacerlo: [describe, o escribe "desconocido"].
Quién es responsable del procedimiento: [rol].

Escribe un procedimiento de una página con: cuándo se aplica, los criterios que hacen estándar un cambio, los pasos, las comprobaciones que deben superarse, cómo se registra, cómo deshacerlo y cuándo tratarlo como un cambio normal. Marca como suposición cada afirmación que hayas añadido. No afirmes que ninguna regla exige algo salvo que haya pegado su texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: prepararte para hablar con un auditor sobre la evidencia que produce nuestra canalización.**

```text
Un auditor pregunta cómo autorizamos los cambios. Nuestra canalización hace lo siguiente: [describe la revisión de código, las pruebas, los análisis, el registro de despliegue, quién puede aprobar y dónde se guardan los registros].

La preocupación del auditor con sus palabras: [pega, o escribe "desconocida"].
Reglas que sabemos que se aplican, con el texto de la fuente si lo tienes: [pega, o escribe "ninguna conocida"].

Haz una tabla de qué evidencia produce cada paso, dónde se guarda, quién puede alterarla y qué lagunas puede notar el auditor. Sugiere tres formas ligeras de reforzar los puntos más débiles. No afirmes que ninguna norma exige algo salvo que haya pegado su texto. Señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: diseñar una prueba de aprobación más ligera.**

```text
Diseña una prueba de tres meses de aprobación más ligera para [servicio].

Proceso actual: [describe].
Volumen y tipos de cambios del último trimestre: [pega recuentos de tus registros].
Medidas que ya tenemos: [enumera, por ejemplo plazo de entrega y tasa de fallos de cambios].
Preocupaciones de auditoría u operaciones: [enumera].

Propón: qué tipos de cambio incluir, salvaguardas, qué medir y con qué frecuencia (sin inventar objetivos), qué nos haría detener o pausar la prueba y cómo informar de los resultados. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [change-request](../../../../skills/change-request/SKILL.md): úsala para redactar registros de cambios que lleven lo que necesitan operaciones y auditores.
- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md): úsala cuando un cambio sea organizativo y necesite planificación tanto para las personas como para los sistemas.
- [release-notes](../../../../skills/release-notes/SKILL.md): úsala para decir a los usuarios y al centro de servicios qué hace un cambio.
- [two-way-door-decisions](../../../../skills/two-way-door-decisions/SKILL.md): úsala para distinguir las decisiones reversibles que pueden tomarse rápido de las irreversibles que necesitan más cuidado.
- [risk-register](../../../../skills/risk-register/SKILL.md): úsala para registrar y revisar los riesgos que introduce el cambio y cómo se controlan.

## Fuentes principales

- **Streamlining change approval** (DORA, dora.dev): la orientación del programa de investigación sobre la revisión por pares, la automatización y el papel de un comité de cambios.
- **DORA's software delivery performance metrics** (dora.dev): definiciones y advertencias sobre el plazo de entrega del cambio, la frecuencia de despliegue, el tiempo de recuperación, la tasa de fallos de cambios y la tasa de retrabajo.
- **ITIL** (Wikipedia): contexto sobre las versiones de ITIL y el cambio a ITIL 4.
- **Continuous delivery** (Wikipedia): contexto sobre las prácticas que hacen seguros los cambios pequeños y frecuentes.

## Referencias

1. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
2. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Separation of duties — Wikipedia — https://en.wikipedia.org/wiki/Separation_of_duties
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
