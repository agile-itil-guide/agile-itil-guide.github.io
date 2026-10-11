# Gestión de la Seguridad de la Información

**La gestión de la seguridad de la información protege la confidencialidad, la integridad y la disponibilidad de la información mediante controles basados en el riesgo, y en una organización ágil los controles funcionan mejor cuando se incorporan a la canalización de entrega y a los hábitos diarios de los equipos en lugar de añadirse como una barrera al final.**

## Por qué importa

Todo servicio guarda información que le importa a alguien: datos de clientes, registros de pagos, datos de salud, planes internos. Un fallo de seguridad perjudica a las personas a las que describe la información, daña la reputación de la organización y puede acarrear sanciones legales y financieras. Los equipos de gestión de servicios suelen ser quienes ven el fallo primero, como un incidente, y quienes deben restablecer después el funcionamiento normal.

La seguridad y la entrega continua se presentan a menudo como opuestas: la seguridad dice que se vaya más despacio, la entrega que se vaya más deprisa. Esa visión no ayuda. La seguridad que llega solo al final de una versión produce sorpresas tardías y excepciones apresuradas. La seguridad incorporada al trabajo, con comprobaciones que se ejecutan automáticamente y riesgos discutidos pronto, protege el servicio sin frenarlo. Lo mismo ocurre con la gestión de servicios: las prácticas que hacen seguro el cambio también hacen seguros los cambios de seguridad.

