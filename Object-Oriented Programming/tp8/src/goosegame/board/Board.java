package goosegame.board;

import goosegame.*;

public abstract class Board{
    protected final int nbOfCells;
    protected Cell[] cells;

    /**
    initialise the cells of the board
     */
    protected abstract void initBoard();

    public Board(int nbOfCells){
        this.nbOfCells = nbOfCells;
        this.cells = new Cell[nbOfCells + 1];
        this.initBoard();
    }

    public int getNbOfCells(){
        return this.nbOfCells;
    }

    /**
    returns the cell at the given index
    @param index the index value
    @return the cell at the given index
     */
    public Cell getCell(int index){
        return this.cells[index];
    }
}
