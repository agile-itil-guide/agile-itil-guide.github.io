# Gobernanza, Riesgo y Cumplimiento

**La gobernanza, el riesgo y el cumplimiento fijan la dirección, los límites y la evidencia del trabajo de una organización y, en una organización ágil, funcionan mejor como barandillas integradas en la forma de entregar, no como puertas puestas al final.**

## Por qué importa

Toda organización que presta servicios responde ante alguien: clientes, una junta directiva, un regulador, el público. Esa rendición de cuentas adopta unas pocas formas conocidas. Debe haber dirección clara y derechos de decisión (gobernanza). Debe haber una visión honesta de lo que podría salir mal y de lo que se está haciendo al respecto (riesgo). Y debe haber evidencia de que la organización cumple las leyes, los contratos y las políticas que le son aplicables (cumplimiento).

Los equipos ágiles y las funciones de gobernanza suelen encontrarse en un estado de sospecha mutua. Los equipos ven comités de aprobación, formularios largos y reglas cuya razón no alcanzan a ver. El personal de gobernanza y auditoría ve equipos que cambian producción con rapidez y dejan poco registro. Ambos tienen su parte de razón. La salida no es que uno gane, sino diseñar una gobernanza compatible con el cambio frecuente: límites claros, controles basados en el riesgo y evidencia producida por el propio trabajo.

El [artículo de Wikipedia sobre gobernanza, gestión de riesgos y cumplimiento](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) describe el GRC como un enfoque holístico de la gobernanza, la gestión de riesgos y el cumplimiento normativo, desarrollado en la década de 2000 para gestionar requisitos de cumplimiento financiero cada vez más complejos. No nombra críticas ni marcos específicos de TI. Este tema lo combina con los artículos sobre gestión de riesgos y cumplimiento normativo, con los temas anteriores sobre cambio, seguridad y continuidad y con la orientación de DORA sobre la aprobación. No ofrece asesoramiento jurídico; las reglas que se aplican a ti dependen de tu país, sector y contratos, y la fuente adecuada es el texto de la regla.

## Conceptos clave

### Gobernanza

El artículo sobre GRC describe la gobernanza corporativa como los procesos fijados por la junta que dan forma a la estructura y asignan roles. En TI, la gobernanza trata de quién decide qué, con qué fundamento y cómo se comprueban las decisiones. COBIT, descrito en Wikipedia como un marco de ISACA para la gestión y gobernanza de TI, es una referencia (véase Tema 2.7 — Marcos y Estándares de ITSM). El sistema de valor del servicio de ITIL incluye la gobernanza como componente (véase Tema 2.3 — El Sistema de Valor del Servicio de ITIL).

La buena gobernanza en una organización ágil es explícita sobre:

- **Dirección:** metas y prioridades, y quién las fija.
- **Límites:** qué pueden decidir los equipos solos y qué necesita escalamiento (véase Tema 1.9 — Gestión Ágil).
- **Responsabilidad:** quién responde de cada servicio (véase Tema 5.5 — Propiedad de Productos y Servicios).
- **Evidencia:** cómo sabe la organización que se siguen su dirección y sus límites.

### Gestión de riesgos

Wikipedia describe la gestión de riesgos como la identificación, evaluación y priorización de riesgos, seguida de minimizar, vigilar y controlar su impacto o probabilidad. El artículo nombra cuatro opciones de tratamiento:

| Opción | Significado | Ejemplo |
|---|---|---|
| **Evitación** | No realizar la actividad arriesgada (lo que también renuncia a posibles ganancias) | Decidir no almacenar ciertos datos |
| **Reducción** | Disminuir la gravedad o la probabilidad | Pruebas automatizadas, despliegues escalonados, monitorización adicional |
| **Reparto** | Transferir la carga o el beneficio, por ejemplo mediante seguros o externalización; el artículo señala que "transferencia de riesgo" suele ser un nombre impropio, pues la parte original suele conservar la responsabilidad legal | Seguros, contratar a un proveedor |
| **Retención** | Aceptar la pérdida, típicamente en riesgos pequeños o no asegurables | Una decisión de convivir con un riesgo menor |

