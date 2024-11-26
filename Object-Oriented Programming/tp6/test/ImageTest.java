import org.junit.*;
import static org.junit.Assert.*;

import image.Image ;
import image.*;
import image.color.*;

public class ImageTest {

    @Test 
    public void PixelColorIsCorrectAtCreation() {
        Image img = new Image(2, 3) ;
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                assertEquals(GrayColor.WHITE, img.getPixel(i, j).getColor()) ;
            }
        }
    }

    @Test 
    public void testGetWidh() {
        Image img = new Image(2, 3) ;
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                assertEquals(GrayColor.WHITE, img.getPixel(i, j).getColor()) ;
            }
        }
        assertEquals(2, img.getWidth()) ;
    }

    @Test 
    public void testGetHeight() {
        Image img = new Image(2, 3) ;
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                assertEquals(GrayColor.WHITE, img.getPixel(i, j).getColor()) ;
            }
        }
        assertEquals(2, img.getWidth()) ;
        assertEquals(3, img.getHeight()) ;
    }


    @Test 
    public void pixelColorChanged() {
        Image img = new Image(2, 3) ;
        img.changeColorPixel(1, 2, new GrayColor(100)) ;
        assertEquals(new GrayColor(100), img.getPixel(1, 2).getColor()) ;
    }

    @Test (expected = UnknownPixelException.class)
    public void UnknownPixelExceptionThrown() {
        Image img = new Image(2, 3) ;
        img.changeColorPixel(4, 2, new GrayColor(100)) ;
    }  

    @Test 
    public void rectangleFilled() {
        Image img = new Image(2, 3) ;
        img.getPixel(1, 2).setColor(new GrayColor(100)) ;
        assertEquals(new GrayColor(100), img.getPixel(1, 2).getColor()) ;
        img.fillRectangle(0, 1, 1, 2, new GrayColor(200));
        for (int i = 0; i < 1; i++) {
            for (int j = 1; j < 3; j++) {
                assertEquals(new GrayColor(200), img.getPixel(i, j).getColor()) ;
            }
        }
    }

    
}
