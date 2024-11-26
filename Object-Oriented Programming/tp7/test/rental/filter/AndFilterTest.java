package rental.filter;

import org.junit.*;

import rental.*;

public class AndFilterTest{

    @Test
    public void acceptTest(){
      BrandFilter f1 = new BrandFilter("brand1");
      MaxPriceFilter f2 = new MaxPriceFilter(150);
      AndFilter f = new AndFilter();

      f.addFilter(f1);
      f.addFilter(f2);

      Vehicle v1 = new Vehicle("brand1", "model1", 2015, 100);
      Vehicle v2 = new Vehicle("brand2", "model2", 2000, 200);
      Vehicle v3 = new Vehicle("brand1", "model2", 2000, 200);

      assertTrue(f.accept(v1));
      assertFalse(f.accept(v2));
      assertFalse(f.accept(v3));
    }
}
