public class RectangleMain{
    public static void main(String[] args){
        Rectangle rect1 = new Rectangle(5.0, 5.0);
        Rectangle rect2 = new Rectangle(2.0, 6.0);
        System.out.println(rect1.toString());
        System.out.println(rect2.toString());
        System.out.println(rect1.aire());
        System.out.println(rect1.perimetre());
        System.out.println(rect1.siCarre());
        System.out.println(rect2.siCarre());
        System.out.println(rect1.egaliteRectangle(rect2));
    }
}


