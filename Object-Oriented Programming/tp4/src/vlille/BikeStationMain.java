package vlille;
import vlille.util.BikeModel;
public class BikeStationMain {
    public static void main(String[] args){
        BikeStation station1 = new BikeStation("Timpleon", 10);
        Bike bike1 = new Bike("b001", BikeModel.CLASSIC);
        Bike bike2 = new Bike("b002", BikeModel.ELECTRIC);
        int n = Integer.parseInt(args[0]);
        Bike c= station1.takeBike(n);
        systeme.out.println(c.getId());
    }
}