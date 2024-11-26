public class LibraryMain {
    public static void main(String[] args ){
        Author author1 = new Author("JRR","Tolkien",1892);
        Book book1 = new Book("Le Seigneur des Anneaux",author1, 1954, 1600);        
        System.out.println(book1.toString());
        Book book2 = new Book("Bilbo le Hobbit", author1 , 1937);
        book2.setNbPages(408);
        System.out.println(book2.toString());
        Author author2 = new Author("Herbert","Frank",1920);
        Book book3 = new Book("Dune", author2 , 1965);
        System.out.println(book3.toString());
        Library library1= new Library();
        library1.addBook( book1);
        library1.addBook( book2);
        library1.addBook( book3);
        System.out.println(library1);
        
        
    }

}
