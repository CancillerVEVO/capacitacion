### IPC
IPC (Inter-Process Communication | Comunicación entre Proccesos)
Los procesos que se ejecutan en un sistema operativo pueden ser independientes o cooperativos. 
Cuando los procesos son independientes, no comparten recursos y no se comunican entre sí. No pueden afectar o ser afectados por otros procesos en ejecución.
Los procesos cooperativos, por otro lado, pueden compartir recursos y comunicarse entre sí. Pueden afectar o ser afectados por otros procesos en ejecución.

Hay varias razones para que los procesos cooperen entre sí:
1. **Compartir información**: Los procesos pueden compartir información entre sí para realizar tareas complejas. Ejemplo: Un proceso de servidor web puede comunicarse con un proceso de base de datos para recuperar datos.
2. **Aceleracion de tareas**: Dividir una tarea en subprocesos y ejecutarlos en paralelo.
3. **Modularidad**: Los procesos ejecutan tareas independientes y se comunican entre sí para realizar tareas complejas.
4. **Comodidad**: Los usuarios pueden tener varios procesos ejecutando en su computadora al mismo tiempo sin ningun problema. Pueden escuchar musica y escribir un documento al mismo tiempo.

Los procesos cooperativos necesitan un mecanismo de IPC que les permita intercambiar informacion y datos.

hay dos modelos fundamentales de IPC:
1. **IPC basada en memoria**: Los procesos comparten una region de memoria común. Los procesos pueden leer y escribir en la region de memoria compartida para intercambiar informacion.
2. **IPC basada en mensajes**: Los procesos se comunican entre sí enviando y recibiendo mensajes. Los mensajes pueden ser de diferentes tipos, como mensajes de texto, mensajes de datos, mensajes de señales, etc.

Aplicaciones de IPC: 
1. **Shell pipelines**: En los sistemas basados en UNIX, el shell utiliza pipes (" | ")  para conectar la salida de un comando con la entrada de otro comando.
2. **Comunicacion Cliente-Servidor**: Los clientes y servidores se comunican entre si utilizando sockets, pipes o otro mecanismo de IPC.
3. **Multithreading**: En un programa con multiples hilos, estos hilos necesitan comunicarse y sincronizarse entre si. Los hilos pueden compartir memoria o comunicarse a traves de mensajes.
4. **Sistemas Distribuidos**: IPC es fundamenyal en los sistemas distribuidos, donde varios procesos se ejecutan en diferentes computadoras y necesitan comunicarse entre sí.

#### 1. SOAP vs RESTful
SOAP (Simple Object Access Protocol) y RESTful (Representational State Transfer) son dos estilos de arquitectura de servicios web que se utilizan para intercambiar datos entre aplicaciones.
##### 1.1 SOAP
SOAP es un protocolo de comunicacion basado en XML. Un mensaje de SOAP es un documento de XML que contiene los siguientes elementos:
1. **Envelope**: Es el elemento raiz de un mensaje SOAP. Contiene los elementos Header y Body.
2. **Header**: Este elemento es opcional y contiene información de control o metadatos sobre el mensaje SOAP, como la autenticación, la gestión de sesión, etc.
3. **Body**: Este elemento es obligatorio y contiene el contenido principal del mensaje. Aquí se colocan los datos que se están transmitiendo.
4. **Fault**: También es opcional y se utiliza para reportar errores en la comunicación. Si ocurre un error durante la procesamiento del mensaje, se incluye este elemento para describir el problema.
Ejemplo: 
```xml
<Envelope>
    <Header>
        <!-- Aquí van los encabezados opcionales -->
    </Header>
    <Body>
        <!-- Aquí van los datos del mensaje -->
    </Body>
    <Fault>
        <!-- Aquí va la información de error en caso de haber -->
    </Fault>
</Envelope>
```
SOAP puede ser utilizado con diferentes protocolos de transporte, como HTTP, SMTP, TCP, etc. Pero es más comúnmente utilizado con HTTP.

