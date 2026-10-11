# Gestión de Versiones y Despliegues

**La gestión de versiones y despliegues lleva los cambios a producción de forma segura, y el objetivo en un entorno ágil es hacer que publicar sea tan rutinario, automatizado y reversible que deje de ser un acontecimiento.**

## Por qué importa

Muchas organizaciones siguen tratando una versión como una ocasión grande y tensa. Se fija una fecha, se reserva una ventana, la gente se queda hasta tarde y el éxito se mide por si algo se rompió. Ese patrón produce justo el riesgo que teme: cuantos más cambios se agrupan en una versión, más difícil es entender qué salió mal y más penosa es la reversión.

El programa de investigación DORA describe la alternativa. Su página sobre la entrega continua define la práctica como "la capacidad de publicar cambios de todo tipo bajo demanda de forma rápida, segura y sostenible", e informa de que hacerlo bien mejora el desempeño de la entrega y la disponibilidad y se asocia con menos agotamiento y mayor satisfacción laboral. Su página también advierte de que desplegar con más frecuencia sin cambiar los procesos y la arquitectura tiende a elevar las tasas de fallos y a agotar a los equipos. La lección no es "publica más rápido" sino "construye la capacidad de publicar con seguridad y luego publica a menudo".

El libro *Site Reliability Engineering* de Google, en su capítulo sobre ingeniería de versiones, plantea una idea similar desde la práctica: las versiones frecuentes significan menos cambios entre versiones, por lo que las pruebas y la resolución de problemas se hacen más fáciles. Este tema se apoya en esas dos fuentes, en los otros temas de la guía relacionados con el cambio y en vocabulario de ITIL de uso amplio que esta guía no pudo contrastar con el texto del propietario del marco. Trata las fuentes como sólidas, específicas y limitadas a los contextos que describen.

## Conceptos clave

### Versión y despliegue

Los dos términos suelen confundirse. Una distinción común, muy usada en la gestión de servicios, es:

- Una **versión (release)** es una edición de un servicio o componente puesta a disposición para su uso. Es una decisión sobre lo que recibirán los usuarios.
- Un **despliegue (deployment)** es el acto de mover una versión a un entorno, como producción.

Separarlos es poderoso. Puedes desplegar código en producción sin activarlo para los usuarios y publicarlo más tarde de forma controlada. Técnicas como los interruptores de funcionalidad se apoyan en esta separación (véase el artículo de Wikipedia sobre feature toggles).

### Entrega continua y despliegue continuo

La página de DORA define la **entrega continua** como la capacidad de publicar cambios de todo tipo bajo demanda de forma rápida, segura y sostenible. La distingue del **despliegue continuo**, que significa desplegar cada cambio en producción lo antes posible. DORA dice que los equipos "pueden y deben empezar con la entrega continua" aunque nunca adopten el despliegue continuo. La decisión de si publicar sigue siendo una decisión del negocio; la entrega continua la convierte en una elección y no en un proyecto.

### Qué recomienda la investigación

La página de DORA enumera prácticas que apoyan la entrega continua:

| Práctica | Qué dice DORA |
|---|---|
| **Automatización de pruebas** | Conjuntos de pruebas automatizadas completos y fiables, creados y mantenidos sobre todo por los desarrolladores |
| **Automatización del despliegue** | Despliegues totalmente automatizados, sin necesidad de intervención manual |
| **Desarrollo basado en trunk** | Menos de tres ramas activas, ramas de vida muy corta, periodos de bloqueo del código poco frecuentes |
| **Equipos y arquitectura débilmente acoplados** | Los equipos pueden probar y desplegar bajo demanda sin orquestarse con otros servicios |
| **Otras prácticas** | Integración continua, pruebas continuas, control de versiones para todos los artefactos de producción, gestión de datos de prueba, monitorización y observabilidad, notificaciones proactivas, gestión de cambios en bases de datos, seguridad omnipresente |

