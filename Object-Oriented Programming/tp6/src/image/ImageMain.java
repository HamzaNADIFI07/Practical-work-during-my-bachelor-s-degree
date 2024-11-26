package image;

import image.*;
import image.util.*;
import image.color.*;

public class ImageMain{
    public static void main(String args[]){
        // Image I = new Image(200, 150);
        ImageDisplayer displayer = new ImageDisplayer();

        Image I = ImageLoader.loadPGM("/images/chat.pgm");

        Image negative = I.negative();

        displayer.display(I, "positive", 100, 500);
        displayer.display(negative, "negative", I.getWidth() + 150, 500);

        int i = Integer.parseInt(args[1]);
        Image edgeExtracted;
        try{
            edgeExtracted = I.edgeExtraction(i);
        }
        catch(ArrayIndexOutOfBoundsException e){
            edgeExtracted = I.edgeExtraction(128);
        }

        displayer.display(edgeExtracted, "edgeExtracted", 150, I.getHeight() + 550);

        int j = Integer.parseInt(args[2]);
        Image decreasedGrayLevel = I.decreaseNbGrayLevels(j);

        displayer.display(decreasedGrayLevel, "decreasedGrayLevel", 150 + I.getWidth(), 550 + I.getHeight());
        
    }

    
}