El artículo también trata las oportunidades, sucesos inciertos positivos, con estrategias paralelas. Señala que la evaluación de riesgos pondera la gravedad y la probabilidad y que los datos de tasas suelen escasear, sobre todo en sucesos catastróficos. Cita críticas: se cita a Douglas Hubbard (2009) diciendo que algunas normas no muestran mejora medible del riesgo, aunque la confianza en las decisiones parece aumentar; investigaciones posteriores sugieren que los beneficios financieros dependen más de la frecuencia y del método con que se evalúan los riesgos que de la fórmula usada; y la distinción de Benoit Mandelbrot entre riesgo "suave" y "salvaje", siendo común el error de subestimar lo salvaje. El artículo cita ISO 31000, "Risk management — Guidelines", y él mismo está marcado como necesitado de más citas.

### El registro de riesgos

Un **registro de riesgos** es un registro de los riesgos identificados, con una descripción, una evaluación, un responsable, el tratamiento elegido y el estado. El extracto del artículo leído para esta guía no lo menciona, por lo que es práctica común. Manténlo breve, con responsable y revisado. Los riesgos de los servicios incluyen la seguridad, la disponibilidad, el fallo de proveedores, la dependencia de personas clave y el cumplimiento (véase Tema 3.13 — Gestión de la Seguridad de la Información, Tema 3.12 — Gestión de la Continuidad del Servicio y Tema 3.14 — Gestión de Proveedores).

### Cumplimiento

El artículo de Wikipedia sobre el cumplimiento normativo lo describe como la meta a la que aspiran las organizaciones al mantenerse al tanto de las leyes, políticas y regulaciones pertinentes y seguirlas, y señala que las organizaciones combinan cada vez más los controles en marcos compartidos para reducir el trabajo duplicado. Dice que la definición de un plan de cumplimiento eficaz ha sido esquiva y menciona normas como ISO 37301 e ISO 19600. Nombra regímenes como la ley Sarbanes–Oxley (2002), HIPAA, el RGPD, PCI-DSS, la ley Gramm–Leach–Bliley y otros. Registra críticas: la investigación psicológica citada en el artículo sostiene que las recompensas o multas pueden debilitar la motivación intrínseca y minar el cumplimiento, los defensores de la privacidad cuestionan los requisitos de conservación de datos, la aplicación difiere entre jurisdicciones y los requisitos que cambian rápidamente son difíciles de seguir.

Un punto práctico: el cumplimiento no es una sola cosa. Cada régimen tiene su propio alcance y requisitos. Averigua con tu función jurídica o de cumplimiento cuáles se aplican a cada uno de tus servicios y obtén el texto.

### El GRC como una sola vista

El artículo sobre GRC dice que el GRC abarca tres facetas relacionadas: la gobernanza corporativa, la gestión de riesgos empresariales y el cumplimiento, y menciona variantes como el GRC financiero, jurídico y operativo. Atribuye el término al artículo de 2007 de Scott Mitchell y al Open Compliance and Ethics Group, y señala que el software de GRC existe desde 2002 y que algunas empresas empezaron a usar herramientas de IA para GRC en 2025. La ventaja de la vista combinada es que las tres están vinculadas: la gobernanza fija lo que importa, la gestión de riesgos encuentra lo que lo amenaza y el cumplimiento muestra lo que se está haciendo.

### Barandillas, no puertas

Una **puerta** es un punto de control, normalmente manual, donde el trabajo espera aprobación. Una **barandilla** es un límite integrado en el camino que impide que el trabajo se desvíe sin detenerlo. Ejemplos: pruebas automatizadas que deben pasar, comprobaciones de políticas en la canalización que bloquean configuraciones inseguras, presupuestos con alertas y acceso basado en roles. La orientación de DORA sobre la aprobación de cambios dice que la aprobación se logra mejor mediante la revisión por pares y la automatización, que la aprobación externa pesada se asocia con peor desempeño de entrega y que añadir aprobaciones en respuesta a la inestabilidad tiende a empeorar las cosas (véase Tema 3.4 — Habilitación de Cambios). Las barandillas aplican la misma idea a toda la gobernanza: el control está en el sistema y produce su propia evidencia.

### La evidencia como subproducto

