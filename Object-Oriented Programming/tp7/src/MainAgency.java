import rental.*;
import rental.agency.FriendlyRentalAgency;
import rental.agency.SuspiciousRentalAgency;
import rental.filter.AndFilter;
import rental.filter.BrandFilter;
import rental.filter.MaxPriceFilter;
import rental.vehicle.Car;
import rental.vehicle.Motorbike;

public class MainAgency {
    public static void main(String[] args) {

        RentalAgency agence = new RentalAgency();
        
        Vehicle v1= new Vehicle("BMW", "série 5", 2023, 200);
        Vehicle v2= new Vehicle("Mercedes", "class a", 2020, 150);
        Vehicle v3= new Vehicle("peugeot", "308", 2023, 100);
        
        Client c1 = new Client ("Timo", 19);

        BrandFilter bf1 = new BrandFilter("Vroom");
        BrandFilter bf2 = new BrandFilter("Vroum");
        MaxPriceFilter mpf1 = new MaxPriceFilter(210);
        MaxPriceFilter mpf2 = new MaxPriceFilter(250);
        AndFilter f1 = new AndFilter();
        AndFilter f2 = new AndFilter();

        f1.addFilter(bf1);
        f1.addFilter(mpf1);
        f2.addFilter(bf2);
        f2.addFilter(mpf2);
        
        agence.addVehicle(v1);
        agence.addVehicle(v2);
        agence.addVehicle(v3);

        agence.displaySelection(f1);
        agence.displaySelection(f2);

        System.out.println(c1.getName());
        System.out.println("the client "+c1.getName()+" has rented a vehicle: " + String.valueOf(agence.hasRentedAVehicle(c1)));
        System.out.println("the Vehicle v1 : " + v1.toString() + " is rented : " + agence.isRented(v1));



        double price = 0;
        try {
            price = agence.rentVehicle(c1, v1);
        }
        catch (UnknownVehicleException e){
            System.out.println(e.getMessage());
        }
        System.out.println(c1.toString() + " has rented the vehicle " + v1.toString() + " at a price of " + price);
        System.out.println("this client has rented a vehicle: " + agence.hasRentedAVehicle(c1));
        System.out.println("the Vehicle v1 is rented : " + agence.isRented(v1));
        System.out.println("all rented vehicle in the agency are :");
        for(Vehicle v : agence.allRentedVehicles()){
            System.out.println(v.toString());
        }
        System.out.println("the client is going to return the vehicle");
        agence.returnVehicle(c1);
        System.out.println("this client is renting a vehicle: " + agence.hasRentedAVehicle(c1));
        System.out.println("the Vehicle v1 is rented : " + agence.isRented(v1));



        Car car1 = new Car("BMW", "série 5", 2010, 300,5);
        Motorbike bike1 = new Motorbike("bike1", "bike1", 2005, 50, 15);
        Car car2 = new Car("Mercedes", "class a", 2008, 300, 5);
        Motorbike bike2 = new Motorbike("bike2", "bike2", 2005, 100, 15);
        AndFilter f3 = new AndFilter();
        BrandFilter bf3 = new BrandFilter("BMW");
        MaxPriceFilter mpf3 = new MaxPriceFilter(60);

        agence.addVehicle(car1);
        agence.addVehicle(car2);
        agence.addVehicle(bike1);
        agence.addVehicle(bike2);

        f3.addFilter(bf3);
        f3.addFilter(mpf3);
        
        agence.displaySelection(f3);

        Client c2 = new Client("Leon", 28);
        SuspiciousRentalAgency agence2 = new SuspiciousRentalAgency();

        agence2.addVehicle(car2);
        double price2 = 0;
        try {
            price2 = agence2.rentVehicle(c2, car2);
        }
        catch (UnknownVehicleException e){
            System.out.println(e.getMessage());
        }
        System.out.println(c2.toString() + " has rented the vehicle " + car2.toString() + " at a price of " + price2);
        agence2.returnVehicle(c2);
        System.out.println(c2.toString() + " has returned the vehicle.");
        try {
            price2 = agence2.rentVehicle(c1, car2);
        }
        catch (UnknownVehicleException e){
            System.out.println(e.getMessage());
        }
        System.out.println(c1.toString() + " has rented the vehicle " + car2.toString() + " at a price of " + price2);




        FriendlyRentalAgency agence3 = new FriendlyRentalAgency(2, 0.75f);

        agence3.addVehicle(car2);
        double price3 = 0;
        try {
            price2 = agence3.rentVehicle(c2, car2);
        }
        catch (UnknownVehicleException e){
            System.out.println(e.getMessage());
        }
        System.out.println(c2.toString() + " has rented the vehicle " + car2.toString() + " at a price of " + price3);
        agence2.returnVehicle(c2);
        System.out.println(c2.toString() + " has returned the vehicle.");
        try {
            price3 = agence3.rentVehicle(c2, car2);
        }
        catch (UnknownVehicleException e){
            System.out.println(e.getMessage());
        }
        System.out.println(c1.toString() + " has rented the vehicle " + car2.toString() + " at a price of " + price3);




    }
}
