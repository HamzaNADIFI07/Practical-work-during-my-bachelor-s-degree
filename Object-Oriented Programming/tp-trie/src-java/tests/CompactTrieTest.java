import org.junit.jupiter.api.Test;

import trie.CompactTrie;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;

public class CompactTrieTest {
    private String word_1 = "banane";
    private String word_2 = "ban";
    private String word_3 = "tababann";
    private String word_4 = "";
   
    private CompactTrie compactTrie;

    @BeforeEach 
    public void init() {
        this.compactTrie = new CompactTrie();
    }

    @Test 
    public void testAdd() {
       this.compactTrie.add(word_1);
       assertTrue(this.compactTrie.contains(word_1));
    }

    @Test 
    public void testWordsAreInCompactTrie() {
       this.compactTrie.add(word_1);
       this.compactTrie.add(word_2);
       this.compactTrie.add(word_3);
 

       assertTrue(this.compactTrie.contains(word_1));
       assertTrue(this.compactTrie.contains(word_2));
       assertTrue(this.compactTrie.contains(word_3));
       assertFalse(this.compactTrie.contains(word_4));

    }
    @Test 
    public void testWordsNOTInCompactTrie() {
       assertFalse(this.compactTrie.contains(" "));
       assertFalse(this.compactTrie.contains(" taba bann nab"));
       assertFalse(this.compactTrie.contains("THE Oranges"));
    }
    public static junit.framework.Test suite() {
		return new junit.framework.JUnit4TestAdapter(CompactTrieTest.class);
	}
}
