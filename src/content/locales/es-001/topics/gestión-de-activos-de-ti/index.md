# Gestión de Activos de TI

**La gestión de activos de TI hace el seguimiento del hardware, el software y los recursos relacionados que una organización posee o paga, desde la compra hasta la baja, de modo que las decisiones sobre coste, riesgo y soporte se basen en hechos y no en conjeturas.**

## Por qué importa

Pregunta a la mayoría de las organizaciones cuántos portátiles, servidores, cuentas de nube y licencias de software tienen, y la primera respuesta es una conjetura. La segunda, tras una búsqueda, suele ser distinta. Esa diferencia tiene costes. Se compran licencias que nadie usa, o se usan sin comprarse. El hardware antiguo permanece en la red sin parchear. El personal que se va conserva acceso a sistemas que nadie recordó retirar. Un centro de servicios no puede dar soporte a equipos cuya existencia desconoce.

La gestión de activos de TI (ITAM) es la práctica de cerrar esa brecha. Está estrechamente ligada a la gestión de servicios: los servicios se ejecutan sobre activos, los incidentes y los cambios tocan activos, y el coste de un servicio es en gran parte el coste de sus activos. Para los equipos ágiles, la práctica tiene un giro particular. Los activos incluyen ahora recursos de nube creados por un script en segundos y destruidos minutos después, imágenes de contenedores, bibliotecas de código abierto y suscripciones compradas con tarjeta. El viejo modelo de una hoja de cálculo de equipos comprados no los capta.

El artículo de la Wikipedia en inglés titulado "IT asset management" redirige actualmente a su artículo sobre la gestión de centros de datos, donde ITAM aparece como una sección. Esa sección describe ITAM como prácticas de negocio que unen las funciones financieras, contractuales y de inventario para apoyar la gestión del ciclo de vida y las decisiones estratégicas de TI, y es breve. Este tema la usa para la definición, añade los detalles de los artículos sobre la gestión de activos de software y las bases de datos de gestión de la configuración, y sitúa la práctica en el entorno ágil. Donde va más allá de las fuentes, lo dice.

## Conceptos clave

### Qué es

Según la sección de Wikipedia sobre la gestión de activos de centros de datos, que cita a Gartner, ITAM es un conjunto de prácticas de negocio que unen las funciones financieras, contractuales y de inventario para apoyar la gestión del ciclo de vida y las decisiones estratégicas de TI. Los activos incluyen el software y el hardware del entorno de negocio. La práctica también se llama gestión de inventario. El artículo señala que la práctica usa el descubrimiento automatizado para poder comparar el inventario con los derechos de licencia, y que una gestión completa necesita un repositorio de varios tipos de información, integrado con los sistemas de cadena de suministro, centro de ayuda, compras, recursos humanos e ITSM.

### Qué cuenta como activo

Una lista de trabajo útil para una organización de servicios:

| Tipo de activo | Ejemplos | Tratado en |
|---|---|---|
| **Hardware** | Portátiles, servidores, dispositivos de red, teléfonos, almacenamiento | Tema 4.3 — Gestión de Activos de Hardware |
| **Software** | Aplicaciones con licencia, sistemas operativos, componentes de código abierto, suscripciones | Tema 4.2 — Gestión de Activos de Software |
| **Recursos de nube y de servicio** | Máquinas virtuales, contenedores, depósitos de almacenamiento, cuentas SaaS | Tema 4.2 — Gestión de Activos de Software y Tema 4.5 — Gestión Financiera de TI y FinOps |
| **Datos e información** | Conjuntos de datos, registros, copias de seguridad | Tema 3.13 — Gestión de la Seguridad de la Información |
| **Contratos y derechos** | Licencias, acuerdos de soporte, garantías | Tema 4.2 — Gestión de Activos de Software y Tema 3.14 — Gestión de Proveedores |
| **Personas y habilidades** | Personal y capacidades (normalmente no figuran en el registro de activos, pero forman parte del servicio) | Tema 2.5 — Cuatro Dimensiones de la Gestión de Servicios |

