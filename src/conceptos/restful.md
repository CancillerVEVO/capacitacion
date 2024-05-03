### Resftull
#### 1. Modelo de madurez
El modelo de madurez de Richardson es un modelo que describe los niveles de madurez de una API RESTful. El modelo consta de 4 niveles:
1. Nivel 0: POX (Plain Old XML):
   1. Utiliza HTTP como un simple canal de comunicacion.
   2. No utiliza URIs para identificar recursos.
   3. Utiliza un solo verbo HTTP (por lo general, POST) para todas las operaciones.
2. Nivel 1: Recursos Individuales:
    1. Utiliza URIs para identificar recursos.
    2. Utiliza multiples verbos HTTP (GET, POST, PUT, DELETE) para operaciones CRUD.  aunque pueden NO reflejar completamente las operaciones CRUD,
3. Nivel 2: Utilizacion de verbos HTTP adecuados: 
   1.  Utiliza los verbos HTTP adecuados según su semántica. (GET para lectura, POST para creacion, PUT/PATCH para actualizacion y DELETE para eliminacion)
   2. Utiliza los codigos de respuesta HTTP adecuados.
4. Nivel 3: HATEOAS (Hypermedia As The Engine Of Application State):
   1. Ademas de los recursos y verbos HTTP adecuados, incluye en las respyestas enlaces hipertextuales que indican las posibles acciones que se pueden realizar a continuacion.
   2. Permite a los clientes navegar por la API de forma dinamica, en lugar de depender de una documentacion estatica.
#### 2. Hateoas (Hypermedia As The Engine Of Application State)
Es un componente de la arquitectura REST en la que cuando un cliente interactua con el API REST este le contesta con contenido dinamico a traves de HyperMedia.
Ejemplo: 
```json
{
    "nombre": "Juan",
    "apellido": "Perez",
    "edad": 25,
    "_links": {
        "self": {
            "href": "http://api.com/users/1"
        },
        "friends": {
            "href": "http://api.com/users/1/friends"
        }
    }
}
```

En este ejemplo recuperamos los datos de un usuario y ademas de los datos del usuario, el API nos devuelve enlaces a otros recursos relacionados con el usuario, como sus amigos. Esto permite a los clientes navegar por la API de forma dinamica, en lugar de depender de una documentacion estatica.
#### 3. Reglas de URIs
Los API REST usan Uniform Resource Identifiers (URIs) para identificar recursos.
Reglas de URIs: 
##### 3.1 El caracter "/" se utiliza para indicar relaciones jerarquizadas entre recursos.
Ejemplo:
```http
http://api.canvas.restapi.org/shapes/polygons/quadrilaterals/squares
```
##### 3.2 No incluir el caracter "/" al final de la URI.
##### 3.3 Utilizar guiones "-" para mejorar la lectura de las URIs.
Ejemplo: 
```http
http://api.canvas.restapi.org/blogs/mark-masse/entries/why-restful
```
##### 3.4 No utilizar guiones bajos "_" en las URIS.
##### 3.5 Utilizar letras minusculas en las URIs.
Los URIs son case-sensitive, por lo que es importante mantener la consistencia en el uso de mayusculas y minusculas.
##### 3.6 Las extensiones de un archivo no deben ser incluidas en el URI.
En la web el caracter "." es usado para separar el nombre de un archivo de su extension. 
En un REST API se deben de utilizar cosas como el "Content-Type" para especificar el tipo de contenido del body.
##### 3.7. Utilizar nombres en singular para document names.
Ejemplo: 
```http
http://api.soccer.restapi.org/leagues/seattle/teams/trebuchet/players/claudio
```
En este caso se utiliza el nombre en singular para el recurso "player" en lugar de "players".
##### 3.8. Utilizar nombres en plural para colecciones.
Ejemplo:
```http
http://api.soccer.restapi.org/leagues/seattle/teams/trebuchet/players
```
En este caso se utiliza el nombre en plural para la coleccion de recursos "players" en lugar de "player".
#### 3.9 Utilizar nombres en plural para colecciones.
Ejemplo:
```http
http://api.music.restapi.org/artists/beatles/albums
```
En este caso se utiliza el nombre en plural para la coleccion de recursos "albums" en lugar de "album".
#### 3.10 Un verbp HTTP debe ser utilizado para controladores CRUD.
Ejemplo:
```http
http://api.college.restapi.org/students/morgan/register
http://api.example.restapi.org/lists/5321/dedupe
```
##### 3.11 Variables en el path del URI puede ser utilizadas para identificar recursos.
Ejemplo:
```http
http://api.college.restapi.org/students/12345
http://api.example.restapi.org/students/{playerId}
```
En donde se sustituye el valor de {playerId} con un Id numerico en el path del URI.
##### 3.12 Operaciones CRUD no deben incluir en el URI.
Ejemplo:
```http
http://api.college.restapi.org/students/12345/delete
http://api.example.restapi.org/students/{playerId}/update
```
En lugar de incluir la operacion CRUD en el URI, se debe utilizar el verbo HTTP adecuado para indicar la operacion que se desea realizar.
##### 3.13 Utilizar query strings para filtar una coleccion.
Ejemplo:
```http
http://api.college.restapi.org/students?major=computer-science
http://api.example.restapi.org/students?year=senior
```
##### 3.14 Utilizar query strings para paginar una coleccion.
Ejemplo:
```http
http://api.college.restapi.org/students?limit=10&offset=20
http://api.example.restapi.org/students?pageSize=10&pageNumber=2
```
#### 4. Códigos de respuesta
| Código | Significado                                   |
| ------ | --------------------------------------------- |
| 1xx    | **Respuestas informativas:** Indica que la solicitud ha sido recibida y se está procesando. No son comunes en aplicaciones web. |
| 100    | Continue                                      |
| 101    | Switching Protocols                           |
| 2xx    | **Respuestas exitosas:** Indica que la solicitud fue recibida, entendida y aceptada correctamente. |
| 200    | OK                                            |
| 201    | Created                                       |
| 202    | Accepted                                      |
| 204    | No Content                                    |
| 3xx    | **Redirecciones:** Indica que el cliente necesita realizar más acciones para completar la solicitud. |
| 301    | Moved Permanently                             |
| 302    | Found                                         |
| 304    | Not Modified                                  |
| 4xx    | **Errores del cliente:** Indica que la solicitud contiene sintaxis incorrecta o no puede ser completada por el servidor. |
| 400    | Bad Request                                   |
| 401    | Unauthorized                                  |
| 403    | Forbidden                                     |
| 404    | Not Found                                     |
| 405    | Method Not Allowed                            |
| 409    | Conflict                                      |
| 5xx    | **Errores del servidor:** Indica que el servidor falló al completar una solicitud válida. |
| 500    | Internal Server Error                         |
| 501    | Not Implemented                               |
| 503    | Service Unavailable                           |

#### 5. Open Api
OpenAPI es una especificacion para describir de manera estandar un API RESTful. OpenAPI permite a los desarrolladores describir, producir, consumir y visualizar servicios web RESTful. OpenAPI es una especificacion que se puede escribir en formato JSON o YAML.

<img src="https://www.openapis.org/wp-content/uploads/sites/3/2023/05/What-is-OpenAPI-Simple-API-Lifecycle-Vertical.png" alt="OpenAPI Flow Diagram" width="300">