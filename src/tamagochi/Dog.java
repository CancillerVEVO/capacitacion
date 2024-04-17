package tamagochi;

public class Dog extends Tamagochi {
    @Override
    public void greet() {
        System.out.println("Woof!");
    }

    public Dog(int id, String name) {
        super(id, name);
    }
}
