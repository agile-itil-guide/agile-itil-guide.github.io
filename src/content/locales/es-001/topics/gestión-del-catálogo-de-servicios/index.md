# Gestión del Catálogo de Servicios

**Un catálogo de servicios (ITIL lo escribe "service catalogue") es una lista seleccionada de lo que ofrece una organización, con un responsable y una descripción sencilla para cada servicio, y su valor depende de que los usuarios lo encuentren útil y de que los responsables lo mantengan veraz.**

## Por qué importa

Pregunta a un usuario qué ofrece TI y a menudo obtendrás una respuesta vaga. Pregunta al equipo de TI y obtendrás una lista de sistemas. Las dos listas rara vez coinciden, y la diferencia causa malentendidos: los usuarios piden cosas que no existen, los equipos dan soporte a servicios que nadie usa y nadie sabe decir quién es responsable de qué. Un catálogo de servicios cierra esa brecha declarando, en un solo lugar y en términos sencillos, qué se ofrece y quién responde de ello.

Para los equipos ágiles, el catálogo es también una manera de hacer visible la titularidad. Un equipo que construye y opera un servicio debería poder decir: "esto es lo que ofrecemos, a esta persona hay que preguntar, esto es lo que puedes esperar". Sin eso, las solicitudes llegan al lugar equivocado, los incidentes rebotan entre equipos y el personal nuevo no encuentra ayuda.

