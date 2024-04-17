package tamagochi;

public class Cat extends Tamagochi {
    @Override
    public void greet() {
        System.out.println("Meow!");
    }

    public Cat(int id, String name) {
        super(id, name);
    }
}

