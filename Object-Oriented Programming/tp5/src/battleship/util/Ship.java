package battleship.util;
/**
 * Permet de gerer un bateau
 */
public class Ship {
    private int lifePoints ; //longueur du bateau entier
    /**
     * constructeur permettant de creer un objet bateau avec sa longueur
     * @param lifePoints longueur du bateau
     */
    public Ship(int lenght){
        this.lifePoints=lenght;
    }
    /**
     * Permet de diminuer le nombre de points
     */
    public void beenHitting(){
        if (this.lifePoints>0) {
            lifePoints--;
        }
    }
    /**
     * Permet de s'assurer si le bateau est coulé ça veut sire que son lifePoints vaut 0
     * @return <True> if sunk </True>, <False>if not </False>
     */
    public boolean hasBeenSunk(){
        if (this.lifePoints==0) {
            return true;
        }
        return false;
    }
    /**
     * Permet de renvoyer le nombre points du bateau
     * @return lifePoints
     */
    public int getLifePoints() {
        return lifePoints;
    }
    /**
     *Permet de renvoyer une description du bateau
     *@return description en string
     */
    public String toString(){
        return "Ce bateau a " + this.getLifePoints() + " points";
    }
    


}
