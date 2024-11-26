public class LightSwitchMain {
    public static void main (String[] args){
        LightBulb light = new LightBulb();
        LightSwitch interrupteur = new LightSwitch(light);
        System.out.println(light);
        interrupteur.push(light);
        System.out.println(light);
        interrupteur.push(light);
        System.out.println(light);
        interrupteur.push(light);
        System.out.println(light);
        interrupteur.push(light);
        System.out.println(light);
        interrupteur.push(light);
    }
}
