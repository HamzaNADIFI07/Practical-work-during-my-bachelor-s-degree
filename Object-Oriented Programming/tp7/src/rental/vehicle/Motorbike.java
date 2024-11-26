package rental.vehicle;

import rental.Vehicle;

public class Motorbike extends Vehicle{
    private int cylindre;

    /**
     * creates a motorbike with given informations
     * @param brand  the motorbike's brand
     * @param model  the motorbike's model
     * @param productionYear  the motorbike's productionYear
     * @param dailyRentalPrice  the motorbike's dailyRentalPrice
     * @param cylindre  the motorbike's cylindre
     */
    public Motorbike(String brand, String model, int productionYear, float dailyRentalPrice, int cylindre) {
        super(brand, model, productionYear, dailyRentalPrice);
        this.cylindre=cylindre;  
    }

    /**
     * This Methode return the number of cylindre in Motorbike
     * @return the motorbike's cylindre
     */
    public int getCylindre() {
        return this.cylindre;
    } 
    /**
     * This Methode return a little description about the motrbike
     * @return Description about the motorbike
     */
    public String toString(){
        return super.toString() + " " + this.cylindre;
    }


    

    
}