El [artículo de Wikipedia sobre los catálogos de servicios](https://en.wikipedia.org/wiki/Service_catalog) describe un catálogo de servicios como una colección organizada y seleccionada de servicios de negocio y de tecnología de la información dentro de una empresa, que sirve como herramienta de gestión del conocimiento al designar expertos en la materia para cada servicio enumerado. Señala que el volumen de Diseño del Servicio de ITIL define un catálogo de servicios de TI como una lista exhaustiva de servicios solo de TI y la única parte de la cartera de servicios publicada para los clientes, sin especificar la edición de ITIL. Este tema se apoya en esa descripción, y en los otros temas de la guía, y mantiene el catálogo práctico y ligero.

## Conceptos clave

### Qué hay en un catálogo

Según Wikipedia, cada entrada de un catálogo de servicios suele incluir un responsable con nombre, una descripción, una categoría, tipos de solicitud relacionados, servicios subyacentes, derechos de uso, costes, cómo se solicita y se cumple el servicio y contactos de escalamiento. Las categorías comunes incluyen TI, operaciones y cumplimiento. No necesitas todos estos datos para cada servicio. Un buen catálogo empieza con los pocos que realmente necesitan los usuarios y el personal de soporte.

| Campo | Por qué ayuda | Quién lo usa |
|---|---|---|
| **Nombre y descripción en palabras sencillas** | Los usuarios reconocen lo que se ofrece | Usuarios, centro de servicios |
| **Responsable** | Alguien responde del servicio | Todos |
| **Quién puede usarlo (derecho de uso)** | Evita solicitudes inútiles | Usuarios, centro de servicios |
| **Cómo solicitar o pedir ayuda** | Lleva a los usuarios al lugar correcto | Usuarios, centro de servicios |
| **De qué depende (servicios subyacentes)** | Muestra qué más debe funcionar | Operaciones, equipos de entrega |
| **Coste, si se cobra** | Apoya decisiones y presupuestos | Clientes, finanzas |
| **Nivel de servicio o expectativa** | Fija expectativas | Usuarios, clientes (véase Tema 3.7 — Gestión de Niveles de Servicio) |
| **Contacto de escalamiento** | Acelera la ayuda durante los problemas | Centro de servicios, operaciones |

### Catálogo y cartera

El artículo de Wikipedia sitúa el catálogo de servicios de TI como un subconjunto del catálogo empresarial más amplio. En el vocabulario de ITIL, la cartera de servicios es el conjunto completo de servicios, incluidos los que están en desarrollo y los que se están retirando, y el catálogo es la parte publicada para los clientes. Las fuentes leídas aquí no definen la cartera en detalle: el artículo sobre la gestión de la cartera de servicios redirige a la gestión de la cartera de TI, que dice solo que ITIL v3 pide una práctica de gestión de la cartera de servicios que parece funcionalmente equivalente a la gestión de la cartera de TI. Trata la idea de cartera así: el catálogo es lo que ofreces ahora, y la cartera es además lo que estás construyendo y retirando (véase Tema 5.7 — Gobernanza, Riesgo y Cumplimiento para las decisiones de cartera).

### Catálogos empresariales y de TI

Un catálogo de servicios empresarial cubre servicios de varias funciones, como recursos humanos, instalaciones y TI. Un catálogo de servicios de TI es un subconjunto. El artículo cita beneficios de un catálogo: centralizar servicios en empresas distribuidas, identificar lagunas y redundancias de servicios, seguir la asignación de recursos y medir la demanda, la oferta, los tiempos de aprobación, los tiempos de entrega y las finanzas del servicio. Para los servicios en la nube cita el autoaprovisionamiento y las definiciones estandarizadas que ayudan a la planificación de la capacidad y a las previsiones de compra. Son afirmaciones del artículo, basadas en sus fuentes citadas.

### Vista de negocio y vista técnica

Muchas organizaciones distinguen lo que ven los clientes de lo que necesita internamente el proveedor. Las fuentes leídas aquí no hacen la distinción, así que trátalo como práctica común. La **vista orientada al cliente** enumera los servicios en términos del usuario ("Correo y calendario"). La **vista técnica** enumera los componentes y los equipos detrás de ellos ("Servidores de correo, filtro de spam, servicio de directorio"). La vista del cliente ayuda a los usuarios a elegir. La vista técnica ayuda a operaciones a entender las dependencias (véase Tema 4.4 — Gestión de la Configuración). Mantén las dos vinculadas pero separadas, para que los usuarios no se encuentren con nombres de componentes.

### El catálogo como herramienta de conocimiento

El artículo de Wikipedia subraya que el catálogo designa expertos en la materia para cada servicio. Esto lo convierte en un mapa de quién sabe qué. Un catálogo mantenido al día ayuda al centro de servicios a enrutar los contactos, ayuda al personal nuevo a encontrar ayuda y ayuda a quienes responden a incidentes a llegar a la persona adecuada (véase Tema 3.9 — Gestión del Conocimiento).

### Catálogo y solicitudes

El catálogo suele incluir las solicitudes que los usuarios pueden hacer para cada servicio, como "solicitar acceso" o "notificar un fallo". Un modelo de solicitud describe cómo se cumple cada una (véase Tema 3.6 — Gestión de Solicitudes de Servicio). No todos los servicios necesitan solicitudes, y no todas las solicitudes necesitan una entrada en el catálogo, pero las solicitudes frecuentes deben ser fáciles de encontrar.

### Mantenerlo veraz

Un catálogo se queda obsoleto rápido si nadie lo posee. Los servicios cambian, los equipos se reorganizan y las descripciones se alejan de la realidad. La disciplina más útil es un ciclo de revisión: cada responsable confirma sus entradas según un calendario y los servicios que no se usan se retiran. El artículo de Wikipedia no discute críticas ni límites, pero la experiencia práctica es coherente: un catálogo equivocado es peor que ningún catálogo, porque envía a la gente al lugar equivocado con seguridad.

### Catálogos y equipos ágiles

Los equipos ágiles suelen resistirse a los catálogos pesados porque esperan burocracia. Un catálogo ligero es compatible con las formas de trabajo ágiles. Puede ser un documento o una página compartidos, mantenidos por los propios responsables, con unos pocos campos por servicio. La prueba es el uso: ¿lo consultan realmente los usuarios y el centro?

## Buenas prácticas

1. **Enumera los servicios con las palabras de los usuarios.** Empieza preguntando a los usuarios y al centro de servicios cómo llamarían a cada cosa. Nombra los servicios por lo que hacen los usuarios ("Unirse a una videorreunión") y no por la tecnología ("Plataforma de conferencias").
2. **Da a cada servicio un responsable con nombre.** Una persona debe responder de cada servicio. Cuando un servicio tenga varias partes, nombra un responsable del conjunto y enumera a los colaboradores.
3. **Empieza poco a poco.** Comienza con los 10 a 20 servicios por los que más preguntan los usuarios. Añade más a medida que aprendas qué es útil. Una lista corta y exacta es mejor que una larga y obsoleta.
4. **Incluye solo lo que la gente usa.** Para cada campo, pregunta quién lo usa y para qué. Elimina los campos que nadie usa. Añade un campo solo cuando alguien lo necesite.
5. **Enlaza con las solicitudes y la ayuda.** Para cada servicio, muestra cómo pedir algo, notificar un fallo y encontrar ayuda. Enlaza con la base de conocimiento (véase Tema 3.9 — Gestión del Conocimiento).
6. **Muestra las expectativas del servicio.** Declara en términos sencillos lo que pueden esperar los usuarios, como el horario de soporte y la respuesta típica. Enlaza con el acuerdo formal cuando lo haya.
7. **Registra las dependencias.** Para cada servicio, anota los principales servicios y proveedores de los que depende. Esto ayuda a la respuesta a incidentes y a la planificación de cambios.
8. **Separa la vista del cliente de la vista técnica.** Mantén las descripciones orientadas al usuario libres de jerga. Enlázalas con registros técnicos donde existan.
9. **Revisa según un calendario.** Pide a cada responsable que confirme sus entradas al menos dos veces al año y retira los servicios que nadie usa. Muestra la fecha de la última revisión en cada entrada.
10. **Hazlo fácil de encontrar y de usar.** Pon el catálogo donde los usuarios ya miran, como la intranet o el portal. Prueba la búsqueda con consultas reales.
11. **Usa el catálogo para encontrar lagunas y solapamientos.** Busca servicios que nadie posee, servicios que se duplican entre sí y solicitudes sin servicio correspondiente. Lleva los hallazgos a la planificación (véase Tema 5.5 — Propiedad de Productos y Servicios).
12. **Trata los cambios del catálogo como cambios de servicio.** Cuando añadas, cambies o retires un servicio, anúncialo al centro y a los usuarios afectados, como harías con una versión.

## Preguntas para conversar con tu equipo

**Si una persona nueva preguntara qué ofrecemos, ¿qué responderíamos y diríamos todos lo mismo?**

Pide a cada persona que enumere los servicios en dos minutos y compara. Las diferencias muestran cuán difusos son los límites. Quien facilite puede preguntar qué elementos no reconocerían los usuarios. Usa la lista combinada como borrador de catálogo y marca los elementos donde hay desacuerdo.

**¿Qué servicios no tienen un responsable claro?**

Recorre la lista y marca aquellos en los que nadie sabe decir quién responde del servicio. Los servicios sin responsable suelen causar los retrasos más largos en incidentes y solicitudes. Pregunta qué impide que una persona asuma la titularidad: tiempo, autoridad o límites poco claros. Acordad un responsable o la decisión de retirar el servicio para cada uno.

**¿Qué piden los usuarios que no tenemos listado y qué tenemos listado que nadie pide?**

Compara los datos de solicitudes con la lista. Las solicitudes sin servicio correspondiente revelan lagunas; los servicios listados sin solicitudes revelan candidatos a retirarse. Ten cautela: algunos servicios se usan en silencio. Pregunta a los usuarios antes de eliminar. Elige una laguna y un candidato que examinar.

**¿Qué necesitaría ver un usuario para elegir el servicio correcto sin llamarnos?**

Toma una elección común, como qué herramienta usar para compartir archivos. Pregunta qué información ayudaría: una descripción breve, para quién es, una comparación. Redacta una entrada de un párrafo y pruébala con dos usuarios. El objetivo es un catálogo que reduzca las llamadas por ser claro.

**¿Cómo nos enteramos de que un servicio ha cambiado y el catálogo está desactualizado?**

Pregunta cuándo se hizo la última revisión y quién la hizo. Discute los desencadenantes, como una reorganización o una versión importante, y un ciclo regular. Una fecha visible de "última revisión" en cada entrada ayuda. Acordad la fecha de la primera revisión y quién es responsable.

**¿De qué dependemos que no esté en el catálogo?**

Enumera las plataformas y proveedores detrás de tus servicios. Pregunta cuáles están listados y quién es responsable de ellos. Las dependencias sin responsable son riesgos. Elige una que añadir a la vista técnica.

## En la práctica: un ejemplo de ITIL ágil

Un consejo regional tiene 120 personas en su departamento de TI que atienden a 2.500 empleados del consejo y a varios servicios de cara al público. El personal se queja de que no sabe a quién pedir ayuda, y el centro de servicios dedica buena parte de su tiempo a redirigir llamadas. El consejo construyó una vez un catálogo de servicios con 300 entradas, pero apenas se usa y está en su mayor parte desactualizado.

La jefa de prestación de servicios decide empezar de nuevo, en pequeño. Pide al centro de servicios los 30 motivos más comunes por los que la gente los contacta y los agrupa en 15 servicios con las palabras de los usuarios: "Correo y calendario", "Archivos y compartición", "Portátiles y dispositivos", "Sitio web del consejo", "Sistema de finanzas" y así sucesivamente. Para cada uno, un responsable con nombre escribe cuatro cosas: una descripción de dos frases, para quién es, cómo obtener ayuda y qué esperar. Las dependencias se registran en una lista técnica aparte para operaciones. El catálogo es una única página web en la intranet del consejo, y cada entrada muestra la fecha en que su responsable la confirmó por última vez.

Tras tres meses, bajan las llamadas al centro sobre a quién preguntar y los responsables notan lagunas: nadie era responsable del sistema de reserva de salas de reuniones, y dos servicios se solapaban. Se asignan y se fusionan. Quedan problemas. Tres responsables no han confirmado sus entradas y parte del personal sigue llamando al centro por costumbre. La jefa de prestación de servicios establece un ciclo de recordatorios y organiza que el centro remita a quien llama al catálogo mientras atiende su solicitud. También descubre que algunas entradas están escritas en lenguaje técnico y pide a una oficial de comunicación que las revise.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega deben figurar como responsables de los servicios que construyen y operan y deben mantener al día sus entradas. Cuando lances o retires un servicio, actualiza el catálogo e informa al centro de servicios. Usa el catálogo para encontrar con quién hablar sobre una dependencia.

### Equipos de servicio y operaciones

Operaciones y el centro de servicios son los usuarios más intensivos. Di a los responsables qué está mal o falta en las entradas y usa el catálogo para el enrutamiento y el escalamiento. Mantén la vista técnica vinculada a la vista del cliente, para que quienes responden a incidentes puedan ver qué depende de qué.

### Liderazgo y gobernanza

Los líderes pueden usar el catálogo para ver qué ofrece la organización, qué se solapa y qué está huérfano. Pide que se aborden las lagunas y los duplicados y que se nombren los responsables. No exijas todos los campos para todos los servicios; pide lo que apoye las decisiones.

### Clientes y usuarios

Los clientes y usuarios obtienen una visión clara de lo que pueden pedir y de qué esperar. Usa el catálogo para encontrar el servicio adecuado y dile a los responsables cuándo una entrada es errónea o poco clara. Si no encuentras lo que necesitas, dilo, porque es evidencia de una laguna.

## Fallos frecuentes

- **Demasiado grande, demasiado pronto.** Se crean cientos de entradas y no se mantienen. En su lugar, empieza con los servicios más usados y crece.
- **Escrito en el lenguaje del proveedor.** Los usuarios no encuentran lo que necesitan. En su lugar, nombra los servicios por lo que hacen los usuarios y pruébalos con usuarios.
- **Sin responsables.** Nadie mantiene veraces las entradas. En su lugar, nombra un responsable para cada entrada y muestra las fechas de revisión.
- **Un catálogo que nadie usa.** Está en un sitio que los usuarios no visitan. En su lugar, colócalo donde la gente ya mira y haz que el centro remita a él.
- **Mezclar la vista del cliente y la técnica.** Los usuarios se enfrentan a nombres de componentes. En su lugar, mantén una vista clara del cliente y enlaza una técnica para operaciones.
- **Sin retiros.** Los servicios muertos siguen listados. En su lugar, revisa el uso y retira lo que nadie necesita.
- **Tratarlo como un proyecto puntual.** El catálogo se queda obsoleto tras el lanzamiento. En su lugar, establece un ciclo de revisión y hazlo parte de los cambios.
- **Demasiados campos obligatorios.** Los responsables rellenan campos para satisfacer la plantilla. En su lugar, exige solo lo que alguien usa.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Cobertura y claridad | Los servicios se conocen de manera informal | Existe una lista de algunos servicios | Un catálogo de los servicios principales con las palabras de los usuarios y con responsables | Se miden el uso y las lagunas y se ajusta el catálogo | El catálogo abarca funciones y socios y se configura con los usuarios |
| Titularidad y actualidad | Nadie es responsable de la lista | Algunos responsables confirman las entradas de vez en cuando | Cada entrada tiene un responsable y una fecha de revisión | Las revisiones vencidas se siguen y se resuelven | La titularidad y la revisión son rutinarias en toda la organización |
| Vínculo con solicitudes y ayuda | Las solicitudes van por correo o teléfono | Algunas entradas enlazan con formularios o ayuda | Las entradas enlazan con solicitudes, conocimiento y vías de soporte | Se miden los clics y la reducción de llamadas | Las solicitudes, el conocimiento y el soporte están integrados entre funciones |
| Dependencias y decisiones | Las dependencias son conocimiento tácito | Se enumeran algunas dependencias | Las dependencias se registran y se usan en el trabajo de incidentes y cambios | Los datos de dependencias apoyan la planificación y la revisión de riesgos | Las dependencias se comparten con proveedores y se usan para planificar conjuntamente |

## Lista de verificación

- [ ] Tenemos una lista de servicios con las palabras de los usuarios, empezando por los más usados.
- [ ] Cada servicio tiene un responsable con nombre.
- [ ] Cada entrada dice para quién es, cómo obtener ayuda y qué esperar.
- [ ] El catálogo está donde ya miran los usuarios y el centro de servicios.
- [ ] Las entradas muestran la fecha en que se confirmaron por última vez.
- [ ] Los responsables revisan sus entradas al menos dos veces al año.
- [ ] Las dependencias principales están registradas en una vista técnica.
- [ ] Los servicios no usados se revisan para su retiro.
- [ ] Añadir, cambiar o retirar un servicio se anuncia al centro y a los usuarios.
- [ ] Hemos probado el catálogo con consultas reales de usuarios.

## Prompts de IA

**Propósito: convertir los datos de contactos en un borrador de lista de servicios con las palabras de los usuarios.**

```text
A continuación están los motivos por los que la gente contactó con nuestro centro de servicios en los últimos [periodo]: [pega descripciones breves y anonimizadas o recuentos por categoría].

Agrúpalos en entre 10 y 20 servicios candidatos, cada uno nombrado con palabras sencillas que un usuario no técnico reconocería, como "Correo y calendario". Para cada uno, da una descripción de dos frases basada solo en los contactos, los contactos que encajan en él y una pregunta que hacer a su responsable. Enumera los contactos que no encajan. No inventes servicios ni sistemas que no aparezcan en los datos. Hazme primero preguntas aclaratorias si los datos son escasos y enumera de lo que no estés seguro.
```

**Propósito: escribir una entrada clara del catálogo.**

```text
Ayúdame a escribir una entrada del catálogo de servicios para [servicio].

Qué hace, con mis propias palabras: [describe].
Quién puede usarlo: [describe].
Cómo obtienen ayuda o hacen solicitudes los usuarios: [describe].
Horario de soporte y qué pueden esperar los usuarios: [describe, o escribe "desconocido"].
Principales cosas de las que depende: [enumera].
Responsable: [rol].

Escribe una entrada breve para los usuarios (sin jerga, de menos de 80 palabras) y una nota técnica aparte para operaciones. Marca como suposición todo lo que hayas añadido. No inventes niveles de servicio ni contactos. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: revisar un catálogo en busca de lagunas, solapamientos y huérfanos.**

```text
Este es nuestro catálogo de servicios (nombres, responsables, descripciones y fechas de última revisión): [pega].
Estos son los datos de lo que los usuarios solicitan o notifican: [pega recuentos por tema, o escribe "ninguno"].

Usando solo este texto, enumera: los servicios sin responsable o con una revisión vencida; los pares de servicios que parecen solaparse; los temas de solicitud sin servicio correspondiente; y los servicios sin solicitudes en los datos. Para cada uno, sugiere una pregunta para el responsable o el centro en lugar de una conclusión. No adivines sobre servicios que no están listados. Enumera de lo que no estés seguro.
```

**Propósito: planificar una revisión del catálogo con los responsables.**

```text
Planifica una revisión de 60 minutos de nuestro catálogo de servicios con [número] responsables de servicio.

Estado del catálogo: [describe, como el número de entradas y su antigüedad].
Problemas que conocemos: [enumera].

Da una agenda con tiempos en la que cada responsable confirme o corrija sus entradas, se examinen los solapamientos y las lagunas, se decida qué retirar y se acuerde una fecha de revisión. Incluye una plantilla de una página para que los responsables se preparen. Mantenlo libre de cualquier herramienta concreta. Hazme primero preguntas aclaratorias si falta información, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [service-catalog](../../../../skills/service-catalog/SKILL.md): úsala para redactar entradas y estructurar un catálogo de servicios.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): úsala para entender quién usa cada servicio y qué necesita.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): úsala para averiguar qué solicitudes y servicios se usan más.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): úsala para registrar quién es responsable, da soporte y es consultado sobre cada servicio.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): úsala para planificar cómo se añadirán, cambiarán o retirarán servicios con el tiempo.

## Fuentes principales

- **Service catalog** (Wikipedia): una breve descripción de los contenidos, los beneficios y la definición de ITIL de un catálogo de servicios de TI.
- **IT portfolio management** (Wikipedia): contexto sobre los conceptos de cartera, incluida la nota de que la gestión de la cartera de servicios de ITIL v3 parece funcionalmente equivalente.
- **ITIL** (Wikipedia): contexto sobre las versiones de ITIL y de dónde proceden las ideas de catálogo y de cartera.
- **Knowledge management** (Wikipedia): contexto sobre cómo actúan los catálogos como herramientas de conocimiento.

## Referencias

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
