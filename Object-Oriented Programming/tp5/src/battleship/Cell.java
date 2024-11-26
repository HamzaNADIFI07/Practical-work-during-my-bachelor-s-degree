package battleship;
import battleship.util.Ship;
public class Cell {
    Ship ship;
    boolean shot;
    public static final char e1 = '~';
    public static final char e2 = '~';
    public static char e3 = '*';
    public static final char e4 = '.';
    public static final char e5 = 'B';

    public Cell(){
        this.ship = null; //Au debut du jeux les cases sont vides
        this.shot = false; //Au debut du jeux aucun bateau n'est encore touché
    }
    /**
     * Permet de renvoyer le un bateau
     * @return ship renvoyer
     */
    public Ship getShip() {
        return ship;
    }
    /**
     * Methode qui permet de modifier un bateau par un autre passer en parametre
     * @param ship 
     */
    public void setShip(Ship ship) {
        this.ship = ship;
    }
    /**
     * La methode permet de renvoyer l'état de la case
     * @return <true>si la case est deja touché</true>, <false>sinon</false>
     */
    public boolean hasBeenShot(){
        return this.shot;
    }
    /**
     * La methode shot permet de illustrer le principe global du jeux 
     * si le la case est pleine et le lifePoints est superieur à 0 alors on retourne hit
     * et si le lifePoints=0 alors on retourne sunk et si la case et vide ou deja touchée on retourne missed
     * @return hit , sunk , missed selon les cas
     */
    public Answer shot() {
        if(ship != null && hasBeenShot()==false){
           ship.beenHitting();
           if (ship.getLifePoints() > 0) {
                return Answer.hit;
           }
            else if (ship.getLifePoints() == 0) {
                return Answer.sunk;
            }

        }
        return Answer.missed;
    }
    /**
     * Permet de renvoyer l'etat de la case selon le parametre soit defenseur soit attaquant
     * @param defender <true>si point de vue du defenseur </true>, <false>point de vue de l'attaquant</false>
     * @return l'etat de la case
     */
    public char toCharacter(boolean defender) {
        if (defender) {
            if (isEmpty()) {
                return '~'; // Vue du défenseur : case vide
            } else {
                return hasBeenShot() ? '*' : 'B'; // Vue du défenseur : touché ou non touché
            }
        } else {
            if (hasBeenShot()) {
                return isEmpty() ? '~' : '*'; // Vue de l'attaquant : case vide déjà touchée ou touché
            } else {
                return '.'; // Vue de l'attaquant : case non touchée
            }
        }
    }
    private boolean isEmpty() {
        return this.ship == null;
    }

}