La página informa de que la entrega continua se asocia con mayor calidad (menos tiempo dedicado a rehacer trabajo o a trabajo no planificado), menos agotamiento y menos dolor en los despliegues. También dice que los equipos de élite que cumplían los objetivos de fiabilidad en el informe de 2021 tenían tres veces más probabilidades de contar con una arquitectura débilmente acoplada que los de bajo desempeño. No indica herramientas, frecuencias de despliegue objetivo ni un calendario de implantación, y señala que las transformaciones suelen seguir una "curva en J", con una caída de eficiencia a medida que la automatización aumenta los requisitos de prueba y se acumula deuda técnica.

### Lecciones de la práctica de la ingeniería de versiones

El capítulo del libro de SRE sobre ingeniería de versiones describe el enfoque de una gran organización:

- **Autoservicio.** Los equipos ejecutan sus propios procesos de versiones. Las versiones son "verdaderamente automáticas" y solo requieren la intervención de un ingeniero si surgen problemas.
- **Alta velocidad.** Las versiones frecuentes significan menos cambios entre versiones, lo que facilita las pruebas y la resolución de problemas.
- **Compilaciones herméticas.** Las compilaciones dependen de versiones conocidas de herramientas y bibliotecas, de modo que la misma revisión da resultados idénticos.
- **Políticas aplicadas.** Los controles de acceso regulan las aprobaciones, la creación de versiones y el despliegue. Casi todos los cambios necesitan revisión de código, y cada versión produce un informe de los cambios incluidos.

El capítulo también subraya la configuración bajo control de versiones y revisión de código, y sugiere que los desarrolladores, los ingenieros de fiabilidad de sitios y los ingenieros de versiones colaboren en lugar de lanzarse los resultados "por encima de la valla". Dice que las organizaciones deben definir políticas de versiones incluso cuando todavía no pueden automatizarlas ni aplicarlas, y que es más barato implantar buenas prácticas pronto que incorporarlas después. El capítulo describe las herramientas propias de Google; tu entorno usará otras, así que extrae los principios y no los productos.

### Entornos y promoción

Una versión suele pasar por una serie de entornos, como desarrollo, pruebas y producción. Cada paso aporta evidencia. Una práctica común, coherente con la investigación anterior, es compilar una vez y promover el mismo artefacto, de modo que lo que se probó sea lo que se despliega. El énfasis del capítulo de SRE en compilaciones idénticas a partir de la misma revisión expresa la misma idea.

### Despliegue gradual y reversión

La manera en que una versión llega a los usuarios puede ser gradual. El capítulo de SRE describe despliegues graduales ajustados al riesgo, desde envíos automáticos cada hora en desarrollo hasta despliegues de varios días para infraestructura sensible, y menciona las versiones canario, en las que una pequeña parte del tráfico recibe primero la versión nueva. La reversión significa volver a la versión anterior y debe estar tan practicada como el despliegue. Los equipos que pueden revertir con rapidez pueden permitirse desplegar a menudo (véase Tema 3.4 — Habilitación de Cambios).

### Información de la versión para el soporte

El personal de soporte y los usuarios necesitan saber qué cambia y qué hacer si algo sale mal. Una nota de versión, una lista de problemas conocidos y un contacto con nombre son lo mínimo (véase Tema 3.1 — Centro de Servicios). El informe de cambios incluidos que menciona el capítulo de SRE sirve de fuente.

### Medidas

La página de DORA sugiere medir plazos de entrega cortos para los cambios regulares y de emergencia, tasas bajas de fallos de cambios, un tiempo corto de restablecimiento del servicio y frecuencias de versiones que entreguen las prioridades a tiempo. Su objetivo general es que nadie trabaje fuera del horario laboral para desplegar. Para las definiciones y las advertencias sobre las medidas, véase el Tema 3.4 — Habilitación de Cambios y el Tema 5.6 — Métricas y Medición.

## Buenas prácticas

