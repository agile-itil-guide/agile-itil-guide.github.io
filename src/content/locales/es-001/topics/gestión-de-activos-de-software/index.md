# Gestión de Activos de Software

**La gestión de activos de software se asegura de que una organización compre el software que necesita, use lo que compra y cumpla los términos que ha aceptado, y para los equipos ágiles eso significa ahora seguir los componentes de código abierto y las suscripciones además de los productos con licencia.**

## Por qué importa

El software es uno de los costes más grandes y menos visibles de TI. Se compran licencias para personas que se han ido, las suscripciones se renuevan sin que nadie lo note y los productos se instalan de maneras que la licencia no permite. Cada caso es un coste o un riesgo. Una auditoría de un proveedor puede convertir un pequeño desajuste en una factura grande, y un componente sin parchear en una aplicación olvidada puede abrir una puerta a un atacante.

Los equipos ágiles cambian el panorama. Los desarrolladores incorporan bibliotecas con un solo comando, y las aplicaciones modernas se ensamblan en buena parte con piezas de terceros y de código abierto. El artículo de Wikipedia sobre la cadena de suministro de software informa de que se halló software de código abierto en el 96 por ciento de las bases de código comerciales que analizó un proveedor en 2024, citando a Synopsys. Los equipos también compran servicios en la nube y suscripciones con tarjetas, fuera del proceso de compras. La gestión de activos de software (SAM) ha crecido por tanto más allá de contar las instalaciones de unos pocos productos grandes hasta ser una práctica que cubre lo que se usa, lo que se debe y en qué se confía.

