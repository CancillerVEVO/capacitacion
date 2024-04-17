package tamagochi;

import java.util.HashMap;
import java.util.Scanner;

public class Game {


    public static void main(String[] args) {
        boolean isRunning = true;
        Tamagochi tamagochi = null;

        // Tamagochis base
        Cat gaton = new Cat(1, "Gaton");
        Cat flaco = new Cat(2, "Flaco");
        Dog doggo = new Dog(3, "Doggo");

        // Se inicializa la base de datos de Tamagochis disponibles
        HashMap<Integer, Tamagochi> tamagochidb = new HashMap<>();
        tamagochidb.put(gaton.getId(), gaton);
        tamagochidb.put(doggo.getId(), doggo);
        tamagochidb.put(flaco.getId(), flaco);


        while (isRunning) {
            if (tamagochi == null) {
                System.out.println("Bienvenido a Tamagochi!");
                System.out.println("Elige tu tipo de Tamagochi:");
                System.out.println("1. Gato");
                System.out.println("2. Perro");
                System.out.println("3. Salir");

                int option = new Scanner(System.in).nextInt();

                if (option == 3) {
                    isRunning = false;
                    break;
                }

                System.out.println("¿Cómo quieres llamar a tu Tamagochi?");
                String name = new Scanner(System.in).nextLine();
                switch (option) {
                    case 1:
                        tamagochi = new Cat(10, name);
                        break;
                    case 2:
                        tamagochi = new Dog(10, name);
                        break;
                    default:
                        System.out.println("Opción invalida.");
                }
            } else {
                tamagochi.printStatus();
                System.out.println("Elige una accion:");
                System.out.println("1. Comer");
                System.out.println("2. Jugar");
                System.out.println("3. Dormir");
                System.out.println("4. Menu de amigos");
                System.out.println("5. Salir");

                int option = new Scanner(System.in).nextInt();

                switch (option) {
                    case 1:
                        tamagochi.feed();
                        break;
                    case 2:
                        tamagochi.play();
                        break;
                    case 3:
                        tamagochi.sleep();
                        break;
                    case 4:
                        System.out.println("Menu de amigos");
                        System.out.println("1. Agregar amigo");
                        System.out.println("2. Jugar con amigo");
                        System.out.println("3. Eliminar amigo");
                        System.out.println("4. Volver");

                        int friendsOption = new Scanner(System.in).nextInt();

                        switch (friendsOption) {
                            case 1:
                                System.out.println("Amigos disponibles:");
                                for (Tamagochi t : tamagochidb.values()) {
                                    if (t.getId() != tamagochi.getId()) {
                                        System.out.println(t.getId() + ". " + t.getName());
                                    }
                                }
                                System.out.println("Ingresa el id del amigo que quieres agregar:");
                                int friendId = new Scanner(System.in).nextInt();
                                Tamagochi friend = tamagochidb.get(friendId);
                                if (friend != null) {
                                    tamagochi.addFriend(friend);
                                    System.out.println("Amigo agregado.");
                                } else {
                                    System.out.println("Amigo no encontrado.");
                                }
                                break;
                            case 2:
                                System.out.println("Amigos:");
                                for (Tamagochi t : tamagochi.getFriends().values()) {
                                    System.out.println(t.getId() + ". " + t.getName());
                                }
                                System.out.println("Ingresa el id del amigo con el que quieres jugar:");
                                int friendIdToPlay = new Scanner(System.in).nextInt();
                                tamagochi.playWithFriend(friendIdToPlay);
                                break;
                            case 3:
                                System.out.println("Amigos:");
                                for (Tamagochi t : tamagochi.getFriends().values()) {
                                    System.out.println(t.getId() + ". " + t.getName());
                                }
                                System.out.println("Ingresa el id del amigo que quieres eliminar:");
                                int friendIdToRemove = new Scanner(System.in).nextInt();
                                tamagochi.removeFriend(friendIdToRemove);
                                break;
                            case 4:
                                break;
                            default:
                                System.out.println("Opción invalida.");

                        }

                        break;
                    case 5:
                        isRunning = false;
                        break;
                    default:
                        System.out.println("Opción invalida.");
                }
            }


        }

    }
}
