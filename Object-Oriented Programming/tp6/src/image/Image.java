package image ;


import image.color.* ;

public class Image implements ImageInterface {
    private Pixel[][] p;
    /**
    creates a new object in the class Image taking in parameter the height and the width of the image a setting the color of each pixel to white
    @param x width of the image
    @param y height of the image
     */
    public Image(int x, int y) {
        this.p = new Pixel[x][y] ;
        for (int i = 0; i < x; i++) {
            for (int j = 0; j < y; j++) {
                this.p[i][j] = new Pixel(GrayColor.WHITE) ;
            }
        }
    }
    /**
    returns the width of the image
    @return int width
     */
    public int getWidth() {
        return this.p.length ;
    }
    /**
    returns the height of the image
    @return int height
     */
    public int getHeight() {
        return this.p[0].length ;
    }
    /**
    returns the pixel of the coordinates (x,y)
    @param x coordinate on the x axis of the pixel
    @param y coordinate on the y axis of the pixel
    */
    public Pixel getPixel(int x, int y) {
        return this.p[x][y] ;
    }
    /**
    changes the color of the pixel of coordinates (x, y)
    @param x coordinate on the x axis of the pixel
    @param y coordinate on the y axis of the pixel
    @param color new level of gray of the pixel
    */
    public void changeColorPixel(int x, int y, GrayColor color) throws UnknownPixelException {
        if (x < this.getWidth() && y < this.getHeight()){
            this.p[x][y].setColor(color) ;
        }
        else {
            throw new UnknownPixelException("this pixel doesn't exist") ;
        }
    }

    /**
    fills a rectangle of color within the image
    @param x coordinate on the x axis of the first pixel
    @param y coordinate on the y axis of the first pixel
    @param width width of the chosen rectangle
    @param height height of the chosen rectangle
    @param color level of gray which will fill the rectangle
    */
    public void fillRectangle(int x, int y, int width, int height, GrayColor color) {
        for (int i = x; i < (x + width); i++) {
            for (int j = y; j < (y + height); j++) {
                this.changeColorPixel(i, j, color) ;
            }
        }
    }

    /**
    returns a new image with every pixel's graylevel changed to 255 - this pixel's graylevel
    @return image
    */
    public Image negative() {
        Image res = new Image(this.getWidth(), this.getHeight()) ;
        for (int i = 0; i <= res.getWidth() - 1; i++){
            for (int j = 0; j <= res.getHeight() - 1; j++){
                GrayColor color = new GrayColor(255 - this.getPixel(i, j).getColor().getGraylevel()) ;
                res.changeColorPixel(i, j, color);
            }
        }
        return res ;
    }


    /**
    creates a new image from our image by extracting its edges
    @param threshold threshold at which an edge is detected
    @return Image
    */
    public Image edgeExtraction(int threshold) {
        Image res = new Image(this.getWidth(), this.getHeight()) ;
        for (int x = 0; x < (this.getWidth()-1); x++) {
            for (int y = 0; y < (this.getHeight()-1); y++) {
                if (p[x][y].colorLevelDifference(p[x+1][y]) > threshold || p[x][y].colorLevelDifference(p[x][y+1]) > threshold) {
                    res.changeColorPixel(x, y, GrayColor.BLACK) ;
                }
            }
        }
        return res ;
    }

    /**
    decreases the number of gray levels of the image to the number given in paramete
    @param n number of gray levels
    @return image
    */
    public Image decreaseNbGrayLevels(int n) {
        Image res = new Image(this.getWidth(), this.getHeight()) ;
        int r = 255/n ;
        for (int x = 0; x < this.getWidth(); x++) {
            for (int y = 0; y < this.getHeight(); y++) {
                GrayColor c = new GrayColor((this.p[x][y].getColor().getGraylevel()/r) * r) ;
                res.changeColorPixel(x, y, c) ;
            }
        }
        return res ;
    }


}
