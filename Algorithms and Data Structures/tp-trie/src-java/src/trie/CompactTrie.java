package trie;

import java.util.HashMap;
import java.util.Iterator;

/**
 * An object representing a compact retrieval data structure
 */
public class CompactTrie {

   private static int number = 0;

   private HashMap<String, CompactTrie> arbre;

   private boolean is_word;


   /**
    * Creates a new instance of CompactTrie
    */
   public CompactTrie() {
      
      this.arbre = new HashMap<>();
      this.is_word = false;
   }

   /**
    * Adds a new word to the retrieval
    * 
    * @param word the word to add
    */
   public void add(String word) {
      if (word.length() == 0) {
         return;
      } else {
         if (this.arbre.size() > 0) {
            /* True if the retrieval has no sub-words of the given word */
            boolean noSub = true;
            /* Iterates over the corresponding sub-words to the retrieval's links */
            Iterator<String> subKeys = this.arbre.keySet().iterator();
            boolean isShort = false;
            /* The current sub-word */
            String subWord = null;
            /* Prefix , empty string by default */
            String prefix = "";
            /* True if the given word has a common prefix with the inputted sub-word */
            boolean commonPrefix = false;

            while (subKeys.hasNext() && !isShort && !commonPrefix) {
               /* The current sub-word */
               subWord = subKeys.next();
               if (word.length() > subWord.length()) { // the input word is longer than the sub-word
                  if (word.contains(subWord)) {
                     noSub = false; // sub-words exists for the inputted word
                  }

                  /* Catch the suffix of the word and add it to the children of this retrieval */
                  this.arbre.get(subWord).add(word.substring(word.indexOf(subWord)));

               } else if (word.length() < subWord.length()) { // else if the word is smaller than current sub-word
                  if (subWord.contains(word)) { // check that the inputted word is a sub-word of the current sub-word
                     /* Th word is smaller than the subs-words */
                     isShort = true;
                  }
               } else { // the word and the current sub-word have the same length
                  boolean endPrefix = false;
                  int i = 0;
                  while (i < word.length() && !endPrefix) {
                     if (word.charAt(i) != subWord.charAt(i)) { // If they have the same character
                        prefix += word.charAt(i); // We add this character to the prefix
                     } else {
                        endPrefix = true; // we're in the end of the prefix
                     }
                     i++;
                  }
                  if (prefix.length() != 0) { // If they have the same prefix
                     commonPrefix = true;
                  }
               }
            }

            if (isShort) { // If the words is shorter than the sub-words
               String wordSuffix = subWord.substring(word.length());
               // Get the suffix of the sub-word
               this.arbre.put(word, new CompactTrie());
               // Add the suffix to the node of the inputted word
               this.arbre.get(word).add(wordSuffix);
               // Add the nodes of the previous sub-word to the new node that contains the
               // suffix of the sub-word
               this.arbre.get(word).arbre.put(wordSuffix, this.arbre.get(subWord));
               // Remove the nodes of the sub-word from the retrieval
               this.arbre.remove(subWord);
               // New word initiated and the node containing the suffix o fthe previous
               // sub-word has a word
               this.is_word = true;
               this.arbre.get(word).is_word = true;

            } else if (commonPrefix) {
               /* Word suffix of the node we are trying to pop */
               String suffixSubWord = subWord.substring(prefix.length());

               /** Word suffix */
               String suffixWord = word.substring(prefix.length());

               /*
                * The new node that contains the prefix and the children of the node of the
                * sub-words
                */
               this.arbre.put(prefix, this.arbre.get(subWord));
               /* Remove the node of the current sub-word */
               this.arbre.remove(subWord);
               /* Add to the new node the suffix (new node of the suffix of the sub-word) */
               this.arbre.get(prefix).add(suffixSubWord);
               /* Add to the new node the suffic (new node of the suffix of the word) */
               this.arbre.get(prefix).add(suffixWord);
            }

            else if (noSub) { // If word has no sub that belongs to the retrieval
               // Add it
               this.arbre.put(word, new CompactTrie());
               this.arbre.get(word).is_word = true;
            }

            else { // It has no nodes
               // Add the word to this node
               this.arbre.put(word, new CompactTrie());
               this.arbre.get(word).is_word = true;
            }
         }
      }
   }

   /**
    * Checks if the retrieval contains the given word
    * 
    * @param word the word to check
    * @return true if this compact retrieval contains the given word, false
    *         otherwise
    */
   public boolean contains(String word) {
      if (word.length() == 0) {
         return this.is_word;
      }
      if (this.arbre.containsKey(word)) { // If the inputted word is is connected to a link of this retrieval
         return this.arbre.get(word).contains(word.substring(word.length()));
      }
      // Otherwise we check if the word has a sub-word which is contained in this
      // retrieval
      for (String subWord : this.arbre.keySet()) {
         if (word.length() > subWord.length()) {
            if (word.contains(subWord)) {
               // Check that the suffix of the word is contained in the sub-word
               return this.arbre.get(subWord).contains(word.substring(subWord.length()));
            }
         }
      }
      return false;
   }

   /**
    * print this troe to a dot representation
    */
   public void print() {
      System.out.println("digraph G {");
      this.printTrie();
      System.out.println("}");
   }

   /**
    * print the retrieval and it's children
    */
   private void printTrie() {
      // Get the current node's number
      int parent_num = CompactTrie.number;
      // Increment the current node's number
      CompactTrie.number++;
      for (String stringKey : this.arbre.keySet()) {
         // if current node is a word
         if (this.arbre.get(stringKey).is_word) { // check if the current node is a word
            // it's color is blue
            System.out.println(CompactTrie.number + " [style = filled, color = blue];");
         } else { // It's color is pink
            System.out.println(CompactTrie.number + "[style = filled, color = pink];");
         }
         System.out.println(parent_num + "->" + CompactTrie.number + " " + " [label= \"" + stringKey + "\"];");
         // Print this node's children
         this.arbre.get(stringKey).printTrie();

      }
   }

   public static junit.framework.Test suite() {
		return new junit.framework.JUnit4TestAdapter(TrieTest.class);
	}

}