Los auditores necesitan evidencia de que los controles funcionan. Una canalización que registra quién revisó, qué se probó y qué se desplegó da evidencia de cada cambio. Un catálogo de servicios con responsables da evidencia de responsabilidad. Los postmortems dan evidencia de aprendizaje. Esto es mucho más sólido que un documento trimestral escrito para una auditoría. Habla pronto con los auditores sobre lo que aceptarán (véase Tema 5.1 — Gestión de Servicios Ágil).

### Entornos regulados

El artículo de Wikipedia sobre el desarrollo ágil de software informa de que los dominios regulados, como los dispositivos médicos, los productos farmacéuticos, las finanzas, la energía nuclear, la automoción y la aviónica, se consideraron al principio inadecuados para lo ágil, y de que ahora existen adaptaciones, con preocupaciones por el aseguramiento de la calidad, la seguridad, la trazabilidad y la verificación y validación (véase Tema 1.3 — Desarrollo de Software Ágil). El patrón que funciona suele ser mantener los controles exigidos, automatizar su evidencia y hacerlos parte de la definición de terminado, en lugar de eliminarlos.

### Límites de las fuentes

El artículo sobre GRC no nombra marcos ni críticas y se leyó para esta guía en forma breve. El artículo sobre gestión de riesgos se leyó solo en parte y está marcado como necesitado de citas. El artículo sobre cumplimiento no da costes ni procedimientos de auditoría. Úsalos como mapas y acude a las fuentes primarias para los detalles.

## Buenas prácticas

1. **Escribe los derechos de decisión.** Para cada equipo o servicio, di qué puede decidir solo, qué requiere consulta y qué necesita aprobación. Publícalo y revísalo con los equipos.
2. **Fija dirección y límites, no instrucciones detalladas.** Declara los resultados, los presupuestos, los límites de riesgo y las reglas innegociables. Deja que los equipos decidan cómo trabajar dentro de ellos.
3. **Mantén un registro de riesgos breve.** Para cada servicio importante, enumera los principales riesgos con un responsable, un tratamiento y una fecha de revisión. Revísalo en una reunión periódica y descarta los riesgos que han desaparecido.
4. **Elige el tratamiento a propósito.** Para cada riesgo, decide evitarlo, reducirlo, repartirlo o retenerlo, y registra quién tomó la decisión. Recuerda que repartir un riesgo no elimina tu propia responsabilidad.
5. **Evalúa a menudo, con métodos sencillos.** El artículo informa de que los beneficios dependen más de la frecuencia y del método que de la fórmula. Revisa los riesgos con regularidad usando un método que el equipo comprenda.
6. **Sabe qué reglas se aplican a qué servicios.** Pide a tu función jurídica o de cumplimiento una lista de los regímenes aplicables, con el texto de la fuente. Regístrala junto a cada servicio.
7. **Integra barandillas en la canalización.** Automatiza pruebas, análisis de seguridad, comprobaciones de políticas y límites de acceso para que el trabajo inseguro se detenga pronto. Trata los controles como código con responsables.
8. **Captura la evidencia como subproducto.** Asegúrate de que las herramientas registran revisiones, aprobaciones, resultados de pruebas, despliegues e incidentes. Acuerda con los auditores lo que aceptarán.
9. **Mapea los controles una sola vez.** Si debes cumplir varios marcos, describe tus controles una vez y mapéalos a cada requisito, como dice el artículo de cumplimiento que hacen cada vez más las organizaciones.
10. **Usa vías basadas en el riesgo para el cambio.** Haz rápidos los cambios de bajo riesgo, marca los de alto riesgo para revisión y mantén un órgano central para la coordinación y los compromisos (véase Tema 3.4 — Habilitación de Cambios).
11. **Incluye la gobernanza en las retrospectivas.** Pregunta periódicamente qué controles ayudaron y cuáles solo añadieron retraso. Elimina o rediseña los segundos, con el responsable y el auditor.
12. **Prevé el cambio de las reglas.** Nombra a alguien que siga los cambios en leyes, normas y contratos e informe de lo que importa a tus servicios.

## Preguntas para conversar con tu equipo

**¿Qué aprobaciones necesitamos obtener y contra qué protege cada una?**

Enumera las aprobaciones de un cambio o una compra típicos. Para cada una, pregunta qué riesgo aborda y si alguna vez ha rechazado algo. Las aprobaciones que no protegen nada son candidatas a eliminarse. Las aprobaciones que protegen contra un riesgo real pueden cumplirse de una manera más ligera. Quien facilite puede preguntar qué evidencia aceptaría el aprobador en lugar de una firma.

