# Redes e Internet

### 1. OSI Model(Open Systems Interconnection Model)
Es un modelo estandar que define como los dispositivos de red se communican entre si. El modelo
El modelo OSI cuenat con 7 capas, cada una de las cuales se encarga de una tarea especifica. 
Las capas son: 
1. Capa Fisica: Los medios fisicos con los que se comunica. Como señales electricas, fibra optica o ondas de radio.
2. Capa de Enlace de datos: Frames, direccionamiento MAC.
3. Capa de red: IP, direccionamiento IP, enrutamiento.
4. Capa de transporte: TCP, UDP, puertos.
5. Capa de sesion: Se encarga de establecer conexiones. TLS
6. Capa de presentacion: Encoding/Decoding.
7. Capa de aplicacion: HTTP, FTP, gRPC.

### 2. TCP/IP
El modelo TCP/IP es un modelo de red similar al modelo OSI pero con menos capas. El modelo TCP/IP cuenta con 4 capas.
Las capa de sesion, presentacion y enlace de datos del modelo OSI se combinan en la capa de aplicacion del modelo TCP/IP.

Las capas del modelo TCP/IP son:
1. Capa de red: IP, direccionamiento IP, enrutamiento.
2. Capa de transporte: TCP, UDP, puertos.
3. Capa de internet: IP, ICMP, ARP.
4. Capa de aplicacion: HTTP, FTP, gRPC.
La capa fisica del modelo OSI no se incluye en el modelo TCP/IP ya que se considera que es responsabilidad de la capa de red.
### 3. HTTP, SMTP, Telnet, FTP, DNS, RIP, SNMP
#### HTTP (puerto 80)
HTTP (protocolo de transferencia de hipertexto) son un conjunto de reglas que definen como los mensajes son enviados y recibidos en Internet. 
HTTP es un protocolo de capa de aplicacion. Una solicitud HTTP realizada por internet lleva consigo una serie de datos codificados: 
1. Tipo de version de HTTP
2. una URL
3. un metodo HTTP
4. encabezados de solicitud
5. cuerpo de la solicitud (OPCIONAL)

* El puerto TCP/UDP por defecto para HTTP es el 80. El puerto de HTTP encriptado es el 443. (HTTPS)
HTTP es un protocolo sin estado, lo que significa que cada solicitud HTTP se procesa de forma independiente, sin tener en cuenta las solicitudes anteriores.

#### SMTP 
SMTP (Simple Mail Transfer Protocol) es un protocolo de red utilizado para enviar mensajes de correo electronico entre servidores de correo electronico.
SMTP es un protocolo de capa de aplicacion. 

* El puerto TCP/UDP por defecto para SMTP es el 25. El puerto de SMTP encriptado es el 587.
SMTP es un protocolo sin estado porque el cliente no mantiene una conexion con el servidor SMTP. Cada mensaje de correo electronico se envia como una transaccion independiente.

#### Telnet
Telnet es un protocolo de red que permite a los usuarios conectarse a un servidor remoto y utilizar una terminal remota.
Telnet es un protocolo de capa de aplicacion.
* El puerto TCP por defecto para Telnet es el 23. 


#### FTP
FTP (File Transfer Protocol) es un protocolo de red utilizado para transferir archivos entre un cliente y un servidor en una red TCP/IP.
FTP es un protocolo de capa de aplicacion. 

* El puerto TCP por defecto para FTP es el 21. 

FTP es un protocolo con estado porque el cliente mantiene una conexion con el servidor FTP durante toda la sesion de transferencia de archivos.

#### DNS
DNS (Domain Name System) es un sistema de nomenclatura jerarquico para asignar nombres de dominio a direcciones IP.
DNS es un protocolo de capa de aplicacion.

* El puerto TCP/UDP por defecto para DNS es el 53.

El sistema DNS es una base de datos distribuida que almacena registros de recursos (RR) asociados con nombres de dominio. Los RR contienen informacion sobre los nombres de dominio, como direcciones IP, servidores de correo electronico y servidores de nombres.

#### RIP
RIP (Routing Information Protocol) es un protocolo de enrutamiento de vector de distancia que se utiliza para intercambiar informacion de enrutamiento entre routers.

* El puerto UDP por defecto para RIP es el 520.

RIP es un protocolo de enrutamiento de capa de red que utiliza el algoritmo de Bellman-Ford para determinar la mejor ruta a una red de destino. 

#### SNMP
(Simple Network Management Protocol)
SNMP es un protocolo de capa de aplicacion que permite a los administradores de red supervisar y gestionar dispositivos de red, como routers, switches, servidores y estaciones de trabajo.
* El puerto UDP por defecto para SNMP es el 161.



### 4. TCP y UDP
TCP (Transmission Control Protocol) y UDP (User Datagram Protocol) son dos protocolos de transporte utilizados en Internet.
* TCP es usado para aplicaciones que requieren una comunicacion fiable y ordenada, como la transferencia de archivos, el correo electronico y la navegacion web.
* UDP es usado para aplicaciones que requieran de comunicacion en tiempo real, como la transmision de audio y video, juegos en linea y la transmision de datos en tiempo real.
### 5. IP y Puertos
Una direccion IP es un identificador número único asignado a cada dispositivo conectado a una red que utiliza el protocolo IP.
La direccion IP se utiliza para identificar y localizar un dispositivo en una red.
Existen dos versiones de IP: IPv4 e IPv6.
* IPv4: 32 bits (4 bytes) (binario)
* IPv6: 128 bits (16 bytes) (hexadecimal)

