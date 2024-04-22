package tamagochi;

public class TamagochiTimeThread extends Thread{
    private final Tamagochi tamagochi;
    private boolean running;

    public TamagochiTimeThread(Tamagochi tamagochi) {
        this.tamagochi = tamagochi;
        this.running = true;
    }

    @Override
    public void run() {
        while (running) {
            try {
                Thread.sleep(1000);
                passTime();

                System.out.println("Hambre: " + tamagochi.getHunger());
                System.out.println("Energía: " + tamagochi.getEnergy());

                if (tamagochi.isDead()) {
                    running = false;
                    System.out.println("Tu Tamagochi ha muerto.");
                }

            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    private void passTime() {
        tamagochi.setEnergy(tamagochi.getEnergy() - 1);
        tamagochi.setHunger(tamagochi.getHunger() + 1);
        tamagochi.checkIfDead();
    }
}
