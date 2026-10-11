# Gestión de Activos de Hardware

**La gestión de activos de hardware sigue el equipo físico desde la compra hasta la baja, y sus riesgos silenciosos son el dispositivo que nadie conoce, el dispositivo que se conserva demasiado tiempo y el dispositivo que se va con los datos todavía dentro.**

## Por qué importa

El hardware sigue importando en un mundo que prioriza la nube. Las personas trabajan con portátiles, teléfonos y tabletas. Las redes funcionan con conmutadores y puntos de acceso. Muchas organizaciones conservan servidores, almacenamiento y equipos especializados en sus instalaciones. Cuando se pierde un portátil, un servidor sale de garantía o un lote de dispositivos necesita sustituirse, las preguntas son las mismas: ¿qué tenemos?, ¿dónde está?, ¿quién lo tiene?, ¿cuánto vale? y ¿qué contiene?

La mala gestión del hardware se manifiesta de maneras conocidas. El personal espera equipos porque nadie sabe qué hay en el almacén. Los dispositivos viejos siguen en servicio porque nadie tiene los datos para justificar su sustitución, y luego fallan en un momento incómodo. Los dispositivos se tiran con los datos todavía dentro. Se pierden reclamaciones de garantía. Para un equipo ágil el efecto es una incorporación más lenta, versiones fallidas en hardware de pruebas sin mantenimiento y exposiciones de seguridad que ninguna canalización puede ver.

