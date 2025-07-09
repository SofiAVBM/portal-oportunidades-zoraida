---
title: "Documentación Portal de Oportunidades"
author: "Laura Sofía Vallejo Bermúdez"
date: "2025-07-07"
version: "1.0"
---

# Documentación – Portal de Oportunidades Fundacion Zoraida

> Plataforma web para conectar jóvenes de Sabana de Occidente con oportunidades educativas y laborales.

---

## Índice

1. [Introducción](#1-introducción)  
   - [1.1 Objetivo del documento](#11-objetivo-del-documento)
   - [1.2 Descripción general del proyecto](#12-descripción-general-del-proyecto)
2. [Fase 1 – Planeación y Diseño](#2-fase-1--planeación-y-diseño)  
   - [2.1 Documento de Alcance](#21-documento-de-alcance)
   - [2.2 Mapa del Sitio (Sitemap)](#22-mapa-del-sitio-sitemap)
   - [2.3 Historias de Usuario](#23-historias-de-usuario)
   - [2.4 Requisitos Funcionales y No Funcionales](#24-requisitos-funcionales-y-no-funcionales)
   - [ 2.5 Wireframes de Baja Fidelidad](#25-wireframes-de-baja-fidelidad)
   - [2.6 Especificación del Dashboard Administrativo](#26-especificación-del-dashboard-administrativo)
   - [2.7 Diagrama UML de Clases ](#26-diagrama-uml-de-clases)
   - [2.8 UX desing Figma ](#28-ux-design-en-figma)
   - [2.9 Guía de Estilos (UI Design System)](#29-guía-de-estilos-ui-design-system)
- [3. Fase 2 – Desarrollo](#3-fase-2--desarrollo)  
  - [3.1 Arquitectura del Sistema](#31-arquitectura-del-sistema)  
  - [3.2 Estructura de Carpetas](#32-estructura-de-carpetas)  
  - [3.4 Código Relevante](#34-código-relevante)
- [4. Fase 3 – Pruebas](#4-fase-3--pruebas)  
  - [4.1 Plan de Pruebas](#41-plan-de-pruebas)  
  - [4.2 Casos de Prueba](#42-casos-de-prueba)  
  - [4.3 Resultados y Bugs](#43-resultados-y-bugs)  
  - [4.4 Pruebas de Usuario (si se puede)](#44-pruebas-de-usuario-si-se-puede)
- [5. Fase 4 – Despliegue](#5-fase-4--despliegue)  
  - [5.1 Hosting y Entorno de Producción](#51-hosting-y-entorno-de-producción)  
  - [5.2 Pasos para Desplegar](#52-pasos-para-desplegar)  
  - [5.3 Consideraciones de Seguridad](#53-consideraciones-de-seguridad)
- [7. Anexos](#7-anexos)

---

## 1. Introducción

### 1.1 Objetivo del documento
> Explicar el desarrollo técnico y funcional del Portal de Oportunidades, desde la planeación hasta el despliegue final.

### 1.2 Descripción general del proyecto
> El Portal de oportunidades – Fundación Zoraida es una plataforma web diseñada para presentar ofertas laborales a jóvenes registrados en el sistema. Cada usuario cuenta con un perfil personal que permite realizar seguimiento individualizado a través de logs de navegación, facilitando el seguimiento y el análisis de comportamiento. Adicionalmente, el portal incluye un módulo administrativo destinado a la gestión de ofertas, la consulta de estadísticas relevantes y el monitoreo de la actividad de los usuarios, con el fin de optimizar el impacto y la eficiencia de las acciones de la fundación.
 

---

## 2. Fase 1 – Planeación y Diseño

### 2.1 Documento de Alcance

####  Objetivo General

Desarrollar una plataforma web que permita presentar ofertas educativas y laborales a jóvenes previamente registrados, con mecanismos de trazabilidad que permitan hacer seguimiento individualizado según los intereses del usuario. El objetivo es **aumentar la retención y reducir la deserción en las etapas iniciales de las convocatorias**,  mediante un sistema de navegación medible y personalizable, y un módulo de administración con métricas clave para evaluación de impacto

####  Objetivos Específicos

##### Generales
- Garantizar que la plataforma tenga un rendimiento óptimo, sin tiempos de carga excesivos.
- Asegurar el diseño responsivo que permita su uso tanto en computadores como en dispositivos móviles.
- Incluir una vista detallada para cada oferta con descripción, imagen y enlace externo.
- Generar un Dashboard administrativo que permita hacer seguimiento a los usuarios de acuerdo a los logs generados 

##### Desde el rol de Usuario
- Registrar nuevos usuarios y permitir su inicio de sesión.
- Permitir la edición del perfil individual.
- Redirigir al usuario a ofertas académicas o laborales externas o propias de la Fundación Zoraida.


##### Desde el rol de Administrador
- Crear nuevos usuarios con rol administrativo.
- Visualizar un dashboard con estadísticas de navegación obtenidas mediante logs.
- Generar reportes en pdf de las estadísticas generadas en un periodo específico de tiempo. 
- Crear nuevas ofertas a partir de un enlace externo, extrayendo título, imagen y descripción por defecto (editables).
- Recibir notificaciones sobre los usuarios que han sido redireccionados a ofertas para su posterior seguimiento.
- Exportar datos en formato csv que se vayan a borrar 
- Depuración manual de usuarios y ofertas inactivas

---

####  Público Objetivo

El portal está dirigido a **jóvenes entre los grados 10° y 11°, y personas menores de 30 años**, interesados en oportunidades educativas o laborales.  
El público objetivo:
- Reside principalmente en **Bogotá y Sabana de Occidente** (ofertas presenciales), aunque también puede acceder a **ofertas virtuales desde cualquier lugar de Colombia**.
- Tiene acceso a **dispositivos tecnológicos con conexión a internet**.
- Cuenta con conocimientos básicos en tecnología: uso de redes sociales, navegación web, y correo electrónico.

La plataforma está optimizada para **uso desde computador**, pero tendrá diseño responsivo para **garantizar su uso desde dispositivos móviles**.

---

####  Funcionalidades Incluidas

- Registro e inicio de sesión de usuarios.
- Edición de perfil.
- Visualización y filtrado de ofertas laborales y académicas.
- Redirección externa a las plataformas que gestionan las convocatorias.
- Gestión de usuarios administrativos.
- Creación de ofertas mediante enlace, con extracción automática de datos.
- Dashboard administrativo con estadísticas.
- Generacion de reportes estadísticos en un periodo de tiempo específico en pdf 
- Registro de navegación (logs).
- Notificaciones para seguimiento de usuarios.
- Identificación de usuarios y ofertas inactivas 
- Generación de reporte de depurado con los elementos eliminados en csv 
- Depurado manual de usuarios y ofertas inactivas 

####  Funcionalidades Excluidas

- Postulación directa a las ofertas desde el portal.
- Subida y gestión de archivos (ej: hojas de vida).
- Evaluación vocacional o test automatizado.
- Módulos de chat o interacción directa entre usuarios y admins.
- Seguimiento automatizado (El seguimiento lo realiza una persona y no hay mecanismos de retención inmediatos)
- Inicio de sesion con google o Facebook 

---

####  Restricciones de Negocio

- El desarrollo debe realizarse exclusivamente con **tecnologías gratuitas y de código abierto**.
- El portal debe poder **funcionar en un entorno de hosting compartido** sin requerimientos especiales.
- **No se permite el uso de herramientas o librerías externas que accedan o transmitan datos sensibles**, especialmente por el posible manejo de información de **menores de edad**.
- Se deben seguir principios de **protección de datos personales y privacidad** conforme a la legislación colombiana vigente.

---

####  Criterios de Aceptación

El sistema se considerará aceptable como MVP cuando cumpla con:

1. Registro, login y edición funcional de usuarios.
2. Visualización funcional de al menos 10 ofertas reales.
3. Trazabilidad de navegación (logs) funcionando.
4. Acceso administrativo con:
   - Panel de control básico con estadísticas de navegación por usuario, oferta y fechas.
   - Funcionalidad para crear nuevas ofertas a partir de un link.
   - Notificación cuando un usuario haya sido redirigido a una oferta (evento: redirección).

Además, el sistema debe:

- Ser usable sin errores técnicos graves.
- Tener navegación clara, responsiva y sin bloqueos.
- Permitir realizar las tareas descritas sin necesidad de intervención externa.

El cumplimiento será validado mediante:

- **Pruebas funcionales automatizadas** y/o en Postman.
- **Demostración a un miembro autorizado de la Fundación Zoraida**.

---

####  Cronograma Tentativo

| Fase               | Duración estimada | Fecha de inicio  | Fecha de fin  |
|--------------------|-------------------|------------------|---------------|
| Planeación         | 4 días            | 2025-07-07       | 2025-07-10    |
| Desarrollo  Back   | 10 días           | 2025-07-11       | 2025-07-22    |
| Desarrollo  Front  | 5 días            | 2025-07-22       | 2025-07-27    |
| Pruebas            | 2 días            | 2025-07-27       | 2025-07-29    |
| Despliegue         | 1 día             | 2025-07-30       | 2025-07-31    |


> *Tiempo de dedicación estimado: 12 horas diarias por 264 días, para un total aproximado de 240 horas efectivas.*

---


### 2.2 Mapa del Sitio (Sitemap)
Este mapa de sitio representa la arquitectura de navegación propuesta del Portal de Oportunidades, diferenciando los flujos por tipo de usuario (Home, Usuario, Administrador) y agrupando las funcionalidades clave por módulo funcional.

![SiteMap](../docs/Anexos/SiteMap.png)

 
### 2.3 Historias de Usuario

#### Rol: Usuario

- **HU01.** Como usuario, quiero registrarme en el portal para poder acceder a las ofertas disponibles.
- **HU02.** Como usuario, quiero iniciar sesión con mis credenciales para acceder a mi perfil personal.
- **HU03.** Como usuario, quiero editar la información de mi perfil para mantener mis datos actualizados.
- **HU04.** Como usuario, quiero navegar por un listado de ofertas laborales y educativas para explorar las oportunidades disponibles.
- **HU05.** Como usuario, quiero aplicar filtros en el listado de ofertas para encontrar fácilmente las que se ajustan a mis intereses.
- **HU06.** Como usuario, quiero visualizar el detalle de cada oferta para conocer su contenido, requisitos y beneficios.
- **HU07.** Como usuario, quiero ser redirigido a la página oficial de la oferta para realizar el proceso de postulación directamente.
- **HU08.** Como usuario, quiero que el sistema registre mis interacciones (clics, visitas a ofertas) para recibir seguimiento y asesoria en el futuro (implementación humana, no automatizada).

---

#### Rol: Administrador

- **HU09.** Como administrador, quiero iniciar sesión en el sistema para acceder al panel de control.
- **HU10.** Como administrador, quiero registrar nuevos usuarios con rol administrativo para delegar tareas de gestión del portal.
- **HU11.** Como administrador, quiero acceder a un dashboard con estadísticas basadas en los logs de navegación para tomar decisiones informadas.
- **HU12.** Como administrador, quiero generar reportes en pdf de estadísticas basadas en los logs de navegación para llevar un registro.
- **HU13.** Como administrador, quiero crear nuevas ofertas introduciendo un enlace externo, del cual se extraigan automáticamente el título, la imagen y una descripción por defecto.
- **HU14.** Como administrador, quiero editar los datos extraídos de una oferta para corregir o complementar la información si es necesario.
- **HU15.** Como administrador, quiero recibir una notificación cuando un usuario genere un evento de tipo REDIRECCION, para poder realizar seguimiento personalizado.
- **HU16.** Como administrador, quiero acceder al historial de interacciones de los usuarios (logs) para analizar su comportamiento y mejorar las estrategias de retención humana.
- **HU17.**  Como administrador quiero exportar los  datos en csv de usuarios y ofertas inactivas para poder llevar un registro historico de los datos 
- **HU18.**  Como administrador quiero eliminar los datos de usuarios y ofertas inactivas para no sobresaturar la base de datos.
- **HU19.**  Como administrador quiero ser alertado cuando la base de datos esta llegando a su límite para no sobrepasar los límites gratuitos.
- **HU20.** Como administrador quiero categorizar las ofertas mediante etiquetas para facilitar su organización y búsqueda.
- 

---

### 2.4 Requisitos Funcionales y No Funcionales

####  Requisitos Funcionales

| ID   | Descripción                                                                                       | Prioridad |
|------|---------------------------------------------------------------------------------------------------|-----------|
| RF01 | El sistema debe permitir el registro de nuevos usuarios.                                          | Alta      |
| RF02 | El sistema debe permitir el inicio de sesión de usuarios y administradores.                       | Alta      |
| RF03 | El usuario debe poder editar su información personal desde su perfil.                             | Media     |
| RF04 | El usuario debe poder navegar y visualizar un listado de ofertas académicas y laborales.          | Alta      |
| RF05 | El usuario debe poder aplicar filtros para facilitar la búsqueda de ofertas.                      | Media     |
| RF06 | El sistema debe mostrar una vista detallada de cada oferta con su descripción, imagen y enlace.  | Alta      |
| RF07 | El sistema debe redirigir al usuario a la página externa oficial de la oferta al hacer clic en “Ver más”. | Alta      |                                          | Alta      |
| RF08 | El sistema debe “registrar automáticamente un log con usuario, oferta, fecha y tipo de evento (detalle o redirección). | Alta      |
| RF09 | El administrador debe poder acceder a un dashboard con estadísticas basadas en los logs.          | Alta      |
| RF10| El administrador debe poder exportar las estadísticas en pdf generadas en un periodo de tiempo | Media | 
| RF11 | El administrador debe poder crear nuevos usuarios con rol de administrador.                       | Media     |
| RF12 | El administrador debe poder crear nuevas ofertas a partir de un enlace externo.                   | Alta      |
| RF13 | El sistema debe extraer automáticamente título, imagen y descripción del enlace ingresado.        | Alta      |
| RF14 | El administrador debe poder editar los datos extraídos de una oferta.                             | Media     |
| RF15 |  El sistema debe generar una notificación al administrador cuando se registre un log con evento de tipo REDIRECCION.| Alta      |
| RF16 | El administrador debe poder consultar logs de navegación por usuario.                             | Media     |
|RF17 | El administrador debe poder identificar los usuarios y ofertas incativas | Media|
| RF18 | El administrador debe poder eliminar de forma manual los usuarios y ofertas inactivas |  Alta | 
|RF19  | El administrador debe poder exportar en csv los datos de los usuarios y ofertas a eliminar  | Baja |
|RF20  | El administrador debe recibir una alarma cuando la base de datos este llegando a su límite  |  Media |
RF21|	El dashboard debe mostrar métricas agrupadas por oferta, usuario y tiempo, con visualizaciones gráficas que permitan analizar tendencias. |	Media

---

#### Requisitos No Funcionales

| ID   | Categoría       | Descripción                                                                                | Prioridad |
|------|------------------|----------------------------------------------------------------------------------------------|-----------|
| RNF01 | Rendimiento      | El sistema debe cargar cada vista en menos de 3 segundos bajo condiciones normales.         | Alta      |
| RNF02 | Seguridad        | El sistema debe proteger los datos personales según la Ley 1581 de 2012 (Colombia).         | Alta      |
| RNF03 | Seguridad        | No se debe permitir que librerías externas accedan a datos de usuario.                      | Alta      |
| RNF04 | Seguridad        | Las contraseñas deben almacenarse cifradas.                                                 | Alta      |
| RNF05 | Compatibilidad   | El sistema debe funcionar correctamente en navegadores modernos (Chrome, Firefox, Edge).    | Alta      |
| RNF06 | Compatibilidad   | El diseño debe ser responsivo para permitir el uso desde dispositivos móviles.              | Alta      |
| RNF07 | Mantenibilidad   | El código debe seguir una estructura modular, clara y documentada.                          | Media     |
| RNF08 | Escalabilidad    | El sistema debe permitir agregar nuevas funcionalidades en el futuro sin reescribir todo.  | Media     |
| RNF09 | Disponibilidad   | El sistema debe estar disponible en línea 24/7 desde hosting compartido.                   | Alta      |
| RNF10 | Accesibilidad    | El sistema debe tener texto alternativo en imágenes y buena jerarquía visual.              | Media     |
| RNF11 | Legal            | El sistema debe gestionar el consentimiento de uso de datos para usuarios menores de edad. | Alta      |



### 2.5 Especificación del Dashboard Administrativo

El dashboard es una interfaz exclusiva para usuarios con rol administrador. Su propósito es permitir la visualización, análisis y exportación de estadísticas del sistema basadas en los logs de navegación y datos registrados.

#### Secciones del Dashboard

**1. Panel de estadísticas generales**
- Total de usuarios registrados
- Total de ofertas activas
- Total de interacciones (logs generados)
- Usuarios por genero 
- Usuarios por ciudad 

**2. Métricas por oferta**
- Número de visualizaciones por oferta
- Número de redirecciones por oferta
- Tasa de redirección
- Gráfica de comportamiento por oferta

**3. Métricas por usuario**
- Cantidad de ofertas visualizadas
- Cantidad de redirecciones
- Última fecha de actividad
- Acceso a historial de logs

**4. Métricas temporales**
- Gráfico de interacciones por día, semana o mes
- Nuevos registros por semana
- Comparativas entre periodos

**5. Métricas de comportamiento agregado**
- Ofertas más vistas / menos vistas
- Usuarios más activos
- Porcentaje de usuarios sin redirecciones

**6. Acciones disponibles**
- Exportar reporte PDF de estadísticas
- Descargar CSV de datos a depurar
- Filtros por periodo de tiempo
- Filtros por categoría de oferta
  
Acciones avanzadas:
- Actualizar métricas en tiempo real o por intervalo 
- Cálculo automático de tasas: redirección / visualización
- Botón de exportar estadíticas como pdf
  
### 2.6 Diagrama UML de Clases
Este diagrama representa las entidades principales del sistema, sus relaciones y la lógica de negocio mediante servicios auxiliares (como ReportService, SecurityService y CleanupService). Refleja los requisitos funcionales y no funcionales descritos en esta documentación. Los métodos mostrados en las clases indican funcionalidades esperadas o implementadas para el correcto funcionamiento del portal web.
 
![Diagrama de clases](../docs/Anexos/UML_de_Clases.png)

#### Descripcion de Clases

##### `Usuario`
> Representa a un usuario del sistema (regular, orientador o administrador).

**Atributos**
- `id: int`
- `nombre: str`
- `tipo_documento: TipoDocumento`
- `num_documento: str`
- `fecha_nacimiento: date`
- `sexo: Sexo`
- `created_at: date`
- `direccion: str`
- `telefono: str`
- `email: str`
- `contrasena: Hash`
- `rol: Rol`
- `consentimiento_menores: bool`

**Métodos**
- `+register_user(): Usuario`
- `+get_user_profile(): void`
- `+delete_user(): void`
- `+is_admin(): bool`
- `+is_regular_user(): bool`

---

##### `Log`
> Registra eventos de navegación del usuario.

**Atributos**
- `id: int`
- `usuario_id: Usuario`
- `oferta_id: Oferta`
- `evento: EventoLog`
- `fecha: date`

**Métodos**
- `+register_user_event(): void`
- `+get_logs_by_user(): List<Log>`
- `+get_logs_by_offer_and_date(): List<Log>`

---

##### `Oferta`
> Representa una oportunidad académica o laboral publicada en el portal.

**Atributos**
- `id: int`
- `estado: str`
- `titulo: str`
- `imagen: str`
- `descripcion: str`
- `fecha_inicio: date`
- `fecha_fin: date`
- `tipo_oferta: TipoOferta`
- `link: str`

**Métodos**
- `+create_offer(): Oferta`
- `+update_offer(): void`
- `+delete_offer(): void`
- `+is_active(): bool`
- `+get_associated_logs(): List<Log>`
- `+get_offer_data_from_url(url: str): Oferta`

---

##### `Seguimiento`
> Seguimiento manual sobre el estado y evolución de un usuario.

**Atributos**
- `usuario_id: Usuario`
- `fecha: date`
- `estado: EstadoSeguimiento`
- `seguimiento_activo: bool`

**Métodos**
- `+create_user_tracking(user: Usuario): Seguimiento`
- `+change_tracking_status(): void`
- `+is_tracking_active(): bool`
- `+get_users_by_status(status: EstadoSeguimiento): List<Seguimiento>`

---

##### `Novedad`
> Observación registrada dentro de un seguimiento.

**Atributos**
- `id: int`
- `seguimiento_id: Seguimiento`
- `fecha: date`
- `contenido: str`
- `tipo: TipoNovedad`

**Métodos**
- `+create_tracking_news(): Novedad`
- `+edit_tracking_news(): void`

---

##### `Reporte` _(Clase Abstracta)_
> Clase base para los diferentes tipos de reportes generados.

**Atributos**
- `id: int`
- `fecha_generado: date`
- `generado_por: Usuario`
- `periodo_inicio: date`
- `periodo_fin: date`
- `url: str`

**Métodos**
- `+generate(): void`

---

##### `InformeDepurado` → hereda de `Reporte`
> Informe de eliminación de datos.

**Atributos**
- `registros_usuarios: List<Usuario>`
- `registros_ofertas: List<Oferta>`
- `registros_logs: List<Log>`
- `registros_seguimiento: List<Seguimiento>`

**Métodos**
- `+export_csv(): void`

---

##### `InformeEstadistico` → hereda de `Reporte`
> Estadísticas generales de la plataforma.

**Atributos**
- `usuarios_registrados: int`
- `ofertas_activas: int`
- `total_logs: int`
- `usuario_mas_activo: Usuario`
- `oferta_mas_vista: Oferta`
- `ofertas_archivadas: int`
- `usuarios_inactivos: int`
- `seguimientos_abiertos: int`
- `seguimientos_cerrados: int`

**Métodos**
- `+export_pdf(): void`

---

##### `Tag`
> Etiqueta utilizada para clasificar ofertas.

**Atributos**
- `id: int`
- `nombre: str`

**Métodos**
- `+create_tag(name: str): Tag`
- `+get_tagged_offers(): List<Oferta>`
- `+delete_tag(): void`

---

####  Servicios del Sistema

##### `SecurityService`
> Encargado de la autenticación y validación de contraseñas.

**Métodos**
- `+authenticate(email: str, password: str): Usuario`
- `+validate_session(): bool`
- `+hash_password(pw: str): Hash`

---

##### `ReportService`
> Generación de estadísticas, dashboards y reportes.

**Métodos**
- `+generate_initial_stats():  Informe_estadistico`
- `+generate_dashboard_data(): Void`
- `+generate_data_cleanup_report(): Informe_depurado`
- `+check_database_usage(): float`

---

##### `CleanupService`
> Encargado de depurar registros antiguos o inactivos.

**Métodos**
- `+clean_old_or_inactive_data(): void`
- `+get_inactive_items(): Usuario, Oferta`



### 2.7 Wireframes de Baja Fidelidad

[Wireframes](../docs/Anexos/Wireframes.pdf) -> Pdf 
O ver anexo en la carpeta /docs/Anexos/Wireframes.pdf

### 2.8 UX Design en Figma 
El diseño de experiencia de usuario se desarrolló en Figma y se encuentra disponible en el archivo compartido llamado ' '. Ver Anexos

### 2.9 Guía de Estilos (UI Design System)

####  Paleta de Colores (HEX)

| Rol del color | Nombre     | Código HEX |
|---------------|------------|------------|
| Principal     | Azul Zoraida     | #053479   |
| Énfasis       | Naranja acción   | #FF7E00   |
| Secundario    | Morado suave     | #6B4EFF   |
| Fondo claro   | Gris neutro 1    | #F8F9FA   |
| Fondo oscuro  | Gris neutro 2    | #E5E7EB   |
| Texto base    | Negro sutil      | #1F2937   |

---

####  Tipografías y Jerarquías Visuales

- **Títulos:** `Platypi`, serif
  - Peso: 600–800
  - Usos: encabezados principales (`h1`, `h2`, botones importantes)
  - Tamaños sugeridos: `text-4xl` (h1), `text-2xl` (h2)

- **Párrafos y texto secundario:** `Onest`, sans-serif
  - Peso: 400–600
  - Usos: cuerpo de texto, botones secundarios, formularios
  - Tamaños sugeridos: `text-base` (normal), `text-sm` (ayudas, notas)


---

####  Componentes Base (con Tailwind)

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

#### Pautas de Espaciado y Consistencia Visual

- **Margen general:** `max-w-screen-lg`, centrado en `mx-auto`
- **Padding exterior:** `px-4` para móviles, `px-8` en pantallas grandes
- **Espaciado entre secciones:** mínimo `mb-8`
- **Iconografía:** Estilo lineal (`Heroicons`, `Lucide`, o SVGs simples)
- **Sombra consistente:** usar `shadow-sm` para componentes pequeños, `shadow-md` para tarjetas y modales



## 3. Fase 2 – Desarrollo

### 3.1 Arquitectura del Sistema
> Descripción del patrón usado (MVC), capas lógicas, y cómo se estructuró el backend/frontend.

### 3.2 Estructura de Carpetas
   

### 3.4 Código Relevante


## 4. Fase 3 – Pruebas

### 4.1 Plan de Pruebas

### 4.2 Casos de Prueba

| ID |Funcionalidad	| Entrada esperada |	Resultado esperado	| Estado |
|----|--------------|------------------|----------------------|--------|


### 4.3 Resultados y Bugs


### 4.4 Pruebas de Usuario (si se puede)


## 5. Fase 4 – Despliegue
### 5.1 Hosting y Entorno de Producción


### 5.2 Pasos para Desplegar
 migraciones, configuración del servidor, dominios, etc.

### 5.3 Consideraciones de Seguridad
CSRF, contraseñas hasheadas, uso de .env, backups, etc.



## 7. Anexos


│   ├── Wireframes.pdf
│   ├── UML-Dashboard.svg              # Imagen del diagrama UML exportado
│   ├── dashboard-metrics.xlsx         # Métricas estructuradas
│   ├── dashboard-walkthrough.md       # Guía visual paso a paso
│   ├── figma-link.md                  # Enlace y capturas del diseño visual
│   └── design-system.md               # Guía visual y técnica de los componentes
│
├── Diagramas/
│   └── uml-dashboard.puml             # Versión editable del UML (PlantUML)