package rental.vehicle;

import rental.Vehicle;

public class Car extends Vehicle {
    private int nbPassager;

    /**
     * creates a car with given informations
     * @param brand  the car's brand
     * @param model  the car's model
     * @param productionYear  the car's productionYear
     * @param dailyRentalPrice  the car's dailyRentalPrice
     * @param nbPassager  the car's nbPassager
     */
    public Car(String brand, String model, int productionYear, float dailyRentalPrice, int nbPassager) {
        super(brand, model, productionYear, dailyRentalPrice);
        this.nbPassager=nbPassager;
    }
    /**
     * This Methode return nbPassager in car
     * @return the car's nbPassager
     */
    public int getNbPassager() {
        return this.nbPassager;
    }
    /**
     * This Methode return a little description about the car
     * @return Description about the car
     */
    public String toString(){
        return super.toString() + " " + this.nbPassager;
    }


    

    
}