La [sección de Wikipedia sobre la gestión de activos de TI](https://en.wikipedia.org/wiki/IT_asset_management), que se encuentra dentro de su artículo sobre la gestión de centros de datos, describe la gestión de activos de hardware como la que cubre los componentes físicos de ordenadores y de red desde la adquisición hasta la baja, con prácticas de solicitud y aprobación, compras, gestión del ciclo de vida, reasignación y baja, y dice que captar la información financiera durante el ciclo de vida es un componente clave. Es breve. Este tema añade los artículos sobre residuos electrónicos y borrado de datos para la baja, y orientación práctica extraída de la práctica común, diciéndolo cuando lo hace.

## Conceptos clave

### Alcance

Los activos de hardware incluyen dispositivos de usuario final (portátiles, equipos de sobremesa, teléfonos, tabletas), servidores y almacenamiento, equipos de red, periféricos y tecnología especializada u operativa. También incluyen los accesorios que los hacen utilizables. De cada uno, la organización quiere conocer lo básico: qué es, quién es responsable de él, dónde está, cuánto costó y en qué estado se encuentra.

### El ciclo de vida del hardware

La sección de Wikipedia enumera solicitud y aprobación, compras, gestión del ciclo de vida, reasignación y baja. Una ampliación práctica, de uso amplio y ofrecida aquí como tal:

| Etapa | Preguntas que responder | Registros típicos |
|---|---|---|
| **Solicitud y aprobación** | ¿Qué se necesita y quién lo aprueba? | Solicitud, aprobación, código presupuestario |
| **Compras** | ¿Qué compramos, a quién y en qué condiciones? | Pedido, factura, garantía, proveedor |
| **Recibir y preparar** | ¿Llegó? ¿Está configurado y etiquetado? | Número de serie, etiqueta de activo, configuración |
| **Asignar y operar** | ¿Quién lo tiene? ¿Para qué se usa? | Responsable o usuario, ubicación, servicio al que da soporte |
| **Mantener** | ¿Cuál es su estado, garantía y situación de parches? | Reparaciones, fin de garantía, estado del firmware |
| **Reasignar** | ¿Puede usarlo otra persona? | Borrado, registro de reasignación |
| **Retirar y dar de baja** | ¿Se han eliminado los datos? ¿Adónde fue? | Evidencia de borrado, registro de baja |

### Información financiera

La sección de Wikipedia subraya la captura de información financiera del ciclo de vida del hardware. Los datos útiles incluyen el coste de compra, la depreciación, el coste de garantía y soporte y el coste de mantenerlo en funcionamiento. Estos alimentan las decisiones de sustitución y los presupuestos (véase Tema 4.5 — Gestión Financiera de TI y FinOps). Un dispositivo que cuesta más mantener que sustituir es candidato a la baja.

### Sustitución y renovación

Las organizaciones suelen sustituir los equipos según un ciclo, como cada pocos años para los portátiles. Las fuentes leídas para esta guía no indican periodos recomendados, y el intervalo adecuado depende del equipo, del trabajo y del coste del fallo. Un enfoque basado en datos mira las tasas de fallo, el coste de soporte, el soporte de seguridad y el rendimiento, y sustituye cuando lo dice la evidencia. Un ciclo fijo es más fácil de planificar, y uno basado en evidencia puede ahorrar dinero o evitar fallos.

### Seguridad de los datos al final de la vida útil

La baja es donde la gestión del hardware se encuentra con la seguridad de la información (véase Tema 3.13 — Gestión de la Seguridad de la Información). El artículo de Wikipedia sobre el borrado de datos lo describe como un método de software que sobrescribe cada sector de una unidad para que los datos almacenados sean irrecuperables; el borrado normal de archivos solo elimina punteros, y las herramientas comunes a menudo pueden recuperar los datos. Puntos clave del artículo:

- **Sobrescribir** deja la unidad utilizable. La **desmagnetización** y la **destrucción física** inutilizan el soporte y se suman a los residuos electrónicos.
- **Las unidades de estado sólido y los soportes flash** pueden retener datos residuales que el borrado pasa por alto. El artículo cita un estudio de 2011 que halló que los comandos de saneamiento integrados funcionan cuando se implementan correctamente, mientras que las técnicas de software funcionan la mayor parte del tiempo, pero no siempre.
- **El cifrado** ofrece otra vía: destruir las claves de una unidad con autocifrado deja sus datos inaccesibles.
- **Verificación y certificados:** un buen software debe verificar que la sobrescritura alcanzó todo el dispositivo, incluidas las zonas ocultas, y emitir un certificado de validación y un registro de los sectores que no pudieron sobrescribirse.
- **Normas:** el artículo enumera muchas, entre ellas la Publicación Especial 800-88 de NIST (2006, revisada en 2014), que cita diciendo que una sola pasada de sobrescritura con un patrón fijo como ceros binarios suele dificultar la recuperación. Afirma que una sola pasada suele bastar para los discos duros modernos.

El artículo está etiquetado como necesitado de citas y algunas afirmaciones están marcadas. Consulta las normas que exija tu sector o país y el estado actual de la técnica para tu equipo; no te fíes de un resumen de Wikipedia para una decisión de cumplimiento.

### Residuos electrónicos

El artículo de Wikipedia sobre los residuos electrónicos los define como dispositivos eléctricos o electrónicos desechados, incluidos los destinados a reutilización, reventa, recuperación, reciclaje o eliminación. Informa de unos 62 millones de toneladas generadas en el mundo en 2022, un 82 por ciento más que en 2010, con solo el 22,3 por ciento recogido y reciclado formalmente según un estudio de 2024; también cita otras cifras que entran en conflicto y lleva etiquetas de mantenimiento por afirmaciones no verificadas, así que contrasta los números con fuentes primarias antes de citarlos. Describe peligros derivados de materiales como el plomo, el cadmio, el mercurio y los retardantes de llama, y del procesamiento informal, con ejemplos de Guiyu en China y Agbogbloshie en Ghana. Señala que el Convenio de Basilea, adoptado en marzo de 1989, regula el movimiento transfronterizo de residuos peligrosos, y que los recicladores certificados bajo esquemas como R2 y E-Stewards deben destruir todos los datos almacenados en los aparatos electrónicos. La reutilización alarga la vida del dispositivo y retrasa el reciclaje.

Para una organización las lecciones son prácticas: elige socios de baja que estén certificados y puedan mostrar adónde van los dispositivos, prefiere la reutilización donde sea segura y conserva registros. Las leyes sobre residuos electrónicos difieren según el país y la región; pregunta a tu función de cumplimiento cuáles se aplican.

### Hardware y gestión de servicios

Los registros de hardware se vinculan con los servicios: este conmutador transporta aquel servicio, este servidor aloja aquella aplicación. Esos vínculos convierten un registro de activos en una herramienta para la respuesta a incidentes, la planificación de cambios y la evaluación de riesgos (véase Tema 4.4 — Gestión de la Configuración). Sin ellos, un dispositivo averiado es un ticket; con ellos, es una declaración de impacto.

### Ágil y hardware

Los equipos ágiles tratan el hardware como una restricción en torno a la cual diseñar, no como el acontecimiento principal. La nube y la virtualización reducen el parque físico, pero no a cero. Los dispositivos de prueba para aplicaciones móviles, los agentes de compilación, los equipos de laboratorio y los dispositivos de borde necesitan seguimiento. Trátalos como activos con responsables y ciclos de vida, y no los dejes en un armario.

## Buenas prácticas

1. **Etiqueta y registra todo dispositivo que importe.** Asigna una etiqueta de activo única o un registro de serie en la recepción y registra tipo, responsable, ubicación y estado. Haz de esto el primer paso tras la entrega.
2. **Vincula los dispositivos con personas y servicios.** Registra quién tiene cada dispositivo y qué servicio apoya, y actualízalo en los traslados y cambios. Usa el proceso de bajas de personal para recuperar el equipo y retirar el acceso.
3. **Guarda los datos financieros con el activo.** Registra el coste, la garantía, las condiciones de soporte y la depreciación. Úsalos para comparar reparación, soporte y sustitución.
4. **Usa el descubrimiento para encontrar lo desconocido.** Compara el registro con el descubrimiento de red y de puntos finales e investiga sin demora los dispositivos desconocidos (véase Tema 4.1 — Gestión de Activos de TI).
5. **Monitoriza el estado y la situación de soporte.** Sigue las fechas de fin de garantía, la situación del soporte de firmware y de seguridad y el historial de fallos. Planifica la sustitución antes de que los dispositivos fallen o pierdan soporte.
6. **Sustituye según evidencia.** Mira los datos de fallos y soporte, el rendimiento y el soporte de seguridad para decidir la sustitución, y no solo la edad. Revisa la política una vez al año.
7. **Prepara los dispositivos de forma coherente.** Usa una configuración estándar y un alta automatizada para que los dispositivos nuevos lleguen listos, con los controles de seguridad ya en su sitio.
8. **Reasigna donde sea seguro.** Borra y reasigna los dispositivos que aún cumplen las necesidades, con un registro del borrado. Evita las reservas de equipos sin uso.
9. **Borra los datos como es debido y conserva la evidencia.** Usa un método adecuado al tipo de dispositivo y a la sensibilidad de los datos, verifícalo y conserva un certificado o registro. Para el almacenamiento flash, usa comandos de saneamiento admitidos por el dispositivo o la destrucción de claves según corresponda (véanse las notas sobre borrado de datos más arriba).
10. **Elige con cuidado los socios de baja.** Prefiere recicladores certificados, pregunta adónde van los dispositivos y los materiales y conserva registros. Incluye términos de destrucción de datos en el contrato.
11. **Planifica para los dispositivos perdidos y robados.** Ten una manera rápida de notificarlo, un bloqueo o borrado remoto cuando esté disponible y una regla sobre cuándo tratar una pérdida como incidente de seguridad (véase Tema 3.2 — Gestión de Incidentes).
12. **Revisa con regularidad.** Al menos dos veces al año, contrasta una muestra del registro con la realidad física para las principales clases de dispositivo y corrige el proceso detrás de cualquier laguna.

## Preguntas para conversar con tu equipo

**Si contáramos hoy todos los dispositivos que poseemos, ¿coincidiríamos con el registro?**

Elige una planta, un equipo o un almacén y haz un recuento rápido frente al registro. Las diferencias son la lección. Pregunta qué desajustes importan más: dispositivos con datos, dispositivos sin parchear. Quien facilite puede preguntar qué impide a las personas actualizar el registro en el momento del cambio. Elige un proceso que reforzar.

**¿Qué hacemos con un portátil cuando alguien se va?**

Recorre los pasos: quién lo recoge, adónde va, quién lo borra, quién actualiza el registro. Las lagunas suelen aparecer entre equipos. Pide el último ejemplo y sigue su rastro. Acordad un responsable y una lista de verificación.

**¿Cómo decidimos cuándo sustituir el equipo?**

Pide la regla actual y su origen. A menudo es una edad fija que alguien estableció hace mucho. Discute qué datos tienes sobre fallos, coste de soporte y soporte de seguridad. Compara con el coste de sustituir pronto o tarde. Acordad qué datos recoger.

**¿Cómo demostraríamos que se destruyeron los datos de un dispositivo que dimos de baja?**

Toma una baja reciente y pregunta qué evidencia existe. Si la respuesta es "lo dijo el reciclador", discute qué debería contener un certificado o registro. Pregunta qué método se usó para el almacenamiento de estado sólido. Acordad un estándar mínimo y la evidencia.

**¿Cuáles de nuestros dispositivos están fuera de garantía o fuera de soporte de seguridad y qué depende de ellos?**

Enumera los dispositivos cercanos al fin del soporte. Pregunta a qué da soporte cada uno. Los dispositivos sin soporte detrás de servicios importantes son riesgos. Planifica la sustitución por orden de impacto y decide dónde hacen falta medidas compensatorias.

**¿Quién gestiona un dispositivo perdido o robado y con qué rapidez?**

Pregunta cómo notifica una pérdida el usuario y qué pasa después. Comprueba si hay bloqueo o borrado remoto y si alguien lo ha probado. Discute cuándo una pérdida se convierte en un incidente de seguridad. Acordad un primer paso claro para los usuarios.

## En la práctica: un ejemplo de ITIL ágil

Una autoridad sanitaria provincial suministra unos 4.000 portátiles y tabletas a enfermeras comunitarias, que visitan a los pacientes en sus casas. Los dispositivos se pierden o se dañan con frecuencia. Los registros de la autoridad muestran 4.300 dispositivos, pero el centro de servicios cree que gestiona menos. Una revisión de seguridad descubre que varios portátiles listados como retirados se han visto en uso y que una reserva de dispositivos viejos en un armario sigue conteniendo datos de pacientes.

El jefe de servicios al usuario final establece un pequeño programa. Cada dispositivo recibe una etiqueta única y un registro vinculado a una enfermera con nombre y a un equipo. Una herramienta de descubrimiento compara el registro con los dispositivos que se conectan a la red, y una lista mensual de dispositivos sin coincidencia va a los gerentes de equipo, que tienen dos semanas para explicarlos o devolverlos. Los dispositivos se dan de alta automáticamente con el cifrado activado y el software estándar, de modo que un portátil perdido revele poco. Una lista de verificación de bajas de personal añade la devolución del dispositivo como un paso que firma el gerente. Para la baja, la autoridad contrata a un reciclador certificado que borra las unidades, destruye las que no pueden borrarse y proporciona un certificado por cada lote. El armario se vacía y su contenido se borra y se registra.

En seis meses el registro y el descubrimiento coinciden con un pequeño margen, y en la mayoría de los casos un portátil perdido se bloquea de forma remota en la hora siguiente. Quedan algunos problemas. Las enfermeras a veces comparten dispositivos en los turnos ajetreados, por lo que el campo de responsable es erróneo, y los certificados del reciclador enumeran lotes pero no dispositivos individuales, algo sobre lo que pregunta el auditor. El jefe de servicios al usuario final introduce un registro de dispositivos compartidos con firma diaria de salida y pide al reciclador que incluya los números de serie en los certificados. También decide revisar la política de sustitución con los datos de fallos del primer año, en lugar de mantener una edad fija.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega tienen dispositivos de prueba, servidores de compilación y equipos de laboratorio. Regístralos, dales responsables y retíralos como es debido. Dile a la gestión de activos cuándo necesitas dispositivos, para que el suministro se ajuste a los proyectos.

### Equipos de servicio y operaciones

Operaciones y el centro de servicios llevan la mayor parte del ciclo de vida: configuración, despliegue, soporte y baja. Mantén los registros al día en cada paso, usa el descubrimiento para detectar lagunas y conserva la evidencia de las bajas. Comparte los datos de estado y de fallos con quien planifique la sustitución.

### Liderazgo y gobernanza

Los líderes deciden los presupuestos de sustitución y el apetito de riesgo. Pide el número de dispositivos fuera de soporte, el proceso para los dispositivos perdidos y la evidencia de la destrucción de datos. Apoya la renovación basada en evidencia y los controles pequeños, como las etiquetas y las listas de verificación, que mantienen veraces los registros.

### Clientes y usuarios

Los usuarios tienen el equipo en sus manos día a día. Cuídalo, informa de la pérdida o el daño con rapidez y devuelve el equipo cuando te vayas. Dile al centro si compartes un dispositivo o te trasladas a otra ubicación, para que los registros sean correctos.

## Fallos frecuentes

- **Equipos sin etiquetar.** No se pueden distinguir los dispositivos. En su lugar, etiqueta y registra en la recepción.
- **Registros obsoletos.** No se captan traslados ni bajas de personal. En su lugar, vincula las actualizaciones a sucesos como los procesos de alta, traslado y baja de personal.
- **Renovación por edad fija sin datos.** Los dispositivos se sustituyen demasiado pronto o demasiado tarde. En su lugar, revisa los datos de fallos, coste y soporte.
- **Baja débil.** Quedan datos en los dispositivos dados de baja. En su lugar, borra y verifica con un método adecuado al soporte, conserva la evidencia y usa un socio certificado.
- **Ignorar el almacenamiento flash.** Se supone que sobrescribir funciona. En su lugar, usa comandos de saneamiento o destrucción de claves y verifica.
- **Reservas acumuladas.** Se acumulan dispositivos sin uso. En su lugar, reasigna o retira según un calendario.
- **Sin vínculo con los servicios.** Un dispositivo averiado es solo un ticket. En su lugar, registra el servicio al que da soporte cada dispositivo.
- **Reciclaje no certificado.** El equipo acaba donde nadie sabe. En su lugar, elige socios certificados y pregunta adónde van los materiales.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Inventario y seguimiento | Los dispositivos se conocen de manera informal | Un registro cubre los dispositivos principales | Cada dispositivo está etiquetado y registrado, conciliado con el descubrimiento | Se miden y se corrigen la exactitud y las lagunas | El inventario abarca dispositivos propios, arrendados y de socios con datos compartidos |
| Ciclo de vida y renovación | La sustitución ocurre cuando falla | Algunos dispositivos siguen un plan de renovación | Los pasos del ciclo de vida y una política de renovación están definidos | Los datos de fallos y costes impulsan las decisiones de sustitución | La renovación se planifica en toda la organización con proveedores y finanzas |
| Baja y protección de datos | La baja es improvisada | Se borran algunos dispositivos | Un método de borrado estándar y baja certificada con evidencia | La evidencia de las bajas se audita y se cierran las lagunas | La baja se coordina con socios y programas de reutilización |
| Vínculo con servicios y finanzas | Los dispositivos no se vinculan con servicios ni costes | Se guardan algunos datos de coste | Los dispositivos se vinculan con responsables, servicios y costes | Los datos de coste y soporte se revisan y se usan en los presupuestos | Los datos de activos se comparten continuamente con finanzas, seguridad y proveedores |

## Lista de verificación

- [ ] Cada dispositivo que seguimos tiene una etiqueta única o un registro de serie y un responsable o usuario con nombre.
- [ ] Los dispositivos están vinculados al servicio al que dan soporte.
- [ ] El descubrimiento se compara con el registro al menos cada mes para los principales tipos de dispositivo.
- [ ] Las fechas de fin de garantía y de soporte se registran y se revisan.
- [ ] Nuestra política de sustitución se basa en datos y se revisa cada año.
- [ ] Los procesos de baja y traslado de personal recuperan o reasignan los dispositivos.
- [ ] El borrado de datos usa un método adecuado al soporte, con verificación y registro.
- [ ] Los socios de baja están certificados y proporcionan evidencia por dispositivo o por lote.
- [ ] Los dispositivos perdidos y robados pueden notificarse con rapidez y bloquearse o borrarse de forma remota cuando esté disponible.
- [ ] Una muestra del registro se contrasta con la realidad física dos veces al año.

## Prompts de IA

**Propósito: conciliar un recuento físico con el registro.**

```text
Tengo un recuento físico de dispositivos en [ubicación o equipo] y las entradas del registro para el mismo alcance.

Recuento físico (etiqueta o serie, tipo, quién lo tiene): [pega].
Registro (etiqueta o serie, tipo, responsable, estado): [pega].

Usando solo estas listas, identifica los elementos presentes físicamente pero ausentes del registro, los elementos del registro que no se encontraron y los elementos en los que el responsable o el estado difieren. Para cada grupo, sugiere una pregunta que hacer. No adivines sobre los elementos que no puedan cotejarse. Enumera de lo que no estés seguro.
```

**Propósito: preparar una revisión de sustitución basada en datos.**

```text
Ayúdame a preparar una revisión de sustitución para [clase de dispositivo, p. ej. "portátiles de campo"].

Datos que tenemos (edad, reparaciones, fallos, tickets de soporte, fin de garantía, fin de soporte de seguridad, coste): [pega una tabla de datos reales].
Regla de sustitución actual y su origen: [pega, o escribe "desconocido"].
Límites presupuestarios: [describe, o escribe "desconocido"].

Usando solo estos datos, describe patrones por grupo de edad (por ejemplo recuentos de fallos y reparaciones), identifica los dispositivos cercanos al fin del soporte y sugiere preguntas sobre si la regla actual encaja. No inventes tasas de fallo ni costes. Si los datos son demasiado escasos, di qué recoger. Enumera de lo que no estés seguro.
```

**Propósito: escribir una lista de verificación de baja de dispositivos con requisitos de evidencia.**

```text
Ayúdame a escribir una lista de verificación de baja para [tipo de dispositivo, p. ej. "portátiles y teléfonos"].

Sensibilidad de los datos: [describe].
Tipos de almacenamiento: [por ejemplo discos duros, SSD, teléfonos con almacenamiento cifrado].
Socio de baja y lo que proporciona: [describe, o escribe "aún no elegido"].
Reglas que debemos cumplir, con el texto de la fuente: [pega, o escribe "ninguna conocida"].

Produce una lista de verificación que cubra: autorización, retirada de cuentas y licencias, método de borrado o destrucción de datos por tipo de almacenamiento, verificación, evidencia conservada (contenido del certificado, números de serie), vía de baja y actualización del registro. Marca los pasos que sean suposiciones. No afirmes que una ley o norma exige un método salvo que haya pegado su texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: planificar la respuesta ante un dispositivo perdido.**

```text
Redacta un procedimiento de respuesta breve para un [tipo de dispositivo] perdido o robado.

Qué controles existen hoy (cifrado, bloqueo remoto, borrado remoto, ubicación): [describe, o escribe "desconocido"].
Datos que puede contener el dispositivo: [describe].
A quién se informa hoy: [enumera].

Escribe pasos para el usuario, el centro de servicios y seguridad: cómo notificarlo, qué hacer en la primera hora, cuándo tratar la pérdida como un incidente de seguridad y cómo registrarla. Deja cualquier deber de notificación como [CONSULTAR CON JURÍDICO] salvo que te dé el texto de la fuente. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [configuration-management](../../../../skills/configuration-management/SKILL.md): úsala para vincular los dispositivos con los servicios a los que dan soporte.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): úsala para planificar cuánto equipo se necesita y cuándo.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): úsala para pronosticar los costes de renovación y de soporte.
- [data-governance](../../../../skills/data-governance/SKILL.md): úsala para decidir quién es responsable de los datos de los dispositivos y cómo se protegen en la baja.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): úsala para seleccionar y revisar proveedores de hardware y socios de baja.

## Fuentes principales

- **IT asset management** (Wikipedia): la definición y una descripción de la gestión de activos de hardware, dentro del artículo sobre la gestión de centros de datos.
- **Data erasure** (Wikipedia): métodos, normas, verificación y el caso especial del almacenamiento de estado sólido.
- **Electronic waste** (Wikipedia): escala, peligros, reciclaje y el Convenio de Basilea, con advertencias sobre cifras contradictorias.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88): la orientación primaria que cita el artículo de Wikipedia; lee la revisión vigente antes de fijar un estándar.

## Referencias

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
