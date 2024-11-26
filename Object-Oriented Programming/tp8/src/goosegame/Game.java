package goosegame;
import java.util.ArrayList;
import java.util.List;

import goosegame.board.Board;

public class Game {
    private List<Player> players;
    private Board board;
    private int indiceOfPlayer;

    public Game(Board board){
        this.board = board;
        this.players = new ArrayList<Player>();
    }

    public void addPlayer(Player p){
        this.players.add(p);
    }
    /**
     * 
     * @param indice index of last player 
     * @return the next player in the list of players
     */
    public Player nextPlayer(){
        Player nxt=this.players.get(this.indiceOfPlayer+1);
        indiceOfPlayer++;
        return nxt;
        
    }

    public void play(){
        boolean win = false;
        Player player = this.nextPlayer();
        while(win){
            player = this.nextPlayer();
            Cell cellDepart = player.getCell();
            

            if(cellDepart.canPlay()){
                int dice = player.twoDiceThrow();
                System.out.println("Le joueur " + player + " lance les dés : " + dice);
                int indiceArrive= cellDepart.getIndice()+dice;
                Cell CellArrive = new Cell(indiceArrive);
                if (this.getCell()[this.getnbOfCells()].getPlayer() != null) {
                    win=true;
                }
            }
            else{
                System.out.println(String.format("%s is in %s, %s can not play", player, player.getCell(), player));
            }
        }

        System.out.println(String.format("%s has won the game", player));
    }
}
