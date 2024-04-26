# Representacion de datos

### 1. UX/UI/GUI
* UI (User Interface): Se refiere a todo lo que el usuario ve y puede interactuar en una aplicación.
* UX: (User Experience) :Se refiere a la experiencia que tiene el usuario al interactuar con la aplicación.
* GUI (Graphical User Interface):Interfaz gráfica de usuario, utiliza botones, ventanas, iconos, etc.
### 2. Modelo de datos
Un modelo de datos es una representacion abstracta de como los datos de una aplicacion se relacionan entre si. 
### 3. Backend y Frontend
* Frontend: Todo lo que el usuario ve y puede interactuar en una aplicación.
* Backend: Es la parte de la aplicación que se encarga de procesar la información y enviarla al frontend. 
dentro del backend se encuentran los servidores, bases de datos, etc.
### 4. Facade
El frontend no interactura directamente con el backend, sino que lo hace a traves de una fachada (facade) que se encarga de comunicar el frontend con el backend.
El facade es el punto de entrada a la capa de aplicacion, el punto de contacto entre el frontend y el backend
El facade no accede directamente a la base de datos, sino que utiliza los servicios del backend como un DAO (Data Access Object) para acceder a la base de datos y
un DTO (Data Transfer Object) para mover los datos que se recuperan de la base de datos.
### 5. Capas lógicas vs Capas físicas
#### ¿Que es una capa?
Una capa es un conjunto de clases que se utilizan para organizar el código de una aplicación.
#### ¿Que tipos de capas hay?
* Capa de presentacion (Frontend)
* Capa de negocio (Backend)
* Capa de datos (Base de datos)
#### Capas lógicas
La capa logica es una abstraccion que nos ayuda a entender como se relacionan las diferente partes de una app. 
Hay una capa logica de frontend, backend y base de datos.
Cada una es independiente de las otras, pero se comunican entre si.
Estas capas manejan diferentes cosas, por ejemplo la capa de frontend maneja la interfaz de usuario, la capa de backend maneja la logica de negocio y la capa de base de datos maneja la persistencia de los datos.
#### Capas físicas
Las capas fisicas se refieren a como se distribuyen estas capas de manera fisica. Por medio de servidores.
### 6. MVC
MVC (Modelo Vista Controlador) es un patrón de diseño que provee una manera de separar los datos (el modelo) de la interfaz de usuario (la vista). El controlador se encarga de mediar
entre el modelo y la vista. El controlador recibe las peticiones del usuario y se encarga de procesarlas y enviarlas al modelo. El modelo se encarga de procesar la información y enviarla al controlador, que a su vez la envia a la vista.
### 7. SOA (Service Oriented Architecture)
Es un estilo de arquitectura de software en el que los componentes de nuestro sistema estan separados entre si y pueden ser accesados remotamente, a estos componentes se les dice servicios. 
Un Servicio  es una unidad de software independiente que puede ser accesada remotamente. 
#### Un servico tiene 4 caracteristicas: 
1. Logicamente representa una actividad de negocio repetible con un resultado definido.
2. Es autocontenido.
3. Es una caja negra para los consumidores del servicio, esto significa que los usuario no deben de conocer los interiores de como funciona cada servicio.
4. Puede estar compuesto de otros servicios.

SOA separa funciones en unidades distintas,que son llamadas servicios. estos servicios se comunican entre si a traves de una red.