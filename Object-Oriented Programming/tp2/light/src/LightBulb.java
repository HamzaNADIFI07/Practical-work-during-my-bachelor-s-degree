/**
 * Class pour des ampoules
 */

public class LightBulb {
    /** Le statut de l'ampoule, <code>true</code>if on , <code>false</code> if not */
    private boolean on;
    /** La valeur de la puissance électrique en watt */
    private int watt;
    /** La valeur de la puissance lumineuse en lumen */
    private int lumen;
    /** La couleur de l'ampoule */
    private String color;

    public LightBulb(int watt, int lumen, String color) {
        this.watt = watt;
        this.lumen = lumen;
        this.color = color;
        this.on = false;
     }

    /** Permets de récupérer la valeur de la puissance électrique
     * @return la valeur de la puissance électrique
     */
    public int getWatt(){
        return this.watt;
    }
    /** Permets de récupérer la valeur de la puissance lumineuse 
     * @return la valeur de la puissance lumineuse 
    */
    public int getLumen(){
        return this.lumen;
    }
    /** Permets de récupérer la couleur de l'ampoule
     * @return la couleur de l'ampoule
     */
    public String getColor() {
        return this.color;
    }
    /** Permet de savoir si l'ampoule est allumer, <code>true</code>if onn  <code>false</code> if not
     * @return ampoule allumer ou pas, <code>true</code>if on,  <code>false</code> if not
     */
    public boolean isOn(){
        if (on) {
            return true;
        }
        return false;
    }
    /** Permets d'allumer l'ampoule */
    public void turnOn(){
        this.on= true;
    }
    /** Permets d'éteindre l'ampoule */
    public void turnOff(){
        this.on= false;
    }
    public void changeState() {
        this.on = !this.on;
     }
    /** Permets de génerer une chaine de caractère décrivant les caractéristiques de l'ampoule 
     * @return une chaine de caractère décrivant les caractéristiques de l'ampoule
    */
    public String toString(){
        String result = "L'ampoule";
      if (this.on) {
         result = result + " is on, ";
      } else {
         result = result + " is off, ";
      }
      result = result + "de couleur " + this.color + " ,et de puissance électrique " + this.watt + " watt, et de puissance lumineuse " + this.lumen + " lumen.";
      return result;
   }
   /**
    * on a créer une ampoule et on a affecter des valeurs à ses attributs
    */
   public LightBulb(){
        this.watt = 4;
        this.lumen = 1200;
        this.color = "blanche";
   }
   private static String ON = "on";
   private static String OFF = "off";

   public String onOffString() {
      if (this.isOn())
         return ON;
      else
         return OFF;
   }
}


