package goosegame.board;

import goosegame.*;

public class ClassicalBoard extends Board{
    public ClassicalBoard(){
        super(63);
    }

    public void initBoard(){
        this.cells[0] = new Cell(0);
        for (int i = 1; i <= this.nbOfCells; i++){
        this.cells[i] = new Cell(i);
        }


    this.cells[31] = new Cell(31);
    this.cells[52] = new Cell(52);

    this.cells[19] = new Cell(2);

    this.cells[6] = new Cell(12);
    this.cells[42] = new Cell(30);
    this.cells[58] = new Cell(1);

    this.cells[9] = new Cell(9);
    this.cells[18] = new Cell(18);
    this.cells[27] = new Cell(27);
    this.cells[36] = new Cell(36);
    this.cells[45] = new Cell(45);
    this.cells[54] = new Cell(54);
    }
}