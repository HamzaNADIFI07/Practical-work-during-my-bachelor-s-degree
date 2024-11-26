package image;

import image.color.GrayColor;

public class Pixel {
    // attribut color de type GrayColor
    private GrayColor color;
    /**
     * Contructeur Pixel avec un parametre d'initialisation de don attribut
     * @param c parametre de type GrayColor
     */
    public Pixel(GrayColor c){
        this.color=c;
    }
    /**
     * methode pour recuperer le graycolor
     * @return GrauColor
     */
    public GrayColor getColor() {
        return color;
    }
    /**
     * Methode pour modifier le graycolor du pixel
     * @param color new graycolor
     */
    public void setColor(GrayColor color) {
        this.color = color;
    }
    /**
     * Methode permet de comparer deux objet 
     * @param o objet à comparer
     * @return <true> if the object in param is equal our object </true> , <false> if it isn't</false>
     */
    public boolean equals(Object o){
        if (o instanceof Pixel) {
            Pixel other = (Pixel) o;
            return this.color.equals(other.color);
        }
        else {
            return false;
        }
    }
    /**
     * Methode permet de retourner la difference de la valeur de graycolor de notre pixel et un autre passé en parametre
     * @param p pixel à comparer
     * @return la valeur de difference des graycolor des deux pixels
     */
    public int colorLevelDifference(Pixel p){ 
        return Math.abs(p.getColor().getGraylevel() - this.getColor().getGraylevel());
    }


}

