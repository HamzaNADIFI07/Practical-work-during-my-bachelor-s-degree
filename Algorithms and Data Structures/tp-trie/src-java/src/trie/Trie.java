package trie ;

import java.util.ArrayList;
import java.util.HashMap;

public class Trie {

   private HashMap<Character,Trie> arbre;
   
   private static int number = 0;
   /**
    * Create an empty Trie .
    * An empty Trie has an empty HashMap and dont have any word yet 
    */
   public Trie () {
      this.arbre= new HashMap<>();
   }
   /**
    * add the word passed in parameter 
    * @param word the word to add to the trie
    */

   public void add (String word) {
      if (word.isEmpty()) {
         return;
      }
      char carac = word.charAt(0);
      if (word.length()>0 && ! this.arbre.keySet().contains(carac)) {
         Trie tmp = new Trie();
         this.arbre.put(carac,tmp);
         this.arbre.get(carac).add(word.substring(1));
      }else if(word.length()>0 && this.arbre.containsKey(carac)){
         this.arbre.get(carac).add(word.substring(1));
      }
   }
   /**
    * verify if the word passed in parameter is in the Trie 
    * @param word the word to verify
    * @return true if the word is in the trie else false
    */

   public boolean contains (String word) {
      if(word.length() == 0) {
         return true;
      }
      char firstChar = word.charAt(0);
      Trie trie = arbre.get(firstChar);
      if(trie == null){
         return false;
      }
      else{
         return trie.contains(word.substring(1));
      }
   }
   /**
    * print the trie for displaying it with graphviz "dot"
    */

   public void print () {
      System.out.println("digraph G {");
      this.printTrie();
      System.out.println("}");

   }
   private void printTrie() {
      int parent_num = Trie.number;
      Trie.number++;

      ArrayList<Character> listchars = new ArrayList<>();
      for (Character charKey : this.arbre.keySet()) {
         listchars.add(charKey);
         listchars.sort(null);
      }

      for (Character charKey :listchars) {
         // if current node is a word
         if (this.arbre.get(charKey).arbre.isEmpty()){
            // it's color is blue
            System.out.println(Trie.number + " [style = filled, color = blue];");
         } else { //It's color is pink 
               System.out.println(Trie.number + "[style = filled, color = pink];");
         }
         System.out.println(parent_num + "->" + Trie.number + " " + " [label= \"" + charKey+"\"];");
         // Print this node's children
         this.arbre.get(charKey).printTrie();

      }
   }


}
