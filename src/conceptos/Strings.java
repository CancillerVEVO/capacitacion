package conceptos;

public class Strings {
    public static void main(String[] args) {
        // 1. ¿Que es un buffer?
        /*
        Un buffer es un espacio de memoria temporal que se utiliza para mitigar las diferencias entre
        la velocidad de input y output.
         */
        // 2. ¿Que es un string buffer?
        /*
        La definicion que encontré:
        StringBuffer is a class in Java that represents a mutable sequence of characters.
         It provides an alternative to the immutable String class,
         allowing you to modify the contents of a string without creating a new object every time.
         */
        // 2.1 ¿Que es un objeto mutable e inmutable?
        /*
        Un objeto mutable puede cambiar su estado despues de ser creado, mientras que un objeto inmutable no puede cambiar su estado despues de ser creado.
        ¿A que se refiere cambiar estado?
        A que los valores de sus atributos pueden cambiar despues de ser creados.

        Pero, porque se dice que las Strings son inmutables en Java si es que
        se pueden modificar?

         Porque cuando se modifica una cadena, se crea un nuevo objeto en memoria.

         No estas modificando la misma referencia, estas creando una nueva referencia.

         Por eso se dice que las cadenas son inmutables.

         La diferencia entre la clase String y StringBuffer es que la clase String es inmutable,
         es decir, una vez que se crea un objeto String, no se puede modificar.
         Mientras que la clase StringBuffer es mutable, es decir, se puede modificar.

            Eso tambien lo hace Thread Safe porque todas las threads modifican la misma referencia en memoria.
         */

        StringBuffer mutableString = new StringBuffer("Hola");
        System.out.println(mutableString);

        mutableString.append(" Mundo");

        System.out.println(mutableString);

        // 3.Comparacion de cadenas
        // 3.1 equals estricto
        String s1 = "Hola";
        System.out.println("Hola");

        System.out.println(String.format("equals(null): Regresa falso si no es igual: %b", s1.equals(null)));
        System.out.println(String.format("equals('hola'): Checa caps: %b", s1.equals("hola")));
        System.out.println(String.format("equals('Hello'): Regresa verdadero si es igual: %b", s1.equals("Hola")));

        // 3.2 equalsIgnoreCase
        System.out.println(String.format("equalsIgnoreCase('hola'): Regresa verdadero si es igual sin importar caps: %b", s1.equalsIgnoreCase("hola")));

        // 4. Concepto de Abstraccion
        // Representar un concepto en una interfaz o clase
        // Para que sea mas facil de entender y de usar

        // 5. Concepto de Polimorfismo
        // Un objeto puede tener multiples formas
    }
}