La tabla es la lista de trabajo de esta guía, no una clasificación de una fuente.

### Ciclo de vida

La sección de Wikipedia describe la gestión de activos de hardware como la que cubre los componentes físicos de ordenadores y de red desde la adquisición hasta la baja, con prácticas enumeradas de solicitud y aprobación, compras, gestión del ciclo de vida, reasignación y baja, y dice que captar la información financiera del ciclo de vida del hardware es un componente clave. No da un modelo formal de etapas. Una secuencia práctica común, de uso amplio y ofrecida aquí como tal, es:

1. **Planificar y solicitar:** decidir qué se necesita y obtener la aprobación.
2. **Adquirir:** comprar o construir y registrar la compra.
3. **Desplegar:** poner en servicio y vincular al usuario o al servicio.
4. **Operar y mantener:** parchear, dar soporte, trasladar y seguir los cambios.
5. **Retirar y dar de baja:** retirar del servicio, borrar los datos y desechar con seguridad.

En cada etapa, pregunta quién es responsable y qué registro se conserva.

### Inventario, descubrimiento y registros

Un registro de activos solo es útil si es veraz. El artículo señala que el descubrimiento automatizado apoya la comparación del inventario con los derechos. Las herramientas de descubrimiento escanean redes y cuentas de nube para encontrar lo que existe, y el registro anota lo que la organización pretende poseer y pagar. Las diferencias entre ambos son hallazgos: dispositivos desconocidos, licencias sin uso, suscripciones no aprobadas.

### Relación con ITSM y la CMDB

La sección de Wikipedia dice que ITAM se integra con ITSM pero no lo relaciona con los procesos de ITIL en detalle. Las descripciones de ITIL suelen distinguir la gestión de activos, que se ocupa de la titularidad, el coste y los contratos, de la gestión de la configuración, que se ocupa de las relaciones entre componentes. Una **base de datos de gestión de la configuración (CMDB)**, según Wikipedia, es un término de ITIL para una base de datos que almacena información sobre activos de hardware y software, llamados elementos de configuración, y las relaciones entre ellos (véase Tema 4.4 — Gestión de la Configuración). Los registros de activos y los de configuración se solapan; muchas organizaciones federan los datos para que cada fuente conserve el control de los suyos.

### Normas

La sección de Wikipedia nombra ISO/IEC 19770 como la familia de normas para la gestión de activos de software sin describir sus partes. El artículo sobre la gestión de activos de software enumera las partes: 19770-1:2017 sobre los requisitos del sistema de gestión de activos de TI, un marco de procesos que puede implantarse por niveles; 19770-2:2015 sobre etiquetas de identificación de software; 19770-3:2016 sobre la gestión de derechos; 19770-4:2017 sobre la medición del uso de recursos; y 19770-5:2015 sobre la visión general y el vocabulario. Consulta las propias normas para la redacción exacta y las ediciones vigentes.

### Beneficios y límites

La sección de Wikipedia no enumera beneficios ni críticas y no nombra herramientas. Se afirman ampliamente beneficios prácticos, como un menor coste de licencias, un menor riesgo de seguridad y un mejor soporte, pero esta guía no tiene evidencia medida de ellos en las fuentes leídas. Trata con cuidado las afirmaciones de ahorro, pide a quienes las hacen su evidencia y mide la tuya.

### ITAM en un entorno ágil y de nube

Las prácticas de décadas anteriores suponen que los activos los compra, entrega e instala TI. Hoy:

