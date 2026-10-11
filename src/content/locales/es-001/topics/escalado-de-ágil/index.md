# Escalado de Ágil

**Escalar lo ágil significa coordinar muchos equipos, servicios y proveedores sin perder los bucles cortos de retroalimentación que hicieron funcionar lo ágil, y el riesgo principal es añadir capas de proceso antes de saber qué problema se está resolviendo.**

## Por qué importa

Un solo equipo ágil de hasta diez personas puede hablar entre sí todos los días. Un servicio real suele implicar más: varios equipos de entrega, un grupo de operaciones, un centro de servicios, seguridad, un equipo de redes y proveedores. Cuando el trabajo de muchos grupos debe encajar, la conversación diaria de un equipo no basta y surgen problemas nuevos. Las prioridades entran en conflicto, las dependencias detienen el trabajo y cada equipo mejora su propia parte mientras el servicio en su conjunto no mejora.

Varios marcos dicen resolver esto. Difieren en tamaño, coste y filosofía, y suscitan opiniones fuertes. Algunas organizaciones adoptan un marco grande como programa y pasan años en la implantación. Otras escalan quitando barreras y manteniendo un conjunto pequeño de reglas. La posición honesta, respaldada por el [artículo de Wikipedia sobre el desarrollo ágil de software](https://en.wikipedia.org/wiki/Agile_software_development), es que las opiniones sobre la eficacia de los marcos de escalado difieren y la evidencia es limitada.

Para las personas de la gestión de servicios de TI (ITSM), el escalado importa porque ITIL ya funciona a escala. Describe un sistema de valor del servicio que enlaza muchas prácticas y partes (véase Tema 2.3 — El Sistema de Valor del Servicio de ITIL). La pregunta en la que ayuda este tema es cómo combinar ambos: cómo coordinar muchos equipos ágiles manteniendo las prácticas de gestión de servicios que protegen a los usuarios, y sin construir una segunda capa de burocracia sobre la primera.

## Conceptos clave

### Por qué un equipo es distinto de muchos

El artículo de Wikipedia sobre el desarrollo ágil de software informa de que el escalado plantea dificultades cuando un proyecto implica a más de unos 20 desarrolladores o cuando los equipos están distribuidos entre ubicaciones. Existen estrategias y marcos para estos casos, pero el artículo señala opiniones contrapuestas sobre si encajan en la definición de ágil.

Tres problemas se repiten cuando se añaden equipos:

- **Alineación:** los equipos necesitan una dirección compartida y prioridades coherentes, o optimizarán cosas distintas.
- **Dependencias:** el trabajo de un equipo espera a otro, y las esperas se multiplican a medida que crece el número de equipos.
- **Integración:** el resultado de muchos equipos debe unirse en algo que funcione como servicio, y cuanto más tarde lo pruebes, más costosas serán las sorpresas.

### Cuatro enfoques conocidos

La tabla siguiente resume cuatro enfoques con nombre. Los resúmenes se apoyan en los artículos de Wikipedia y en las páginas de los propios responsables de los marcos tal como se leyeron para esta guía; comprueba las versiones actuales en las fuentes antes de fiarte de los detalles.

| Enfoque | Creadores o responsable | Idea principal | Tamaño y forma |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Descrito por primera vez en el libro de 2007 de Dean Leffingwell *Scaling Software Agility*; materiales publicados por Scaled Agile, Inc. | Un conjunto de patrones de organización y flujo de trabajo que se nutre de lo ágil, del desarrollo lean de productos y del pensamiento sistémico | Configuraciones desde el nivel de equipo y de programa (Agile Release Trains) hasta grandes soluciones y carteras |
| **Large-Scale Scrum (LeSS)** | Craig Larman y Bas Vodde | Escalar el propio Scrum: un Product Owner y un Product Backlog para un producto, muchos equipos de funcionalidad multifuncionales, con los menos roles y artefactos adicionales posibles | LeSS para unos dos a ocho equipos; LeSS Huge para más, con Áreas de Requisitos de varios equipos cada una |
| **Disciplined Agile (DA)** | Scott Ambler y Mark Lines; adquirido por el Project Management Institute (PMI) en agosto de 2019 | Un conjunto de herramientas con objetivos de proceso y opciones que ayuda a un equipo a elegir su propia forma de trabajar según el contexto | Híbrido y sensible al contexto, con varios ciclos de vida y una capa para la empresa |
| **Scrum@Scale y otros** | Nombrados junto a SAFe en el artículo de Wikipedia | Otros marcos para coordinar varios equipos Scrum | Consulta los sitios de sus responsables |

### SAFe con más detalle

El artículo de Wikipedia dice que SAFe se describió formalmente por primera vez en 2007, con un primer lanzamiento en 2011 y la versión 6.0 en marzo de 2023. Para la versión 5.1 enumera cuatro configuraciones: Essential SAFe (nivel de equipo y de programa), Large Solution SAFe, Portfolio SAFe y Full SAFe. El artículo también enumera diez principios, entre ellos adoptar una visión económica y aplicar el pensamiento sistémico.

SAFe ha recibido críticas abiertas, que el artículo recoge. Thoughtworks sostuvo que el control descendente genera desperdicio, Ken Schwaber lo criticó en una publicación de 2013 y Jeff Gothelf argumentó en 2021 que SAFe no es ágil. Los críticos lo llaman jerárquico e inflexible y dicen que puede dar a una organización la apariencia de agilidad conservando los antiguos procesos. Los partidarios valoran su vocabulario común y su estructura para grandes organizaciones. Lee ambas posturas antes de decidir.

### LeSS: escalar quitando

Larman y Vodde describen LeSS como Scrum aplicado a muchos equipos que trabajan en un solo producto. No añade ninguna capa sobre Scrum. Según la introducción del propio marco, un Product Owner gestiona un Product Backlog y los equipos producen un único producto entregable en un Sprint común. LeSS enuncia la idea de "más con menos": menos roles, artefactos y reglas producen equipos más responsables. Para el método subyacente, véase Tema 1.4 — Pronóstico de Entrega y Métricas de Planificación.

### Disciplined Agile: elige tu forma de trabajar

El artículo de Wikipedia sobre Disciplined Agile Delivery describe un conjunto de herramientas híbrido y centrado en las personas que cubre todo el ciclo de vida de la entrega. Admite seis ciclos de vida y describe 21 objetivos de proceso. El enfoque consiste en ayudar a los equipos a elegir las prácticas que se ajusten a su situación, en lugar de prescribir un marco. El artículo lleva un aviso de mantenimiento que indica que puede apoyarse demasiado en fuentes cercanas al tema.

### Scrum de Scrums y coordinación sencilla

Antes de adoptar un marco, considera las herramientas más simples. Un "scrum de scrums" reúne a representantes de varios equipos para compartir avances y resolver dependencias. La planificación trimestral compartida, una lista de trabajo pendiente común para un producto y una reunión periódica de líderes de equipo son otras opciones ligeras. Muchas organizaciones escalan lo suficientemente bien con ellas.

### Escalar en una organización de servicios

En una organización de TI, los equipos pueden organizarse de varias maneras, y la elección afecta a lo bien que escala lo ágil:

| Organización | Cómo se organizan los equipos | Efecto en el escalado |
|---|---|---|
| **Por componente** | Un equipo por capa técnica o sistema | Las funcionalidades necesitan varios equipos, por lo que hay muchas dependencias |
| **Por funcionalidad o producto** | Equipos multifuncionales que poseen una porción de cara al cliente | Menos dependencias; requiere estándares compartidos para las plataformas |
| **Por servicio** | Un equipo por servicio, que posee su construcción y su operación | Próximo a la gestión de servicios; requiere una manera de tratar las plataformas compartidas |
| **Plataforma más flujos** | Equipos que ofrecen una plataforma y equipos que la usan | Requiere acuerdos de servicio claros entre ellos |

Ningún patrón es el mejor para todos los casos. Pasar de equipos por componente a equipos organizados en torno a productos o servicios es un paso habitual, y es difícil de dar porque cambia quién depende de quién.

### Qué dicen la investigación y la crítica

El artículo sobre el desarrollo ágil de software afirma que la evidencia empírica sobre los métodos ágiles en general es limitada y poco concluyente. Para los marcos de escalado, las fuentes consultadas ofrecen sobre todo opiniones y material de proveedores. Trata con cuidado cualquier afirmación de mejora medida, pide la evidencia que la respalda y prueba cualquier marco en una pequeña parte de tu organización primero.

## Buenas prácticas

1. **Empieza por el problema, no por el marco.** Nombra qué va mal: dependencias lentas, prioridades en conflicto, integración tardía. Elige el enfoque más ligero que lo aborde y adopta más solo si se queda corto.
2. **Prueba primero la coordinación más sencilla.** La planificación compartida, un scrum de scrums y una lista de trabajo pendiente común para cada producto resuelven muchos problemas a bajo coste. Añade estructura solo cuando estos dejen de funcionar.
3. **Organiza los equipos en torno al valor.** Prefiere equipos que posean un producto o servicio de extremo a extremo, con las habilidades para construirlo y operarlo. Esto reduce los traspasos y las dependencias y encaja con la manera en que ITIL concibe los servicios (véase Tema 2.6 — La Cadena de Valor del Servicio).
4. **Mantén una lista ordenada por producto.** Tener un solo Product Backlog con un único responsable, como recomienda LeSS, elimina buena parte del conflicto entre equipos. Donde no sea posible, haz visible el orden de las prioridades entre equipos.
5. **Planifica juntos con un ritmo regular.** Reúne a los equipos y a las partes interesadas clave cada pocos meses para alinear objetivos, dependencias y riesgos. Mantén el evento breve y basado en evidencia, y evita convertirlo en una negociación sobre planes detallados.
6. **Integra de forma continua.** Prueba juntos los resultados de todos los equipos con la mayor frecuencia posible, idealmente cada día. La integración tardía es el motivo más común por el que los grandes programas sorprenden a sus patrocinadores (véase Tema 1.6 — Programación Extrema).
7. **Haz visibles las dependencias y redúcelas.** Enumera qué equipos esperan a cuáles y cuenta las esperas. Redúcelas cambiando los límites de los equipos, compartiendo habilidades o construyendo plataformas compartidas con interfaces claras.
8. **Define acuerdos de servicio entre equipos.** Donde un equipo ofrece una plataforma o un servicio a otro, acordad lo que se espera: disponibilidad, respuesta, horario de soporte y cómo solicitar cambios (véase Tema 3.7 — Gestión de Niveles de Servicio).
9. **Adapta y anota lo que cambiaste.** Sea cual sea el marco que adoptes, registra qué partes sigues, cuáles omites y por qué. Etiquetas honestas evitan que un híbrido sea juzgado frente a un marco que nunca pretendió seguir.
10. **Pilota antes de desplegar.** Prueba el enfoque con unos pocos equipos, mide los resultados que te importan y aprende. Extiéndelo solo cuando el piloto muestre un beneficio que puedas describir.
11. **Mantén la gobernanza ligera y basada en resultados.** Pide evidencia como el flujo de entrega, las tendencias de incidentes y la opinión de los usuarios, y no informes de estado que cada equipo escribe en un formato distinto (véase Tema 5.7 — Gobernanza, Riesgo y Cumplimiento).
12. **Revisa la estructura con regularidad.** Realiza una revisión una o dos veces al año para preguntar si los límites de los equipos, los roles y las ceremonias siguen sirviendo al trabajo. Las estructuras que eran adecuadas para 30 personas pueden ser erróneas para 300.

## Preguntas para conversar con tu equipo

**¿Qué problema esperamos que resuelva el escalado y cómo sabremos que se ha resuelto?**

Pide a las personas que nombren el dolor: integración tardía, prioridades en conflicto, largas esperas de otros equipos. Anota cada uno con un ejemplo reciente. Un marco elegido sin un problema declarado es una solución en busca de un problema. Quien facilite puede preguntar cuál sería la solución más simple posible para cada problema y qué evidencia mostraría que funcionó.

**¿A qué otros equipos esperamos más y cuánto esperamos?**

Mapea las dependencias en una pared y añade la espera típica de cada una. Los equipos que se creían independientes suelen sorprenderse. Pregunta cuáles dependencias son reales y cuáles proceden de límites históricos entre equipos. Elige una dependencia que eliminar, ya sea cambiando cómo se organizan los equipos o compartiendo habilidades.

**¿Quién decide el orden del trabajo entre nuestros equipos y cómo nos enteramos?**

Sigue un conflicto de prioridad reciente desde el principio hasta su resolución. Busca escalamientos, reuniones y acuerdos informales. Pregunta si una única persona responsable, como en LeSS, podría tomar la decisión. Considera qué se perdería o se ganaría. Un buen resultado es una vía clara para decidir los conflictos, aunque no sea un rol nuevo.

**¿Qué nos daría un marco como SAFe, LeSS o Disciplined Agile que no podamos obtener de forma más barata?**

Pide a alguien que haya leído sobre cada uno que lo explique en unas pocas frases y pide las críticas más fuertes. El artículo de Wikipedia sobre SAFe enumera varias, y los sitios de los responsables de los marcos enumeran los beneficios. Quien facilite debe mantener la discusión práctica: ¿qué haríamos el lunes si lo adoptáramos y quién tendría que cambiar qué? Decidid qué probar, si algo, y qué dejar como está.

**¿Cómo comprobamos que el trabajo de todos nuestros equipos encaja y con qué frecuencia?**

Cuenta los días entre un cambio de un equipo y su primera prueba con los cambios de todos los demás. Los intervalos largos significan sorpresas mayores. Pregunta qué impide la integración diaria, como los entornos, los datos de prueba o la propiedad. Elige un obstáculo que eliminar.

**¿Cuáles de nuestros controles se aplican a todos los equipos de la misma manera y cuáles deberían depender del riesgo?**

Enumera los controles estándar, como revisiones, aprobaciones e informes. Pregunta cuáles se ajustan para el trabajo de bajo riesgo. Los controles uniformes son fáciles de administrar y lentos para todos. Los controles que dependen del riesgo necesitan criterios claros. Elige un control que revisar.

## En la práctica: un ejemplo de ITIL ágil

El grupo de TI de un gran banco minorista tiene 14 equipos de entrega y un grupo central de operaciones. Cada equipo ha adoptado Scrum, pero los clientes del banco ven pocas mejoras. Las versiones de la aplicación de banca móvil necesitan cambios de cinco equipos, y cada versión la coordina una oficina de programa que sigue las dependencias en una hoja de cálculo. Una versión reciente se retrasó tres semanas porque dos equipos descubrieron en el último minuto que sus cambios eran incompatibles.

Un arquitecto y el jefe de operaciones realizan un estudio de seis meses de versiones. Descubren que la mayoría de los retrasos proceden de la integración tardía y de prioridades poco claras entre los equipos que comparten una lista de funcionalidades móviles. Consideran adoptar un marco grande, pero deciden empezar poco a poco. Crean una única lista de trabajo pendiente para la aplicación móvil con una responsable de producto y fusionan la planificación de los cinco equipos en una sesión conjunta cada seis semanas. Configuran una canalización compartida que compila y prueba cada noche todos los cambios de los equipos juntos, y añaden al grupo de operaciones a la sesión de planificación conjunta.

Tras dos trimestres, el número de incompatibilidades de último minuto baja y las versiones salen cada dos semanas. Algunos problemas continúan. La responsable de producto lucha con el volumen de solicitudes y dedica la mayor parte de su tiempo al arbitraje, y dos equipos siguen dependiendo de un equipo central de bases de datos con una cola larga. El banco acuerda hacer visible la cola del equipo de bases de datos en la planificación conjunta y probar una vía de autoservicio para los cambios comunes en bases de datos. También decide posponer cualquier decisión sobre un marco hasta que una segunda área de producto haya probado el mismo enfoque.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega cargan con la mayor parte del peso del escalado: planificación compartida, canalizaciones compartidas y acuerdos con los vecinos. Trabaja para reducir las dependencias en origen, aprendiendo las habilidades del equipo siguiente o construyendo interfaces que no requieran coordinación. Participa en los eventos de planificación con información real sobre el progreso y el riesgo.

### Equipos de servicio y operaciones

El personal de operaciones debe formar parte de la planificación desde el principio, ya que muchas dependencias entre equipos son operativas: entornos, accesos, monitorización y soporte. Lleva datos del servicio a la sesión de planificación y acuerda niveles de servicio con los equipos que dependen de ti. Defiende plataformas que den autoservicio a los equipos de entrega.

### Liderazgo y gobernanza

Los líderes dan forma a la estructura que decide cuán bien funciona el escalado. Resiste la tentación de comprar un marco como sustituto de decidir lo que la organización quiere ser. Pide una declaración clara del problema, un piloto y evidencia. Mantén ligeros los informes y acepta que los cambios de estructura pueden resultar incómodos para los gerentes.

### Clientes y usuarios

Los clientes deben ver un servicio coherente y no las costuras entre equipos. Espera un único punto de contacto para un producto y una vía clara para las solicitudes. Di a la responsable de producto qué importa más y espera que la respuesta incluya compromisos entre demandas que compiten.

## Fallos frecuentes

- **Comprar un marco para evitar una decisión.** Una organización adopta un marco con la esperanza de que resuelva los desacuerdos sobre prioridades. En su lugar, decide quién tiene autoridad sobre las prioridades y luego mira qué marco, si alguno, ayuda.
- **Copiar un diagrama.** Se añaden roles y reuniones sin entender las razones. En su lugar, adopta solo los elementos que aborden un problema nombrado.
- **Añadir capas.** Se multiplican los coordinadores, las oficinas de programa y los comités mientras los equipos pierden autonomía. En su lugar, elimina dependencias para que haya menos que coordinar.
- **Integración tardía.** Los equipos integran al final de un ciclo largo. En su lugar, integra y prueba todos los cambios juntos cada día.
- **Controles uniformes.** Todos los equipos siguen el mismo proceso pesado sea cual sea el riesgo. En su lugar, basa los controles en el riesgo y haz rápidas las vías de bajo riesgo.
- **Ignorar las operaciones.** La planificación incluye a desarrolladores y gerentes de producto pero no al personal de operaciones. En su lugar, incluye a operaciones en la planificación conjunta y comparte los datos del servicio.
- **Juzgar un híbrido frente al marco.** Los críticos dicen que no es el marco y los partidarios dicen que sí. En su lugar, dale a tu enfoque su propio nombre y descríbelo.
- **No revisar nunca la estructura.** Los límites trazados con 30 personas persisten con 300. En su lugar, revisa la estructura de equipos y roles al menos una vez al año.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Alineación y prioridades | Cada equipo fija sus propias prioridades | Algunos equipos comparten una lista de trabajo pendiente o se reúnen para alinearse | Los productos tienen una lista ordenada y planificación conjunta con un ritmo regular | La alineación se contrasta con los resultados y se miden las dependencias | Las prioridades se ajustan continuamente entre equipos, clientes y proveedores |
| Dependencias | Las esperas por otros equipos no se gestionan | Algunos equipos enumeran sus dependencias | Las dependencias son visibles y existen acuerdos entre equipos | Los tiempos de espera por dependencias se miden y se reducen | Los límites de los equipos se remodelan a partir de la evidencia para eliminar dependencias |
| Integración | La integración ocurre al final | Algunos equipos integran con más frecuencia | Canalizaciones compartidas integran y prueban los cambios de todos con frecuencia | Los fallos de integración y sus causas se siguen y se corrigen | Los entornos y pruebas de integración se comparten y se mejoran entre equipos |
| Gobernanza y estructura | Los controles son uniformes y lentos | Existen algunas vías de bajo riesgo | Los controles varían según el riesgo con criterios claros | Se revisan los resultados y la eficacia de los controles | La estructura y los controles se revisan y ajustan de forma rutinaria en toda la organización |

## Lista de verificación

- [ ] Podemos enunciar en una frase el problema que el escalado debe resolver.
- [ ] Hemos mapeado las dependencias entre nuestros equipos y conocemos la espera típica de cada una.
- [ ] Cada producto tiene una lista ordenada con un único responsable.
- [ ] Los equipos y las partes interesadas clave planifican juntos con un ritmo regular.
- [ ] El resultado de todos los equipos se compila y se prueba junto al menos una vez al día.
- [ ] Los equipos que ofrecen plataformas o servicios a otros tienen acuerdos de servicio escritos.
- [ ] El personal de operaciones participa en la planificación entre equipos.
- [ ] Los controles varían con el riesgo y la vía de bajo riesgo es rápida.
- [ ] Cualquier marco que adoptemos se ha pilotado primero a pequeña escala.
- [ ] Hemos anotado qué partes de cualquier marco seguimos y cuáles no.
- [ ] La estructura de equipos y roles se revisa al menos una vez al año.

## Prompts de IA

**Propósito: mapear las dependencias entre equipos a partir de la descripción de un trabajo reciente.**

```text
Ayúdame a entender las dependencias entre equipos en una entrega reciente.

Equipos implicados: [enumera los equipos y qué hace cada uno].
Entrega reciente: [describe una versión o un proyecto reciente que necesitó trabajo de varios equipos, con fechas aproximadas de cuándo terminó cada equipo y qué esperó].

Usando solo lo que escribí, produce una tabla de dependencias (qué equipo esperó a cuál, por qué y aproximadamente cuánto). Destaca las tres esperas más largas. Para cada una, sugiere una forma de reducir la dependencia y una pregunta para hacer a los equipos. No inventes duraciones. Hazme primero preguntas aclaratorias si la descripción es escasa, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: comparar opciones de escalado frente a un problema declarado.**

```text
Nuestro problema: [describe en 3 a 5 frases, con un ejemplo reciente].
Número de equipos y personas: [números].
Nuestra coordinación actual: [por ejemplo reunión semanal de líderes de equipo, una oficina de programa, ninguna].

A partir del texto que pego abajo, resume qué propone cada uno de estos enfoques: [pega extractos breves o resúmenes de las páginas públicas de sus responsables para los enfoques que consideras, como SAFe, LeSS, Disciplined Agile o un simple scrum de scrums]. Usa solo el texto pegado.

Después, para cada enfoque, enumera qué partes de nuestro problema aborda, qué nos exigiría y qué preguntas deberíamos hacer a su responsable. No afirmes nada sobre un enfoque que no esté en el texto pegado. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: planificar una sesión de planificación conjunta para varios equipos.**

```text
Planifica una sesión de planificación conjunta de media jornada para [número] equipos que trabajan en [producto o servicio].

Participantes: [roles].
Insumos disponibles: [por ejemplo la lista de trabajo pendiente de cada equipo, una lista de dependencias, datos recientes de incidentes].
Restricciones: [por ejemplo personas en distintas zonas horarias].

Da una agenda con tiempos que cubra objetivos compartidos, dependencias, riesgos y el plan para los próximos [periodo]. Incluye lo que aporta cada equipo, lo que hace quien facilita y un paso final que registre los compromisos acordados y las preguntas abiertas. Mantenlo libre de cualquier herramienta concreta. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: redactar un acuerdo entre un equipo de plataforma y los equipos que la usan.**

```text
Ayúdame a redactar un acuerdo de trabajo de una página entre un equipo que ofrece [plataforma o servicio] y los equipos que lo usan.

Lo que hace hoy el equipo de plataforma: [describe].
Lo que necesitan los equipos usuarios: [enumera, o escribe "desconocido"].
Restricciones conocidas: [horario de soporte, reglas de seguridad, herramientas].

Redacta secciones para el alcance, cómo solicitar cambios, expectativas de disponibilidad y respuesta (deja los números como [por acordar] y no los inventes), cómo se gestionan los incidentes y cómo se revisa el acuerdo. Marca cada elemento que sea una suposición. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): úsala para entender los roles, eventos y niveles de SAFe y juzgar qué partes necesitas.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): úsala para aplicar Scrum a varios equipos que trabajan en un solo producto.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): úsala para elegir prácticas por objetivo de proceso según tu contexto.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): úsala como una forma ligera de coordinar unos pocos equipos antes de adoptar un marco.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): úsala para decidir cómo se eligen y financian varios productos e iniciativas.

## Fuentes principales

- **Scaled agile framework** (Wikipedia): una visión general de la historia, las configuraciones y las críticas de SAFe, con citas.
- **Introduction to LeSS** (less.works): la breve descripción de los creadores de Large-Scale Scrum y de su idea de "más con menos".
- **Disciplined agile delivery** (Wikipedia): un resumen del conjunto de herramientas, sus ciclos de vida y sus objetivos.
- **Desarrollo ágil de software** (Wikipedia): la sección sobre el trabajo a gran escala, externalizado y distribuido y la discusión de las opiniones contrapuestas sobre los marcos de escalado.

## Referencias

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
