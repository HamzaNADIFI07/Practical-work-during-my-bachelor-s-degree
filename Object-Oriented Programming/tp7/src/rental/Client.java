package rental;

/**
 * represent clients of a rental agency, the names are supposed to be unique
 * then two Client objects with same name are considered equals
 */
public class Client {

   private String name;
   private int age;
   private int pointsFidelite;

   /**
    * create a client with given name and age, two different clients have different
    * names by assumption (no verification)
    * 
    * @param name name of the client
    * @param age  age of the client
    */
   public Client(String name, int age) {
      this.name = name;
      this.age = age;
   }

   /**
    * @return the client's name
    */
   public String getName() {
      return this.name;
   }

   /**
    * @return the client's age
    */
   public int getAge() {
      return this.age;
   }
   /**
    * @return the client's pointFidelite
    */
   public int getPointsFidelite() {
      return this.pointsFidelite;
   }


   
   public int hashCode() {
      return ((this.name == null) ? 0 : this.name.hashCode());
   }

   

   /**
    * two clients are equals of they have same names
    * 
    */
   public boolean equals(Object obj) {
      if (!(obj instanceof Client))
         return false;
      Client other = (Client) obj;
      if (this.name == null) {
         return (other.name == null);
      } else {
         return this.name.equals(other.name);
      }
   }

}