1. **Separa el despliegue de la versión.** Despliega el código en producción en estado latente y actívalo para los usuarios cuando esté listo, usando interruptores de funcionalidad o despliegues graduales. Esto reduce el riesgo de un despliegue y da el control al negocio.
2. **Automatiza el despliegue.** Apunta a cero pasos manuales. Los pasos manuales son lentos, varían entre personas y causan incidentes. Automatiza en incrementos pequeños, empezando por los pasos que más fallan.
3. **Compila una vez, promueve el artefacto.** Produce un solo paquete y muévelo por los entornos, de modo que lo que probaste sea lo que ejecutas. Registra qué versión está dónde.
4. **Haz reproducibles las compilaciones.** Fija las versiones de las herramientas y bibliotecas para que la misma revisión dé el mismo resultado. Esto sigue el principio de compilaciones herméticas del capítulo de SRE.
5. **Mantén las ramas de vida corta.** La orientación de DORA sobre trunk es menos de tres ramas activas y ramas que se integran en aproximadamente un día. Las ramas largas convierten las versiones en sucesos de integración.
6. **Prueba automáticamente y mantén las pruebas rápidas y fiables.** Apunta a una retroalimentación en minutos. Un conjunto de pruebas inestable o lento hace que la gente lo esquive.
7. **Publica en lotes pequeños.** Las versiones más pequeñas son más fáciles de revisar, probar y revertir. Si una versión es grande, pregunta cómo dividirla.
8. **Despliega por etapas.** Empieza con una pequeña parte de los usuarios o servidores, observa las señales y amplía. Define de antemano qué vas a vigilar y quién puede detener el despliegue.
9. **Ensaya la reversión.** Sabe cómo volver a la última versión buena y practícalo. Una reversión que nunca has probado es una esperanza.
10. **Da al soporte lo que necesita antes de la versión.** Proporciona notas de versión, problemas conocidos y un contacto. Incluye al personal de soporte en la aprobación de los cambios que afectan a los usuarios (véase Tema 3.1 — Centro de Servicios).
11. **Mantén la configuración en el control de versiones.** Trata los cambios de configuración como código, con revisión y registro. Elige dónde vive cada tipo de ajuste y por qué.
12. **Apunta a desplegar en horario laboral.** DORA lo nombra como objetivo general. Si los despliegues requieren trasnochar, el proceso o la arquitectura necesitan trabajo.

## Preguntas para conversar con tu equipo

**¿Cuánto tiempo lleva y cuántos pasos implica llevar un cambio terminado a producción?**

Sigue un cambio reciente desde "listo" hasta "en vivo". Enumera cada paso, quién lo hace y cuánto espera. Distingue los pasos manuales de los automatizados. Los equipos suelen sorprenderse de cuántos pasos son manuales y de la espera entre ellos. Quien facilite puede preguntar qué paso ha causado más incidentes. Elige uno que automatizar.

**¿Qué tendría que ser verdad para que publicáramos en horario laboral sin preocuparnos?**

Pregunta qué teme el equipo de publicar. Respuestas típicas: no hay una reversión probada, pruebas débiles, impacto poco claro en los usuarios. Cada una es algo que construir. Enuméralas y ordénalas. Pregunta cuál sería el paso más pequeño para la primera. El objetivo de DORA de que nadie trabaje fuera del horario laboral para desplegar es una meta útil de discutir.

**¿Dónde agrupamos cambios porque publicar es doloroso y qué nos cuesta agrupar?**

Mira el contenido de las versiones recientes. Cuenta los cambios de cada una. Pregunta qué pasó cuando un paquete salió mal y cuánto tardó en encontrarse la causa. Discute qué haría de las versiones de un solo cambio el camino fácil. Acordad un primer paso, como publicar por separado un cambio de bajo riesgo.

**¿Cómo sabemos que una versión funciona una vez en vivo?**