**¿Cuáles son los cinco principales riesgos de nuestro servicio principal y quién es responsable de cada uno?**

Pide a las personas que enumeren los riesgos de forma independiente y luego compara. Las diferencias muestran lo que ve el equipo. Comprueba que cada uno tiene un responsable y un tratamiento. Discute cuáles se aceptan por defecto y no por decisión.

**¿Qué reglas se nos aplican y dónde está el texto?**

Pide la lista de leyes, normas y contratos aplicables. Si nadie sabe decirlo, averigua quién puede. Comprueba que ingeniería sabe qué exige cada una. Acordad una manera de mantener la lista al día.

**¿Qué evidencia producen ya nuestras herramientas que un auditor podría usar?**

Enumera los registros: revisiones, resultados de pruebas, historial de despliegues, revisiones de incidentes. Pregunta qué ha pedido un auditor recientemente y si las herramientas podrían suministrarlo. Identifica un registro que automatizar. Invita a un auditor a mirar.

**¿Dónde hemos añadido un control tras un problema y ayudó?**

Pide ejemplos. Compáralos con la advertencia de DORA de que añadir aprobaciones en respuesta a la inestabilidad tiende a empeorar las cosas. Pregunta si una respuesta distinta, como mejores pruebas o cambios más pequeños, habría funcionado. Registra una lección.

**¿Cómo sería una barandilla para algo que ahora controlamos con una puerta?**

Elige una puerta. Pregunta qué se supone que debe impedir y cómo podría impedirse automáticamente. Por ejemplo, una comprobación de política que bloquee una configuración arriesgada. Acordad una prueba con el responsable de la puerta.

## En la práctica: un ejemplo de ITIL ágil

Un fondo nacional de pensiones opera una calculadora de prestaciones en línea y un servicio de pagos. Está regulado, se audita anualmente y está sujeto a reglas estrictas sobre el tratamiento de datos. La oficina de gobernanza del fondo exige que todo cambio en producción sea revisado por un comité de cambios que se reúne semanalmente, y que todo proyecto complete una evaluación de riesgos de 30 páginas antes de la versión. Los desarrolladores publican rara vez y en lotes grandes. Una versión reciente causó un cálculo incorrecto para un pequeño grupo de afiliados, y la respuesta del comité fue añadir otra aprobación.

La jefa de riesgos y el jefe de ingeniería deciden probar otra vía. Empiezan con una lista de los regímenes que se aplican a la calculadora y al servicio de pagos, obtenida del equipo jurídico del fondo con el texto de cada uno, y mapean una sola vez los controles del fondo a ellos. El papel del comité de cambios cambia: los cambios rutinarios y bien probados, con pruebas automatizadas y revisión por pares, avanzan sin él; los cambios de alto riesgo (los que tocan las reglas de cálculo o los pagos) se marcan mediante una breve lista de señales y los revisa una especialista en riesgos en dos días; y el comité se reúne para coordinar y atender excepciones. La canalización registra quién revisó y qué pruebas pasaron, y una comprobación de política bloquea las versiones que no superan el conjunto de pruebas de cálculo. La evaluación de riesgos se sustituye por una entrada de una página en el registro por servicio, revisada mensualmente.

Una auditora interna ve los registros de la canalización y el registro de riesgos y pide una muestra de revisiones para comprobar si la revisión por pares es genuina; el jefe de ingeniería organiza un muestreo trimestral a cargo de un ingeniero sénior. Tras seis meses, las versiones son semanales, la tasa de fallos de cambios es menor y la auditoría encuentra suficiente la evidencia. Quedan algunas dificultades. Dos equipos aplican de forma incoherente las señales de alto riesgo, la orientación de un regulador exige una aprobación explícita para ciertos cambios de cálculo que la nueva vía no recoge y las entradas del registro se escriben con poco cuidado en algunos equipos. La jefa de riesgos añade el paso de aprobación para esos cambios, publica ejemplos de las señales y pide a los equipos que lleven una entrada del registro a una revisión mensual.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega llevan a cabo los controles mediante sus canalizaciones y prácticas. Aprende qué reglas se aplican a tu servicio y por qué, ofrece maneras de producir evidencia automáticamente y lleva el riesgo a la planificación. Trata las barandillas como parte del producto.

