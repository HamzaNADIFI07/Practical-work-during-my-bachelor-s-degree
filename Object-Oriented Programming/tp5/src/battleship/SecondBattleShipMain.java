package battleship;

import battleship.util.Position;
import battleship.util.Ship;

public class SecondBattleShipMain {
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
        //On ajouter le ship1 à la position1 et le ship2 à la position 2 du plateau
        try {
            plateau.addShipVertically(ship1, position1);
            plateau.addShipHorizontally(ship2, position2);
        } catch (IllegalStateException e) {
            System.out.println("placement du bateau échouée " + e.getMessage());
            return; // On sort du programme
        }
        //On affiche le plateau du point de vue du défenseur
        System.out.println("Game board for the defender:");
        plateau.display(true);

        // On créer un jeu dans le plateau
        Game game = new Game(plateau);

        // On lance le jeu
        game.play();
        

    }
}
