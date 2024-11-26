package image.color;

public class GrayColor {
    // Attribut WHITE initialiser avec un graycolor de 255
    public static final GrayColor WHITE = new GrayColor(255);
    // Attribut BLACK initialiser avec un graycolor de 0
    public static final GrayColor BLACK = new GrayColor(0);
    private int graylevel ; //Le niveau du gris
    private double alpha; // Le niveau d'opacité compris entre 0 et 1
    /**
     * Le constructeur GrayColor avec un seul parametre
     * @param level parametre level de type int
     */
    public GrayColor(int level){
        if (level<0 || level > 255) {
            throw new IllegalArgumentException("Le gray level doit etre compris entre 0 et 255");
        }
        this.graylevel=level;
        this.alpha=1; // La valeur de alpha et initialiser à 1
    }
    /**
     * Methode getGraylevel permet d'obtenir la valeur du niveau du gris
     * @return la valeur du  niveau de gris
     */
    public int getGraylevel() {
        return this.graylevel;
    }
    /**
     * Methode getAlpha permet d'obtenir la valeur du niveau du d'opacité
     * @return la valeur du  niveau d'opacité
     */
    public double getAlpha() {
        return this.alpha;
    }
    /**
     * Methode setAlpha permet de modifier la valeur du niveau d'opacité 
     * avec une exception IllegalArgumentException qui permet d'assurer 
     * que la valeur de alpha soit toujours comprise entre 0 et 1
     * @param alpha La nouvelle valeur alpha
     */
    public void setAlpha(double alpha) {
        if(alpha<0.0 || alpha > 1.0){
            throw new IllegalArgumentException("Le niveau d'opacité alpha devrait etre compris entre 0 et 1 ");
        }
        this.alpha = alpha;
    }
    /**
     * La methode permet de comparer entre deux objets 
     * @param o objet à comparer 
     * @return <true> if the object in param is equal our object </true> , <false> if it isn't</false>
     */
    public boolean equals(Object o) {
        if (o instanceof GrayColor) {
            GrayColor other = (GrayColor)o ;
            return (this.getGraylevel() == other.getGraylevel() && this.getAlpha() == other.getAlpha()) ;
        }
        else {
            return false ;
        }
    }
}