##### 1.2 RESTful
REST (representational state transfer) es un estilo de arquitectura de servicios web.
REST define un conjunto de restricciones sobre como debe de funcionar un sistema distribuido en la web.
El estilo de arquitectura REST hace enfasis en los siguientes puntos: 
- **Interfaces Uniformes**: Las interfaces REST deben ser uniformes y consistentes. Esto significa que los recursos deben ser accesibles a traves de una URL y que los metodos HTTP deben ser utilizados de manera consistente.
- **Deployment de componetes independiente**: Los componentes de un sistema REST deben ser independientes y desacoplados. Esto significa que un cambio en un componente no deberia afectar a otros componentes.
- **Sistema de capas**: Un sistema REST debe estar compuesto por capas. Cada capa debe ser independiente y no debe depender de otras capas.
- **Cache**: El sistema de capas promueve el uso de cache para mejorar la eficiencia y la escalabilidad del sistema.

Una aplicacion que se adhiere a los principios de REST se conoce como RESTful.
Aunque el termino RESTful se utiliza a menudo para hablar de APIs basadas en HTTP que utilizan los verbos HTTP (GET, POST, PUT, DELETE) para realizar operaciones CRUD (Create, Read, Update, Delete) en recursos, REST es un estilo de arquitectura y no un protocolo.

##### 1.2.1 Reglas de arquitetura REST
El estilo de arquitectura REST define 6 reglas fundamentales:
- Cliente/servidor: Los clientes son separados de los servidores por una interfaz uniforme.
- Stateless: Un cliente no consume espacio en el servidor cuando no está interactuando con él.
- Cache: Las respuestas deben ser marcadas como cacheables o no-cacheables.
- Interfaz uniforme
- Sistema de capas: Un cliente no puede decir si está conectado directamente al servidor o a un intermediario.
- Codigo bajo demanda (opcional): Los servidores pueden enviar código ejecutable a los clientes.
#### 2. XML y JSON
XML y JSON son dos maneras diferentes de representar informacion estructurada que pueda ser leida por humanos y maquinas.
##### 2.1 XML
```xml
<bookstore>
  <book category="fiction">
    <title lang="en">Harry Potter</title>
    <author>J.K. Rowling</author>
    <year>2005</year>
    <price>29.99</price>
  </book>
  <book category="non-fiction">
    <title lang="en">Learning XML</title>
    <author>Erik T. Ray</author>
    <year>2003</year>
    <price>39.95</price>
  </book>
</bookstore>

```
##### 2.2 JSON
```json
{
  "bookstore": {
    "book": [
      {
        "category": "fiction",
        "title": "Harry Potter",
        "author": "J.K. Rowling",
        "year": 2005,
        "price": 29.99
      },
      {
        "category": "non-fiction",
        "title": "Learning XML",
        "author": "Erik T. Ray",
        "year": 2003,
        "price": 39.95
      }
    ]
  }
}
```
#### 3. gRPC y GraphQL
#### 3.1 gRPC
##### 3.1.1 ¿Qué es RPC?
Un RPC (Remote Procedure Call) es cuando un programa de computadora causa que un procedimiento (subrutina) se ejecute en un sistema remoto
(Una computadora diferente en una red compartida), este procedimiento se ejecuta como si fuera una subrutina local, sin que el programador tenga que preocuparse por los detalles de la red.

EN TERMINOS SIMPLES: 
Es una manera para que un programa le diga a otro programa, aunque estén en diferentes computadoras, que ejecute una función por el.
La funcion se ejecutara como si estuviera en la misma computadora, pero no esta. El framework de RPC se encarga de abstractar la complejidad de la red.
##### 3.1.2 ¿Qué es gRPC?
gRPC es un framework de RPC que te permite conectar, invocar, operar y debugear servicios distribuidos de manera tan facil como si estuvieras haciendo llamadas a funciones locales.

Lo primero que se hace al desarrollar una aplicacion con gRPC es definir una interface de servicio. La definicion de la interface de servicio
contiene los metodos que el servicio proporciona y los tipos de mensajes que se envian y reciben. Se utilizan lenguajes conocidos como "interface definition language" (IDL) para definir la interface de servicio.
El lenguaje de IDL mas comunmente utilizado con gRPC es Protocol Buffers.

##### 3.1.3 Protocol Buffers
Protocol Buffers es un IDL agnostico de lenguaje y plataforma para definir schemas e interfaces de programacion. 
Un ejemplo de un protofile (person.proto) que define un mensaje de persona: 
```proto
message Person {
  required string name = 1;
  required int32 id = 2;
  optional string email = 3;
}
```