### Equipos de servicio y operaciones

Los equipos de operaciones son dueños de muchos controles: acceso, monitorización, continuidad y registros. Mantén la evidencia en las herramientas, di a la gobernanza lo que funciona en la práctica y ayuda a rediseñar las puertas que solo añaden retraso. Participa en las revisiones de riesgos con datos reales de incidentes.

### Liderazgo y gobernanza

Los líderes fijan la dirección, los límites y la responsabilidad, y deciden qué riesgos aceptar. Pide vistas de riesgo en lenguaje llano y evidencia, no volumen de documentos. Está dispuesto a sustituir una puerta por una barandilla cuando el propósito pueda cumplirse. Mantén el papel del comité centrado en la coordinación y en compromisos reales.

### Clientes y usuarios

Los clientes y usuarios confían en que la organización trate debidamente sus datos y su dinero. Pregunta a los proveedores qué normas y reglas siguen y cómo lo demuestran. Espera información honesta tras un fallo. Si tienes requisitos especiales, como la regla de un regulador, díselo pronto al proveedor.

## Fallos frecuentes

- **La gobernanza como puerta final.** Las revisiones llegan al final y lo ralentizan todo. En su lugar, integra barandillas en el trabajo y revisa según el riesgo.
- **Documentos como evidencia.** Los informes se escriben para el auditor. En su lugar, produce evidencia a partir de las herramientas usadas en el trabajo.
- **Una sola vía para todo cambio.** Los cambios rutinarios esperan con los arriesgados. En su lugar, clasifica por riesgo.
- **Un registro de riesgos que nadie lee.** Se convierte en una lista larga. En su lugar, mantenlo breve, con responsable y revisado.
- **Tratar la transferencia de riesgo como eliminación del riesgo.** Se supone que el seguro o la externalización acaban con la responsabilidad. En su lugar, recuerda que la parte original suele conservar la responsabilidad.
- **Reglas desconocidas.** Los equipos no saben qué leyes y normas se aplican. En su lugar, obtén la lista y el texto de jurídico o cumplimiento.
- **Un control añadido tras cada incidente.** El proceso crece y baja la velocidad. En su lugar, busca la causa y corrígela con pruebas, cambios más pequeños o recuperación más rápida.
- **El cumplimiento como castigo.** Dominan las multas y el miedo. En su lugar, explica el propósito de las reglas y haz que el camino seguro sea el fácil.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Gobernanza y derechos de decisión | Las decisiones siguen la costumbre y la jerarquía | Algunos equipos tienen límites escritos | Los derechos de decisión, los límites y los responsables están escritos y compartidos | La eficacia de la gobernanza se revisa frente a los resultados | La gobernanza se alinea entre equipos, proveedores y socios |
| Gestión de riesgos | Los riesgos se discuten de manera informal | Algunos servicios tienen listas de riesgos | Registros de riesgos breves, con responsable y tratamientos, se revisan con regularidad | Las medidas y los sucesos de riesgo informan la evaluación y el tratamiento | Las vistas de riesgo se comparten y se consolidan en toda la organización |
| Cumplimiento y evidencia | La evidencia se reúne para las auditorías | Algo de evidencia la producen las herramientas | Las reglas aplicables están listadas; los controles se mapean una vez; la evidencia viene de las herramientas | Se miden el funcionamiento de los controles y la calidad de la evidencia | La evidencia se comparte continuamente con auditores y socios |
| Barandillas y vías de cambio | Los controles son puertas manuales | Existen algunas comprobaciones automatizadas | Las vías basadas en el riesgo y las barandillas de la canalización son estándar | La eficacia de las barandillas y los bloqueos falsos se siguen y se ajustan | Las barandillas se comparten y se mejoran entre equipos |

## Lista de verificación

