/**
 * Class pour controler l'allumage d'une ampoule 
 * */

public class LightSwitch {
    private LightBulb light;
    /**
     * permet d'avoir l'accés à l'ampoule qu'on souhaite controler
     * @param light l'ampoule à controler
     */
    public LightSwitch(LightBulb light){
        this.light=light;
   }
   /**
    * permet d'acceder à l'ampoule coontrolé
    * @return l'ampoule controlé
    */
    public LightBulb getLight() {
        return this.light;
    }
    /**
     * permet de switcher l'état de l'ampoule
     * @param light L'ampoule controler
     */
    public void push(LightBulb light){
        if (this.light.isOn()) {
            this.light.turnOff();
        } else {
            this.light.turnOn();
        }
    }
}
