package rental.agency;

import rental.Client;
import rental.RentalAgency;
import rental.UnknownVehicleException;
import rental.Vehicle;

public class SuspiciousRentalAgency extends RentalAgency {


    
    public double rentVehicle(Client client, Vehicle v) throws UnknownVehicleException, IllegalStateException {
        if (client.getAge() < 25) {
            double price = super.rentVehicle(client, v) * 1.25f;
            Vehicle r = new Vehicle(v.getBrand(), v.getModel(), v.getProductionYear(), price);
            this.removeVehicle(v);
            this.addVehicle(r);
            return price;
        }
        else {
            return super.rentVehicle(client, v);
        }
    }
    
}
