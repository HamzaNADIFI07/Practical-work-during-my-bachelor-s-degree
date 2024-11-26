/**
 * La class rectangle permet de représenter des rectangles
 */
public class Rectangle{
    private double largeur;
    private double longueur;
/**
 * construction de l'objet Rectangle avec deux paramètres
 * @param largeur
 * @param longueur
 */
    Rectangle(double largeur, double longueur){
        this.largeur=largeur;
        this.longueur= longueur;
    }
/**
 * 
 * @return la largeur du rectangle
 */
    public double getLargeur() {
        return largeur;
    }
/**
 * 
 * @return la longueur du rectangle
 */
    public double getLongueur() {
        return longueur;
    }
/**
 * methode qui permet de calculer l'aire du rectangle
 * @return L'aire du rectagle
 */
    public double aire(){
        return largeur*longueur;
    }

/**
 * methode qui permet de calculer le perimetre du rectangle
 * @return Le perimetre du rectagle
 */
    public double perimetre(){
        return (largeur+longueur)*2;
    }
/**
 * Verifie si le rectangle est carre ou pas
 * @return <code>true</code> if carré , <code>false</code> if not
 */
    public boolean siCarre(){
        return largeur==longueur;
    }
/**
 * permet de tester l'egalité entre deux rectangle
 * @param rect
 * @param rect2
 * @return <code>true</code> if egaux , <code>false</code> if not
 */
    public boolean egaliteRectangle(Rectangle rectangle1 ){
        return rectangle1.longueur==this.longueur && rectangle1.largeur==this.largeur;
    }
/**
 * permet de retourner une description du rectangle
 * @return la description du rectangle
 */
    public String toString(){
        return "Ce rectangle est de largeur: " + largeur + ", de longueur: "+ longueur + ", son aire est: " + aire() + ", son perimetre est: " + perimetre() + ", siCarre: " + siCarre() + ".";
    }
}