Este protofile sirve como un contrato entre el servidor y el cliente. Si quieres cambiar como esta etsructurada la entidad o como se comportan tus respuestas y peticiones, solo tienes que cambiar el protofile y recompilarlo.
##### 3.1.4 gRPC vs JSON
<img src="https://miro.medium.com/v2/resize:fit:1100/format:webp/1*5FQlqnQGK-JFFZxc0gSHhw.png" alt="Protocol Buffers vs JSON" width="700px">

#### 3.2 GraphQL
GraphQL es un lenguaje lenguaje de consulta y manipulacion de datos para APIs. La prioridad de GraphQL es permitir a los clientes solicitar solo la informacion que necesitan, y nada mas.
A comparacion de REST, con GraphQL los clientes pueden especificar exactamente que datos necesitan y la API solo devolvera esos datos.

GraphQL al igual que un API Rest se comunica a traves de HTTP, pero en lugar de tener diferentes endpoints para diferentes recursos, GraphQL tiene un solo endpoint y los clientes pueden solicitar los datos que necesitan a traves de una consulta.

En GraphQL existe el concepto de Schema, que define los tipos de datos que se pueden consultar y las operaciones que se pueden realizar. El Schema de GraphQL se define utilizando el lenguaje de definicion de esquemas de GraphQL (GraphQL SDL).
Cuando un cliente envia una consulta a un servidor GraphQL, el servidor valida la consulta contra el Schema y devuelve los datos solicitados.

El desarrollador de GraphQL  pone todos los datos del esquema en una funcion llamada "resolver". Esta funcion se encarga de devolver los datos solicitados por el cliente.

Desde el punto de vista del cliente, las operaciones mas comunes de GraphQL son: queries y mutations.

- **Queries**: Se utilizan para leer datos de la API (leer).
- **Mutations**: Se utilizan para escribir datos en la API (crear, actualizar y eliminar).

Ejemplo de consulta GraphQL:
```graphql
query {
  user(id: 1) {
    name
    email
  }
}
```
Respuesta: 
```json
{
  "data": {
    "user": {
      "name": "John Doe",
      "email": "john.doe@mail.com"
    }
  }
}
```

Como podemos ver en el ejemplo, la consulta GraphQL es muy similar a un objeto JSON. El cliente solicita los datos que necesita y el servidor devuelve solo esos datos.
Una consulta mas complicada puede verse así: 
```graphql
query {
  user(id: 1) {
    name
    email
    posts {
      title
      body
    }
  }
}
```
Respuesta: 
```json
{
  "data": {
    "user": {
      "name": "John Doe",
      "email": "john.doe@mail.com",
        "posts": [
            {
            "title": "Post 1",
            "body": "Body of post 1"
            },
            {
            "title": "Post 2",
            "body": "Body of post 2"
            }
        ]
      }
    }
}
```

Como podemos ver solo nos regresa los datos que solicitamos.
#### 4. Java RMI
Java RMI (Remote Method Invocation) es un API del lenguaje Java que permite a un objeto en una maquina virtual Java (JVM) invocar metodos en un objeto en otra JVM.
Es el equivalente de Java a RPC (Remote Procedure Call) en otros lenguajes de programacion. La implementacion del API solo permite llamadas a metodos entre JVMs que esten en la misma red.
El protocolo detras de la implementacion de solo JVM se llamada JRMP (Java Remote Method Protocol). Para correr codigo en un contexto sin JVM, se hizo COBRA (Common Object Request Broker Architecture).
#### 5. CORBA
CORBA (Common Object Request Broker Architecture) es un estandar de la OMG (Object Management Group) diseñado para facilitar la comunicacion de sistemas distribuidos.
COBRA permite la colaboracion entre sistemas con diferentes lenguajes de programacion, hardware y software.
#### 6. Mensajería Asíncrona y Síncrona
Los sistemas que se comunican entre sí pueden hacerlo de dos maneras: de forma sincrona o asincrona.
##### 6.1 Mensajeria Sincrona
El emisor envia un mensaje y el receptor espera una respyesta antes de continuar con su proceso.
El emisor y receptor estan sincronizados en el tiempo.
##### 6.2 Mensajeria Asincrona
El emisor envia un mensaje y el receptor no espera una respuesta inmediata. Esto significa que el emisor puede continuar 
con su proceso sin esperar una respuesta del receptor. 

En lugar de bloquear el flujo del programa, la mensajería asincrona permite que el emisor y el receptor operen de manera independiente,
lo que puede mejorar la eficiencia y la escalabilidad del sistema.