- **Los equipos crean recursos por sí mismos,** en consolas de nube o mediante código. El registro debe enterarse de ellos por la cuenta de nube, no por una orden de compra.
- **Los activos son de corta vida.** Un contenedor puede durar una hora. Sigue el servicio y la cuenta, no cada instancia.
- **Las suscripciones sustituyen a las licencias.** El software se paga mensualmente con la tarjeta de alguien y la titularidad no está clara.
- **Los componentes de código abierto** entran a través del código, fuera del sistema de compras (véase Tema 4.2 — Gestión de Activos de Software).

Estos cambios empujan a ITAM hacia la automatización, el etiquetado y la responsabilidad compartida entre TI y los equipos que usan los activos.

## Buenas prácticas

1. **Empieza por lo que más importa.** Elige primero los activos de mayor coste o riesgo: licencias caras, servidores expuestos a internet, dispositivos con datos sensibles. Un registro completo puede venir después.
2. **Define qué es un activo para tus fines.** Escribe una lista breve de los tipos de activo que seguirás y los datos que necesitas de cada uno: responsable, ubicación o cuenta, coste, contrato y estado. Evita los campos que nadie usará.
3. **Nombra un responsable para cada activo.** Una persona o equipo debe responder de cada activo o grupo de activos. Los activos sin responsable son donde se acumulan el desperdicio y el riesgo.
4. **Usa el descubrimiento para encontrar lo que existe.** Escanea redes, cuentas de nube y puntos finales y compara con el registro. Trata las diferencias como elementos que investigar.
5. **Etiqueta los recursos de nube.** Exige etiquetas de responsable, servicio y entorno en los recursos creados en cuentas de nube e informa de los que no las tengan. Las etiquetas permiten que el registro siga a los activos que se mueven deprisa.
6. **Conecta las compras con el registro.** Asegúrate de que las compras nuevas, incluidas las suscripciones y las compras con tarjeta, creen o actualicen un registro. Revisa el gasto en busca de elementos que no lo hicieron.
7. **Vincula los activos con los servicios.** Registra qué servicio apoya cada activo. Esto permite calcular el impacto de un incidente, un cambio o una baja (véase Tema 4.4 — Gestión de la Configuración).
8. **Sigue el lado financiero.** Registra el coste, los términos del contrato, las fechas de renovación y la depreciación cuando proceda. Captar la información financiera durante el ciclo de vida es un componente clave de la gestión del hardware, como dice la sección de Wikipedia.
9. **Gestiona el final de la vida útil.** Planifica la baja desde el principio: borrado de datos, devolución y eliminación. Retira el acceso y las licencias al mismo tiempo.
10. **Revisa con regularidad.** Al menos dos veces al año, contrasta el registro con la realidad para las clases de activos más importantes. Corrige el proceso que causó cualquier diferencia.
11. **Comparte los datos.** Pon los datos de activos a disposición del centro de servicios, de seguridad, de finanzas y de los equipos, en una forma que puedan usar. Los datos que solo ve el gestor de activos valen poco.
12. **Mide la práctica.** Sigue cuán completo y exacto es el registro, cuánto se tarda en encontrar un activo y el coste de los elementos sin uso. Úsalo para mejorar, no para clasificar personas.

## Preguntas para conversar con tu equipo

**Si alguien preguntara cuántos activos de cada tipo tenemos, ¿con cuánta seguridad responderíamos?**

Pide a cada persona que estime el número de portátiles, servidores, cuentas de nube y suscripciones, y compáralo con el registro. Las diferencias muestran cuánto se desconoce. Quien facilite puede preguntar qué categoría es en la que menos confían las personas. Elige una para conciliar primero.

**¿Quién es responsable de cada uno de nuestros activos y qué pasa cuando esa persona se va?**

Toma una muestra de activos y mira el campo de responsable. Cuenta los que no tienen responsable o tienen uno que ya se fue. Pregunta qué proceso debería actualizar los responsables cuando las personas cambian. Acordad un desencadenante, como el proceso de bajas de personal.

**¿Qué pagamos que nadie usa?**

