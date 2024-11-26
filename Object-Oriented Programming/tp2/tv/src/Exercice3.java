public class Exercice3 {
   public static void usage() {
      System.out.println("Usage : java Exercice3 <unMot>");
      System.exit(0);
   }
   public static void main(String[] args) {
      if (args.length < 1) {
         Exercice3.usage();
      }
      String word = args[0];
      int nbOccurrences = 0;
      for(int i = 0; i < word.length(); i++) {
	    if (word.charAt(i) == 'a') {
	      nbOccurrences = nbOccurrences + 1;
	    }
      }
      System.out.println("il y a "+nbOccurrences+" a dans : "+ word);
   }
}