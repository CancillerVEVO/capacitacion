package conceptos;

public class Databases {
   // ACID
    /*
    Es un acronmio que se refiere a 4 propiedades clave de las transacciones en bases de datos relacionales.
    Estan diseñadas para que las transacciones sean confiables y se ejecuten correctamente y en el caso de error
    la base de datos puede volver a su estado anterior y no se pierda informacion o impacte en la integridad de los datos.
    1. Atomicity
    2. Consistency
    3. Isolation
    4. Durability

     */
    // Atomicidad: Una transaccion ocurre completamente o no ocurre en absoluto.
    // Consistencia: La base de datos debe ser consistente antes y despues de la transaccion.
    // Aislamiento: Multiples transacciones pueden ocurrir al mismo tiempo sin afectar el resultado de otras transacciones.
    // Durabilidad: Una vez que una transaccion se ha completado, los cambios que ha hecho deben ser permanentes.

    // ORM (Object Relational Mapper)
    /* Un ORM es una herramienta diseñada para representar las entidades de una base de datos relacional
    como objetos en un lenguaje de programacion orientado a objetos.
    Se puede decir que Mappea porque toma las tablas de la base de datos, crea clases con las mismas propiedades,
    toma en cuenta las relaciones entre las tablas y las convierte en propiedades de las clases, con la unica diferencia
    de que las propiedades de las clases son objetos de otras clases
    .
    .
    Un ORM sirve como una capa de abstraccion entre la base de datos y la aplicacion.
    Su funcion es reducir la cantidad de codigo que se necesita para interactuar con la base de datos.

     */


    // Repositorio
    /*

    Un repositorio es un objeto que se utiliza para encapsular la logica de acceso a los datos.
    ¿ Que tiene de diferente con un DAO?
    Un repositorio es una capa de abstraccion que se utiliza para ocultar la logica de acceso a los datos.
    Mientras que un DAO es un objeto que proporciona una interfaz abstracta para acceder a una base de datos.


     */
    // DAO (Data Access Object)
    /*
    Un DAO es un objeto que proporciona una interfaz abstracta para acceder a una base de datos.
    Tiene metodos para insertar, actualizar, eliminar y recuperar datos de la base de datos.
    Un dao regresa objetos de la aplicacion en lugar de filas de una tabla.
     */
    // DTO (Data Transfer Object)
    /*

    Un DTO representa una fila de una tabla en una base de datos relacional.
    Es un objeto que se utiliza para transferir datos entre diferentes capas de una aplicacion.
    Un DTO solo tiene metodos getter y setter.

     */



    // Bases de datos relacionales
    /*
    Son bases de datos en las que los datos se almacenan en tablas. (Filas y columnas)
    Donde cada fila representa un registro y cada columna representa un atributo de ese registro.
    Las diferentes tablas pueden juntarse mediante llaves primarias y foraneas. Estos identificadores
    permiten relacionar los registros de una tabla con los de otra.

    Las bases de datos relacionales son utiles cuando se requiera almacenar datos estructurados,
    osea que tengan un formato estandarizado.

    Para usar una base de datos relacional se utiliza el lenguaje SQL (Structured Query Language)
     */
    // Bases de datos no relacionales
/*
    A diferencia de las bases de datos relacionales, las bases de datos no relacionales no tienen un esquema fijo.
    Lo que las hace perfectas para almacenar datos no estructurados o semi estructurados.

    Hay diferentes tipos de bases de datos no relacionales:
    1. Documentales: Almacenan datos en documentos, como JSON o XML. Son buenas para datos semi estructurados.
    2. Clave-valor: Almacenan datos en pares clave-valor.
    3. Columnares: Almacenan datos en columnas en lugar de filas.
    4. Graficas: Almacenan datos en nodos y relaciones.

 */


}