Pregunta qué señales vigila el equipo en la primera hora: errores, rendimiento, informes de usuarios. Si la respuesta es "esperamos las quejas", discute una monitorización que mostrara un problema con rapidez. Pregunta quién vigila y qué haría. Acordad una lista de verificación breve para después de la versión.

**¿Qué sabe nuestro equipo de soporte de una versión antes de que salga?**

Pregunta al centro de servicios qué se enteró de la última versión y cuándo. Compáralo con lo que necesitaba. Discute un traspaso sencillo, como una nota de versión y un contacto con nombre. Incluye en la planificación de las versiones arriesgadas a las personas que responden las preguntas de los usuarios.

**¿Qué nos impide desplegar sin un periodo de congelación y qué costaría un periodo de congelación?**

Los periodos de congelación son comunes alrededor de las horas punta del negocio. Pregunta cuánto duran y qué retrasan. Discute si los cambios pequeños y bien probados podrían avanzar durante ellos con salvaguardas adicionales. La página de DORA advierte contra aplicar la misma aprobación a todos los cambios sea cual sea el riesgo o el momento, así que pregunta si la congelación es demasiado burda.

## En la práctica: un ejemplo de ITIL ágil

Una universidad opera un sistema de matriculación en línea para 30.000 estudiantes. El equipo de desarrollo, de ocho personas, publica una vez por trimestre, en una ventana de fin de semana antes de que se abra la matrícula. Cada versión agrupa cientos de cambios y necesita quince personas, una larga lista de verificación manual y un plan de llamadas. La última versión falló a las 2 de la madrugada del domingo, y el equipo pasó catorce horas buscando cuál de los cambios la había causado.

El líder del equipo propone un cambio de enfoque. Primero, los despliegues pasan a estar totalmente programados mediante scripts, empezando por los pasos que fallaron la última vez. Segundo, el equipo añade pruebas automatizadas para el camino de la matrícula que se ejecutan en cada cambio y tardan menos de diez minutos. Tercero, las funcionalidades nuevas se despliegan desactivadas y se activan con un interruptor de funcionalidad tras las comprobaciones. Cuarto, se escribe y se ensaya en un entorno de pruebas un paso de reversión. La secretaría académica acepta una regla por la que ninguna versión va a producción en las tres semanas de máxima matrícula salvo que sea una corrección de un fallo visible para los usuarios.

En un trimestre, el equipo despliega semanalmente fuera de las semanas punta, en horario laboral, con las notas de versión enviadas al servicio de ayuda a estudiantes el día anterior. Algunas versiones se ralentizan por pruebas inestables y un interruptor de funcionalidad quedó activado por error y causó una breve confusión. La transformación también encuentra la curva en J que describe la página de DORA: durante dos meses, el trabajo en pruebas y scripts frena la entrega de funcionalidades. El equipo sigue adelante, corrige las pruebas inestables, añade un paso a la lista de verificación para retirar interruptores y acuerda con la secretaría revisar la regla de congelación el año siguiente. Las puntas de matrícula de los trimestres pasan sin incidentes relacionados con las versiones.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega son dueños de la canalización: pruebas, compilaciones, scripts de despliegue y reversión. Invierte en ellas como en un producto con usuarios. Publica poco y a menudo, y trata cada versión como evidencia sobre la canalización. Involucra al soporte y a operaciones cuando los cambios les afecten.

### Equipos de servicio y operaciones

Los equipos de operaciones se benefician de versiones más pequeñas y previsibles, y pueden ayudar definiendo qué debe ser cierto antes de aceptar una versión: monitorización, guías operativas y reversión. Pasa de vigilar la puerta a facilitar, proporcionando la plataforma y las comprobaciones que usan los equipos de entrega. Vigila las señales después de una versión.

### Liderazgo y gobernanza

Los líderes deciden si los equipos pueden invertir en la canalización y tolerar la curva en J. Pide el plazo de entrega, la tasa de fallos de cambios y el tiempo de recuperación. Resiste la congelación de versiones como respuesta general al riesgo y pide en su lugar evidencia de que las versiones arriesgadas reciben más escrutinio.

