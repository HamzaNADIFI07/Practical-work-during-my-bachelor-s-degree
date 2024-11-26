package goosegame;
import java.util.Random;

/**
 * A player in the "jeu de l’oie " game 
 */
public class Player {

    private static Random random = new Random( );
    /**current c e l l of the player*/
    protected Cell cell;
    /** name of the player*/
    protected String name;
    
    /**
     * @param name the name of thi s player
     */
    public Player (String name){
        this.name = name;
        this.cell = null ;
    }

    public String toString () {
        return this .name;
    
    }

    public Cell getCell () {
        return this.cell ;
    }
    public void setCell ( Cell newCell) {
        this.cell = newCell ;
    }
    private int oneDieThrow() {
        return Player.random. nextInt(6)+ 1;
    }
    public int twoDiceThrow() {
        int result = oneDieThrow() + oneDieThrow ( );
        return result ;
    }





}