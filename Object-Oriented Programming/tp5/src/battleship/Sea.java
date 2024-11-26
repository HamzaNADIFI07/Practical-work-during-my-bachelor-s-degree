package battleship;

import battleship.util.Position;
import battleship.util.Ship;


public class Sea {
    private int width;
    private int height;
    private int lifePoints;
    private Cell [][] cells;
    //Creation du constructeur
    public Sea(int width, int height){
        this.width = width;
        this.height = height;
        cells = new Cell[width][height];
        int x;
        int y;
        for(x=0; x<width; x++)
            for(y=0; y<height; y++)
                cells[x][y] = new Cell();
    }
  
    public Answer shoot(Position p) throws InvalidShootException {
        int x = p.getX();
        int y = p.getY();
        if (x < 0 || x >= width || y < 0 || y >= height) {
            throw new InvalidShootException("Invalid shoot position. Please choose a different location.");
        }

        Cell cell = cells[x][y];
        Answer aimed_posi = cell.shot();

        if (aimed_posi == Answer.hit || aimed_posi == Answer.sunk) {
            lifePoints--;
        }

        return aimed_posi;
    }
    public void display(boolean defender) {
        System.out.print("  ");
        char columnChar = 'A';

        for (int col = 0; col < width; col++) {
            System.out.printf("%2s ", columnChar++);
        }

        System.out.println();

        for (int row = 0; row < height; row++) {
            System.out.printf("%2d ", row);

            for (int col = 0; col < width; col++) {
                char cellChar = cells[row][col].toCharacter(defender);
                System.out.print(cellChar + "  ");
            }

            System.out.println();
        }
    }
    public void addShipHorizontally(Ship ship, Position position) throws IllegalStateException {
        int shipLength = ship.getLifePoints();
        int x = position.getX();
        int y = position.getY();

        if (x + shipLength > width) {
            throw new IllegalStateException("Ship cannot be placed horizontally at this position.");
        }


        for (int i = 0; i < shipLength; i++) {
            cells[y][x + i].setShip(ship);
        }

        lifePoints += shipLength;
    }


    public void addShipVertically(Ship shipToPlace, Position position) throws IllegalStateException {
        int x = position.getX();
        int y = position.getY();

        for (int i = 0; i < shipToPlace.getLifePoints(); i++) {
            cells[y][x].setShip(shipToPlace);
            y++; 
        }

        lifePoints += shipToPlace.getLifePoints();
    }

    public boolean isEmpty(){
        return lifePoints == 0;
    }

}