public class Exercice4 {

   public static void usage() {
      System.out.println("Usage : java Exercice4 <unMot> [<unCaractere>]");
      System.out.println("  si <unCaractere> est omis alors on considère 'a'");
      System.exit(0);
   }

   public static void main(String[] args) {
      
      if (args.length == 0) {
         Exercice4.usage();
      }
      String word = args[0];

      char searchedChar = 'a';   
      if (args.length == 2) {
         searchedChar = args[1].charAt(0);
      }      

      int nbOccurrences = 0;
      for (int i = 0; i < word.length(); i++) {
         if (word.charAt(i) == searchedChar) {
            nbOccurrences = nbOccurrences + 1;
         }
      }
      System.out.println("il y a " + nbOccurrences + " "+ searchedChar +" dans : " + word);
   }
}