El [artículo de Wikipedia sobre la gestión de activos de software](https://en.wikipedia.org/wiki/Software_asset_management) describe SAM como una práctica de negocio para gestionar y optimizar la compra, el despliegue, el mantenimiento, el uso y la baja del software, con los objetivos de reducir los costes de TI, limitar el riesgo empresarial y legal y mejorar la productividad de los usuarios finales. No cubre los servicios en la nube, los SBOM ni los modelos de madurez, así que este tema añade los artículos sobre la cadena de suministro de software y el software de código abierto. Este tema describe la práctica y no da asesoramiento jurídico; los términos de las licencias difieren, y la fuente correcta es el texto de la licencia o del contrato.

## Conceptos clave

### Qué es SAM

Según Wikipedia, SAM es parte de la gestión de activos de TI (véase Tema 4.1 — Gestión de Activos de TI). Cita a ITIL como quien la describe como la que incluye la gestión eficaz, el control y la protección de los activos de software. Sus objetivos estratégicos, tal como los enumera el artículo, incluyen reducir los costes de software y de soporte mediante contratos por volumen y reasignando licencias sin uso, hacer cumplir las políticas de seguridad y las normas de escritorio, servidor y móvil, mejorar la productividad desplegando la tecnología con más rapidez y fiabilidad, limitar la sobrecarga de gestión mediante la automatización y establecer políticas de adquisición, despliegue, uso y baja.

### Cumplimiento de licencias

El artículo describe SAM como el equilibrio entre el número de licencias compradas y el número realmente consumido, y como la garantía de que el uso se ajusta a los términos de licencia de cada proveedor. Señala que las instalaciones son la medida más común de consumo, pero parte del software se licencia por usuarios, capital, procesadores o núcleos de CPU. Las organizaciones pueden reducir su responsabilidad durante las auditorías de proveedores o de terceros como la Business Software Alliance, dice el artículo, mediante inventarios de software continuos, políticas de compra y herramientas. El artículo no describe los procedimientos de auditoría. El objeto del ejercicio es conocer tu **derecho de uso** (lo que se te permite usar), tu **consumo** (lo que usas) y la diferencia entre ambos.

### Las tres preguntas

Una práctica de SAM responde tres preguntas para cada producto importante:

| Pregunta | Qué necesita |
|---|---|
| ¿A qué tenemos derecho? | Contratos, términos de licencia, facturas y prueba de compra |
| ¿Qué estamos usando? | Datos de inventario y de uso del descubrimiento y la medición |
| ¿Cuál es la diferencia y qué hacemos al respecto? | Comparación, decisiones sobre comprar, reasignar o retirar |

Una diferencia puede ir en cualquiera de los dos sentidos: licenciamiento insuficiente, que es un riesgo de cumplimiento, y licenciamiento excesivo, que es desperdicio.

### Normas: ISO/IEC 19770

El artículo enumera las partes de la familia ISO/IEC 19770: 19770-1:2017 (requisitos del sistema de gestión de activos de TI, un marco de procesos que puede implantarse por niveles), 19770-2:2015 (etiquetas de identificación de software), 19770-3:2016 (un esquema de gestión de derechos para los datos de licencias, contratos y facturas), 19770-4:2017 (datos de medición del uso de recursos) y 19770-5:2015 (visión general y vocabulario). El artículo dice que la norma de identificación de software cuenta con el respaldo de IBM, Microsoft y Adobe. Consulta las normas para las ediciones vigentes y el contenido exacto.

### Tecnologías de SAM y sus límites

El artículo enumera herramientas para el inventario de software, la gestión de licencias, la medición, el control de aplicaciones, el despliegue, la gestión de parches, la gestión de solicitudes y la catalogación de productos. También da un ejemplo de escala: las reglas de medición de System Center Configuration Manager de Microsoft funcionan bien para parques pequeños pero generan volúmenes de datos inmanejables a escala empresarial. Las herramientas ayudan, pero necesitan una pregunta clara y un responsable.

### Software de código abierto

Wikipedia define el software de código abierto como el software cuyo código fuente es de acceso público y que los usuarios pueden usar, estudiar, modificar y distribuir, normalmente bajo una licencia abierta. La Open Source Initiative mantiene la definición más común, con diez criterios y una lista de licencias aprobadas, aunque el artículo dice que la OSI no tiene autoridad legal sobre el término. Describe dos familias de licencias:

| Familia | Qué pide a los receptores | Ejemplos nombrados |
|---|---|---|
| **Permisiva** | Conservar los avisos de derechos de autor e incluir la licencia; ninguna obligación de publicar el código propio bajo la misma licencia | BSD, MIT, Apache |
| **Copyleft** | Usar la misma licencia para al menos algunas partes de lo que distribuyes (el copyleft fuerte se aplica a todas las obras derivadas; el débil solo en ciertas condiciones) | GNU GPL (fuerte); MPL, EPL (débil) |

Ambas familias, dice el artículo, exigen conservar los avisos de derechos de autor y proporcionar una copia de la licencia con el código. Cita *Jacobson v Katzer* (2008), en el que un tribunal hizo cumplir los términos de una licencia abierta, incluida la atribución, con arreglo al derecho de autor. Señala que las organizaciones están creando oficinas de programas de código abierto para gestionar sus estrategias. Los términos del código abierto son obligaciones reales. Cuáles se aplican depende de cómo uses y distribuyas el software; pregunta a tu función jurídica y lee la licencia.

### La cadena de suministro de software y los SBOM

El artículo sobre la cadena de suministro de software la describe como los componentes, bibliotecas, herramientas y procesos usados para desarrollar, compilar y publicar un artefacto de software. Nombra riesgos: los atacantes pueden comprometer un componente aguas arriba para llegar a todos los usuarios aguas abajo, y cita ejemplos como Log4Shell en 2021, el ataque a SolarWinds en 2020 y la puerta trasera de XZ Utils en 2024. Describe una **lista de materiales de software (SBOM)** como un inventario de los componentes de un artefacto de software, incluidas las partes de código abierto y propietarias, el equivalente en software de una lista de materiales de fabricación. Los SBOM apoyan el análisis de vulnerabilidades y de licencias.

El artículo informa de límites: las hojas de cálculo no pueden enriquecerse automáticamente con datos de vulnerabilidades y deberían guardarse en un repositorio consultable; los SBOM basados en políticas son raros, con un estudio que encontró que aproximadamente el 0,56 por ciento de los repositorios populares de GitHub los contienen; menos de la mitad de los proyectos probados incluyen SBOM en las versiones y muchos están incompletos; y un estudio de seis herramientas de SBOM para Java encontró inexactitudes frecuentes. Señala que la visibilidad por sí sola no puede garantizar la integridad. También informa de que la Orden Ejecutiva 14028 de Estados Unidos, firmada el 12 de mayo de 2021, encargó a NIST y NTIA que emitieran orientación sobre la seguridad de la cadena de suministro de software, incluidos los SBOM, y que los elementos mínimos de NTIA se agrupan en campos de datos, soporte a la automatización y prácticas y procesos. El artículo no nombra formatos de SBOM ni describe la Ley de Ciberresiliencia de la Unión Europea. Las reglas sobre SBOM difieren según el país y el sector; pregunta a tu función de cumplimiento qué te aplica.

### SaaS y suscripciones en la nube

El artículo sobre SAM no trata el software como servicio (SaaS) ni la nube. La experiencia práctica muestra que el software por suscripción crea problemas nuevos: compras fuera del proceso de compras, puestos que nadie retira, herramientas que se solapan y datos colocados con proveedores sin revisión (véase Tema 3.14 — Gestión de Proveedores y Tema 4.5 — Gestión Financiera de TI y FinOps). SAM para suscripciones se centra en descubrir qué se compra, quién es responsable, quién lo usa y cuándo se renueva.

### Límites de las fuentes

El artículo sobre SAM no cubre los procedimientos de auditoría, los catálogos de tipos de licencia ni los modelos de madurez, y sus referencias principales incluyen elementos antiguos de 2006 a 2009. El artículo sobre la cadena de suministro de software informa de cifras de encuestas y estudios de calidad desigual. Usa las fuentes para formular preguntas y usa los textos de licencias y contratos para las respuestas.

## Buenas prácticas

1. **Empieza por los productos que más importan.** Elige los pocos productos más grandes o más arriesgados por coste o exposición legal y pon en orden primero el derecho de uso, el inventario y el uso de esos.
2. **Conserva la prueba del derecho de uso.** Guarda los contratos, facturas y términos de licencia donde puedan encontrarse y vincúlalos con los registros de producto. No puedes defender una postura en una auditoría sin evidencia.
3. **Conoce la métrica de licencia.** Para cada producto, registra cómo se cuenta: por usuario, dispositivo, procesador, núcleo u otra. Contar instalaciones cuando la licencia es por núcleo produce la respuesta equivocada.
4. **Compara con regularidad el derecho de uso con el uso.** Al menos cada trimestre para los productos principales, compara lo que puedes usar con lo que usas. Actúa sobre la diferencia comprando, reasignando o retirando.
5. **Recupera las licencias sin uso.** Usa los datos de uso para encontrar licencias que nadie ha usado durante un periodo definido y reasígnalas o cancélalas tras consultar al responsable.
6. **Controla cómo entra el software.** Haz fácil solicitar el software aprobado y difícil comprar fuera del proceso. Incluye las suscripciones y las compras con tarjeta en las revisiones de gasto.
7. **Trata los componentes de código abierto como activos.** Mantén un inventario de los componentes de código abierto de tus productos, con licencia y versión. Contrasta las licencias con cómo usas y distribuyes el software, con asesoramiento jurídico.
8. **Genera SBOM en la compilación.** Produce automáticamente una lista de materiales de software para cada compilación, guárdala en un lugar consultable y úsala para responder a las vulnerabilidades y a las preguntas de los clientes. Contrasta el SBOM con la compilación, ya que las herramientas pueden ser inexactas.
9. **Sigue las suscripciones.** Para cada una, registra responsable, propósito, coste, número de puestos, usuarios, fecha de renovación y datos que contiene. Revisa antes de la renovación.
10. **Vincula el software con los servicios.** Registra qué servicios usan qué software y versiones, para poder rastrear una vulnerabilidad o un cambio de licencia hasta los servicios afectados (véase Tema 4.4 — Gestión de la Configuración).
11. **Prepárate para las auditorías con calma.** Mantén los registros al día, nombra un contacto y conoce tus derechos y deberes según el contrato. No esperes al aviso para empezar a organizarte.
12. **Retira el software como es debido.** Elimínalo de los sistemas, termina las licencias y suscripciones y actualiza los registros. El software sin uso es un coste y una superficie de ataque.

## Preguntas para conversar con tu equipo

**Para nuestros tres productos de software más caros, ¿sabemos qué podemos usar y qué usamos?**

Pide el número de licencias que se tienen y el número en uso de cada uno. Compara. Los resultados comunes sorprenden: más puestos que usuarios, o usuarios por encima de los puestos. Quien facilite puede preguntar dónde se guarda la evidencia del derecho de uso. Planifica conciliar la mayor diferencia.

**¿Qué software han comprado o instalado las personas sin decírselo a nadie?**

Sé honesto y sin juzgar. Pregunta por herramientas compradas con tarjetas, herramientas gratuitas usadas en el trabajo y extensiones del navegador. Las razones típicas son la rapidez y un proceso poco claro. Discute qué haría suficientemente rápida la vía aprobada. Acordad un paso de registro.

**¿De qué componentes de código abierto dependen nuestros productos y cuáles son sus licencias?**

Pregunta si alguien puede producir una lista. Si no, discute cómo generarla desde la compilación. Luego pregunta cómo se comprueban las licencias. Recuerda que las obligaciones difieren entre las licencias permisivas y las de copyleft. Planifica con jurídico revisar los casos de alto riesgo.

**Si mañana apareciera una vulnerabilidad grave en una biblioteca común, ¿cuánto tardaríamos en saber si la usamos?**

Recorre los pasos: a quién se informa, cómo buscas, cómo sabes la versión de cada servicio. La respuesta muestra hasta dónde ayudarían los SBOM y los inventarios. Acordad una primera mejora, como generar una lista de materiales en la canalización.

**¿Qué suscripciones se renuevan el próximo trimestre y quién decide si las conservamos?**

Enumera las renovaciones. De cada una, pregunta quién es responsable, cuántos puestos están activos y qué pasa si se cancela. A menudo nadie es responsable de la decisión. Asigna responsables y añade una fecha de revisión antes de cada renovación.

**¿Cómo responderíamos al aviso de una auditoría de un proveedor?**

Pregunta quién se ocuparía y qué evidencia tiene. Discute si los registros están completos. El objetivo es un plan sereno, no miedo a las auditorías. Acordad un contacto y una lista de verificación.

## En la práctica: un ejemplo de ITIL ágil

Un servicio postal nacional ejecuta unas 60 aplicaciones internas y una plataforma de seguimiento de paquetes de cara a los clientes construida por un equipo de quince personas. Un proveedor notifica al departamento de TI una auditoría de licencias de un producto de base de datos. El responsable de ITAM descubre que los registros de licencias están repartidos en tres hojas de cálculo y que nadie sabe decir en cuántos núcleos de procesador se ejecuta ahora la base de datos, porque las máquinas virtuales se han movido muchas veces entre anfitriones.

El responsable de ITAM, un administrador de bases de datos y el responsable de compras reúnen la evidencia. Recogen el contrato, la métrica de licencia (por núcleo de procesador), las facturas y los datos de descubrimiento sobre dónde se ejecuta la base de datos. Descubren que el producto se ejecuta en más núcleos de los comprados en un entorno y en menos en otro, donde hay licencias sin usar. Tras hablar con el proveedor, reasignan las licencias sin usar, compran un pequeño número adicional y trasladan un entorno no esencial a una alternativa gratuita. El coste es muy inferior a lo que habría sido un hallazgo de auditoría, pero no es trivial.

Al mismo tiempo, un gran cliente pide al equipo de la plataforma una lista de los componentes de software de la plataforma de seguimiento de paquetes. El equipo se da cuenta de que no puede producir una. Añade a la compilación un paso que genera una lista de materiales para cada versión y la guarda en un repositorio. La primera salida incluye una biblioteca con una licencia que el equipo jurídico no había revisado, y deciden sustituirla. Quedan problemas. La herramienta de SBOM del equipo pasa por alto componentes en un lenguaje, y un grupo de investigación aparte sigue comprando suscripciones con una tarjeta del departamento. El responsable de ITAM pregunta al proveedor de la herramienta por la laguna y convence al departamento de que registre sus suscripciones.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega traen a la organización la mayor parte del software. Registra los componentes y suscripciones que añadas, genera listas de materiales en tus compilaciones y pregunta antes de usar una biblioteca con una licencia desconocida. Comparte los hallazgos con jurídico y seguridad.

### Equipos de servicio y operaciones

Los equipos de operaciones ejecutan el inventario, el parcheo y la medición. Mantén el inventario de software vinculado a los servicios, parchea con rapidez cuando aparezcan vulnerabilidades y recupera las licencias sin uso. Ayuda a compras a entender cómo se usan realmente los productos.

### Liderazgo y gobernanza

Los líderes son dueños del riesgo de incumplimiento y del gasto. Pide el derecho de uso y el consumo de los productos más grandes, una visión de las suscripciones y un plan para el riesgo del código abierto y de la cadena de suministro. Apoya una vía de compra lo bastante rápida para que la gente la use.

### Clientes y usuarios

Los clientes y usuarios se benefician cuando el software está disponible y es seguro. Solicita lo que necesites por la vía adecuada, devuelve lo que ya no uses y cuéntale al equipo las herramientas que te hayan resultado útiles. Los clientes de tus productos pueden pedir listas de materiales; espera que te lo pidan.

## Fallos frecuentes

- **Contar solo instalaciones.** La métrica de licencia es por núcleo o por usuario. En su lugar, registra la métrica y cuenta lo correcto.
- **Prueba de derecho de uso perdida.** No se encuentran los contratos ni las facturas. En su lugar, guárdalos con el registro del producto.
- **Software sin usar (shelfware).** Se compran licencias y no se usan. En su lugar, compara el derecho de uso con el uso y recupera.
- **Compras en la sombra.** Las suscripciones compradas con tarjetas escapan al proceso. En su lugar, haz rápida la vía aprobada y revisa el gasto en busca de excepciones.
- **Componentes de código abierto desconocidos.** Nadie puede enumerarlos. En su lugar, genera listas de materiales automáticamente en las compilaciones.
- **Ignorar los términos de licencia del código abierto.** Se pasan por alto las obligaciones del copyleft. En su lugar, contrasta las licencias con el uso y la distribución con asesoramiento jurídico.
- **Fiarse ciegamente de las herramientas.** Las herramientas pasan por alto componentes o enumeran otros erróneos. En su lugar, valida la salida con una muestra y pregunta a los proveedores por las lagunas.
- **Pánico ante la auditoría.** Los registros se reúnen después del aviso. En su lugar, mantén los registros al día y nombra un contacto de auditoría.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Derecho de uso y uso | Los registros están dispersos; el uso se desconoce | Los productos principales tienen registros de derecho de uso | El derecho de uso y el uso se registran para los productos principales y se comparan con regularidad | Las diferencias y las licencias sin uso se miden y se actúa sobre ellas | El derecho de uso y el uso se comparten con finanzas, compras y proveedores |
| Adquisición y suscripciones | El software lo compra cualquiera | Existe una vía aprobada para algunas compras | Las compras y suscripciones siguen una vía con responsables y fechas de renovación | El gasto y el uso de puestos se revisan antes de la renovación | Las compras, el uso y los contratos se coordinan en toda la organización |
| Código abierto y cadena de suministro | Los componentes se desconocen | Algunos equipos enumeran bibliotecas | Se generan listas de materiales en las compilaciones y se revisan las licencias | Los hallazgos de vulnerabilidades y licencias se siguen hasta su cierre | Las listas de materiales se comparten con clientes y proveedores según se exija |
| Auditoría y cumplimiento | Los avisos de auditoría causan pánico | Existe un contacto | Los registros se mantienen al día y existe una rutina de auditoría | El riesgo de incumplimiento se mide y se revisa | La práctica de cumplimiento se alinea entre proveedores y jurisdicciones |

## Lista de verificación

- [ ] Para nuestros productos de software más grandes conocemos el derecho de uso, la métrica de licencia y el uso.
- [ ] Los contratos, facturas y términos de licencia se guardan con los registros de producto.
- [ ] El derecho de uso y el uso se comparan al menos cada trimestre para los productos principales.
- [ ] Las licencias sin uso se recuperan tras consultar a los responsables.
- [ ] Las compras y suscripciones siguen una vía, con responsables y fechas de renovación registrados.
- [ ] Generamos una lista de materiales en la compilación de los productos que enviamos u operamos.
- [ ] Las licencias de código abierto de nuestros componentes se revisan frente a nuestro uso, con asesoramiento jurídico.
- [ ] Podemos encontrar qué servicios usan un componente o producto dado.
- [ ] Una persona con nombre se ocupa de los avisos de auditoría de proveedores.
- [ ] El software retirado se elimina de los sistemas y de los registros.

## Prompts de IA

**Propósito: comparar el derecho de uso y el consumo de un producto.**

```text
Ayúdame a comparar el derecho de uso y el uso de [producto].

Métrica de licencia (cómo cuenta el proveedor, con la redacción exacta del contrato): [pega].
Derecho de uso (lo que compramos, con fechas): [pega].
Datos de uso (instalaciones, usuarios, núcleos o lo que requiera la métrica): [pega datos reales].

Usando solo esta información, calcula la diferencia entre el derecho de uso y el uso, en la unidad del proveedor, y di si indica un déficit o un excedente. Enumera lo que no está claro en la redacción del contrato como preguntas para el proveedor o jurídico. No interpretes términos legales más allá del texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: revisar una lista de componentes de código abierto en busca de cuestiones de licencia.**

```text
Esta es una lista de componentes de código abierto de nuestro producto con nombre, versión y licencia según nuestras herramientas: [pega].
Cómo usamos y distribuimos el producto: [por ejemplo solo uso interno, servicio alojado, enviado a clientes].

Agrupa las licencias en familias permisivas y de copyleft según los nombres de las licencias. Para cada grupo, enumera los tipos de pregunta que deberíamos plantear a nuestro equipo jurídico dado cómo usamos y distribuimos el producto. Señala los componentes con licencias que faltan o se desconocen. No des asesoramiento jurídico ni digas qué exigen las licencias; enumera solo preguntas. Enumera de lo que no estés seguro.
```

**Propósito: preparar una consulta de respuesta a vulnerabilidades usando una lista de materiales.**

```text
Ayúdame a planificar cómo responderíamos a: "¿Usamos [nombre del componente y rango de versiones] y dónde?".

Lo que tenemos hoy: [por ejemplo listas de materiales en un repositorio, una hoja de cálculo, nada].
Sistemas y servicios dentro del alcance: [enumera].

Describe los pasos para averiguarlo, quién hace cada uno, qué datos necesita, qué podría salir mal y cuánto podría durar cada paso (deja las duraciones como [por medir]). Propón una mejora que acortaría la respuesta. No inventes nuestras herramientas. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: construir una revisión de suscripciones para el próximo trimestre.**

```text
Esta es una lista de nuestras suscripciones con responsable, coste mensual, puestos pagados, usuarios activos en los últimos 90 días, fecha de renovación y datos que contienen: [pega datos reales].

Usando solo estos datos, enumera las renovaciones de los próximos 90 días, calcula los puestos sin usar y su coste para cada una y destaca las suscripciones sin responsable. Para cada una, sugiere una pregunta para el responsable antes de la renovación. No recomiendes cancelar nada; señala candidatos para revisión. Enumera de lo que no estés seguro.
```

## Habilidades de IA

- [vendor-management](../../../../skills/vendor-management/SKILL.md): úsala para gestionar los contratos, las renovaciones y las relaciones con los proveedores de software.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): úsala para prepararte para una auditoría de un proveedor o de cumplimiento.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): úsala para pronosticar los costes de software y suscripciones.
- [risk-register](../../../../skills/risk-register/SKILL.md): úsala para registrar los riesgos de licencias, vulnerabilidades y cadena de suministro.
- [security-testing](../../../../skills/security-testing/SKILL.md): úsala para comprobar las dependencias y las compilaciones en busca de debilidades conocidas.

## Fuentes principales

- **Software asset management** (Wikipedia): la definición, los objetivos, las tecnologías y las partes de ISO/IEC 19770.
- **Software supply chain** (Wikipedia): riesgos, la lista de materiales de software, cifras de adopción y contexto regulatorio.
- **Open-source software** (Wikipedia): la definición, las familias de licencias y notas sobre riesgos y obligaciones.
- **ISO/IEC 19770** (International Organization for Standardization): la propia familia de normas; lee las partes vigentes para los requisitos exactos.

## Referencias

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