Mira las licencias, suscripciones y recursos de nube y pregunta cuáles no tienen uso reciente. Prepárate para sorpresas. Pregunta quién puede autorizar cancelar algo. Elige los tres más grandes y comprueba cada uno.

**¿Cómo nos enteramos de un recurso de nube o una suscripción nuevos?**

Sigue el último. A menudo la respuesta es "con la factura" o "cuando se rompió". Discute cómo podrían detectarlo antes las compras, el etiquetado y el descubrimiento. Acordad un control, como las etiquetas obligatorias o un informe mensual de elementos sin etiquetar.

**¿Qué pasa con un portátil o un servidor al final de su vida útil?**

Recorre los pasos: quién decide, cómo se eliminan los datos, qué dice el registro. Las lagunas suelen aparecer en torno al borrado de datos y los registros. Pide evidencia de que una baja reciente se hizo correctamente. Planifica una lista de verificación breve.

**¿Qué datos de activos necesitan otros equipos que no les damos?**

Pregunta al centro de servicios, a seguridad y a finanzas qué les gustaría ver. Las peticiones típicas incluyen responsable, servicio y coste. Discute cómo compartirlos y quién los mantiene al día. Elige un informe que producir.

## En la práctica: un ejemplo de ITIL ágil

Una agencia nacional de estadística tiene 1.800 empleados y ejecuta el procesamiento de sus encuestas en una mezcla de un centro de datos propio y una cuenta de nube pública. El equipo de finanzas observa que la factura de la nube ha crecido un tercio en un año, y una auditoría de seguridad encuentra tres servidores en el centro de datos que nadie sabe identificar. La función de ITAM son dos personas con una hoja de cálculo.

El jefe de TI fija un objetivo modesto: conocer los principales activos, quién es responsable de ellos y cuánto cuestan, empezando por la nube. Una nueva regla exige etiquetas de responsable, servicio y entorno en todos los recursos de nube. Un informe semanal enumera los recursos sin etiquetar, y los equipos tienen dos semanas para reclamarlos o retirarlos. En el centro de datos, las dos personas de ITAM ejecutan un escaneo de descubrimiento y lo comparan con la hoja de cálculo, y encuentran 40 dispositivos que no están en la lista. Rastrean los responsables de la mayoría. Compras acuerda que cualquier suscripción de software nueva se comunique a ITAM en una semana.

Tras un trimestre, la proporción de recursos de nube sin etiquetar baja de aproximadamente un tercio a un puñado, y finanzas puede atribuir la factura de la nube a servicios. Se apagan algunos recursos sin uso y se retiran dos servidores. Quedan problemas. Un grupo de investigación compra herramientas con una tarjeta del departamento y no las comunica, y el informe semanal lo leen solo unos pocos equipos. El personal de ITAM habla con el grupo de investigación sobre un formulario de registro sencillo y pide a la jefa de finanzas que añada las suscripciones a la revisión mensual. También deciden que el registro cubrirá los servicios de nube por cuenta y servicio, no cada instancia de corta vida.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega crean muchos activos. Etiqueta lo que crees, registra las suscripciones y bibliotecas que añadas y retira lo que ya no necesites. Trata el registro como un servicio al que contribuyes y del que te beneficias.

### Equipos de servicio y operaciones

Los equipos de operaciones dependen del registro para el soporte, el parcheo y la respuesta a incidentes. Mantenlo exacto actualizándolo en el despliegue, el cambio y la baja. Usa el descubrimiento para encontrar lo que falta e informa de las diferencias a los responsables.

### Liderazgo y gobernanza

Los líderes y finanzas usan los datos de activos para las decisiones sobre gasto, riesgo y renovaciones. Pide unas pocas cifras fiables, como el gasto por servicio y la proporción de activos con responsable, en lugar de un registro perfecto. Apoya los controles pequeños, como las etiquetas y el informe de compras, que lo mantienen veraz.

### Clientes y usuarios

