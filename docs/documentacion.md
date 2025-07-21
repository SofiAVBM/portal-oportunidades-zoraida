---
title: "Documentación Portal de Oportunidades"
author: "Laura Sofía Vallejo Bermúdez"
date: "2025-07-07"
version: "1.0"
---

# Documentación – Portal de Oportunidades Fundacion Zoraida

> Plataforma web para conectar jóvenes de Sabana de Occidente con oportunidades educativas y laborales.

---

# Índice

1. [Introducción](#1-introducción)  
   1.1 [Objetivo del documento](#11-objetivo-del-documento)  
   1.2 [Descripción general del proyecto](#12-descripción-general-del-proyecto)

2. [Fase 1 – Planeación, Análisis y Diseño](#2-fase-1--planeación-análisis-y-diseño)  
   2.1 [Planificación](#21-planificación)  
     2.1.1 [Objetivo General](#211-objetivo-general)  
     2.1.2 [Objetivos Específicos](#212-objetivos-específicos)  
   2.2 [Público Objetivo](#22-público-objetivo)  
   2.3 [Alcances y Recursos](#23-alcances-y-recursos)  
     2.3.1 [Funcionalidades Incluidas (MVP)](#231-funcionalidades-incluidas-mvp)  
     2.3.2 [Funcionalidades Excluidas del MVP](#232-funcionalidades-excluidas-del-mvp)  
     2.3.3 [Funcionalidades por fase](#233-funcionalidades-por-fase)  
   2.4 [Restricciones de Negocio](#24-restricciones-de-negocio)  
   2.5 [Criterios de Aceptación](#25-criterios-de-aceptación)  
     2.5.1 [Validación](#251-validación)

3. [Fase 1.2 – Análisis](#3-fase-12--análisis)  
   3.1 [Requerimientos Funcionales](#31-requerimientos-funcionales)  
   3.2 [Requerimientos No Funcionales](#32-requerimientos-no-funcionales)  
   3.3 [Historias de Usuario](#33-historias-de-usuario)  
   3.4 [Casos de Uso](#34-casos-de-uso)

4. [Diagramas (Anexos)](#4-diagramas-anexos)  
   4.1 [Diagrama de Contexto](#41-diagrama-de-contexto)  
   4.2 [Diagrama de Clases](#42-diagrama-de-clases)  
   4.3 [SiteMap](#43-sitemap)  
   4.4 [Wireframes](#44-wireframes)

5. [Fase 1.3 – Diseño](#5-fase-13--diseño)  
   5.1 [Arquitectura](#51-arquitectura)  
     5.1.1 [Diagrama de Componentes](#511-diagrama-de-componentes)  
     5.1.2 [Tecnologías elegidas](#512-tecnologías-elegidas)  
     5.1.3 [Canales de despliegue](#513-canales-de-despliegue)  
   5.2 [Front‑end](#52-front‑end)  
     5.2.1 [Estructura de Componentes](#521-estructura-de-componentes)  
     5.2.2 [Esquemas de Rutas](#522-esquemas-de-rutas)  
     5.2.3 [Diseño Visual y Sistema de Diseño](#523-diseño-visual-y-sistema-de-diseño)  
   5.3 [Back‑end](#53-back‑end)  
     5.3.1 [Rutas y Endpoints](#531-rutas-y-endpoints)  
     5.3.2 [MVC y Validaciones](#532-mvc-y-validaciones)  
     5.3.3 [Seguridad y Autorización](#533-seguridad-y-autorización)  
   5.4 [Base de Datos](#54-base-de-datos)  
     5.4.1 [Modelo Entidad‑Relación](#541-modelo-entidad‑relación)  
     5.4.2 [Normalización e Integridad](#542-normalización-e-integridad)  
   5.5 [Pruebas](#55-pruebas)  
     5.5.1 [Pruebas Unitarias](#551-pruebas-unitarias)  
     5.5.2 [Pruebas de Integración y E2E](#552-pruebas-de-integración-y-e2e)  
     5.5.3 [Pruebas de Rendimiento](#553-pruebas-de-rendimiento)

6. [Fase 2 – Desarrollo](#6-fase-2--desarrollo)

7. [Fase 3 – Pruebas](#7-fase-3--pruebas)

8. [Fase 4 – Despliegue](#8-fase-4--despliegue)

9. [Anexos](#9-anexos)  
 


---

# 1. Introducción

### 1.1 Objetivo del documento
> Explicar el desarrollo técnico y funcional del Portal de Oportunidades, desde la planeación hasta el despliegue final.

### 1.2 Descripción general del proyecto
> El Portal de oportunidades – Fundación Zoraida es una plataforma web diseñada para presentar ofertas académicas o laborales a jóvenes registrados en el sistema. Cada usuario cuenta con un perfil personal que permite realizar seguimiento individualizado a través de logs de navegación, facilitando el seguimiento y el análisis de comportamiento. Adicionalmente, el portal incluye un módulo administrativo destinado a la gestión de ofertas, la consulta de estadísticas relevantes y el monitoreo de la actividad de los usuarios, con el fin de realizar seguimientos efectivos que aumenten la probabilidad de aceptación a las ofertas.
 
---

# 2. Fase 1 – Planeación, Análisis y Diseño

# 2.1 Planificación

## Objetivos

### Objetivo General

Desarrollar una plataforma web que permita presentar ofertas educativas y laborales a jóvenes previamente registrados, incorporando mecanismos de trazabilidad para hacer **seguimiento individualizado y manual** según los intereses del usuario. El objetivo principal es **aumentar la retención y reducir la deserción en las etapas iniciales de las convocatorias**, mediante un sistema que almacene interacciones clave y facilite un seguimiento telefónico semanal por parte del equipo de orientación.

### Objetivos Específicos

#### Generales

- Garantizar que la plataforma tenga un rendimiento óptimo para un volumen estimado de 100 usuarios activos con un máximo de 10 sesiones concurrentes y 200 ofertas simultáneas.
- Asegurar un diseño amigable y responsivo para exploradores (usuarios finales) en dispositivos móviles y escritorio.
- Incluir una vista detallada por cada oferta, con posibilidad de redirección externa.
- Generar un dashboard administrativo básico para el monitoreo de usuarios redirigidos y sus seguimientos.
- Garantizar una trazabilidad individualizada de la interacción usuario-oferta, mediante eventos registrados de inicio de sesión, vista del detalle de una oferta y redirección a la página externa del sitio oficial de la oferta.
- Permitir el depurado manual de ofertas cerradas y usuarios inactivos ( Más de 6 meses sin eventos registrados).
- Establecer pruebas unitarias para todas las funcionalidades del MVP.
- Cumplir con los principios de seguridad digital y protección de datos establecidos en la legislación colombiana (Ley 1581 de 2012).

#### Desde el rol de Usuario (Explorador)

- Registrar nuevo usuario y permitir su inicio de sesión.
- Permitir la edición del perfil individual.
- Visualizar y acceder a ofertas académicas o laborales, con redirección externa.
- Ser contactado para seguimiento una vez se haya redirigido a una oferta.

#### Desde roles Administrativos

> La plataforma contará con los siguientes roles administrativos: **Administrador, Editor y Orientador**, cada uno con permisos específicos que serán detallados en el documento de análisis funcional.

- Administrador: gestiona usuarios, supervisa trazabilidad, depuración de ofertas y usuarios inactivos y controla el uso de la base de datos.
- Editor: apoya en la creación y gestión de ofertas, y registra novedades en los seguimientos.
- Orientador: realiza el seguimiento manual de usuarios redirigidos creando novedades para los seguimientos de los eventos de redirección.

> Los roles administrativos comparten funcionalidades pero estas se van límitando para garantizar la seguridad de la manipulación de los datos.
---

## Público Objetivo

El portal está dirigido a:

- **Adolescentes entre los 16 y 18 años** (grados 10° y 11°).
- **Jóvenes hasta los 25 años idealmente** interesados en oportunidades educativas o laborales.

Ambos grupos:

- Residen principalmente en **Bogotá y la Sabana de Occidente**.
- Tienen acceso a **dispositivos con conexión a internet**.
- Poseen conocimientos básicos de navegación web, correo electrónico y redes sociales.

> Nota: La validación de mayoría de edad será implementada mediante consentimiento parental para usuarios entre 16 y 17 años, alineada con la Ley 1581 de 2012..

---

## Alcances y Recursos

### Funcionalidades Incluidas (MVP)

* Para usuarios (Exploradores)
- Registro, inicio de sesión y edición de perfil de usuario.
- Visualización de ofertas académicas y laborales, con vista detallada.
- Redirección externa a portales oficiales de convocatorias.
- Registro de eventos de navegación:
  - Visualización de oferta.
  - Redirección a una oferta.
  - Inicio de sesión.
- Creación de seguimientos para cada evento de redirección.
  
* Para administradores
- Creación y edición de ofertas.
- Gestión básica de usuarios administrativos.
- Dashboard con visualización de seguimientos activos y creación de novedades de seguimiento.
- Visualización del uso de almacenamiento actual mediante un panel administrativo
- Depurado manual de usuarios y ofertas inactivas.

---

### Funcionalidades Excluidas del MVP

- Extracción automática de datos desde enlaces externos de ofertas.
- Dashboard analítico avanzado con métricas agregadas o visualización detallada (por edad, género, residencia, tipo de oferta, etc.).
- Exportación de reportes en PDF de estadíticas
- Exportación de datos a borrar de la base de datos en CSV. 


> Nota: Estas funcionalidades están previstas para una **Fase 2** posterior al despliegue y validación del MVP.

---

### Funcionalidades por fase 
| **Funcionalidad**                                                             | **MVP** | **Fase 2** |
| ----------------------------------------------------------------------------- | :-----: | :--------: |
| Registro de usuario                                                           |    ✅    |            |
| Inicio de sesión                                                              |    ✅    |            |
| Edición de perfil                                                             |    ✅    |            |
| Vista de ofertas activas                                                      |    ✅    |            |
| Visualización detallada de cada oferta                                        |    ✅    |            |
| Redirección a la página oficial de la oferta                                  |    ✅    |            |
| Generación de eventos (inicio de sesión, vista de oferta, redirección)        |    ✅    |            |
| Creación automática de seguimientos por evento de redirección                 |    ✅    |            |
| Gestión básica de usuarios administrativos (roles: Admin, Editor, Orientador) |    ✅    |            |
| Dashboard con visualización de seguimientos activos y registro de novedades   |    ✅    |            |
| Visualización del uso de almacenamiento (capacidad y alertas manuales)        |    ✅    |            |
| Depuración manual de usuarios y ofertas (acceso directo a base de datos)      |    ✅    |            |
| Extracción automática de metadatos desde enlaces de ofertas                   |          |      ✅    |
| Dashboard analítico avanzado (segmentación por género, edad, ubicación, etc.) |          |      ✅    |
| Creación de usuarios exploradores desde el rol de administrador               |          |      ✅    |
| Generación de reportes en PDF (estadísticas, seguimientos, etc.)              |          |      ✅    |
| Generación de reportes en CSV (usuarios inactivos, ofertas vencidas, etc.)    |          |      ✅    |
| Etiquetado y categorización de ofertas mediante palabras clave                |          |      ✅    |


## Restricciones de Negocio

- El desarrollo utilizará exclusivamente tecnologías **gratuitas y de código abierto**.
- El sistema operará en **una sola instancia**, sin servidor dedicado.
- El portal será alojado en una solución gratuita que soporte:
  - **Pipelines de despliegue continuo**.
  - Manejo de operaciones concurrentes (colas de acceso) sin comprometer integridad de datos.
- No se utilizarán librerías o servicios externos que accedan, procesen o transmitan datos sensibles.
- Se deben implementar **medidas de seguridad y protección de datos personales**, incluyendo encriptación de contraseñas, validación de sesiones y consentimiento informado. ( En este link se pueden ver las políticas de datos actuales -> https://fundacionzoraida.org/politicas/ )
- La base de datos (MySQL o similar) deberá monitorearse activamente por el administrador para evitar superar el límite gratuito de almacenamiento.

> Nota: No se utilizará ningún sistema de notificaciones internas en el MVP, excepto por una alerta manual al alcanzar e 80% de capacidad de almacenamiento.

---

## Criterios de Aceptación (MVP)

El sistema se considerará aceptable cuando cumpla con:

1. Registro, inicio de sesión y edición funcional de perfiles de usuario.
2. Visualización funcional de al menos 10 ofertas reales subidas manualmente por un administrador.
3. Registro correcto de los siguientes eventos de navegación:
   - Visualización de detalles de oferta.
   - Redirección externa a la oferta.
   - Inicio de sesión.
4. Validación de los permisos y funcionalidades asignadas a cada rol administrativo 
5. Acceso administrativo para:
   - Visualizar seguimientos pendientes generados automáticamente tras redirección única usuario-oferta.
   - Registrar novedades manuales por cada seguimiento (contactado, aplicado, sin respuesta, etc.).
   - Visualizar el uso del almacenamiento actual de la base de datos.
6. Evidencia de seguimientos manuales semanales realizados por el equipo de orientación.
7. Pruebas unitarias exitosas para todas las funcionalidades del MVP, con una cobertura mínima del 80%.
8. Experiencia de navegación fluida (Respuesta menor a 5 segundos), sin errores técnicos críticos ni bloqueos funcionales.

### Validación

El cumplimiento será validado mediante:

- **Revisión de código fuente y pruebas unitarias** (framework: Django).
- **Demostración funcional** del flujo principal ante un miembro autorizado de la Fundación Zoraida.
- Al menos 3 sesiones de prueba de usabilidad con usuarios reales (jóvenes del público objetivo).

# 2.2 Análisis 

## Requerimientos Funcionales y No funcionales

| ID   | Descripción                                                                                                                                                               | Prioridad |
| ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------- |
| RF01 | El sistema debe permitir el **registro de nuevos usuarios**.                                                                                                              | Alta      |
| RF02 | El sistema debe permitir el **inicio de sesión de usuarios y administradores**.                                                                                           | Alta      |
| RF03 | El sistema debe permitir el **manejo de permisos** para los roles: Administrador, Editor, Orientador y Explorador.                                                        | Alta      |
| RF04 | El usuario debe poder **editar su información personal desde su perfil**.                                                                                                 | Alta      |
| RF05 | El usuario debe poder **navegar y visualizar un listado de ofertas académicas y laborales**.                                                                              | Alta      |
| RF06 | El usuario debe poder **aplicar filtros** para facilitar la búsqueda de ofertas.                                                                                          | Media     |
| RF07 | El sistema debe mostrar una **vista detallada de cada oferta**.                                                                                                           | Alta      |
| RF08 | El sistema debe **redirigir al usuario a la página oficial externa** de la oferta al hacer clic en “Ver más”.                                                             | Alta      |
| RF09 | El sistema debe **registrar logs automáticamente** por tres eventos: inicio de sesión, visualización de detalles y redirección a oferta externa.                          | Alta      |
| RF10 | Al realizar una redirección por primera vez a una oferta, el sistema debe **crear un seguimiento único** asociado a ese evento.                                           | Alta      |
| RF11 | El administrador debe poder **crear novedades manuales** en los seguimientos, correspondientes a llamadas de acompañamiento al usuario.                                   | Alta      |
| RF12 | Los roles Administrador, Editor y Orientador deben poder **consultar eventos de navegación por usuario**.                                                                 | Alta      |
| RF13 | Los roles Administrador, Editor y Orientador deben poder **cambiar el estado del seguimiento** asociado a un usuario.                                                     | Alta      |
| RF14 | El rol Administrador debe poder **acceder a un dashboard básico** con métricas basadas en eventos y seguimientos de los usuarios.                                         | Alta      |
| RF15 | El rol Administrador debe poder **crear nuevos usuarios**                            | Alta      |
| RF16 | El rol Administrador debe poder **asignar roles específicos a los usuario** | Alta | 
| RF17 | Los roles Administrador y Editor deben poder **crear nuevas ofertas**.                                                                                                    | Alta      |
| RF18 | El sistema debe detectar automáticamente usuarios y ofertas inactivas, según criterios definidos: usuarios sin login por más de un año y ofertas finalizadas. | Media     |
| RF19 | El rol Administrador debe poder **eliminar manualmente usuarios y ofertas inactivas**.                                                                                    | Media     |
| RF20 | El sistema debe **enviar una alerta al administrador** cuando la base de datos esté cerca de su límite de capacidad.                                                      | Alta      |
| RF21 | El sistema debe permitir la **recuperación de contraseña mediante verificación por correo electrónico**.                                                                  | Alta      |
| RF22 | El sistema debe **validar campos obligatorios, detectar correos duplicados y mostrar errores de formulario con mensajes claros**.                                         | Alta      |
| RF23 | El sistema debe **mostrar mensajes de error apropiados** ante fallos de conexión, errores de servidor o datos incorrectos.                                                | Alta      |
| RF24 | El sistema debe **prevenir la duplicación de logs de redirección y seguimientos**, asegurando que solo se cree uno por usuario/oferta.                                    | Alta      |

### Requerimientos No funcionales


| ID    | Categoría      | Descripción                                                                                           | Prioridad |
| ----- | -------------- | ----------------------------------------------------------------------------------------------------- | --------- |
| RNF01 | Rendimiento    | El sistema debe **cargar cada vista en menos de 5 segundos** bajo condiciones normales.               | Alta      |
| RNF02 | Seguridad      | El sistema debe **proteger los datos personales** según la Ley 1581 de 2012 (Colombia).               | Alta      |
| RNF03 | Seguridad      | No se debe permitir que **librerías externas accedan a datos de usuario**.                            | Alta      |
| RNF04 | Seguridad      | Las **contraseñas deben almacenarse cifradas**, utilizando algoritmos estándar de la industria.       | Alta      |
| RNF05 | Compatibilidad | El sistema debe funcionar correctamente en **navegadores modernos** (Chrome, Firefox, Edge).          | Alta      |
| RNF06 | Compatibilidad | El diseño debe ser **responsivo**, permitiendo uso desde dispositivos móviles y tablets.              | Alta      |
| RNF07 | Mantenibilidad | El código debe seguir una **estructura modular, clara y documentada**, siguiendo buenas prácticas.    | Alta   |
| RNF08 | Escalabilidad  | El sistema debe permitir **agregar nuevas funcionalidades sin reescribir componentes existentes**.    | Alta      |
| RNF09 | Disponibilidad | El sistema debe estar **disponible en línea 24/7 desde hosting compartido**.                          | Alta      |
| RNF10 | Accesibilidad  | El sistema debe ofrecer **texto alternativo en imágenes, navegación por teclado y jerarquía visual**. | Alta    |
| RNF11 | Legal          | El sistema debe **gestionar consentimiento de uso de datos para usuarios menores de edad**.           | Alta      |


##  Historias de Usuario

### Definición de Roles 
| Rol               | Descripción                                                                                                                                                                                      |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Explorador**    | Usuario con permisos de solo lectura de ofertas y edición de sus datos personales. Puede visualizar ofertas, pero no realizar modificaciones.                                                                                                 |
| **Administrador** | Tiene acceso total al sistema. Puede ejecutar todas las operaciones CRUD, gestionar usuarios y roles, acceder al dashboard de métricas y recibir alertas sobre la capacidad de la base de datos. |
| **Editor**        | Puede **leer, editar y crear** contenidos (ofertas, novedades), pero **no puede eliminar** ni acceder al dashboard ni gestionar usuarios.                                                      |
| **Orientador**    | Tiene permisos para **leer ofertas y seguimientos pendientes** y **crear novedades** en los seguimientos de usuarios, como registro de llamadas u observaciones de acompañamiento.          
                               |
#### Funcionalidades por Rol
| **Funcionalidad**                                            | **Explorador** | **Orientador** | **Editor** | **Administrador** |
| ------------------------------------------------------------ | :------------: | :------------: | :--------: | :---------------: |
| Registro / Inicio de sesión                                  |        ✅       |        ✅       |      ✅     |         ✅         |
| Edición de perfil personal                                   |        ✅       |                |            |                   |
| Visualización de ofertas                                     |        ✅       |        ✅       |      ✅     |         ✅         |
| Visualización detallada de oferta                            |        ✅       |        ✅       |      ✅     |         ✅         |
| Redirección externa a página oficial                         |        ✅       |                |            |                   |
| Aplicación de filtros a ofertas                              |        ✅       |                |            |                   |
| Registro automático de eventos                               |        ✅       |                |            |                   |
| Recuperación de contraseña                                   |        ✅       |        ✅       |      ✅     |         ✅         |
| Creación de ofertas                                          |                |                |      ✅     |         ✅         |
| Edición de ofertas                                           |                |                |      ✅     |         ✅         |
| Eliminación de ofertas                                       |                |                |            |         ✅         |
| Visualización de seguimientos (eventos)                      |                |        ✅       |      ✅     |         ✅         |
| Creación de novedades en seguimientos                        |                |        ✅       |      ✅     |         ✅         |
| Cambio de estado del seguimiento                             |                |        ✅       |      ✅     |         ✅         |
| Acceso a dashboard básico                                    |                |                |            |         ✅         |
| Creación de usuarios administrativos                         |                |                |            |         ✅         |
| Eliminación de usuarios inactivos                            |                |                |            |         ✅         |
| Recepción de alertas de capacidad (almacenamiento)           |                |                |            |         ✅         |
| Visualización de uso del almacenamiento                      |                |                |            |         ✅         |
| Acceso a logs de navegación                                  |                |        ✅       |      ✅     |         ✅         |

  
#### Rol: Explorador
| ID       | Historia de Usuario                                                                                                                                         |
| -------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **HU01** | Como explorador, quiero registrarme en el portal para acceder a las ofertas disponibles.                                                                    |
| **HU02** | Como explorador, quiero iniciar sesión con mis credenciales para acceder a mi perfil.                                                                       |
| **HU03** | Como explorador, quiero editar la información de mi perfil para mantener mis datos actualizados.                                                            |
| **HU04** | Como explorador, quiero navegar por el listado de ofertas laborales y educativas para conocer las oportunidades disponibles.                                |
| **HU05** | Como explorador, quiero aplicar filtros en el listado de ofertas para encontrar fácilmente las que se ajustan a mis intereses.                              |
| **HU06** | Como explorador, quiero visualizar el detalle de cada oferta para conocer su contenido antes de postularme.                                                 |
| **HU07** | Como explorador, quiero ser redirigido a la página oficial de la oferta para postularme.            |
| **HU08** | Como explorador, quiero que el sistema registre mis interacciones clave (inicio de sesión, visualización de detalle, redirección) para recibir orientación. |
| **HU09** | Como explorador, quiero recuperar mi contraseña en caso de olvidarla para no perder el acceso.                                                              |
| **HU10** | Como explorador, quiero recibir mensajes claros al cometer errores al registrarme o editar mis datos, para saber cómo corregirlos.                          |


#### Rol: Administrador
| ID       | Historia de Usuario                                                                                                                                                  |
| -------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **HU11** | Como administrador, quiero iniciar sesión en el sistema para acceder al panel de control.                                                                            |
| **HU12** | Como administrador, quiero registrar nuevos usuarios con rol administrativo para delegar tareas de gestión.                                                          |
| **HU13** | Como administrador, quiero registrar usuarios con rol de editor u orientador para asignarles responsabilidades específicas.                                          |
| **HU14** | Como administrador, quiero acceder a un dashboard básico con estadísticas basadas en los logs de navegación para tomar decisiones informadas.                        |
| **HU15** | Como administrador, quiero crear nuevas ofertas para que estén disponibles en el portal.                                                                             |
| **HU16** | Como administrador, quiero editar los datos de una oferta para corregir o complementar su información.                                                               |
| **HU17** | Como administrador, quiero que se genere un seguimiento único automáticamente en la primera redirección del usuario hacia una oferta, para facilitar el seguimiento. |
| **HU18** | Como administrador, quiero crear novedades en los seguimientos para registrar avances del usuario tras el acompañamiento telefónico.                                 |
| **HU19** | Como administrador, quiero cambiar el estado de un seguimiento para identificar fácilmente usuarios activos o rezagados.                                             |
| **HU20** | Como administrador, quiero eliminar manualmente usuarios y ofertas inactivas para mantener optimizada la base de datos.                                              |
| **HU21** | Como administrador, quiero recibir una alerta cuando la base de datos se acerque a su límite de capacidad para tomar medidas preventivas.                            |
| **HU22** | Como administrador, quiero que el sistema me notifique errores en la creación de ofertas para corregirlos oportunamente.                                             |
| **HU23** | Como administrador, quiero que los usuarios puedan recuperar su contraseña mediante verificación por correo, para garantizar el acceso continuo al portal.|

#### Rol: Editor
| ID       | Historia de Usuario                                                                                                                      |
| -------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| **HU31** | Como editor, quiero iniciar sesión en el sistema para acceder al panel de control.                                                       |
| **HU32** | Como editor, quiero crear nuevas ofertas para publicarlas en el portal.                                                                  |
| **HU33** | Como editor, quiero editar los datos de una oferta para corregir o complementar la información.                                          |
| **HU34** | Como editor, quiero acceder al listado de seguimientos de usuarios (eventos) para facilitar el acompañamiento telefónico.                |
| **HU35** | Como editor, quiero filtrar los seguimientos por estado o fecha para priorizar los casos más urgentes.                                   |
| **HU36** | Como editor, quiero crear novedades en los seguimientos generados por los eventos del usuario para registrar acciones de acompañamiento. |
| **HU37** | Como editor, quiero cambiar el estado de un seguimiento para saber qué usuarios requieren seguimiento adicional.                         |
| **HU38** | Como editor, quiero visualizar los detalles completos de cada oferta para verificar la información antes de su publicación.              |



#### Rol: Orientador
| ID       | Historia de Usuario                                                                                                                     |
| -------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| **HU41** | Como orientador, quiero iniciar sesión en el sistema para acceder a las herramientas de seguimiento.                                    |
| **HU42** | Como orientador, quiero acceder al historial de interacciones de los usuarios (logs) para hacerles un seguimiento individual.           |
| **HU43** | Como orientador, quiero crear novedades en los seguimientos generados automáticamente por los logs de redirección.                      |
| **HU44** | Como orientador, quiero cambiar el estado de un seguimiento para marcar el progreso del usuario en su proceso.                          |
| **HU45** | Como orientador, quiero filtrar los seguimientos por estado o fecha para priorizar los casos más urgentes.                              |
| **HU46** | Como orientador, quiero ver los detalles de las ofertas para asesorar adecuadamente a los usuarios durante las llamadas de seguimiento. |

---

## Casos de Uso

### CU01 - Registrarse en el portal

**Actor:** Explorador  
**Descripción:** Permite a un nuevo usuario crear una cuenta en la plataforma.  
**Precondiciones:** El usuario no debe estar autenticado.  
**Flujo principal:**
1. El explorador accede al formulario de registro.
2. El sistema muestra los campos obligatorios (nombre, correo, contraseña).
3. El usuario completa y envía el formulario.
4. El sistema valida los datos.
5. El sistema crea el usuario con rol "Explorador" y redirige al inicio de sesión.
**Flujos alternativos:**
- El usuario ya está registrado → se sugiere iniciar sesión.
**Flujos de excepción:**
- Correo duplicado → se muestra mensaje de error.
- Datos incompletos → se muestra validación por campo.
**Postcondiciones:** Se crea un nuevo usuario en la base de datos.
**Reglas de negocio:** El correo debe ser único. Contraseña con mínimo 8 caracteres.

---

### CU02 - Iniciar sesión

**Actor:** Todos los roles  
**Descripción:** Permite a los usuarios autenticarse en el sistema.  
**Precondiciones:** Tener cuenta previamente creada.  
**Flujo principal:**
1. El usuario accede al formulario de inicio de sesión.
2. Ingresa sus credenciales.
3. El sistema valida los datos.
4. Se inicia sesión y se redirige al panel correspondiente según el rol.
**Flujos de excepción:**
- Credenciales incorrectas → se informa al usuario.
- Cuenta inexistente → se sugiere crear cuenta.
**Postcondiciones:** El usuario queda autenticado en sesión.
**Reglas de negocio:** La contraseña nunca se guarda en texto plano.

---

### CU03 - Visualizar ofertas

**Actor:** Explorador  
**Descripción:** Permite al explorador acceder a la lista de ofertas laborales y educativas.  
**Precondiciones:** Usuario debe estar autenticado como Explorador.  
**Flujo principal:**
1. El usuario accede a la sección de ofertas.
2. El sistema muestra un listado filtrable y ordenado.
3. El usuario puede aplicar filtros para refinar resultados.
4. El usuario selecciona una oferta para ver su detalle.
5. El sistema muestra la información completa y habilita botón de redirección.
**Flujos de excepción:**
- Fallo en la carga → se muestra mensaje de error.
- No hay ofertas disponibles → se muestra mensaje informativo.
**Postcondiciones:** Se registra la visualización en eventos.
**Reglas de negocio:** Las ofertas deben estar activas y dentro del periodo de vigencia.
---

### CU04 - Crear oferta

**Actor:** Administrador, Editor  
**Descripción:** Permite registrar una nueva oferta laboral o educativa en el sistema.  
**Precondiciones:** Usuario autenticado como Administrador o Editor.  
**Flujo principal:**
1. El actor accede al módulo de creación de oferta.
2. Completa el formulario con datos requeridos.
3. El sistema valida la información.
4. La oferta se guarda y aparece en el listado.
**Flujos de excepción:**
- Faltan campos obligatorios → se informa al usuario.
- Fecha inválida → se bloquea el envío.
**Postcondiciones:** Nueva oferta disponible para Exploradores.
**Reglas de negocio:** No se pueden crear ofertas duplicadas (misma institución, nombre y fecha).

---

### CU05 - Editar información personal

**Actor:** Explorador  
**Descripción:** Permite al usuario modificar sus datos personales.  
**Precondiciones:** Usuario autenticado como Explorador.  
**Flujo principal:**
1. Accede a su perfil.
2. Edita los campos permitidos.
3. El sistema valida y guarda los cambios.
4. Se muestra confirmación de éxito.
**Flujos de excepción:**
- Email duplicado al actualizar → mensaje de error.
- Campos inválidos → validación por campo.
**Postcondiciones:** Datos personales actualizados.
**Reglas de negocio:** Solo se puede editar nombre, género, teléfono, correo, dirección y ciudad.

---

### CU06 - Consultar dashboard

**Actor:** Administrador  
**Descripción:** Visualiza métricas de uso y seguimiento de usuarios.  
**Precondiciones:** Usuario autenticado como Administrador.  
**Flujo principal:**
1. Accede al módulo de dashboard.
2. El sistema muestra estadísticas clave: número de ofertas activas, usuarios activos, redirecciones, seguimientos.
**Flujos de excepción:**
- Fallo de conexión o carga → se muestra error temporal.
**Postcondiciones:** Se permite toma de decisiones basada en métricas.
**Reglas de negocio:** El dashboard se actualiza cada que el administrador lo abre.

---

### CU07 - Crear novedades en seguimientos

**Actor:** Administrador, Orientador  
**Descripción:** Registra interacciones o llamadas realizadas a un usuario.  
**Precondiciones:** Debe existir un seguimiento previo.  
**Flujo principal:**
1. Accede al historial de seguimientos.
2. Selecciona un usuario y crea una novedad (observación, resultado de llamada, etc.).
3. El sistema guarda la novedad.
**Flujos de excepción:**
- El seguimiento no existe → se bloquea la acción.
**Postcondiciones:** Novedad asociada correctamente al seguimiento.
**Reglas de negocio:** Solo se pueden agregar novedades a seguimientos activos.

---

### CU08 - Cambiar estado de seguimiento

**Actor:** Administrador, Editor, Orientador  
**Descripción:** Permite actualizar el estado del seguimiento de un usuario (pendeinte, en proceso, finalizado, cancelado).  
**Precondiciones:** El seguimiento debe existir.  
**Flujo principal:**
1. Accede a la sección de seguimiento.
2. Cambia el estado mediante selector.
3. El sistema guarda el nuevo estado.
**Flujos de excepción:**
- Estado inválido → se muestra advertencia.
**Postcondiciones:** Estado actualizado para el seguimiento.
**Reglas de negocio:** Solo ciertos roles pueden cambiar estados. No se puede regresar de "finalizado" a "activo".

---

### CU09 - Recuperar contraseña

**Actor:** Todos los roles  
**Descripción:** Permite restablecer acceso a la cuenta mediante correo electrónico.  
**Precondiciones:** Tener correo registrado.  
**Flujo principal:**
1. Accede a la opción “¿Olvidaste tu contraseña?”
2. Ingresa su correo.
3. El sistema envía enlace de recuperación.
4. El usuario accede al enlace y crea nueva contraseña.
**Flujos de excepción:**
- Correo no registrado → mensaje de error.
**Postcondiciones:** Contraseña actualizada.
**Reglas de negocio:** El token de recuperación expira en 30 minutos.

---

### CU10 - Eliminar usuarios/ofertas inactivas

**Actor:** Administrador  
**Descripción:** Permite limpiar la base de datos eliminando elementos inactivos.  
**Precondiciones:** El sistema ha marcado previamente usuarios y ofertas como inactivos.  
**Flujo principal:**
1. Accede al módulo de mantenimiento.
2. El sistema muestra elementos inactivos según criterios definidos.
3. El administrador confirma eliminación.
4. El sistema elimina registros de forma segura.
**Flujos de excepción:**
- Error en la base de datos → acción se cancela.
**Postcondiciones:** Registros eliminados del sistema.
**Reglas de negocio:** Solo se eliminan usuarios sin login > 1 año y ofertas vencidas.

---


## Diagramas 

### Diagrama de contexto

El diagrama de contexto representa el sistema como una entidad única y autónoma, mostrando sus límites e identificando los actores externos (usuarios y sistemas) que interactúan con él. 

![Diagrama de contexto](../docs/Anexos/Diagrama%20de%20contexto.png )

### Diagrama de clases 

Este diagrama representa las entidades principales del sistema, sus relaciones y la lógica de negocio mediante servicios auxiliares (ReportService, SecurityService y CleanupService). Refleja los requisitos funcionales y no funcionales descritos en esta documentación. Los métodos mostrados en las clases indican funcionalidades esperadas o implementadas para el correcto funcionamiento del portal web.
 
![Diagrama de clases](../docs/Anexos/UML_de_Clases.png)

#### Descripcion de Clases -> **Me falta aclarear las relacionesy corregir los metodos en el diagrama**

##### `Usuario`
> Representa a un usuario registrado en el sistema. Puede tener diferentes roles según su nivel de acceso y funciones: Administrador, Editor, Orientador, o Explorador (usuario regular). El modelo centraliza la información personal, de contacto, autenticación y permisos de acceso.

**Atributos**
| Atributo                 | Tipo            | Descripción / Comentarios                              |
| ------------------------ | --------------- | ------------------------------------------------------ |
| `id`                     | `int`           | Identificador único del usuario                        |
| `nombre`                 | `str`           | Nombre completo                                        |
| `tipo_documento`         | `TipoDocumento` | Enum: CC, TI, CE, PAS.                                 |
| `num_documento`          | `str`           | Número de documento de identidad                       |
| `fecha_nacimiento`       | `date`          | Fecha de nacimiento                                    |
| `genero`                 | `Genero`        | Enum: Masculino, Femenino, No binario, Otro,  Prefiere no decir     |
| `lugar_residencia`       | `Residencia`    | Enum: Madrid, Funza, Mosquera, Facatativa, Bojacá, Zipacon, El Rosal, Subachoque, Bogotá   |
| `direccion`              | `str`           | Dirección de residencia                                     |
| `telefono`               | `str`           | Número de contacto                                          |
| `email`                  | `str`           | Correo electrónico  |
| `contrasena`             | `Hash`          | Contraseña cifrada (hash, no texto plano)                   |
| `rol`                    | `Rol`           | Enum: Explorador, Administrador, Editor, Orientador.        |
| `consentimiento_menores` | `bool`          | Solo requerido si el usuario es menor de edad               |


**Métodos**
| Método                 | Retorno         | Descripción                             |
| ---------------------- | --------------- | --------------------------------------- |
| `+createUser()`        | `Usuario`       | Crea un nuevo usuario                   |
| `+readUserProfile()`   | `Usuario`       | Consulta el perfil completo del usuario |
| `+updateUserProfile()` | `void`          | Edita la información del perfil         |
| `+updatePassword()`    | `void`          | Cambia la contraseña                    |
| `+deleteUser()`        | `void`          | Desactiva el usuario                    |
| `+getUserType()`       | `str`           | Retorna el tipo de rol del usuario      |
| `+readAllUsers()`      | `List<Usuario>` | Devuelve todos los usuarios registrados |




---

##### `Log`
> Representa un registro de eventos de navegación realizados por los usuarios dentro del sistema. Incluye acciones como inicio de sesión, visualización del detalle de una oferta, y redirección externa hacia la página de la oferta. Este modelo permite realizar trazabilidad del comportamiento del usuario con fines analíticos y de seguimiento.

**Atributos**
| Atributo  | Tipo        | Descripción                                                  |
| --------- | ----------- | ------------------------------------------------------------ |
| `id`      | `int`       | Identificador único del evento de log                        |
| `usuario` | `Usuario`   | Referencia al usuario que ejecutó la acción                  |
| `oferta`  | `Oferta`    | (Opcional) Referencia a la oferta sobre la que se interactuó |
| `evento`  | `EventoLog` | Enum: Inicio Sesión, Detalle, Redirección                    |
| `fecha`   | `datetime`  | Fecha en que ocurrió el evento                               |


**Métodos**
| Método                        | Retorno     | Descripción                                                       |
| ----------------------------- | ----------- | ----------------------------------------------------------------- |
| `+createLogEvent()`           | `Log`       | Registra un nuevo evento de navegación                            |
| `+readLog()`                  | `Log`       | Consulta un log individual                                        |
| `+getLogsByUser(userId: int)` | `List<Log>` | Obtiene todos los logs asociados a un usuario                     |
| `+getLogsByOfferAndDate()`    | `List<Log>` | Consulta los logs filtrados por oferta y rango de fechas          |
| `+readAllLogs()`              | `List<Log>` | Devuelve todos los registros del sistema (según permisos del rol) |

---

##### `Oferta`
> Representa una oportunidad académica o laboral publicada en el portal. Una oferta puede ser de tipo Empleo, Práctica, Curso, Beca o Educación . Se tomó la decisión de modelar todos los tipos de oferta dentro de una única entidad para reducir la complejidad estructural del modelo y facilitar las consultas, dado que no se requiere lógica específica por tipo de oferta. 

**Atributos**
| Atributo              | Tipo            | Aplicabilidad                                               |
| --------------------- | --------------- | ----------------------------------------------------------- |
| `id`                  | `int`           | General                                                     |
| `institucion`         | `str`           | General                                                     |
| `titulo`              | `str`           | General                                                     |
| `imagen`              | `str`           | General                                                     |
| `descripcion`         | `str`           | General                                                     |
| `fecha_inicio`        | `date`          | General                                                     |
| `fecha_fin`           | `date`          | General                                                     |
| `tipo_oferta`         | `TipoOferta`    | General (enum)                                              |
| `link`                | `str`           | General                                                     |
| `estado`              | `bool`          | General                                                     |
| `lugar`               | `str`           | General                                                     |
| `rango_salarial`      | `str`           | Empleo / Prácticas                                          |
| `tipo_contrato`       | `TipoContrato`  | Empleo / Prácticas (`aprendizaje` por defecto en prácticas) |
| `auxilio`             | `bool`          | Prácticas / Becas                                           |
| `duracion`            | `str`           | Prácticas / Cursos / Educación                              |
| `modalidad`           | `Modalidad`     | Cursos / Educación (enum)                                   |
| `duracion_presencial` | `str`           | Cursos o Educación híbrida                                  |
| `duracion_virtual`    | `str`           | Cursos o Educación híbrida                                  |
| `tipo_formacion`      | `TipoEducacion` | Educación (enum)                                            |


**Métodos**
| Método                           | Retorno        | Descripción                                                  |
| -------------------------------- | -------------- | ------------------------------------------------------------ |
| `+createOffer()`                 | `Oferta`       | Crea una nueva oferta en el sistema                          |
| `+readOffer()`                   | `Oferta`       | Consulta la información de una oferta específica             |
| `+updateOffer()`                 | `void`         | Edita los datos de una oferta existente                      |
| `+deleteOffer()`                 | `void`         | Marca la oferta como inactiva                                |
| `+isActive()`                    | `bool`         | Devuelve `True` si la oferta está vigente                    |
| `+getAssociatedLogs()`           | `List<Log>`    | Devuelve los logs relacionados con la oferta                 |
| `+getOfferDataFromUrl(url: str)` | `Oferta`       | Extrae datos automáticamente desde una fuente externa        |
| `+readAllOffers()`               | `List<Oferta>` | Lista todas las ofertas activas o archivadas según el estado |



---

##### `Seguimiento`
> Representa el control manual del estado y evolución de un usuario dentro del sistema. Este modelo es gestionado por perfiles de tipo analista/orientador y permite mantener el historial del proceso de acompañamiento del usuario.

**Atributos**
| Atributo             | Tipo                | Descripción                                                            |
| -------------------- | ------------------- | ---------------------------------------------------------------------- |
| `usuario`            | `Usuario`           | Referencia al usuario al que se le realiza seguimiento                 |
| `fecha`              | `date`              | Fecha en la que se registró el seguimiento                             |
| `estado`             | `EstadoSeguimiento` | Enum: Pendiente, En Proceso, Finalizado, Cancelado                     |
| `seguimiento_activo` | `bool`              | Indica si este seguimiento es el actual (activo) o parte del historial |


**Métodos**
| Método                                                | Retorno             | Descripción                                     |
| ----------------------------------------------------- | ------------------- | ----------------------------------------------- |
| `+createTracking(usuario: Usuario)`                   | `Seguimiento`       | Crea un nuevo proceso de seguimiento            |
| `+readTracking()`                                     | `Seguimiento`       | Consulta un seguimiento específico              |
| `+updateTrackingStatus(newStatus: EstadoSeguimiento)` | `void`              | Actualiza el estado del seguimiento actual      |
| `+isTrackingActive()`                                 | `bool`              | Retorna si el seguimiento está en estado activo |
| `+getTrackingsByStatus(status: EstadoSeguimiento)`    | `List<Seguimiento>` | Lista seguimientos por estado                   |
| `+readAllTrackings()`                                 | `List<Seguimiento>` | Devuelve todos los seguimientos registrados     |



---

##### `Novedad`
> Representa una observación o anotación específica realizada dentro de un proceso de seguimiento de un usuario. Cada Novedad está asociada a un Seguimiento.

**Atributos**
| Atributo      | Tipo             | Descripción                                           |
| ------------- | ---------------- | ----------------------------------------------------- |
| `id`          | `int`            | Identificador único de la novedad                     |
| `fecha`       | `date`           | Fecha de creación de la novedad                       |
| `descripción`   | `str`            | Texto libre que describe la observación registrada    |
| `creado_por`  | `Usuario`        | Usuario con rol administrativo que realizo el seguimiento    |



**Métodos**
| Método                                                    | Retorno         | Descripción                                     |
| --------------------------------------------------------- | --------------- | ----------------------------------------------- |
| `+createTrackingNote(seguimiento: Seguimiento, ...)`      | `Novedad`       | Crea una nueva novedad dentro de un seguimiento |
| `+readTrackingNote()`                                     | `Novedad`       | Consulta el contenido de una novedad específica |
| `+updateTrackingNote(newContent: str, tipo: TipoNovedad)` | `void`          | Edita el contenido o tipo de una novedad        |
| `+readAllNotesByTracking(trackingId: int)`                | `List<Novedad>` | Lista todas las novedades de un seguimiento     |

---



####  Servicios del Sistema

##### `SecurityService`
> Servicio responsable de la autenticación de usuarios, validación de sesiones activas y gestión segura de contraseñas.

**Métodos**
| Método                                     | Retorno   | Descripción                                                                                  |
| ------------------------------------------ | --------- | -------------------------------------------------------------------------------------------- |
| `+authenticate(email: str, password: str)` | `Usuario` | Verifica las credenciales del usuario y retorna la instancia correspondiente si son válidas. |
| `+validateSession(token: str)`             | `bool`    | Verifica si el token de sesión actual es válido.                                             |
| `+hashPassword(password: str)`             | `str`     | Devuelve una versión cifrada de la contraseña usando hash seguro.                            |


---

##### `DashboardService`
> Servicio encargado de generar estadísticas del sistema, informes analíticos y métricas del dashboard administrativo.

**Métodos**
| Método                         | Retorno              | Descripción                                                           |
| ------------------------------ | -------------------- | --------------------------------------------------------------------- |
| `+generateInitialStats()`      | `InformeEstadístico` | Genera un resumen inicial de métricas globales al iniciar el sistema. |
| `+generateDashboardData()`     | `Dict`               | Recolecta y estructura los datos del dashboard en tiempo real.        |
| `+checkDatabaseUsage()`        | `float`              | Retorna el porcentaje actual de uso de espacio en la base de datos.   |

---

##### `CleanupService`
> Servicio encargado de ejecutar rutinas de depuración sobre registros antiguos o inactivos, con el objetivo de optimizar el rendimiento y mantener la base de datos limpia.

**Métodos**
| Método                      | Retorno                | Descripción                                                     |
| --------------------------- | ---------------------- | --------------------------------------------------------------- |
| `+cleanOldOrInactiveData()` | `void`                 | Elimina registros antiguos, obsoletos o inactivos.      |
| `+getInactiveItems()`       | `Dict[str, List[Any]]` | Devuelve una lista clasificada de usuarios y ofertas inactivas. |



### SiteMap 

Este mapa de sitio representa la arquitectura de navegación propuesta del Portal de Oportunidades, diferenciando los flujos por tipo de usuario (Explorador, Editor, Orientador, Administrador) y agrupando las funcionalidades clave por módulo funcional.

![SiteMap](../docs/Anexos/SiteMap.png)


## Wireframes
[Wireframes](../docs/Anexos/Wireframes.pdf) -> Pdf 
O ver anexo en la carpeta /docs/Anexos/Wireframes.pdf


# 2.3 Diseño  -> **Revisión de elementos indispensables en el diseño **

## Arquitectura -> muy necesario 
* Diagrama de componetes 
* Tecnologías elegidas 
  - Fronted, Backend, Base de datos
* Justificacion de las decisiones
* Canales de despliegue
  
## Fronted
* Diseño, e interacciones: 
[Diseño en Figma](https://www.figma.com/proto/8KKAZVbvw4FvoJIFfuDScI/Portal-de-oportunidades---landing?node-id=1-2&t=dM2dy471ELcA6Lpv-1)

* Framework (tailwind)

#### Guía de Estilos (UI Design System)

#####  Paleta de Colores (HEX)

| Rol del color | Nombre     | Código HEX |
|---------------|------------|------------|
| Principal     | Azul Zoraida     | #053479   |
| Énfasis       | Naranja feo   | #FF7E00   |
| Secundario    | Morado suave     | #6B4EFF   |
| Fondo claro   | Gris neutro 1    | #F8F9FA   |
| Fondo oscuro  | Gris neutro 2    | #E5E7EB   |
| Texto base    | Negro       | #1F2937   |

---

#####  Tipografías y Jerarquías Visuales

- **Títulos:** `Platypi`, serif
  - Peso: 600–800
  - Usos: encabezados principales (`h1`, `h2`, botones importantes)
  - Tamaños sugeridos: `text-4xl` (h1), `text-2xl` (h2)

- **Párrafos y texto secundario:** Montserrat`, sans-serif
  - Peso: 400–600
  - Usos: cuerpo de texto, botones secundarios, formularios
  - Tamaños sugeridos: `text-base` (normal), `text-sm` (ayudas, notas)


---

#####  Componentes Base (con Tailwind)

- **Botones**
  - Primario: fondo azul `#053479`, texto blanco, hover más oscuro (`hover:bg-[#032E66]`)
  - Secundario: borde morado `#6B4EFF`, texto morado, fondo blanco, hover fondo morado claro
  - Acción: fondo naranja `#FF7E00`, texto blanco

- **Inputs**
  - Bordes redondeados (`rounded-lg`)
  - Espaciado interior (`px-4 py-2`)
  - Bordes azules en foco (`focus:ring-[#053479]`)
  - Etiquetas arriba en `text-sm` gris oscuro

- **Alertas**
  - Exito: fondo verde `bg-green-100`, borde `border-green-600`
  - Error: fondo rojo claro, ícono de advertencia
  - Info: fondo azul claro, ícono de información

- **Tarjetas**
  - Fondo blanco, sombra suave (`shadow-md`)
  - Bordes `rounded-2xl`
  - Padding interno (`p-6`)
  - Título (`text-xl`), subtítulo (`text-sm` gris), botón inferior

---

  
## Backend 
* Rutas y Endpoints 
* MVC
* Flujo de Autentificación y Autorización 
* Valdiación y Manejo de Errores 
* Servises reutilizables

### Diseño de la Base de datos 
* Modelo E/R 
* Normalización 
* Justificación de decisiones 
* politicas de integridad referncial 
  
### Seguridad y Validaciones 
* Validadciones de Backend 
* Hashinng 
* Control de acceso 
* Protección contra ataques comunes 

### Pruebas 
* Estrategia de pruebas 
| Tipo de prueba         | Herramienta   | ¿Qué valida?                                                        |
| ---------------------- | ------------- | ------------------------------------------------------------------- |
| Pruebas unitarias      | Vitest / Jest | Lógica de negocio: validaciones, funciones puras, modelos de datos  |
| Pruebas de endpoints   | Postman       | Respuestas de rutas, status codes, datos esperados                  |
| Pruebas de rendimiento | JMeter        | Carga simultánea de usuarios, velocidad de respuesta                |
| Pruebas E2E (opcional) | Cypress       | Flujos completos de usuario: login, redirección, creación de oferta |



# 3. Fase 2 – Desarrollo

# 4. Fase 3 – Pruebas

# 5. Fase 4 – Despliegue

# 7. Anexos
