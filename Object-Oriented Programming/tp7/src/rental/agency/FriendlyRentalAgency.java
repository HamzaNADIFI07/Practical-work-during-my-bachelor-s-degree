package rental.agency;

import java.util.HashMap;
import java.util.Map;

import rental.Client;
import rental.RentalAgency;
import rental.UnknownVehicleException;
import rental.Vehicle;

public class FriendlyRentalAgency extends RentalAgency {
    private int seuil;
    private float pourcentage;
    private Map<String, Integer> pointsFidelite;

    
    public FriendlyRentalAgency(int seuil , float pourcentage){
        this.seuil=seuil;
        this.pourcentage=pourcentage;
        this.pointsFidelite = new HashMap<>();
    }

    public int getSeuil() {
        return this.seuil;
    }

    public float getPourcentage() {
        return this.pourcentage;
    }

    public int obtenirPointsFidelite(Client client) {
        return client.getPointsFidelite();
    }
    public double rentVehicle(Client client, Vehicle v) throws UnknownVehicleException, IllegalStateException {
        if (client.getAge() < 25) {
            double price = super.rentVehicle(client, v) * 1.25f;
            Vehicle r = new Vehicle(v.getBrand(), v.getModel(), v.getProductionYear(), price);
            this.removeVehicle(v);
            this.addVehicle(r);
            int p=client.getPointsFidelite();
            p++;         
            if (p>=this.seuil) {
                return rentVehicle(client, v)*pourcentage;
            }
            return rentVehicle(client, v);
        }
        else {
            int p=client.getPointsFidelite();
            p++; 
            if (p>=this.seuil) {
                return super.rentVehicle(client, v)*pourcentage;
            }
            return super.rentVehicle(client, v);
        }
    }

    



    
    
}