Los usuarios se benefician cuando sus equipos y accesos se gestionan bien: dispositivos que funcionan, sustituciones rápidas y ningún cargo sorpresa. Di al centro de servicios qué equipos añades o dejas de necesitar y espera que se te pida confirmar lo que tienes.

## Fallos frecuentes

- **Un registro en el que nadie confía.** Está desactualizado y se ignora. En su lugar, estrecha el alcance, usa el descubrimiento y actualiza en cada suceso del ciclo de vida.
- **Sin responsables.** Los activos no pertenecen a nadie. En su lugar, exige un responsable para cada activo o grupo.
- **Seguirlo todo.** El esfuerzo entierra el valor. En su lugar, empieza por lo costoso o arriesgado y crece.
- **Ignorar la nube y las suscripciones.** El registro cubre solo hardware comprado. En su lugar, etiqueta los recursos de nube y capta las suscripciones.
- **Compras fuera del proceso.** Las compras con tarjeta esquivan el registro. En su lugar, conecta las compras y los informes de gasto con ITAM.
- **Sin proceso de fin de vida.** Los dispositivos viejos conservan datos y acceso. En su lugar, planifica la baja, el borrado y la eliminación.
- **Datos que se ocultan a otros.** Solo ITAM ve el registro. En su lugar, compártelo con el centro de servicios, seguridad y finanzas.
- **Contar sin actuar.** Los informes muestran activos sin uso y nada se cancela. En su lugar, asigna responsables que actúen sobre los hallazgos.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Inventario y descubrimiento | Los activos se enumeran en hojas de cálculo o no se enumeran | Se inventarían algunas clases de activos | El descubrimiento y un registro cubren las principales clases de activos y se concilian con regularidad | Se miden la exhaustividad y la exactitud y se corrigen las lagunas | El inventario abarca lo propio, la nube y los proveedores con datos compartidos |
| Titularidad y responsabilidad | Pocos activos tienen responsable | Se nombran responsables para algunos activos | Cada activo o grupo tiene un responsable, mantenido al día por un proceso | Las lagunas de titularidad se siguen y se resuelven | Los responsables de distintos equipos y proveedores trabajan con reglas compartidas |
| Ciclo de vida y control financiero | La compra y la baja son informales | Algunos activos tienen datos de coste y contrato | Los pasos del ciclo de vida y los datos financieros se registran para los activos principales | El coste, las renovaciones y la utilización se revisan y se actúa sobre ellos | Los datos financieros y de ciclo de vida se vinculan a los servicios y se comparten con finanzas |
| Uso de los datos | Pocos usan los datos | El centro de servicios usa el registro a veces | El centro, seguridad y finanzas usan de forma rutinaria los datos de activos | La calidad y el uso de los datos se miden y se mejoran | Los datos alimentan las decisiones de toda la organización y con los socios |

## Lista de verificación

- [ ] Tenemos una lista breve de tipos de activo y los datos que registramos de cada uno.
- [ ] Cada activo o grupo seguido tiene un responsable con nombre.
- [ ] Los resultados del descubrimiento se comparan con el registro según un calendario regular.
- [ ] Los recursos de nube llevan etiquetas de responsable, servicio y entorno, y se informa de los que no las tienen.
- [ ] Las compras nuevas, incluidas las suscripciones, crean o actualizan un registro.
- [ ] Los activos están vinculados con los servicios a los que dan soporte.
- [ ] Los datos de coste, contrato y renovación se registran para los activos principales.
- [ ] La baja incluye la eliminación de datos, la retirada de accesos y un registro.
- [ ] El registro se concilia con la realidad al menos dos veces al año para las clases de activos principales.
- [ ] El centro de servicios, seguridad y finanzas pueden ver los datos que necesitan.

## Prompts de IA

**Propósito: conciliar los resultados del descubrimiento con el registro.**

