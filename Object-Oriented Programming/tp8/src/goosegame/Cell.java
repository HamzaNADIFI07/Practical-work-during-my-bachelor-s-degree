package goosegame;

public class Cell {

    private Player playerInCell;
    private int indice;
    /**
     * 
     * @param indice indice of the cell
     */
    public Cell(int indice){
        this.indice=indice;
    }
    /**
     * 
     * @return Player on the cell
     */
    public Player getPlayerInCell() {
        return this.playerInCell;
    }
    /**
     * 
     * @return indice of the cell
     */
    public int getIndice() {
        return this.indice;
    }
    /**
     * 
     * @param playerInCell the new player
     */
    public void setPlayerInCell(Player playerInCell) {
        this.playerInCell = playerInCell;
    }
    /**
     * 
     */
    public String toString(){
        return "the index of cell is :"+ this.getIndice();
    }
    /**
     * remove the player on the cells
     */
    public void removePlayer(){
        this.playerInCell=null;
    }

    /**
     * if the player on the cell can play
     * @return
     */
    public boolean canPlay() {
        return true;
    }
    


}
