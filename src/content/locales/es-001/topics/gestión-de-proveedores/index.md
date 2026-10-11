# Gestión de Proveedores

**La gestión de proveedores se asegura de que las partes externas de las que depende un servicio se elijan con cuidado, se atengan a expectativas claras y se traten como parte del servicio, porque una promesa a tus clientes solo es tan fuerte como las promesas que hay detrás.**

## Por qué importa

Casi ningún servicio moderno lo construye y lo opera un solo equipo. Depende de plataformas de nube, proveedores de software, procesadores de pagos, operadores de red, contratistas y socios especializados. Cuando uno de ellos falla, el cliente no distingue entre tu fallo y el suyo. Su caída es la tuya, y también lo es el trabajo de explicarla.

Los equipos ágiles recurren a proveedores con facilidad: una tarjeta de crédito, unas líneas de configuración y una capacidad nueva está en marcha. Esa velocidad es valiosa y crea una brecha. Puede que nadie haya preguntado qué pasa si el servicio del proveedor se degrada, cambia sus condiciones o cierra. Puede que nadie sepa quién es el responsable de la relación. La gestión de proveedores es la práctica de cerrar esa brecha en proporción al riesgo, sin convertir cada compra en un proyecto.

El [artículo de Wikipedia sobre la gestión de la relación con los proveedores](https://en.wikipedia.org/wiki/Supplier_relationship_management) describe la evaluación sistemática y de toda la empresa de las fortalezas, el desempeño y las capacidades de los proveedores, alineada con la estrategia del negocio, y señala que sus fuentes son escasas y antiguas, con varias referencias de 2009 a 2012. El [artículo sobre integración y gestión de servicios](https://en.wikipedia.org/wiki/Service_integration_and_management) describe un enfoque para las organizaciones que usan varios proveedores. Este tema los combina con los otros temas de la guía y con la práctica común en la gestión de servicios, y dice cuándo hace lo segundo.

## Conceptos clave

### Gestión de la relación con los proveedores

Según Wikipedia, la gestión de la relación con los proveedores (SRM) coordina las interacciones con los proveedores a lo largo del ciclo de vida de la relación, con el objetivo de construir asociaciones bidireccionales con los proveedores estratégicos, de manera análoga a la gestión de la relación con los clientes. El artículo hace varias observaciones útiles para los equipos de servicio:

- **Segmenta a los proveedores.** Los proveedores se segmentan por su valor potencial total en varias dimensiones, no solo por el gasto, y por el grado de riesgo que afecta a ese valor. El artículo critica un enfoque de "talla única".
- **Mide el desempeño en ambos sentidos.** Las organizaciones usan cuadros de mando equilibrados conjuntos y bidireccionales con medidas cuantitativas y cualitativas, y algunas usan cuadros de mando de 360 grados que también encuestan a los proveedores.
- **Colabora.** Las actividades conjuntas incluyen cumbres de proveedores, reuniones ejecutivas, planificación conjunta del negocio, revisiones operativas y pronóstico conjunto de la demanda. El artículo afirma que el pronóstico conjunto y la reingeniería de procesos han liberado ahorros del 10 al 30 por ciento para organizaciones líderes, pero el artículo lleva etiquetas de mantenimiento por redacción débil y citas que faltan, así que trata la cifra como una afirmación y no como un hallazgo.

### Por qué importa la segmentación

No puedes gestionar de cerca a todos los proveedores. Una segmentación útil hace dos preguntas: cuánto depende el servicio de este proveedor y cuán difícil sería sustituirlo. A continuación hay una cuadrícula aproximada.

| Dependencia y sustituibilidad | Ejemplos | Enfoque |
|---|---|---|
| **Crítico y difícil de sustituir** | La plataforma de nube, el procesador de pagos | Relación estrecha: responsable con nombre, revisiones periódicas, planificación conjunta, planes de salida y de continuidad |
| **Importante pero sustituible** | Una herramienta de monitorización, un servicio de mensajería | Revisión periódica, niveles de servicio claros y un plan para cambiar si hace falta |
| **Rutinario y fácil de sustituir** | Material de oficina, una biblioteca menor | Contrato ligero y comprobación periódica |

La cuadrícula es una ilustración de esta guía, no procede de una fuente.

### Desempeño del proveedor y el servicio que prometes

Tus niveles de servicio dependen de los de tus proveedores (véase Tema 3.7 — Gestión de Niveles de Servicio). Si prometes una disponibilidad del 99,9 % y tu único proveedor de nube promete menos, la aritmética no cuadra. La gestión de proveedores incluye comparar lo que los proveedores se han comprometido a ofrecer con lo que tú has prometido y diseñar en torno a la diferencia con redundancia o ajustando tu propia promesa.

En el vocabulario de ITIL, un acuerdo con un proveedor externo que respalda un acuerdo de nivel de servicio se llama contrato de respaldo, y un acuerdo entre equipos internos que lo respalda se llama acuerdo de nivel operativo. Las fuentes leídas para esta guía no los definen, así que consulta las publicaciones de ITIL para los términos exactos.

### Entornos multiproveedor y SIAM

El artículo sobre la integración y gestión de servicios (SIAM) describe un enfoque para gestionar varios proveedores e integrarlos en un único servicio de cara al negocio. Señala que las organizaciones obtienen cada vez más capacidades de TI de varios proveedores externos, un modelo llamado multiabastecimiento, que puede reducir costes y fomentar la competencia pero añade sobrecarga de gestión y dificulta la gestión de servicios de extremo a extremo. Un **integrador de servicios** proporciona gobernanza y coordinación para que los proveedores trabajen juntos.

El artículo enumera cuatro modelos para el integrador (interno, proveedor principal, externo e híbrido) y tres capas: la organización cliente, el integrador de servicios y los proveedores de servicios. Dice que SIAM se originó hacia 2005 en el sector público del Reino Unido, diseñado primero para el Department for Work and Pensions, y enumera hitos que incluyen un cuerpo de conocimiento en 2016 y revisiones en 2019 para COBIT 2019 e ITIL 4. Señala que ITIL proporciona una base y un lenguaje común para trabajar con proveedores pero no aborda a fondo los entornos multiproveedor. Las dificultades de implantación que enumera incluyen acuerdos de nivel de servicio desalineados, proveedores que se echan las culpas, titularidad poco clara de las decisiones sobre la causa raíz y lagunas de comunicación.

Pocos equipos ágiles necesitan un SIAM formal, pero las lecciones son útiles: cuando varias partes contribuyen a un servicio, alguien debe ser responsable del conjunto, acordar cómo se gestionan los problemas a través de las fronteras y mantener coherentes entre sí los niveles de servicio de los proveedores.

### Contratos y agilidad

Los contratos pueden ayudar o estorbar al trabajo ágil. Los contratos de alcance fijo y precio fijo encajan mal con aprender sobre la marcha (véase Tema 1.1 — Manifiesto Ágil sobre la colaboración con el cliente sobre la negociación contractual). Los acuerdos que permiten el cambio, con maneras claras de ajustar el alcance y medir el valor, encajan mejor. Un contrato debe cubrir además lo que le importa a la gestión de servicios: niveles de servicio, horario de soporte, gestión de incidentes, protección de datos, obligaciones de seguridad, derechos de auditoría, salida y continuidad. Tus colegas de jurídico y compras deben liderar los términos legales.

### Riesgo

Los proveedores traen riesgos: fallo, cambio de condiciones o de precio, debilidades de seguridad, concentración en un solo proveedor, dependencia tecnológica (lock-in) y las dependencias del propio proveedor. El artículo sobre SRM enumera la reducción del riesgo de fallo como objetivo sin describir métodos. Las medidas prácticas incluyen conocer los arreglos de continuidad del propio proveedor, repartir las dependencias críticas, mantener portátiles los datos y ensayar la salida (véase Tema 3.12 — Gestión de la Continuidad del Servicio y Tema 3.13 — Gestión de la Seguridad de la Información).

### Relación, no solo contrato

El artículo sobre SRM subraya las asociaciones bidireccionales. Los proveedores que entienden tus planes pueden ayudar; los proveedores tratados solo como fuentes de facturas no lo harán. Comparte pronósticos, involúcralos en las revisiones de incidentes que les conciernan y escucha sus comentarios sobre tu comportamiento, como los pagos tardíos o las peticiones poco claras.

### Límites de las fuentes

El artículo sobre SRM no da criterios de selección, cláusulas contractuales ni calendarios de implantación. El artículo sobre SIAM no tiene sección de críticas. Ambos son generales. Para los términos legales y financieros, confía en tus funciones de compras y jurídica y en el propio contrato.

## Buenas prácticas

1. **Enumera tus proveedores y de qué dependes de ellos.** Incluye nube, software, red, pagos y contratistas. De cada uno, anota qué servicio apoya y quién en tu equipo es responsable de la relación.
2. **Segmenta por dependencia y sustituibilidad.** Decide cuáles pocos proveedores son críticos e invierte ahí tu atención. Mantén un trato ligero con el resto.
3. **Nombra un responsable para cada proveedor importante.** Una persona debería conocer el contrato, los contactos, el desempeño y los planes. Sin responsable, las relaciones se deterioran.
4. **Comprueba que los compromisos de los proveedores respaldan tus promesas.** Compara lo que se ha comprometido cada proveedor crítico con lo que has dicho a los clientes. Cierra la diferencia por diseño, por negociación o cambiando tu promesa.
5. **Acuerda de antemano la gestión de incidentes.** Sabe cómo notificar un problema al proveedor, con qué rapidez responde, quién puede escalar y cómo se comunicará. Prueba la vía antes de necesitarla.
6. **Incluye la seguridad y la protección de datos.** Pregunta a los proveedores cómo protegen tu información y qué te dirán tras una brecha. Ponlo en el contrato, con el equipo jurídico.
7. **Planifica la salida y el fallo.** Para los proveedores críticos, mantén portátiles los datos, conoce las alternativas y escribe un plan breve para el fallo del proveedor o tu salida. Ensaya la parte que puedas.
8. **Revisa el desempeño conjuntamente.** Celebra revisiones periódicas con los proveedores críticos, comparte datos en ambos sentidos y acordad acciones. Pregunta al proveedor cómo podrías ser mejor cliente.
9. **Incluye a los proveedores en el aprendizaje.** Invítalos a las revisiones de incidentes y a las sesiones de planificación que les afecten. Comparte las lecciones que les ayuden a ayudarte.
10. **Haz flexibles los contratos donde se espera aprender.** Para el trabajo de desarrollo, prefiere acuerdos que permitan que el alcance cambie, con puntos de revisión claros, a promesas de alcance fijo. Mantén firmes las obligaciones del servicio.
11. **Usa un integrador cuando contribuyan muchos proveedores.** Para un servicio que depende de varios proveedores, nombra quién es responsable del resultado de extremo a extremo y cómo se resuelven los problemas entre proveedores. No lo dejes al cliente.
12. **Revisa con regularidad la cartera de proveedores.** Una vez al año, comprueba qué proveedores siguen siendo necesarios, cuáles son riesgos concentrados y cuáles son más baratos o mejores en otro lugar.

## Preguntas para conversar con tu equipo

**¿Qué proveedores podrían detener nuestro servicio si fallaran y qué haríamos?**

Pide a cada persona que nombre las dependencias que más le preocuparían. Reúne la lista y marca cada una como crítica, importante o rutinaria. De cada una crítica, pregunta qué haría el equipo en la primera hora de un fallo. Las respuestas típicas revelan lagunas en contactos, alternativas y datos. Elige una para la que planificar.

**¿Qué nos han prometido nuestros proveedores y qué hemos prometido nosotros a nuestros clientes?**

Pon las dos cosas una al lado de la otra para un servicio clave. Donde la promesa del proveedor es más débil, la promesa al cliente está en riesgo. Quien facilite puede preguntar si alguien ha leído recientemente los niveles de servicio del proveedor. Acordad una laguna que cerrar.

**¿Quién es responsable de cada relación importante con un proveedor?**

Recorre la lista y nombra un responsable para cada uno. Las lagunas son comunes: la persona que firmó el contrato se fue, o una herramienta se compró con tarjeta y nadie la gestiona. Pregunta qué necesitaría el responsable para hacer el trabajo, como tiempo y un contacto. Asigna responsables donde falten.

**¿Cómo nos enteramos de un problema de un proveedor y cómo se lo decimos a nuestros usuarios?**

Sigue la última vez que un proveedor tuvo una caída. Pregunta cómo te enteraste, cuánto tardó y qué dijiste a los clientes. Discute páginas de estado, contactos y canales acordados. Planifica una mejora, como una suscripción al canal de estado del proveedor o un contacto de escalamiento con nombre.

**¿Qué haría falta para dejar a este proveedor y querríamos hacerlo alguna vez?**

Para un proveedor crítico, pregunta por la exportación de datos, los productos alternativos y los términos del contrato. Los equipos suelen descubrir una dependencia que no pretendían. Discute cómo reducirla donde el riesgo justifique el coste. Registra una nota breve de salida.

**¿Saben nuestros proveedores lo que planificamos y sabemos nosotros lo que planifican ellos?**

Pregunta cuándo oyó cada proveedor crítico por última vez hablar de tus planes y cuándo oíste tú los suyos. Las sorpresas en cualquier dirección causan problemas. Discute una conversación periódica. Acordad un proveedor con el que empezar.

## En la práctica: un ejemplo de ITIL ágil

Una emisora regional opera una aplicación y un sitio web de noticias con un equipo de catorce personas. El servicio depende de un proveedor de nube, una red de distribución de contenidos, un servicio de notificaciones push, una herramienta de moderación de comentarios y una pequeña empresa que suministra un widget de crónica en directo. Cuando el servicio del proveedor de la crónica en directo falló durante la noche electoral, la aplicación mostró errores durante dos horas y la reputación de la emisora se resintió. Nadie del equipo supo decir quién era el contacto del proveedor; el widget lo había añadido un desarrollador que ya se había ido a otro puesto.

El jefe de plataforma dirige una revisión. El equipo enumera todos los proveedores, clasificándolos por cuánto depende el servicio de ellos y con qué facilidad podría sustituirse cada uno. El proveedor de nube y la red de distribución de contenidos son críticos, y el servicio de notificaciones y el widget son importantes pero sustituibles. Cada uno recibe un responsable en el equipo. Para el proveedor del widget, el equipo obtiene contactos, lee las condiciones y descubre que no promete ningún nivel de servicio. Deciden conservar al proveedor pero añadir una alternativa: si el widget no carga, la página muestra un enlace estático a la crónica en directo. Para el proveedor de nube, comparan sus compromisos con la disponibilidad que han prometido a los editores de la emisora y descubren una diferencia en una región, que cierran repartiendo el servicio entre dos.

Seis meses después, una segunda caída en el proveedor de notificaciones es detectada por la monitorización en minutos, el responsable lo plantea al proveedor por la vía acordada y la aplicación sigue funcionando con notificaciones retrasadas. Quedan dificultades. Los editores quieren que el widget de la crónica en directo haga más, pero el proveedor es demasiado pequeño para comprometerse con un nivel de servicio, y las normas de compras de la emisora hacen lenta una sustitución. El jefe de plataforma acuerda con compras ejecutar una pequeña prueba con una alternativa y revisar anualmente la lista de proveedores.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega eligen e integran muchos proveedores. Registra cada dependencia cuando la añadas, nombra un responsable y pregunta por los niveles de servicio y la salida antes de depender de ella. Construye alternativas para los fallos que puedas imaginar.

### Equipos de servicio y operaciones

Los equipos de operaciones tratan con los proveedores en los incidentes. Mantén al día los contactos y las vías de escalamiento, pruébalos y registra el desempeño de los proveedores. Lleva esta evidencia a las revisiones y a compras.

### Liderazgo y gobernanza

Los líderes y compras dan forma a los términos y a la relación. Pide una lista de proveedores críticos y sus riesgos, apoya contratos flexibles para el trabajo basado en el aprendizaje y asegúrate de que el contrato cubra niveles de servicio, seguridad y salida. Pregunta quién es responsable del resultado de extremo a extremo cuando contribuyen muchos proveedores.

### Clientes y usuarios

Los clientes y usuarios dependen de toda la cadena, no de un eslabón. Pregunta a los proveedores qué proveedores importan para el servicio que usas y cómo lo protegen. Cuando algo vaya mal, espera honestidad sobre qué parte falló y qué se está haciendo.

## Fallos frecuentes

- **Dependencias ocultas.** Una herramienta añadida por un desarrollador se vuelve crítica y nadie es responsable de ella. En su lugar, registra cada dependencia y nombra un responsable.
- **Talla única.** Todos los proveedores reciben el mismo proceso pesado, o ninguno. En su lugar, segmenta por dependencia y sustituibilidad.
- **Promesas que no cuadran.** La promesa al cliente es más fuerte que la del proveedor. En su lugar, compara los compromisos y cierra la diferencia.
- **Sin vía probada.** La línea de soporte del proveedor se encuentra durante una caída. En su lugar, acuerda y prueba de antemano los contactos y el escalamiento.
- **Dependencia tecnológica por accidente.** Los datos no pueden exportarse. En su lugar, comprueba pronto la portabilidad y registra una nota de salida.
- **Solo contrato, sin relación.** El proveedor es un desconocido cuando llegan los problemas. En su lugar, celebra revisiones periódicas y comparte los planes.
- **Nadie es responsable del conjunto.** Varios proveedores se echan las culpas. En su lugar, nombra un integrador para el servicio de extremo a extremo y acuerda el tratamiento entre proveedores.
- **Contratos de alcance fijo para trabajo incierto.** El contrato pelea contra el aprendizaje. En su lugar, usa acuerdos que dejen cambiar el alcance dentro de límites claros.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Conocer a los proveedores | Los proveedores los conocen individuos | Algunos equipos enumeran sus proveedores | Una lista compartida con dependencia, sustituibilidad y responsables | La lista se revisa frente a los incidentes y los cambios | La lista se comparte entre equipos y se vincula con los servicios |
| Compromisos y servicio | Los niveles de servicio de los proveedores se desconocen | Se leen los términos de los proveedores clave | Los compromisos de los proveedores se comparan con las promesas a los clientes | El desempeño de los proveedores se mide y se revisa | Los compromisos se alinean a lo largo de la cadena con revisión conjunta |
| Incidentes y riesgo | Los problemas de los proveedores se descubren por casualidad | Se conocen algunos contactos | Las vías de escalamiento se acuerdan y se prueban; los riesgos se registran | Los incidentes y riesgos de los proveedores se siguen y se actúa sobre ellos | La gestión de incidentes y los planes de riesgo son conjuntos con los proveedores |
| Relación y salida | Los proveedores son transaccionales | Algunas reuniones con proveedores | Revisiones periódicas con los proveedores críticos y notas breves de salida | Se revisan la salud de la relación y la preparación de la salida | Los proveedores participan en la planificación y la mejora |

## Lista de verificación

- [ ] Tenemos una lista de proveedores y de lo que apoya cada uno.
- [ ] Los proveedores están clasificados por dependencia y sustituibilidad.
- [ ] Cada proveedor importante tiene un responsable con nombre.
- [ ] Hemos comparado los compromisos de los proveedores con nuestras promesas a los clientes para los servicios clave.
- [ ] Los contactos y vías de escalamiento de los proveedores críticos son conocidos y están probados.
- [ ] Las expectativas de seguridad y protección de datos están en el contrato o acordadas por escrito.
- [ ] Existe una nota breve de salida o de fallo para cada proveedor crítico.
- [ ] Celebramos revisiones periódicas con los proveedores críticos.
- [ ] Cuando contribuyen varios proveedores, alguien es responsable del resultado de extremo a extremo.
- [ ] La lista de proveedores se revisa al menos una vez al año.

## Prompts de IA

**Propósito: construir una lista de proveedores y dependencias a partir de lo que sabes.**

```text
Ayúdame a construir una lista de proveedores y dependencias para [servicio].

Qué hace el servicio y sobre qué está construido: [describe componentes, servicios en la nube, herramientas y contratistas].
Lo que sé de cada uno: [por ejemplo nombre, para qué lo usamos, quién lo configuró, estado del contrato].

Produce una tabla con: proveedor, qué apoya, quién es responsable de la relación (o "desconocido"), cuán crítico parece (crítico, importante, rutinario, con una razón tomada de mi texto) y una pregunta que hacer. Marca las conjeturas. No inventes proveedores ni términos. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: comparar los compromisos de los proveedores con tus promesas a los clientes.**

```text
Estos son los compromisos que hemos asumido con los clientes para [servicio]: [pega, por ejemplo disponibilidad y tiempo de respuesta].
Estos son los compromisos que han asumido nuestros proveedores, con la redacción exacta de sus condiciones: [pega para cada proveedor].

Compáralos. Para cada compromiso con el cliente, enumera de qué proveedores depende, si los compromisos de ellos parecen respaldar los nuestros (usando solo el texto pegado) y qué lagunas hay. Sugiere cambios de diseño o de acuerdo como preguntas que considerar. No interpretes términos legales; señala todo lo ambiguo para revisión jurídica. Enumera de lo que no estés seguro.
```

**Propósito: prepararte para una reunión de revisión con un proveedor.**

```text
Planifica una revisión de 45 minutos con [proveedor] sobre [servicio que nos proporciona].

Datos que tenemos: [incidentes en los que intervino, tiempos de respuesta, solicitudes, con fechas; solo datos reales].
Preocupaciones que queremos plantear: [enumera].
Cosas que queremos preguntar sobre sus planes: [enumera].
Cosas que ellos pueden querer de nosotros: [enumera, o escribe "desconocido"].

Da una agenda con tiempos, un resumen de una página de nuestros datos, cinco preguntas para ellos, tres cosas que deberíamos ofrecer y un paso final que registre las acciones con responsables y fechas. No inventes datos. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: redactar una nota breve de salida para un proveedor crítico.**

```text
Ayúdame a redactar una nota de salida para [proveedor], que proporciona [servicio].

Qué guardamos con ellos o a través de ellos y cómo podríamos exportarlo: [describe].
Alternativas que conocemos: [enumera, o escribe "desconocido"].
Términos del contrato sobre el preaviso y la devolución de datos, si se conocen (pega el texto exacto): [pega, o escribe "no leído"].

Escribe una nota de una página con: qué depende de ellos, qué necesitaríamos para irnos (datos, configuración, habilidades), una secuencia aproximada de pasos (deja los plazos como [por estimar]), riesgos y preguntas para hacer al proveedor. No interpretes el contrato. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [vendor-management](../../../../skills/vendor-management/SKILL.md): úsala para planificar la selección, la revisión y la relación con un proveedor.
- [risk-register](../../../../skills/risk-register/SKILL.md): úsala para registrar los riesgos de los proveedores y cómo se gestionan.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): úsala para entender quién en tu organización y en la del proveedor importa para la relación.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): úsala para comprobar que los compromisos de los proveedores respaldan lo que prometes.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): úsala para dejar claro quién es responsable de cada relación con un proveedor y quién es consultado.

## Fuentes principales

- **Supplier relationship management** (Wikipedia): una visión general de la segmentación, los cuadros de mando y la colaboración con los proveedores, con etiquetas de mantenimiento que muestran dónde las fuentes son débiles.
- **Service integration and management** (Wikipedia): el enfoque multiproveedor, con sus capas, modelos y dificultades de implantación.
- **Service-level agreement** (Wikipedia): contexto sobre los acuerdos que firman proveedores y clientes.
- **ITIL** (Wikipedia): contexto sobre cómo trata ITIL a los proveedores.

## Referencias

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
