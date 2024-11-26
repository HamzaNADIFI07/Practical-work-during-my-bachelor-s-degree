package battleship;

import battleship.util.Position;
import battleship.util.Ship;

public class ThirdBattleShipMain {
    public static void main(String[] args) {
        Sea plateau = new Sea(10, 10);
        Ship ship1 = new Ship(3);
        Ship ship2 = new Ship(4);
        Position position1 = new Position(2, 3);
        Position position2 = new Position(5, 7);

        try {
            plateau.addShipVertically(ship1, position1);
            plateau.addShipHorizontally(ship2, position2);
        } catch (IllegalStateException e) {
            System.out.println("Failed to place ships: " + e.getMessage());
            return;
        }
        System.out.println("Point de vue du defenseur:");
        plateau.display(true);
        Game game1 = new Game(plateau);
        game1.play();
    }
}