### Clientes y usuarios

Los clientes y usuarios ven mejoras pequeñas y frecuentes y menos perturbaciones de golpe. Espera un aviso previo de los cambios que te afectan y una manera de informar de problemas. Si tienes periodos punta, díselo al proveedor para que pueda planificar despliegues graduales en torno a ellos.

## Fallos frecuentes

- **Versiones de golpe.** Cientos de cambios salen juntos. En su lugar, publica en lotes pequeños y separa el despliegue de la versión.
- **Despliegue manual.** Los pasos varían según la persona y fallan de noche. En su lugar, automatiza en incrementos, empezando por los pasos más arriesgados.
- **Publicar con más frecuencia sin salvaguardas.** Las tasas de fallos suben y la gente se agota, como advierte DORA. En su lugar, invierte primero en pruebas, reversión y monitorización.
- **Artefactos distintos en entornos distintos.** Lo que se prueba no es lo que se ejecuta. En su lugar, compila una vez y promueve el mismo artefacto.
- **Ramas de larga vida.** Las integraciones se vuelven sucesos. En su lugar, mantén las ramas cortas e integra de forma continua.
- **Reversión sin probar.** La primera reversión ocurre durante una caída. En su lugar, ensáyala con regularidad.
- **El soporte es el último en enterarse.** El personal se entera de los cambios por los usuarios. En su lugar, envía notas de versión y un contacto antes de la versión.
- **Congelaciones generales.** La misma congelación se aplica a todos los cambios. En su lugar, deja pasar los cambios de bajo riesgo y bien probados con comprobaciones adicionales y reserva la congelación para lo arriesgado.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Automatización del despliegue | Los despliegues son manuales y varían | Algunos despliegues se programan con scripts | Los despliegues se automatizan mediante una canalización común | Los fallos y la duración de los despliegues se siguen y se reducen | Las canalizaciones y prácticas se comparten y se mejoran entre equipos |
| Frecuencia y tamaño de las versiones | Las versiones son poco frecuentes y grandes | Algunos equipos publican en lotes más pequeños | Los equipos publican en lotes pequeños con un ritmo conocido | La frecuencia, el plazo de entrega y el tamaño se miden y se ajustan | Los ritmos de versiones se coordinan entre servicios y proveedores |
| Seguridad (pruebas, despliegue gradual, reversión) | Las pruebas son manuales; la reversión no se ha probado | Existen algunas pruebas automatizadas y pasos de reversión | Las pruebas automatizadas, el despliegue gradual y la reversión ensayada son estándar | La tasa de fallos de cambios y el tiempo de recuperación se siguen y se mejoran | Las prácticas de seguridad se comparten y se prueban entre equipos |
| Preparación del soporte | El soporte se entera de las versiones por los usuarios | Algunas versiones tienen notas | Las notas de versión y los contactos son estándar | Se recoge y se actúa sobre la opinión del soporte sobre las versiones | Soporte, entrega y usuarios planifican las versiones juntos |

## Lista de verificación

- [ ] Podemos enunciar la diferencia entre desplegar y publicar, y la usamos.
- [ ] Los despliegues están automatizados sin pasos manuales, o los pasos manuales restantes están enumerados.
- [ ] Compilamos una vez y promovemos el mismo artefacto por los entornos.
- [ ] Las pruebas automatizadas se ejecutan en cada cambio y dan retroalimentación en minutos.
- [ ] Las ramas son de vida corta y se integran con frecuencia en trunk.
- [ ] Existe una reversión para cada tipo de versión y se ha ensayado.
- [ ] Los despliegues son graduales donde el riesgo lo justifica, con señales definidas de antemano.
- [ ] Las notas de versión y los problemas conocidos llegan al centro de servicios antes de una versión.
- [ ] La configuración está en el control de versiones y se revisa.
- [ ] Seguimos el plazo de entrega, la tasa de fallos de cambios y el tiempo de recuperación de cada servicio.