Un puerto tambien es un identificador asignado a un proceso o servicio en un dispositivo de red.
Un puerto se utiliza para direccionar el trafico de red a un proceso o servicio especifico en un dispositivo de red.

Hay puertos que estan reservados para servicios especificos, como el puerto 80 para HTTP, el puerto 443 para HTTPS, el puerto 25 para SMTP, el puerto 21 para FTP, etc.

### 6. Http (v1, v2, v3)
HTTP (protocolo de transferencia de hipertexto) es un protocolo de red utilizado para enviar y recibir mensajes en la web.
#### HTTP/1.1
En HTTP/1.0 cada solicitud HTTP requería una conexión TCP separada. En HTTP/1.1, se introdujo la persistencia de la conexión, lo que permitió a un cliente enviar múltiples solicitudes a través de la misma conexión TCP.
(osea solicitar paginas de HTML, frames, imagenes, scripts, etc. en una sola conexion TCP).
* HTTP/1.1 es un protocolo de texto legible por humanos, lo que significa que los mensajes HTTP se envían en formato de texto.
* HTTP/1.1 es un protocolo sin estado, lo que significa que cada solicitud HTTP se procesa de forma independiente, sin tener en cuenta las solicitudes anteriores.
* 
#### HTTP/2
El protocolo HTTP/2, tiene notables diferencias fundamentales respecto a la versión anterior HTTP/1.1
* HTTP/2 es binario, en lugar de textual: En HTTP/1.1, los mensajes intercambiados entre el cliente y el servidor eran principalmente en formato de texto legible para los humanos. Esto implicaba que el servidor tenía que interpretar cada línea de solicitud o respuesta. En cambio, en HTTP/2, los mensajes se codifican en formato binario, lo que significa que la información se representa en 1 y 0, lo que permite una transmisión más eficiente y un procesamiento más rápido por parte del servidor. 
* Es un protocolo multiplexado. Peticiones paralelas pueden hacerse sobre la misma connexión, no está sujeto pues a mantener el orden de los mensajes, ni otras restricciónes que tenian los protocolos anteriores HTTP/1.x
##### Sobre Multiplexin
En HTTP/1.1, cada solicitud requería su propia conexión TCP. HTTP/2, en cambio, permite múltiples solicitudes y respuestas en una sola conexión TCP
Esto se llama multiplexación y permite que múltiples solicitudes se envíen y reciban simultáneamente sobre la misma conexión. Esto mejora significativamente la eficiencia y reduce la latencia.
* HTTP/2 permite la compresión de cabeceras, lo que reduce el tamaño de las peticiones y respuestas.
* Esto permite al servidor almacenar datos en la caché del cliente, previamente a que estos sean pedidos, mediante un mecanismo denominado 'server push'. 
#### HTTP/3
HTTP/3 es la tercera versión del protocolo HTTP, basado en QUIC, un protocolo de transporte desarrollado por Google.
Quic (Quick UDP Internet Connections) es un protocolo de transporte que utiliza UDP en lugar de TCP.
### 7. Https
HTTPS (Hypertext Transfer Protocol Secure) es una versión segura de HTTP que utiliza cifrado SSL/TLS para proteger la comunicación entre el cliente y el servidor.
### 8. SSL/TLS
El Nivel de Conectores Seguros (Secure Sockets Layer o SSL) fue el protocolo de cifrado más ampliamente utilizado para garantizar la seguridad de las comunicaciones a través de Internet antes de ser sustituido por el TLS (Inglés) (Seguridad de la Capa de Transporte, o Transport Layer Security) en 1999. Aunque el desuso del protocolo SSL dio paso a la adopción del TLS, la mayoría de personas sigue refiriéndose a este tipo de tecnología como «SSL».

El mayor cambio en el desarrollo de HTTP, fue a finales de 1994.
En vez de trasmitir HTTP sobre la capa de TCP/IP, se creo una capa adicional sobre esta: SSL. La versión SSL 1.0 nunca fue publicada fuera de las compañías desarrolladoras, pero el SSL 2.0 y sus sucesoras SSL 3.0 y SSL 3.1 permitieron la creación del comercio electrónico en la Web (e-commerce), encriptando y garantizando la autenticidad de los mensajes intercambiados entre servidor y cliente. SSL se añadió a la lista de estándares y posteriormente evolucionó hasta ser el protocolo TLS, con versiones 1.0, 1.1 y 1.2, que fueron apareciendo para resolver vulnerabilidades. Actualmente se está desarrollando el protocolo TLS 1.3.
### 9. CORS
CORS (Cross-Origin Resource Sharing) es un mecanismo de headers HTTP que permite a un servidor indicar a un navegador web que permita a un cliente acceder a recursos de un servidor en un origen distinto al del propio servidor.

POR EJEMPLO: Digamos que tenemos un frontend de Javascript con dominio: 
* https://www.dominio-a.com al que llamaremos A
* y un backend con dominio: https://www.dominio-b.com al que llamaremos B

Si el frontend de A hace una petición a un recurso en el backend de B, el navegador bloqueará la petición por motivos de seguridad. CORS permite al servidor de B indicar al navegador de A que permita la petición.