# Gestión de Incidentes

**La gestión de incidentes restablece un servicio degradado tan rápido como sea seguro, y el hábito ágil que la hace funcionar son los roles claros bajo presión seguidos de una revisión sin culpas que convierte cada incidente en un cambio.**

## Por qué importa

Los incidentes son el momento en que se juzga un servicio. Los usuarios no recuerdan los meses de buena disponibilidad; recuerdan la caída y cómo se gestionó. Un equipo que ha definido de antemano quién hace qué, cómo se comunica y cuándo pide ayuda restablece el servicio más rápido y comete menos errores que uno que improvisa.

Los equipos ágiles que operan lo que construyen suelen gestionar los incidentes de manera informal. Eso funciona hasta que un incidente es grande, abarca varios equipos o ocurre de noche. Entonces se nota la falta de roles y de registros: los ingenieros se amontonan sobre el problema técnico, nadie informa a los clientes y dos personas hacen cambios contradictorios. La práctica de ITSM de gestión de incidentes, junto con prácticas de la ingeniería de fiabilidad de sitios, ofrece formas probadas de evitarlo.

El [artículo de Wikipedia sobre la gestión de incidentes](https://en.wikipedia.org/wiki/Incident_management) cubre varios campos, desde la respuesta a emergencias hasta la seguridad informática. Para la gestión de servicios de TI dice que el objetivo es restablecer el servicio normal dentro del nivel de servicio acordado lo antes posible, cita ITIL 2011 para definir un incidente como una interrupción no planificada de un servicio de TI o una reducción de su calidad, y enumera tres dificultades: el ruido de las alertas, la resolución prolongada de problemas y la dificultad para predecir las caídas. Para el detalle, este tema se apoya mucho en dos capítulos del libro *Site Reliability Engineering* de Google, que describen un enfoque de mando de incidentes y los postmortems sin culpas a partir de la práctica de una gran organización. Trata esos capítulos como un enfoque bien documentado, no como el único.

## Conceptos clave

### Qué es un incidente

Un **incidente**, en el uso de ITSM, es una interrupción no planificada de un servicio o una reducción de su calidad. El artículo sobre ITSM incluye también una interrupción "potencial". Un incidente no es lo mismo que un **problema**, que es la causa subyacente, ni que una **solicitud de servicio**, que es una petición rutinaria (véase Tema 3.3 — Gestión de Problemas y Tema 3.6 — Gestión de Solicitudes de Servicio). Mantener separados los tres importa porque cada uno se gestiona con un objetivo distinto: restablecer el servicio, eliminar las causas y atender la demanda rutinaria.

### El objetivo: restablecer el servicio, preservar la evidencia

El primer objetivo de la gestión de incidentes es restablecer el servicio. El capítulo de SRE sobre la gestión de incidentes añade un segundo: preservar la evidencia necesaria para encontrar después la causa raíz. Las propias buenas prácticas del capítulo dicen que se priorice restablecer el servicio y preservar la evidencia, con ese espíritu. Corregir la causa puede venir después, en la gestión de problemas.

### Por qué fallan los incidentes no gestionados

El capítulo de SRE, escrito por Andrew Stribblehill, usa un ejemplo extenso de un ingeniero de guardia cuya caída crece hasta convertirse en un fallo total. Nombra tres peligros de los incidentes no gestionados:

- **Un enfoque excesivo en el problema técnico.** Los ingenieros absorbidos por una corrección pierden de vista la mitigación y el panorama más amplio.
- **Mala comunicación.** Nadie sabe lo que hacen los demás y las partes interesadas siguen sin información.
- **Trabajo por libre (freelancing).** Los cambios no coordinados, como un despliegue de último minuto, empeoran la situación.

### Roles bajo presión

El capítulo basa su enfoque en el Incident Command System, que procede de la respuesta a emergencias (el artículo de Wikipedia sobre la gestión de incidentes también lo menciona). Sus ideas principales:

| Rol | Qué hace |
|---|---|
| **Comandante del incidente** | Mantiene el estado de alto nivel, estructura la respuesta, elimina obstáculos y asume cualquier rol aún no delegado |
| **Responsable de operaciones** | Aplica las herramientas al problema; solo el equipo de operaciones cambia el sistema durante un incidente |
| **Responsable de comunicaciones** | Es la cara pública de la respuesta; emite actualizaciones periódicas y mantiene al día el documento del incidente |
| **Responsable de planificación** | Se ocupa de los asuntos a más largo plazo, como registrar errores, organizar traspasos y seguir las divergencias respecto de lo normal para poder revertir los cambios |

El capítulo llama al principio una separación recursiva de responsabilidades. Los roles claros dan autonomía a las personas, porque no tienen que cuestionar a los colegas, y una persona sobrecargada pide más personal y delega partes del trabajo. Los traspasos entre comandantes son explícitos y se confirman.

### El documento vivo del incidente

El capítulo dice que el deber más importante del comandante es mantener un documento vivo con el estado del incidente, idealmente editable por varias personas a la vez. Puede ser desordenado pero debe seguir siendo útil, con la información clave cerca del principio, y se conserva para su análisis posterior. Un canal compartido o una sala física sirve de puesto de mando.

### Cuándo declarar un incidente

El capítulo recomienda declarar un incidente pronto, no horas después de que un problema empeore. Sugiere tratar un suceso como incidente si debe intervenir un segundo equipo para corregirlo, si la caída es visible para los clientes o si sigue sin resolverse tras una hora de análisis concentrado. Son reglas prácticas de una organización. Tus propios umbrales deben reflejar tus servicios y usuarios.

### Prioridad y gravedad

Las fuentes leídas para esta guía no definen niveles de prioridad o de gravedad, y el artículo de Wikipedia no indica ninguno. En la práctica, los equipos definen niveles a partir del impacto en los usuarios y la urgencia de la necesidad, y deciden de antemano a quién se llama en cada nivel. Mantén breve el esquema, con ejemplos, y compruébalo aplicándolo a incidentes pasados.

### Comunicación

La comunicación tiene dos audiencias. Los que responden necesitan conocer el estado y quién hace qué. Las partes interesadas y los usuarios necesitan saber qué está afectado, qué se está haciendo y cuándo esperar la siguiente actualización. El responsable de comunicaciones del capítulo de SRE atiende a la segunda audiencia y mantiene el registro para la primera. Para las caídas de cara al público, es útil tener un plan de comunicación en una crisis (véase más abajo la habilidad de comunicación de crisis).

### Postmortems sin culpas

El capítulo de SRE sobre la cultura del postmortem expone la mitad de aprendizaje. Un postmortem registra el incidente, su impacto, la mitigación, las causas raíz y las acciones de seguimiento. Sus objetivos son documentar el incidente, comprender todas las causas raíz que contribuyeron y poner en marcha acciones preventivas eficaces. Es sin culpas: identifica las causas que contribuyeron sin culpar a personas ni equipos, y supone que todos "tenían buenas intenciones e hicieron lo correcto con la información que tenían". En palabras del capítulo, "no puedes 'arreglar' a las personas, pero puedes arreglar los sistemas y procesos".

El capítulo sugiere definir de antemano los desencadenantes del postmortem, como una indisponibilidad visible para los usuarios por encima de un umbral, cualquier pérdida de datos, una intervención de guardia como una reversión, un tiempo de resolución por encima de un umbral o un fallo de monitorización. También dice "un postmortem sin revisar bien podría no haber existido nunca", por lo que recomienda sesiones de revisión periódicas y un repositorio compartido. Describe actividades para construir cultura, como un boletín mensual, clubes de lectura y una "Rueda de la Desgracia" (Wheel of Misfortune) en la que se recrean incidentes pasados.

### Incidentes mayores

Muchas prácticas de ITSM definen un **incidente mayor** como el que requiere una respuesta más formal de lo habitual. Las fuentes leídas aquí no lo definen, así que hazlo con tus propias palabras: por ejemplo, un incidente que afecta a muchos usuarios o a un servicio crítico y necesita una respuesta coordinada entre equipos. Lo que importa es que las personas sepan de antemano qué cambia: quién manda, a quién se llama y con qué frecuencia salen las actualizaciones.

### Incidentes y entrega continua

Los incidentes surgen a menudo de cambios recientes. Los equipos ágiles están bien situados para aprender de ellos porque publican a menudo y tienen bucles de retroalimentación cortos. El aprendizaje necesita una vía: las acciones del postmortem van a la lista de trabajo pendiente con responsables y fechas, y los incidentes recurrentes van a la gestión de problemas. Sin esa vía, la gestión de incidentes se convierte en una rutina de reparación.

## Buenas prácticas

1. **Decide de antemano qué cuenta como incidente.** Escribe una definición breve con ejemplos y baja el listón para declarar uno. La regla práctica del capítulo de SRE es declarar pronto cuando hace falta un segundo equipo, los clientes pueden ver el problema o una hora de análisis no lo ha resuelto.
2. **Define unos pocos niveles de gravedad con ejemplos.** Básalos en el impacto en los usuarios e indica a quién se llama en cada nivel. Prueba el esquema con incidentes pasados y ajústalo.
3. **Asigna roles al comienzo de cada incidente.** Nombra a un comandante del incidente, un responsable de operaciones y un responsable de comunicaciones. En equipos pequeños una persona puede tener más de un rol; dilo en voz alta.
4. **Separa corregir de coordinar.** Quienes cambian el sistema no deben ser además quienes responden preguntas. Deja que el comandante coordine y que el responsable de comunicaciones informe.
5. **Mantén un registro vivo.** Usa un documento o canal compartido con marcas de tiempo, decisiones y cambios hechos. Apoya los traspasos y da al postmortem su material.
6. **Permite solo cambios autorizados.** El capítulo de SRE dice que solo el equipo de operaciones debe modificar el sistema durante un incidente. Indica quién puede cambiar qué y pide a los demás que hablen con el comandante.
7. **Comunica con un calendario.** Acuerda el intervalo de actualización para cada gravedad y cúmplelo, incluso cuando no haya nada nuevo. El silencio genera preocupación y preguntas duplicadas.
8. **Traspasa de manera explícita.** Cuando se sustituya a un comandante o a un responsable, dilo en voz alta y haz que la otra persona lo confirme. Los traspasos poco claros pierden contexto.
9. **Practica.** Ejecuta el proceso de incidentes en sucesos pequeños y en ejercicios, para que los roles sean familiares antes de una caída grave. Rota a las personas por los roles.
10. **Celebra un postmortem sin culpas cuando se cumplan tus desencadenantes.** Escríbelo con los implicados, céntrate en las causas que contribuyeron y en las correcciones del sistema, y compártelo ampliamente (véase más abajo la habilidad de postmortem).
11. **Convierte las acciones en elementos de la lista de trabajo pendiente.** Da a cada seguimiento un responsable y una fecha, y revísalos en una reunión periódica. Un postmortem sin revisar no produce ningún cambio.
12. **Pasa la evidencia a la gestión de problemas.** Vincula los incidentes repetidos con un registro de problema, para que se eliminen las causas y no solo se reparen (véase Tema 3.3 — Gestión de Problemas).

## Preguntas para conversar con tu equipo

**¿Qué hacemos en los primeros diez minutos de un incidente y quién decide?**

Recorre el último incidente significativo minuto a minuto. Anota quién tomó el mando, quién comunicó y quién cambió qué. Muchos equipos descubren que los roles se supusieron y no se acordaron. Quien facilite puede preguntar qué habría pasado si el líder habitual hubiera estado ausente. Después, acordad cómo se asignarán los roles la próxima vez.

**¿Cuándo llamamos incidente a algo y cuándo esperamos?**

Reúne ejemplos de sucesos que se declararon tarde. Pregunta qué frenó a las personas: no querer molestar a otros, la incertidumbre o el miedo a las culpas. Compara con los desencadenantes del capítulo de SRE. Acordad un umbral y una manera de declarar un incidente sin alborotos.

**¿Cómo se enteran nuestros usuarios de lo que ocurre durante una caída y con qué frecuencia?**

Mira la última caída desde el lado del usuario. Pregunta quién se lo dijo, qué se le dijo y cuánto duró el intervalo. A menudo la respuesta es un largo silencio seguido de una nota breve. Pregunta quién debería ser responsable de la comunicación y qué debería decir el primer mensaje. Acordad una plantilla y un ritmo de actualizaciones.

**¿Qué cambió nuestro último postmortem y cómo lo sabemos?**

Pide las acciones, los responsables y el estado. Si no se completó ninguna, pregunta por qué: sin responsable, sin tiempo o con un valor poco claro. Averigua si los postmortems los lee alguien más allá del equipo. Acordad una sesión periódica para revisar las acciones abiertas.

**¿Se sienten las personas seguras diciendo en qué se equivocaron?**

Esta pregunta pone a prueba la ausencia de culpas. Pide a las personas que describan cómo se sentirían escribiendo sobre su propio error en un postmortem. Atiende al miedo a las consecuencias y a ejemplos de cuándo hubo culpas. No exijas apertura; pregunta qué tendrían que hacer el equipo y los líderes para que sea seguro. Elige un paso visible.

**¿Cómo practicamos y cuándo lo hicimos por última vez?**

Pregunta si el equipo ha realizado un ejercicio o un incidente simulado y qué aprendió. Si nunca, discute un comienzo pequeño, como reproducir un incidente pasado en una hora. El capítulo de SRE menciona practicar el proceso en cambios rutinarios y en ejercicios de recuperación ante desastres. Planifica uno para el próximo trimestre.

## En la práctica: un ejemplo de ITIL ágil

El portal de clientes de una empresa eléctrica regional permite a los hogares notificar cortes de suministro y consultar sus facturas. Un equipo de once personas lo construye y lo opera, con un turno de guardia de cuatro. Durante una tormenta, el tráfico de notificaciones aumenta, el portal se ralentiza y luego falla. La ingeniera de guardia intenta reiniciar la base de datos, un segundo ingeniero despliega a la vez una corrección de configuración y un tercero revierte una versión anterior. El portal vuelve tras tres horas, y el centro de atención telefónica, al que nunca se informó, atendió miles de llamadas furiosas.

En el postmortem, el equipo ve los tres peligros del capítulo de SRE: todos se centraron en la corrección técnica, nadie comunicó y los cambios chocaron. Escriben un proceso de incidentes de una página. Cualquiera puede declarar un incidente, y si interviene un segundo equipo, hay visibilidad para los clientes o pasa una hora sin avances, deben hacerlo. La ingeniera de guardia se convierte en responsable de operaciones, y un turno nombra a un comandante del incidente y a un responsable de comunicaciones del equipo más amplio. Solo la responsable de operaciones cambia producción. El responsable de comunicaciones envía una actualización cada 30 minutos al centro de atención telefónica y a la sala de control. Un canal compartido mantiene el registro vivo.

En la siguiente tormenta el portal vuelve a ralentizarse, se declara un incidente en diez minutos y el servicio se restablece en 70 minutos, con actualizaciones al centro de atención telefónica durante todo el tiempo. Quedan problemas. El turno de comandantes tiene huecos en las vacaciones, y el equipo descubre que una dependencia, un proveedor de mensajes de texto, no tiene contacto de escalamiento. El postmortem produce dos acciones con responsables: completar el turno con un suplente y acordar una vía de escalamiento con el proveedor. El equipo programa una reproducción del incidente de la tormenta para las personas nuevas del turno.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega causan y corrigen muchos incidentes. Únete al turno de guardia o proporciona apoyo directo a él y trata las acciones del postmortem como elementos de la lista de trabajo pendiente. Incorpora a tus versiones los medios para detectar y revertir problemas. Participa en los ejercicios para que los roles sean familiares.

### Equipos de servicio y operaciones

Los equipos de operaciones son dueños del proceso. Mantenlo breve y practicado, da a las personas la autoridad para actuar y conserva registros que otros puedan usar. Comparte lo que aprendas con los equipos de entrega y lleva las lecciones a la gestión de problemas y a la planificación.

### Liderazgo y gobernanza

Los líderes fijan la cultura. Pide postmortems y léelos, elogia a las personas que informan de problemas y niégate a buscar a alguien a quien culpar. Protege el tiempo para practicar y completar las acciones. Decide quién puede gastar dinero o invocar el nivel más alto de respuesta.

### Clientes y usuarios

Los clientes y usuarios necesitan actualizaciones oportunas y honestas y una manera clara de notificar problemas. Pregunta a tu proveedor qué puedes esperar durante una caída y cómo se te informará. Cuando se comparta contigo un postmortem, léelo para ver qué cambiará el proveedor.

## Fallos frecuentes

- **Sin roles.** Todos trabajan en la corrección técnica y nadie coordina ni comunica. En su lugar, nombra cada vez a un comandante del incidente, un responsable de operaciones y un responsable de comunicaciones.
- **Declarar tarde.** La gente espera a que el problema sea grave. En su lugar, fija umbrales bajos y claros y normaliza el declarar.
- **Trabajo por libre.** Varias personas cambian el sistema a la vez. En su lugar, permite cambios solo a través del responsable de operaciones.
- **Silencio.** Los usuarios y las partes interesadas no oyen nada. En su lugar, acuerda un intervalo de actualización y una plantilla.
- **Culpas.** Un postmortem busca a la persona culpable. En su lugar, pregunta qué en el sistema permitió el error y corrígelo.
- **Postmortems que no van a ninguna parte.** Las acciones no tienen responsables. En su lugar, ponlas en la lista de trabajo pendiente con fechas y revísalas con regularidad.
- **No practicar nunca.** La primera vez que se usa el proceso es en un incidente mayor. En su lugar, ensaya con sucesos pequeños y ejercicios.
- **Tratar la reparación como resolución.** El mismo incidente vuelve. En su lugar, vincula las repeticiones con la gestión de problemas y corrige la causa.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Detección y declaración | Los incidentes se detectan por las quejas de los usuarios | Existen algunas alertas y se declaran algunos incidentes | Se usan umbrales escritos y un esquema sencillo de gravedad de forma coherente | El tiempo de detección y el de declaración se siguen y se reducen | La detección y la declaración se comparten entre equipos y proveedores |
| Respuesta y roles | Los que responden improvisan | Algunos equipos nombran a un líder | Los roles, los traspasos y un registro vivo son estándar | Se revisan los tiempos de respuesta y el desempeño de los roles | La respuesta se coordina entre equipos y proveedores, con ejercicios conjuntos |
| Comunicación | Las actualizaciones son improvisadas | Algunas actualizaciones llegan a algunas audiencias | Existen un ritmo de actualizaciones y plantillas para cada gravedad | Se mide la puntualidad de la comunicación y se pregunta a los usuarios | La comunicación se coordina con clientes y socios |
| Aprendizaje | Las revisiones siguen solo a los peores incidentes | Se escriben algunos postmortems | Los postmortems sin culpas siguen desencadenantes definidos, con acciones seguidas | Se miden la finalización de las acciones y la reincidencia | Las lecciones se comparten entre equipos y alimentan el cambio en toda la organización |

## Lista de verificación

- [ ] Tenemos una definición breve de incidente con ejemplos.
- [ ] Tenemos un esquema pequeño de gravedad con ejemplos de impacto en los usuarios y listas de llamadas.
- [ ] Cada incidente empieza nombrando a un comandante del incidente, un responsable de operaciones y un responsable de comunicaciones.
- [ ] Se mantiene un registro vivo de cada incidente.
- [ ] Solo el responsable de operaciones nombrado cambia producción durante un incidente.
- [ ] Los intervalos de actualización están acordados para cada gravedad.
- [ ] Los desencadenantes del postmortem están anotados.
- [ ] Los postmortems son sin culpas, se comparten y se revisan.
- [ ] Cada acción de postmortem tiene un responsable y una fecha, y las acciones abiertas se revisan.
- [ ] Hemos practicado el proceso en los últimos seis meses.

## Prompts de IA

**Propósito: redactar un proceso de incidentes de una página a partir de tu práctica actual.**

```text
Ayúdame a redactar un proceso de incidentes de una página para un equipo de [número] personas que operan [servicio].

Cómo gestionamos hoy los incidentes: [describe en unas pocas frases].
Nuestro arreglo de guardias: [describe].
A quién hay que informar durante un incidente: [enumera las audiencias].
Reglas que debemos cumplir (contratos, reglamentos), con el texto de la fuente si lo tienes: [pega, o escribe "ninguna conocida"].

Produce un proceso breve con: qué cuenta como incidente, un esquema sencillo de gravedad con ejemplos de impacto en los usuarios (deja los umbrales numéricos como [por acordar]), los roles y qué hace cada uno, cómo comunicar y cuándo celebrar un postmortem. Marca cada elemento que sea una suposición. No inventes obligaciones. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: convertir el registro de un incidente en un borrador de postmortem sin culpas.**

```text
A continuación está el registro de un incidente: [pega marcas de tiempo, mensajes y acciones; elimina los datos personales].
Impacto tal como lo conocemos: [describe los usuarios afectados y durante cuánto tiempo, usando solo hechos].

Redacta un postmortem sin culpas con: resumen, impacto, cronología, cómo se detectó, cómo se mitigó, causas que contribuyeron (separando lo conocido de lo sospechado), qué fue bien, qué fue mal y acciones propuestas con un tipo sugerido (prevenir, detectar, responder) pero sin responsables ni fechas. Describe las actuaciones de las personas de forma neutral, como roles. No inventes hechos ni causas. Marca las lagunas con [DESCONOCIDO] y enumera de lo que no estés seguro.
```

**Propósito: redactar una actualización de estado de un incidente para partes interesadas no técnicas.**

```text
Escribe una actualización de estado sobre este incidente para partes interesadas que no son técnicas.

Hechos: qué está afectado: [describe]; desde cuándo: [hora]; qué sabemos de la causa: [lo que se sabe, o "aún no se conoce"]; qué estamos haciendo: [describe]; cuándo llegará la siguiente actualización: [hora].

Escribe menos de 120 palabras en lenguaje sencillo. Indica lo que sabemos y lo que no, sin adivinar la causa ni la hora de la recuperación. No prometas una hora de resolución salvo que yo te la haya dado. Ofrece dos versiones: una para clientes y otra para el personal interno. Enumera de lo que no estés seguro.
```

**Propósito: diseñar un pequeño ejercicio de incidentes.**

```text
Diseña un ejercicio de incidentes de 60 minutos para [número] personas que operan [servicio].

Base del escenario: [describe un incidente pasado o un fallo plausible, usando solo los hechos que quieras usar].
Roles a practicar: comandante del incidente, responsable de operaciones, responsable de comunicaciones.
Restricciones: [por ejemplo no usar sistemas de producción].

Da un plan con tiempos: informe previo, el escenario liberado en tres etapas, indicaciones para cada rol y una revisión breve con preguntas sobre roles, comunicación y registros. No uses acceso real a producción. Hazme primero preguntas aclaratorias si falta información, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): úsala para redactar el plan que fija roles, umbrales y comunicación para tu equipo.
- [postmortem](../../../../skills/postmortem/SKILL.md): úsala para dirigir una revisión sin culpas y registrar las acciones después de un incidente.
- [runbook](../../../../skills/runbook/SKILL.md): úsala para convertir las correcciones conocidas en procedimientos breves para quien responde.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): úsala para diseñar un turno justo con suplentes y traspasos.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): úsala para planificar qué dices a usuarios, personal y público durante una caída mayor.

## Fuentes principales

- **Managing Incidents** (Andrew Stribblehill, en *Site Reliability Engineering*, Google, sre.google): el relato público más claro del mando de incidentes para equipos de servicio.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): el argumento a favor de los postmortems sin culpas, con desencadenantes e ideas para construir cultura.
- **Incident management** (Wikipedia): una visión general de varios campos con una sección sobre la gestión de servicios de TI.
- **IT service management** (Wikipedia): la definición de incidente y el lugar de la gestión de incidentes en el centro de servicios.

## Referencias

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
