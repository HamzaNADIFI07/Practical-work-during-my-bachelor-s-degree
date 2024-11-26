package battleship;

import battleship.util.Position;
import battleship.util.Ship;

public class FirstBattleShipMain {
    public static void main(String[] args) {
        // On a créer un plateau de 10*10 cases
        Sea plateau = new Sea(10, 10);
        //on créer un bateau de 5 lifePoints
        Ship ship1= new Ship(5);
        //on créer un bateau de 7 lifePoints
        Ship ship2= new Ship(7);
        //On a définie la position dans laquelle on voudrais rajouter le ship1
        Position position1 = new Position(3, 4);
        //On a définie la position dans laquelle on voudrais rajouter le ship2
        Position position2 = new Position(2, 7);
        //On ajouter le ship1 à la position1 du plateau
        plateau.addShipHorizontally(ship1,position1);
        //On ajouter le ship1 à la position1 du plateau
        plateau.addShipHorizontally(ship2,position2);
        //On affiche le plateau du point de vue de l'attanquant
        System.out.println("Game board for the attacker:");
        plateau.display(false);
        //On affiche le plateau du point de vue du défenseur
        System.out.println("Game board for the defender:");
        plateau.display(true);
        //On a définie la position sur laquelle on voudrais tirer
        Position shotPosition = new Position(3, 4);
        try {
            Answer result = plateau.shoot(shotPosition);
            System.out.println("\nShot result: " + result);
        } catch (InvalidShootException e) {
            System.out.println("\nInvalid shot: " + e.getMessage());
        }
        System.out.println("\nMise à Jour du plateau du point de vue du defenseur:");
        plateau.display(true);
        System.out.println("\nMise à Jour du plateau du point de vue de l'attanquant:");
        plateau.display(false);

    }
}