```text
Tengo dos listas de activos: lo que dice nuestro registro que tenemos y lo que encontró un escaneo de descubrimiento.

Registro: [pega una tabla con nombre o ID del activo, tipo, responsable y estado; elimina los datos personales].
Descubrimiento: [pega una tabla con nombre o ID, tipo y cualquier detalle identificativo].

Usando solo estas listas, identifica: elementos del registro que el descubrimiento no encontró; elementos que encontró el descubrimiento y no están en el registro; y elementos en los que los detalles difieren. Para cada grupo, sugiere una pregunta para el responsable o el equipo. No adivines qué es un elemento desconocido. Si las listas son demasiado escasas para cotejarlas, di qué añadir. Enumera de lo que no estés seguro.
```

**Propósito: redactar una breve norma de etiquetado de recursos de nube.**

```text
Ayúdame a redactar una norma de etiquetado de una página para recursos de nube.

Nuestras cuentas de nube y equipos: [describe].
Datos que necesitamos saber de un recurso: [por ejemplo responsable, servicio, entorno, centro de coste, sensibilidad de los datos].
Problemas actuales: [por ejemplo recursos sin etiquetar y responsables desconocidos].

Propón de tres a seis etiquetas obligatorias con valores o formatos permitidos, cómo se encontrarán y se informará de los recursos sin etiquetar, quién es responsable de corregirlos y un periodo de gracia (deja la duración como [por acordar]). Señala las suposiciones. No inventes nuestras herramientas. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: planificar una lista de verificación de baja para un dispositivo o servidor.**

```text
Ayúdame a escribir una lista de verificación de baja para [tipo de activo, por ejemplo "portátiles" o "servidores"].

Nuestra práctica actual: [describe].
Datos que puede contener: [describe la sensibilidad].
Registros que debemos conservar: [enumera, o escribe "desconocido"].
Reglas o contratos que se aplican, con el texto de la fuente: [pega, o escribe "ninguno conocido"].

Produce una lista de verificación que cubra: aprobación, retirada de accesos y licencias, borrado o destrucción de datos y su evidencia, actualización del registro, registros financieros y eliminación o devolución. Marca como suposición cada elemento que lo sea. No afirmes que una ley exige un paso salvo que haya pegado su texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: encontrar candidatos a ahorro a partir de datos de uso.**

```text
Esta es una tabla de nuestras suscripciones y licencias con el coste mensual, el número de puestos pagados y el número de usuarios activos en los últimos 90 días: [pega datos reales].

Usando solo mis números, enumera los elementos en los que los puestos pagados superan a los usuarios activos y calcula la diferencia y el coste de los puestos sin uso. Ordénalos por coste. Para los cinco primeros, sugiere una pregunta que hacer al responsable antes de cambiar nada. No supongas que los usuarios inactivos pueden perder el acceso; márcalo como pregunta. Enumera de lo que no estés seguro.
```

## Habilidades de IA

- [configuration-management](../../../../skills/configuration-management/SKILL.md): úsala para planificar cómo se registran los activos y sus relaciones y cómo se mantienen veraces.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): úsala para gestionar los contratos y renovaciones que hay detrás de los activos.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): úsala para pronosticar el coste de los activos y las suscripciones.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): úsala para dejar claro quién posee, da soporte y aprueba cada clase de activo.
- [data-governance](../../../../skills/data-governance/SKILL.md): úsala para decidir quién es responsable de los datos guardados en los activos y cómo se retiran.

## Fuentes principales

- **IT asset management** (Wikipedia, actualmente dentro del artículo sobre la gestión de centros de datos): una definición breve y una descripción de la gestión de activos de hardware.
- **Software asset management** (Wikipedia): la definición, los objetivos, las tecnologías y las partes de ISO/IEC 19770.
- **Configuration management database** (Wikipedia): el término de ITIL para el almacén de elementos de configuración y relaciones.
- **ITIL** (Wikipedia): el marco que trata ITAM junto con la gestión de servicios.

## Referencias

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
