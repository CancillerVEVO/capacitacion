package tamagochi;

import javax.sound.midi.Soundbank;
import java.util.HashMap;

public abstract class Tamagochi {
    private int id;
    private String name;
    private int hunger;
    private int happiness;
    private int weight;
    private int energy;
    private HashMap<Integer, Tamagochi> friends;

    public Tamagochi(int id, String name ) {
        this.id = id;
        this.name = name;
        this.hunger = 5;
        this.happiness = 5;
        this.weight = 5;
        this.energy = 5;
        friends = new HashMap<>();
    }

    public void feed() {
        hunger--;
        weight++;
        energy++;
    }

    public void play() {
        happiness++;
        hunger++;
        energy--;
    }

    public void sleep() {
        energy++;
        hunger++;
    }

    public void playWithFriend(int friendId) {
        Tamagochi friend = friends.get(friendId);
        if (friend != null) {
            happiness++;
            hunger++;
            energy--;

            friend.happiness++;
            friend.hunger++;
            friend.energy--;
        } else {
            System.out.println("Amigo no encontrado");
        }
    }

    public void addFriend(Tamagochi friend) {
        friends.put(friend.getId(), friend);
    }

    public void removeFriend(int friendId) {
        if (friends.containsKey(friendId)) {
            friends.remove(friendId);
        } else {
            System.out.println("Amigo no encontrado.");
        }
    }

    public void printFriends() {
        for (Tamagochi friend : friends.values()) {
            System.out.println(friend.getName());
        }
    }

   public void printStatus() {
       System.out.println("Nombre: " + name +  " Hambre: " + hunger + " Felicidad: " + happiness + " Peso: " + weight + " Energia: " + energy);
    }

    public void printWarnings() {
        if (hunger > 5) {
            System.out.println("Tengo hambre!");
        }
        if (happiness < 5) {
            System.out.println("Estoy triste!");
        }
        if (weight > 10) {
            System.out.println("Estoy gordo!");
        }
        if (energy < 5) {
            System.out.println("Estoy cansado!");
        }
    }

    public abstract void greet();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getHunger() {
        return hunger;
    }

    public void setHunger(int hunger) {
        this.hunger = hunger;
    }

    public int getHappiness() {
        return happiness;
    }

    public void setHappiness(int happiness) {
        this.happiness = happiness;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public HashMap<Integer, Tamagochi> getFriends() {
        return friends;
    }

    public void setFriends(HashMap<Integer, Tamagochi> friends) {
        this.friends = friends;
    }

    public int getEnergy() {
        return energy;
    }

    public void setEnergy(int energy) {
        this.energy = energy;
    }
}