## Prompts de IA

**Propósito: mapear los pasos de "listo" a "en vivo" y encontrar qué automatizar.**

```text
Ayúdame a mapear el camino de un cambio desde listo hasta en vivo.

Los pasos en orden, con quién hace cada uno, si es manual o automatizado y cuánto suele esperar o durar: [pega].
Las tres últimas versiones y qué salió mal, si algo: [pega hechos].

Produce una tabla de pasos y marca los manuales. Ordena los pasos manuales según con qué frecuencia causaron problemas en el texto y, para los tres primeros, sugiere una pequeña forma de automatizar o comprobar cada uno. No inventes duraciones ni recuentos de fallos. Hazme primero preguntas aclaratorias si falta información, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: escribir una nota de versión para el centro de servicios y los usuarios.**

```text
Escribe una nota de versión para [servicio].

Qué cambió (con palabras sencillas): [describe].
Quién se ve afectado y cuándo: [describe].
Qué notarán los usuarios: [describe].
Problemas conocidos y soluciones alternativas: [enumera, o escribe "ninguno conocido"].
Cómo revertir y a quién contactar: [describe].

Escribe dos versiones: una nota de un párrafo para los usuarios y una nota de media página para el centro de servicios. Usa solo los hechos anteriores. Marca cualquier afirmación que sea una suposición y hazme primero preguntas aclaratorias si falta información. Enumera de lo que no estés seguro.
```

**Propósito: planificar un despliegue gradual.**

```text
Planifica un despliegue gradual de [cambio].

Qué cambia y quién lo usa: [describe].
Cómo podemos limitar la exposición (porcentaje de usuarios, regiones, servidores, interruptor de funcionalidad): [describe las opciones disponibles].
Señales que podemos vigilar: [enumera las fuentes de monitorización y de opinión de los usuarios].
Método de reversión: [describe].

Propón etapas, qué comprobar en cada etapa, quién puede pausar o detener y qué desencadenaría una reversión, dejando los umbrales numéricos como [por acordar]. No inventes monitorización que no tengamos. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

**Propósito: preparar un argumento a favor de invertir en la automatización de versiones.**

```text
Ayúdame a preparar un argumento breve a favor de invertir en la automatización de versiones para [servicio].

Lo que nos cuesta hoy una versión, en hechos: [personas implicadas, horas, incidentes, retrasos; usa solo números reales].
Lo que queremos poder hacer: [describe].
Riesgos conocidos del trabajo: [por ejemplo una ralentización temporal mientras se escriben pruebas].

Escribe un argumento de una página con el problema, los primeros pasos propuestos (pequeños e incrementales), qué mediremos (plazo de entrega, tasa de fallos de cambios, tiempo de recuperación, sin objetivos que yo no haya dado), los riesgos, incluida una caída temporal de la entrega, y lo que pedimos. No inventes cifras. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [release-notes](../../../../skills/release-notes/SKILL.md): úsala para decir a los usuarios y al centro de servicios qué cambia una versión.
- [changelog](../../../../skills/changelog/SKILL.md): úsala para mantener un registro continuo de los cambios por versión.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): úsala para construir las pruebas automatizadas que hacen segura la publicación frecuente.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): úsala para mover las pruebas más temprano en la canalización de modo que los problemas se encuentren antes.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): úsala para planificar versiones pequeñas y frecuentes y las comprobaciones que las rodean.

## Fuentes principales

- **Continuous delivery** (DORA, dora.dev): la definición del programa de investigación, las prácticas recomendadas, los hallazgos y los escollos.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): la práctica de una organización de autoservicio, compilaciones reproducibles y política de versiones aplicada.
- **Streamlining change approval** (DORA, dora.dev): orientación sobre cómo encaja la aprobación en la entrega.
- **Continuous delivery** (Wikipedia): una visión general de la práctica y su historia.

## Referencias

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