- [ ] Los derechos de decisión y los límites están escritos para cada equipo o servicio.
- [ ] Cada servicio importante tiene un registro de riesgos breve con responsables, tratamientos y fechas de revisión.
- [ ] Tenemos una lista de las leyes, normas y contratos aplicables a cada servicio, con el texto de la fuente.
- [ ] Nuestros controles se describen una vez y se mapean a cada requisito.
- [ ] La canalización registra revisiones, pruebas y despliegues como evidencia.
- [ ] Los auditores han dicho qué evidencia aceptan en lugar de firmas.
- [ ] Los cambios rutinarios y los arriesgados siguen vías distintas con criterios claros.
- [ ] Cada aprobación tiene un propósito declarado y se revisan las aprobaciones que nunca rechazan.
- [ ] Los controles añadidos tras incidentes se revisan por su efecto.
- [ ] Alguien sigue los cambios en las reglas aplicables y los comunica.

## Prompts de IA

**Propósito: convertir una cadena de aprobación en opciones de barandilla.**

```text
Esta es una cadena de aprobación que usamos para [tipo de cambio o compra]: [enumera cada aprobación, quién la da, qué comprueba, cuánto tarda y cuántas veces ha rechazado algo en el último año (usa cifras reales o escribe "desconocido")].
Reglas que sabemos que exigen parte de ella, con el texto de la fuente: [pega, o escribe "ninguna conocida"].

Para cada aprobación, indica el propósito lo mejor que puedas a partir del texto, sugiere qué evidencia o comprobación automatizada podría cumplir el mismo propósito y di qué riesgo quedaría. No elimines nada exigido por las reglas pegadas. No afirmes que una ley o norma exige algo a menos que haya pegado su texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: redactar una entrada del registro de riesgos.**

```text
Ayúdame a escribir una entrada del registro de riesgos para [servicio].

El riesgo, en mis palabras: [describe].
Qué podría causarlo y qué podría resultar: [describe].
Qué controles existen: [enumera].
Lo que sé sobre la probabilidad y el impacto (solo hechos): [pega, o escribe "desconocido"].

Produce una entrada con: un enunciado claro ("Si … entonces … con el resultado de …"), causas, consecuencias, controles existentes, una opción de tratamiento propuesta (evitar, reducir, repartir o retener) con su razonamiento, un rol de responsable sugerido y un marcador para la fecha de revisión. No inventes probabilidades ni números. Señala las suposiciones. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: enumerar la evidencia que ya producen tus herramientas para un control.**

```text
Un auditor nos preguntará por este control: [describe el control y cómo se describe en el requisito; pega el texto].

Nuestras herramientas y registros de la actividad: [enumera control de versiones, canalización, tickets, monitorización y qué registra cada uno].
Cómo funciona la actividad: [describe].

Haz una tabla de qué evidencia produce cada herramienta para el control, dónde se almacena, quién puede alterarla y las lagunas. Sugiere tres maneras ligeras de cerrar las lagunas. No afirmes que el requisito exige nada más allá del texto pegado. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: preparar una conversación de gobernanza entre equipos de entrega y auditoría.**

```text
Planifica una conversación de 60 minutos entre [número] miembros de equipos de entrega y [número] colegas de auditoría o gobernanza sobre cómo demuestra control un equipo ágil.

Preocupaciones de auditoría, en sus palabras: [pega].
Preocupaciones de los equipos, en sus palabras: [pega].
Evidencia que los equipos producen hoy: [enumera].

Da una agenda con tiempos, preguntas para cada parte, una plantilla para registrar qué evidencia es aceptable para cada control y un paso final que registre acciones con responsables y fechas. Mantenlo libre de cualquier herramienta concreta. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [risk-register](../../../../skills/risk-register/SKILL.md): úsala para registrar y revisar riesgos, tratamientos y responsables.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md): úsala para llevar un registro ligero de riesgos, acciones, problemas y decisiones.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): úsala para elegir medidas de alerta temprana de los riesgos.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): úsala para prepararte para las auditorías y organizar la evidencia.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): úsala para hacer explícitos los derechos de decisión y las responsabilidades.

## Fuentes principales

- **Governance, risk management, and compliance** (Wikipedia): una breve visión general del GRC, sus componentes y su historia.
- **Risk management** (Wikipedia): la definición, las opciones de tratamiento y las salvedades sobre la evaluación de riesgos.
- **Regulatory compliance** (Wikipedia): la definición, los regímenes nombrados y las críticas.
- **Streamlining change approval** (DORA, dora.dev): orientación basada en investigación sobre sustituir la aprobación pesada por revisión por pares y automatización.

## Referencias

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes–Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
