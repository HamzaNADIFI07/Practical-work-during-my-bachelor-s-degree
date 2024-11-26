
public class TvMain4 {

   public static void main(String[] args) {

      
      if (args.length < 1) {
         Tv tv1 = new Tv("ParDeFo");
         System.out.println(tv1.toString());
         System.out.println("--------------------------");
         tv1.on();
         tv1.changeChannel(7);
         tv1.volumeUp();
         System.out.println(tv1); // _tv1_ est remplacé par _tv1.toString()_ à la compilation
      }
      Tv tv1 = new Tv(args[0]);
      System.out.println(tv1.toString());
      System.out.println("--------------------------");
      tv1.on();
      tv1.changeChannel(7);
      tv1.volumeUp();
      System.out.println(tv1); // _tv1_ est remplacé par _tv1.toString()_ à la compilation
      
   }
}