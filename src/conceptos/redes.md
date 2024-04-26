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
RIP es un protocolo de capa de aplicacion.

* El puerto UDP por defecto para RIP es el 520.

RIP es un protocolo de enrutamiento de capa de red que utiliza el algoritmo de Bellman-Ford para determinar la mejor ruta a una red de destino. 

#### SNMP

SNMP es un protocolo de capa de aplicacion que permite a los administradores de red supervisar y gestionar dispositivos de red, como routers, switches, servidores y estaciones de trabajo.
* El puerto UDP por defecto para SNMP es el 161.



### 4. TCP y UDP

#### TCP (Transmission Control Protocol)
El protocolo TCP es uno de los protocolos de transporte mas importantes en Internet.
TCP es un protocolo orientado a la conexion que proporciona una comunicacion fiable y ordenada entre dos dispositivos de red.
##### Pasos de una conexion TCP:
1. Establecimiento de la conexion (3-way handshake)
2. Transferencia de datos
3. Cierre de la conexion (4-way handshake)
* TCP es un protocolo de capa de transporte.



### 5. IP y Puertos
### 6. Http (v1, v2, v3)
### 7. Https
### 8. SSL/TLS
### 9. CORS