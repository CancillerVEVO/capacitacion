package tamagochi;

import java.util.HashMap;

public abstract class Tamagochi {
    private int id;
    private String name;
    private int hunger;
    private int happiness;
    private int weight;
    private int energy;
    private HashMap<Integer, Tamagochi> friends;

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
            System.out.println("Friend not found.");
        }
    }

    public void addFriend(Tamagochi friend) {
        friends.put(friend.getId(), friend);
    }

    public void removeFriend(Tamagochi friend) {
        friends.remove(friend.getId());
    }

    public void printFriends() {
        for (Tamagochi friend : friends.values()) {
            System.out.println(friend.getName());
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
