package vlille;
public class BikeStation {

   /** array of slots for bikes in the station */
   private Bike[] bikes;
   /** name of the station */
   private String name;

   /**
    * On a définit le constructeur
    * @param name le nom de la station
    * @param capacity la capacité de la station
    */
   public BikeStation(String name, int capacity) {
      this.name = name;
      this.bikes = new Bike[capacity];
   }

   /**
    * Permet de récupere le nom de la station
    * @return ne nom de la station
    */
   public String getName() {
      return this.name;
   }

   /**
    * Permet de récuperer la capacité de la station
    * @return la valeur de la capacité de la station
    */
   public int getCapacity() {
      return this.bikes.length;
   }

   /**
    * Permet de récupere le nombre de vélo présent dans la station
    * @return le nombre de velo dans la station
    */
   public int getNumberOfBikes() {
      int a=0;
      for (int i = 0; i < bikes.length; i++) {
         if (bikes[i]!= null) {
            a++;
         }
      }
      return a;
   }

   /**
   * Renvoie  le plus petit indice correspondant 
   * à un emplacement libre pour un vélo, et -1 si aucun n'est libre.
   * @return <code>i</code> emplacement libre , <code>-1</code> aucun emplacement n'est libre
   */
   public int firstFreeSlot() {
      for (int i = 0; i < bikes.length; i++) {
         if (bikes[i]==null) {
            return i;
         } 
      }
      return -1;
   }

   /**
    * Permet de déposer un vélo dans une station.
    * @param bike velo à ajouter
    * @return <code>true</code> emplacement libre velo ajouter, <code>false</code> aucun emplacement n'est libre
    */
   public boolean dropBike(Bike bike) {
      for (int i = 0; i < bikes.length; i++) {
         if (bikes[i]==null) {
            bikes[i]=bike;
            return true;
         }
      }
      return false;
   }

   /**
    * permet de récuperer un velo à un emplacement définie et libérer sa place
    * @param i velo demandé
    * @return velo récuperer
    * @throws BikeNotAvailableException
    */
   public Bike takeBike(int i) throws BikeNotAvailableException {
      if (bikes[i]!=null && 0<i && i<bikes.length) {
         Bike b=bikes[i];
         bikes[i]=null;
         return b;
      } else {
         throw new BikeNotAvailableException("il n'y a pas de velo à l'emplacement demandé");
      }
   }

}
