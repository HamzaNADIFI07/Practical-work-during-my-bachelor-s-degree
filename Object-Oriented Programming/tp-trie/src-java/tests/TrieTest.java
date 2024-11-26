import trie.Trie;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;


public class TrieTest {
    private String word_1 = "banane";
    private String word_2 = "ban";
    private String word_3 = "tababann";
    private String word_4 = "";

    private Trie trie;

    @BeforeEach
    public void init() {
        this.trie = new Trie();
    }

    @Test 
    public void testAdd() {
        this.trie.add(word1);
        assertTrue(this.trie.contains(word1));
    }

    @Test 
    public void testWordsAreInTrie() {
        this.trie.add(word_1);
        this.trie.add(word_2);
        this.trie.add(word_3);
        this.trie.add(word_4);

        assertTrue(this.trie.contains(word_1));
        assertTrue(this.trie.contains(word_2));
        assertTrue(this.trie.contains(word_3));
        assertTrue(this.trie.contains(word_4));
    }

    @Test 
    public void testWordsNOTInTrie() {
        assertFalse(this.trie.contains("pommes"));
        assertFalse(this.trie.contains("   "));
        assertFalse(this.trie.contains("des pommes"));
    }

    public static junit.framework.Test suite() {
		return new junit.framework.JUnit4TestAdapter(TrieTest.class);
	}

}
