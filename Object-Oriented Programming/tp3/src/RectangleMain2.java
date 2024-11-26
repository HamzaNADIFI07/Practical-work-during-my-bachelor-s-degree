public class RectangleMain2 {
    public static void main(String[] args) {
        
        double largeur = Double.parseDouble(args[0]);
        double longueur = Double.parseDouble(args[1]);
        Rectangle rect3 = new Rectangle(largeur, longueur);
        if (args.length == 0) {
            System.out.println("Erreur : Aucune valeur fournie. Le programme ne peut pas fonctionner.");
        } else if (args.length == 1) {
            rect3.siCarre();
        }
        java.util.Random alea = new java.util.Random(); 
        Rectangle rect4 = new Rectangle(alea.nextInt(100) , alea.nextInt(100) );
        System.out.println(rect3.toString());
        System.out.println(rect4.toString());
        System.out.println(rect3.aire());
        System.out.println(rect3.perimetre());
        System.out.println(rect3.siCarre());
        System.out.println(rect4.siCarre());
        System.out.println(rect3.egaliteRectangle(rect4));
    }
}
