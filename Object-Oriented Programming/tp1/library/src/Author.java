
/**
 * Define author of books
 */

public class Author {
   /**
    * an Author is defined by its lastname, firstname, and birth year
    * 
    * @param lastname  author's lastname
    * @param firstname author's firstname
    * @param birhtyear author's birth year
    */
   public Author(String lastname, String firstname, int birthYear) {
      this.lastname = lastname;
      this.firstname = firstname;
      this.birthYear = birthYear;
   }

   public String getFirstname() {
      return firstname;
   }

   public int getBirthYear() {
      return birthYear;
   }
   public String getFirstLastname(){
         return firstname+lastname;
   }
   private String lastname;
   private String firstname;
   private int birthYear;

   /**
    * this author's lastname
    * 
    * @return this author's lastname
    */
   public String getLastname() {
      return this.lastname;
   }

   /**
    * get author information as a String
    * 
    * @return description for this author
    */
   public String toString() {
      return this.firstname + " " + this.lastname + " born in " + this.birthYear;
   }

}
