import goosegame.Cell;
import goosegame.Game;
import goosegame.Player;
import goosegame.board.ClassicalBoard;

public class GameMain {
    public static void main(String args[]){
    ClassicalBoard  board = new ClassicalBoard();
		Game game = new Game(board);

        Cell start = board.getCell(0);
		Player p1 = new Player("bilbo");
		Player p2 = new Player("frodo");
		Player p3 = new Player("sam");

		game.addPlayer(p1);
		game.addPlayer(p2);
		game.addPlayer(p3);

		game.play();
	}
}
