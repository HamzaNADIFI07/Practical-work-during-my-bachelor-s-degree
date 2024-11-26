import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
public class ShipTest {
    @Test
    public void testhasBeenSunk(){
        Ship ship = new Ship(1);
        assertFalse(ship.hasBeenSunk());
        ship.beenHitting();
        assertTrue(ship.hasBeenSunk());
    }
    @Test
    public void testbeenHiting(){
        Ship ship = new Ship(2);
        ship.beenHitting();
        assertEquals(1,ship.getLifePoints());
    }
    @Test
    public void testgetLifePoints(){
        Ship ship = new Ship(3);
        int res = ship.getLifePoints();
        assertEquals(3, res);

    }
    @Test
    public void testtoString(){
        Ship ship = new Ship(3);
        String res = ship.toString();
        assertEquals(res, "The remaining life points that your ship has is 3");
    }
}