Este tema usa el [artículo de Wikipedia sobre la seguridad de la información](https://en.wikipedia.org/wiki/Information_security) y el [artículo sobre ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001) como fuentes principales. Ambos son generales. El primero es un artículo largo, y esta guía solo leyó los primeros 100.000 de sus unos 243.000 caracteres. Este tema no da asesoramiento jurídico; las leyes, los reglamentos y las obligaciones contractuales difieren según el país y el sector, y la fuente correcta es el texto de la regla que te aplica.

## Conceptos clave

### Qué es la seguridad de la información

Wikipedia define la seguridad de la información como la protección de la información mediante la mitigación de los riesgos de la información, con el objetivo de evitar o reducir el acceso, uso, divulgación, interrupción, eliminación, corrupción, modificación o devaluación no autorizados de la información, y de reducir el impacto de los incidentes. Se aplica a la información electrónica, física e intangible, y es parte de la gestión de riesgos de la información.

### La tríada CIA

Los objetivos centrales son la **confidencialidad**, la **integridad** y la **disponibilidad**, equilibrados frente a la eficiencia de las políticas y la productividad de la organización. El artículo los describe así:

| Objetivo | Significado | Ejemplo en un servicio |
|---|---|---|
| **Confidencialidad** | La información está protegida frente a la divulgación no autorizada | Solo el personal autorizado puede ver los historiales de pacientes |
| **Integridad** | La información es exacta y completa y no puede cambiarse de forma no autorizada o sin ser detectada | El importe de un pago no puede alterarse sin dejar rastro |
| **Disponibilidad** | La información es accesible cuando se necesita | El servicio se mantiene activo y resiste los ataques de denegación de servicio |

El artículo señala que la confidencialidad difiere de la privacidad, que califica de concepto más amplio. También señala que las organizaciones pueden añadir objetivos como la autenticidad, la responsabilidad, el no repudio y la fiabilidad, y que el Hexágono Parkeriano, un modelo ampliado, tiene méritos discutidos. La disponibilidad se vincula directamente con la gestión de servicios (véase Tema 3.11 — Disponibilidad, Capacidad y Rendimiento).

### Gestión de riesgos

El artículo describe el riesgo como la probabilidad de daño a un activo de información. Las **vulnerabilidades** son debilidades, las **amenazas** son causas potenciales de daño y el **impacto** es la pérdida resultante. La gestión de riesgos es un proceso continuo e iterativo en el que la dirección puede aceptar, mitigar, transferir (por ejemplo mediante un seguro) o evitar un riesgo. Lo que queda se llama **riesgo residual**. El artículo enumera seis pasos: identificar los activos, evaluar las amenazas, evaluar las vulnerabilidades, calcular el impacto, seleccionar e implantar controles y evaluar esos controles.

### Controles y defensa en profundidad

Los controles protegen la confidencialidad, la integridad o la disponibilidad. El artículo describe la **defensa en profundidad**, la superposición de controles que se solapan, y describe los tipos de control como administrativos (políticas, procedimientos), lógicos (medidas técnicas como el control de acceso y el cifrado) y físicos (cerraduras, instalaciones). Ningún control basta por sí solo; las capas cubren los fallos de las otras.

### Incidentes de seguridad

El artículo describe la gestión de incidentes de seguridad informática como la monitorización, detección y respuesta a los sucesos de seguridad, con planes de respuesta a incidentes que se activan cuando se detectan brechas, normalmente a cargo de un equipo de respuesta a incidentes. Los incidentes de seguridad son un tipo de incidente y se benefician de los mismos roles, comunicación y aprendizaje sin culpas (véase Tema 3.2 — Gestión de Incidentes), además de pasos específicos como preservar la evidencia y notificar a los reguladores o a las personas afectadas cuando se exija.

### ISO/IEC 27001 y 27002

Según Wikipedia, **ISO/IEC 27001** establece los requisitos para establecer, implantar, mantener y mejorar continuamente un sistema de gestión de la seguridad de la información (SGSI), incluida la evaluación y el tratamiento de los riesgos de seguridad de la información. Sus requisitos son genéricos y están pensados para organizaciones de cualquier tipo, tamaño o naturaleza. La primera edición salió en octubre de 2005 a partir de la norma británica BS 7799-2, la segunda en 2013 y la tercera en octubre de 2022, alineada con ISO/IEC 27002:2022; una enmienda de febrero de 2024 añadió una consideración sobre el cambio climático.

Datos clave del artículo:

- Los requisitos del SGSI están en las cláusulas 4 a 10: contexto, liderazgo, planificación, apoyo, operación, evaluación del desempeño y mejora.
- El Anexo A de la edición de 2022 tiene 93 controles de referencia en cuatro temas: organizativos, de personas, físicos y tecnológicos. La edición de 2013 enumeraba 114. El Anexo A es un conjunto de referencia y no una lista de verificación obligatoria: las organizaciones elaboran una **Declaración de Aplicabilidad** que justifica qué controles incluyen y excluyen.
- La certificación es opcional salvo que una ley, un contrato o un esquema la exija. ISO no certifica organizaciones; lo hacen organismos de certificación independientes, por etapas, seguidas de auditorías de seguimiento y recertificación en un ciclo de tres años. Un certificado se aplica solo dentro de su alcance declarado.
- **ISO/IEC 27002** ofrece orientación sobre los controles del Anexo A. Es orientación y no se puede certificar frente a ella.

El artículo señala que una revisión de la literatura de 2021 encontró pocos estudios empíricos sobre los resultados de la certificación. Un certificado muestra que existe un sistema de gestión; no es prueba de que una brecha concreta no pueda ocurrir.

### Otros marcos y leyes

El artículo sobre seguridad de la información nombra muchas otras normas y esquemas, como el NIST Cybersecurity Framework, Cyber Essentials en el Reino Unido, los Essential Eight en Australia y la norma de la industria de tarjetas de pago. También enumera leyes, entre ellas la Computer Misuse Act (1990) y la Data Protection Act (1998) del Reino Unido y la HIPAA (1996), la Gramm–Leach–Bliley Act (1999) y la Sarbanes–Oxley Act (2002) de Estados Unidos. La lista muestra lo variadas que son las reglas. Cuáles te aplican depende de dónde operas, del sector y de los datos que guardas; pregunta a tu función jurídica o de cumplimiento (véase Tema 5.7 — Gobernanza, Riesgo y Cumplimiento).

### La seguridad en la canalización de entrega

Las prácticas que encajan con la entrega continua incluyen:

- **Discusión temprana de amenazas:** pregunta en la planificación qué podría salir mal con una funcionalidad y quién querría hacer un mal uso de ella.
- **Comprobaciones automatizadas:** analizar el código, las dependencias y la configuración en cada cambio, con resultados visibles para el equipo (véase Tema 3.4 — Habilitación de Cambios).
- **Privilegio mínimo:** dar a las personas y los sistemas solo el acceso que necesitan.
- **Gestión de secretos:** mantener las credenciales fuera del código y rotarlas.
- **Pruebas de seguridad:** pruebas de penetración y pruebas automatizadas como parte del ciclo (véase más abajo la habilidad de pruebas de seguridad).
- **Registro y monitorización:** detectar actividad sospechosa (véase Tema 3.10 — Monitorización y Gestión de Eventos).

La orientación de DORA, citada en otros lugares de esta guía, enumera la seguridad omnipresente entre las prácticas que apoyan la entrega continua (véase Tema 3.5 — Gestión de Versiones y Despliegues).

### Cultura y personas

El artículo sobre seguridad de la información menciona investigaciones sobre la cultura de seguridad, incluidas siete dimensiones de cultura identificadas por Roer y Petric (2017). Sea cual sea el modelo, la idea es que muchas brechas empiezan con las personas: un mensaje de phishing, un error, un atajo bajo presión. La formación, las vías claras de notificación y una actitud sin culpas ante los errores honestos mejoran la seguridad más que la culpa.

### Límites de las fuentes

El artículo de Wikipedia no indica críticas concretas a la tríada CIA y se leyó solo en parte. El artículo sobre ISO/IEC 27001 no trata la relación con ISO/IEC 20000 ni con el ciclo planificar-hacer-comprobar-actuar. Este tema no da instrucciones técnicas; usa orientación especializada para tus plataformas y el texto de las normas si necesitas afirmar conformidad.

## Buenas prácticas

1. **Sabe qué información guardas y dónde.** Haz una lista de los principales tipos de información, quién es responsable de cada uno, dónde se almacena y cuán sensible es. No puedes proteger lo que no has identificado.
2. **Haz evaluaciones de riesgos en lenguaje sencillo.** Para cada servicio importante, pregunta qué podría salir mal con la confidencialidad, la integridad y la disponibilidad, cuán probable y cuán grave. Registra las decisiones de aceptar, reducir, transferir o evitar cada riesgo (véase Tema 5.7 — Gobernanza, Riesgo y Cumplimiento).
3. **Superpón tus controles.** Combina políticas, controles técnicos y controles físicos para que un solo fallo no baste. Revisa qué capas protegen tu información más sensible.
4. **Incorpora las comprobaciones a la canalización.** Ejecuta comprobaciones automáticas de seguridad en el código, las dependencias y la configuración con cada cambio y haz visibles las comprobaciones fallidas. Corrige los problemas en el momento del cambio.
5. **Da el privilegio mínimo por defecto.** Concede el acceso según el rol y la necesidad, revísalo con regularidad y retíralo con prontitud cuando las personas se vayan o cambien de rol (véase Tema 3.6 — Gestión de Solicitudes de Servicio).
6. **Gestiona los secretos como es debido.** Mantén las credenciales fuera del código fuente, guárdalas en una bóveda gestionada y rótalas. Prueba que puedes rotarlas con rapidez tras un incidente.
7. **Trata los incidentes de seguridad como incidentes.** Usa los mismos roles, comunicación y revisión que para otros incidentes y añade pasos para la evidencia, la contención y la notificación. Practica el plan.
8. **Conoce tus deberes de notificación.** Averigua, a través de tu función jurídica o de cumplimiento, qué leyes o contratos exigen notificar a las autoridades o a las personas afectadas tras una brecha y con qué rapidez. Escríbelo en el plan de incidentes, citando el texto de la fuente.
9. **Incluye a los proveedores.** Pregunta a los proveedores críticos cómo protegen tu información y pon las expectativas en los contratos (véase Tema 3.14 — Gestión de Proveedores).
10. **Forma y conversa.** Ofrece formación breve y regular basada en ejemplos reales y facilita notificar un error o un mensaje sospechoso sin culpas.
11. **Usa las normas como fuente de estructura.** Si adoptas ISO/IEC 27001, trata el Anexo A como un conjunto de referencia, escribe una Declaración de Aplicabilidad justificada y mantén ligero el SGSI. La certificación es opcional salvo que se exija.
12. **Aprende de los casi accidentes.** Revisa los casi accidentes y los sucesos de baja gravedad en busca de patrones y llévalos a la lista de trabajo pendiente y al registro de riesgos.

## Preguntas para conversar con tu equipo

**¿Qué información guardamos que perjudicaría a las personas si se filtrara y dónde está?**

Pide a cada persona que nombre los datos más sensibles que maneja y dónde viven. Compara. Las sorpresas son comunes: copias en entornos de prueba, exportaciones en carpetas compartidas, registros que contienen datos personales. Quien facilite puede preguntar qué copia está menos protegida. Elige una que reducir o proteger mejor.

**¿Cuándo tomamos por última vez la decisión de aceptar un riesgo de seguridad y quién la tomó?**

Pide un ejemplo. Los riesgos aceptados suelen aceptarse en silencio, por el retraso. Discute quién debería decidir, qué información necesita y dónde se registra. La lista del artículo de formas de gestionar el riesgo (aceptar, mitigar, transferir, evitar) es un marco útil. Acordad un lugar sencillo para registrar la siguiente decisión.

**¿Qué comprobaciones de seguridad se ejecutan automáticamente con cada cambio y cuáles ignoramos?**

Enumera las comprobaciones de la canalización y los resultados. Pregunta qué hallazgos se ignoran habitualmente y por qué. Los hallazgos ignorados suelen significar ruido, falta de responsable o falta de tiempo. Decide cuáles corregir, cuáles suprimir con una razón y quién es responsable de la lista.

**¿Quién tiene acceso a qué y cuándo lo revisamos por última vez?**

Elige un sistema sensible y enumera quién puede llegar a él. Compáralo con quién lo necesita. A menudo el acceso se ha acumulado. Pregunta con qué rapidez se retira el acceso cuando alguien se va. Acordad una fecha de revisión y un responsable.

**¿Qué haríamos en la primera hora de una sospecha de brecha?**

Recorre los pasos: a quién se informa, qué se preserva, qué se corta, quién habla con quién. Las lagunas suelen aparecer en torno a la autoridad y la evidencia. Pregunta dónde está el plan y cuándo se usó por última vez. Programa un ejercicio de mesa.

**¿Qué reglas de seguridad o privacidad nos aplican y cómo lo sabemos?**

Pregunta quién es responsable de saberlo. Si la respuesta es "jurídico" o "nadie", pregunta cómo se entera ingeniería de los requisitos. Las reglas difieren según el país y el sector, así que enumera los lugares en los que operas. Acordad pedir a la función jurídica o de cumplimiento una lista breve, con el texto de la fuente.

## En la práctica: un ejemplo de ITIL ágil

El servicio de informática de investigación de una universidad guarda conjuntos de datos de estudios médicos y da a los investigadores acceso a servidores de análisis. Lo opera un equipo de ocho personas. Tras un incidente en el que un investigador copió un conjunto de datos sin proteger a una carpeta personal en la nube, el responsable de seguridad de la universidad exige que cada cambio y cada solicitud de acceso pasen por una revisión de seguridad de tres semanas. Los investigadores objetan que esto hará inutilizable el servicio.

La gerente del servicio propone un enfoque distinto y se reúne con el responsable de seguridad y dos investigadores. Enumeran la información que se guarda, agrupando los conjuntos de datos como públicos, internos y sensibles. Para los datos sensibles, acuerdan controles más estrictos: acceso por rol y proyecto con nombre, sin copias fuera del servicio y registro de la exportación de datos. Para los demás datos se aplican reglas más ligeras. El equipo añade a la canalización de entrega comprobaciones automáticas de almacenamiento mal configurado y de secretos en el código, y el responsable de seguridad revisa los resultados semanalmente en lugar de revisar cada cambio. Las solicitudes de acceso a conjuntos de datos sensibles siguen un modelo de solicitud con aprobación del custodio de datos del proyecto y una fecha de caducidad. Se imparte a los investigadores una breve sesión de formación basada en el incidente anterior.

Seis meses después, no se han encontrado más copias fuera del servicio y las revisiones de acceso llevan una tarde cada trimestre. Quedan algunas dificultades. Un grupo de investigadores usa una herramienta que exporta datos de una manera que el registro no capta, y las comprobaciones automáticas producen falsas alarmas que el equipo ha empezado a ignorar. Acuerdan con el responsable de seguridad añadir la herramienta al alcance del registro, ajustar las comprobaciones y revisar las alertas cada mes. También piden al equipo jurídico una declaración escrita de los deberes de notificación que se aplican a los conjuntos de datos sensibles, para que el plan de incidentes pueda citar la fuente.

## Cuatro perspectivas

### Equipos de producto y entrega

Los equipos de entrega hacen real la seguridad en el código y la configuración. Discute las amenazas pronto, mantén los secretos fuera del código, responde a los hallazgos automáticos y evita compartir datos sensibles en las pruebas. Informa a seguridad y a operaciones de los cambios que alteran la exposición.

### Equipos de servicio y operaciones

Los equipos de operaciones ejecutan los controles: acceso, monitorización, parcheo y copias de seguridad. Trata los sucesos de seguridad como incidentes, preserva la evidencia y participa en los ejercicios. Devuelve los patrones de incidentes a entrega y al registro de riesgos.

### Liderazgo y gobernanza

Los líderes son dueños de las decisiones de riesgo y de la cultura que las rodea. Pide resúmenes de riesgos en lenguaje sencillo, apoya el tiempo para la formación y los ejercicios y asegúrate de que alguien es responsable de cada decisión de aceptar un riesgo. No exijas la certificación como etiqueta sin una razón.

### Clientes y usuarios

Los clientes y usuarios confían al servicio su información. Usa la autenticación fuerte donde se ofrezca, informa de los mensajes sospechosos y pregunta a los proveedores cómo protegen tus datos y cómo te informarían de una brecha. Espera honestidad y rapidez si algo va mal.

## Fallos frecuentes

- **La seguridad como barrera final.** Las revisiones llegan al final y retrasan las versiones. En su lugar, discute las amenazas pronto y automatiza las comprobaciones en la canalización.
- **El cumplimiento como objetivo.** Un certificado esconde una práctica débil. En su lugar, usa las normas para estructurarte y mide la protección real.
- **Datos sin seguimiento.** Las copias se extienden a sistemas de prueba y almacenamiento personal. En su lugar, sabe dónde viven los datos sensibles y limita las copias.
- **Exceso de acceso.** Los derechos se acumulan y nunca se retiran. En su lugar, revisa el acceso con regularidad y haz que caduque.
- **Secretos en el código.** Las credenciales se guardan en repositorios. En su lugar, usa una bóveda y rota los secretos.
- **Sin plan de incidentes probado.** El primer uso es una brecha real. En su lugar, practica el plan y anota los deberes de notificación.
- **Culpar por los errores.** Las personas ocultan los fallos. En su lugar, facilita notificarlos y responde con aprendizaje.
- **Ignorar a los proveedores.** Terceros guardan datos sin protecciones claras. En su lugar, pregunta, contrata y revisa.

## Modelo de madurez

| Dimensión | Iniciar | Desarrollar | Estandarizar | Gestionar | Orquestar |
|---|---|---|---|---|---|
| Información y riesgo | Los datos sensibles no están enumerados; los riesgos son implícitos | Algunos servicios registran tipos de datos y riesgos | Los datos y riesgos se registran por servicio con responsables y decisiones | Los riesgos se revisan frente a los incidentes y las métricas | Las vistas de riesgo se comparten con clientes y proveedores y se alinean |
| Controles en la entrega | La revisión de seguridad ocurre al final, si es que ocurre | Algunos equipos ejecutan análisis de seguridad | Las comprobaciones de seguridad se automatizan en una canalización común, con responsables de los hallazgos | Los hallazgos, las correcciones y los escapes se miden y se revisan | Los controles se mejoran entre equipos a partir de evidencia compartida |
| Acceso y secretos | El acceso se concede de forma improvisada; secretos en el código | Existen algunas revisiones y bóvedas | El acceso basado en roles con caducidad y los secretos gestionados son estándar | Las revisiones de acceso y la rotación se miden | Las prácticas de acceso y secretos se coordinan con los socios |
| Respuesta a incidentes y cultura | Los incidentes de seguridad se improvisan | Existen algunos planes | Los incidentes de seguridad siguen el proceso de incidentes con pasos adicionales definidos y se practican | Los tiempos de detección y respuesta se miden y el aprendizaje se comparte | La respuesta se coordina con proveedores, clientes y autoridades |

## Lista de verificación

- [ ] Hemos enumerado los principales tipos de información, sus responsables, ubicaciones y sensibilidad.
- [ ] Los riesgos para la confidencialidad, la integridad y la disponibilidad se evalúan para los servicios importantes y se registran las decisiones.
- [ ] Las comprobaciones de seguridad automatizadas se ejecutan en cada cambio y los hallazgos tienen responsables.
- [ ] El acceso es por rol y necesidad, se revisa con regularidad y se retira cuando ya no se necesita.
- [ ] Los secretos se guardan en una bóveda gestionada y pueden rotarse con rapidez.
- [ ] Existe un plan de incidentes de seguridad, se ha practicado e incluye los deberes de notificación con el texto de la fuente.
- [ ] Se ha preguntado por sus protecciones a los proveedores que guardan nuestra información.
- [ ] El personal recibe formación breve y regular y puede notificar errores sin culpas.
- [ ] Si usamos ISO/IEC 27001, tenemos una Declaración de Aplicabilidad justificada y un SGSI ligero.
- [ ] Los casi accidentes se revisan en busca de patrones.

## Prompts de IA

**Propósito: hacer un inventario de tu información y ordenarla por sensibilidad.**

```text
Ayúdame a hacer un inventario sencillo de la información que guarda nuestro servicio.

Qué hace el servicio: [describe].
Datos que conocemos (tipos, dónde se almacenan, quién puede acceder): [pega una lista; elimina cualquier dato personal real].
Reglas o contratos que se aplican, con el texto de la fuente: [pega, o escribe "ninguno conocido"].

Produce una tabla con: tipo de información, dónde vive, quién es responsable, un nivel de sensibilidad sugerido (público, interno, sensible) con una razón de una frase tomada de mi texto y una pregunta que hacer sobre la protección. Marca las conjeturas. No afirmes que se aplica ninguna ley salvo que haya pegado su texto. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: realizar una breve discusión de amenazas para una funcionalidad nueva.**

```text
Ayúdame a dirigir una discusión de amenazas de 30 minutos para esta funcionalidad nueva: [describe qué hace, qué datos maneja, quién la usa y con qué se conecta].

Proporciona preguntas bajo estos encabezados: quién podría hacer un mal uso de ella y cómo; qué datos podrían exponerse, cambiarse o dejar de estar disponibles; qué podría salir mal por las dependencias o los proveedores; qué veríamos si saliera mal; y qué salvaguardas tenemos ya. Luego da una plantilla para registrar los riesgos con un responsable y una decisión (aceptar, reducir, transferir o evitar). No inventes ataques ni vulnerabilidades en mi sistema. Hazme primero preguntas aclaratorias y enumera de lo que no estés seguro.
```

**Propósito: revisar los hallazgos de seguridad automatizados en busca de ruido y prioridad.**

```text
Estos son los hallazgos de nuestras comprobaciones de seguridad automatizadas de los últimos [periodo]: [pega, con recuentos y descripciones breves; elimina los detalles sensibles].
Lo que hicimos con cada uno (corregido, suprimido, ignorado): [pega, o escribe "desconocido"].

Agrupa los hallazgos por tipo. Para cada grupo, sugiere una pregunta sobre si es ruido, un riesgo real o un problema de configuración de la herramienta, usando solo el texto. Identifica qué grupos se ignoran con más frecuencia. No afirmes que un hallazgo sea explotable o inofensivo. Sugiere cómo asignar responsables. Enumera de lo que no estés seguro.
```

**Propósito: preparar un ejercicio de incidente de seguridad.**

```text
Diseña un ejercicio de mesa de 60 minutos sobre una sospecha de brecha de datos en [servicio].

Base del escenario: [describe, usando hechos que elijas, por ejemplo "se notifica la pérdida de un portátil con acceso a datos de producción"].
Roles que participan: [enumera].
Deberes de notificación que se aplican, con el texto de la fuente de jurídico o cumplimiento: [pega, o escribe "aún no confirmados"].

Da un plan con tiempos, indicaciones para cada rol (contener, preservar la evidencia, comunicar, decidir a quién se informa), una lista de decisiones que necesitan autoridad y un paso final que registre las lagunas con responsables. No uses datos ni sistemas reales. Hazme primero preguntas aclaratorias, señala las suposiciones y enumera de lo que no estés seguro.
```

## Habilidades de IA

- [security-testing](../../../../skills/security-testing/SKILL.md): úsala para planificar pruebas de seguridad como parte del ciclo de entrega.
- [risk-register](../../../../skills/risk-register/SKILL.md): úsala para registrar los riesgos de seguridad, las decisiones y los responsables.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): úsala para elegir medidas de alerta temprana para los riesgos de seguridad.
- [data-governance](../../../../skills/data-governance/SKILL.md): úsala para definir quién es responsable de los datos y cómo pueden usarse y compartirse.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): úsala para preparar preguntas para el personal jurídico o de cumplimiento sobre los deberes de privacidad.

## Fuentes principales

- **Information security** (Wikipedia): la tríada CIA, la gestión de riesgos, los controles y la respuesta a incidentes, con una larga lista de normas y leyes relacionadas.
- **ISO/IEC 27001** (Wikipedia, y la propia norma de ISO): los requisitos de un sistema de gestión de la seguridad de la información, con los controles del Anexo A y el proceso de certificación.
- **Computer security incident management** (Wikipedia): contexto sobre la respuesta a los sucesos de seguridad.
- **Defense in depth** (Wikipedia): contexto sobre los controles superpuestos.

## Referencias

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defense in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
