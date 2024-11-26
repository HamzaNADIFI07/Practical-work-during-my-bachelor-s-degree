package battleship.util;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

import battleship.Answer;
import battleship.Cell;
import battleship.util.Ship;

public class CellTest {
    @Test
    public void getAndSetShip(){
        Cell cell = new Cell();
        Ship ship = new Ship(3);
        cell.setShip(ship);
        assertEquals(ship, cell.getShip());
    }

    @Test
    public void testShootingWithNoShip(){
        Cell cell = new Cell();
        assertEquals(Answer.missed, cell.shot());
    }
    @Test
    public void testHittingTheShip(){
        Cell cell = new Cell();
        Ship ship = new Ship(3);
        cell.setShip(ship);
        Answer res = cell.shot();
        assertEquals(2, ship.getLifePoints());
        assertEquals(Answer.hit, res);
    }
    @Test
    public void testSinkingTheShip(){
        Cell cell = new Cell();
        Ship ship = new Ship(1);
        cell.setShip(ship);
        cell.shot();
        assertEquals(0, ship.getLifePoints());

    }
    @Test
    public void testhasBeenShot(){
        Cell cell = new Cell();
        Ship ship = new Ship(3);
        cell.setShip(ship);
        cell.shot();
        assertTrue(cell.hasBeenShot());

    }
    
}
