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
#### 4. Java RMI
#### 5. CORBA
#### 6. Mensajería Asíncrona y Síncrona