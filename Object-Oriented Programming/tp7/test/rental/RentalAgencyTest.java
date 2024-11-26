package rental;

import org.junit.*;
import static org.junit.Assert.*;

import org.junit.Test;
import rental.*;

public class RentalAgencyTest {
	private RentalAgency agence;
	private Client c;
	private Vehicle v;

	@BeforeEach
	public void initialise(){
		this.agence = new RentalAgency();
		Vehicle v1= new Vehicle("BMW", "série 5", 2023, 200);
        Vehicle v2= new Vehicle("Mercedes", "class a", 2020, 150);
        Vehicle v3= new Vehicle("peugeot", "308", 2023, 100);
		this.c = new Client("bob", 19);
		this.v = new Vehicle("Vroom", "Vroom", 2000, 100);
		this.agence.addVehicle(v1);
		this.agence.addVehicle(v2);
        this.agence.addVehicle(v3);
	}

	@Test 
	public void addVehicleTest(){
		Vehicle v1= new Vehicle("BMW", "série 5", 2023, 200);
		assertFalse(this.agence.getAllVehicles().contains(v1));
		this.agence.addVehicle(v1);
		assertTrue(this.agence.getAllVehicles().contains(v1));
	}

	@Test 
	public void removeVehicleTest() throws UnknownVehicleException {
		Vehicle v2= new Vehicle("Mercedes", "class a", 2020, 150);
		assertTrue(this.agence.getAllVehicles().contains(v2));
		this.agence.removeVehicle(v2);
		assertFalse(this.agence.getAllVehicles().contains(v2));
	}

	@Test
	public void twoClientObjectsWithSameNameCorrespondsToSameClient() throws IllegalStateException, UnknownVehicleException {
		RentalAgency agence1 = new RentalAgency();
		Vehicle v= new Vehicle("Mercedes", "class a", 2020, 150);
		agence1.addVehicle(v);
		Client client1 = new Client("bob", 25);
		assertEquals(100.0, agence1.rentVehicle(client1, v),0.0001);
		assertTrue(agence1.hasRentedAVehicle(client1));
		Client client2 = new Client("bob", 25);
		assertTrue(agence1.hasRentedAVehicle(client2));
	}

	@Test
	public void selectTest(){
		Vehicle v1= new Vehicle("BMW", "série 5", 2023, 200);
        Vehicle v2= new Vehicle("Mercedes", "class a", 2020, 150);
        Vehicle v3= new Vehicle("peugeot", "308", 2023, 100);
		this.agence.addVehicle(v1);
		this.agence.addVehicle(v2);
		this.agence.addVehicle(v3);

		BrandFilter f1 = new BrandFilter("BMW");
		MaxPriceFilter f2 = new MaxPriceFilter(150);

		for (Vehicle v : this.agence.select(f1)){
			assertEquals("BMW", v.getBrand());
		}
		for (Vehicle v : this.agence.select(f2)){
			assertTrue(150.0 > v.getDailyPrice());
		}
	}

	@Test 
	public void hasRentedAVehicleTest() throws IllegalStateException, UnknownVehicleException {
		assertFalse(this.agence.hasRentedAVehicle(this.c));
		this.agence.rentVehicle(this.c, this.v);
		assertTrue(this.agence.hasRentedAVehicle(this.c));
	}

	@Test 
	public void isRentedTest() throws IllegalStateException, UnknownVehicleException {
		assertFalse(this.agence.isRented(this.v));
		this.agence.rentVehicle(this.c, this.v);
		assertTrue(this.agence.isRented(this.v));
	}

	@Test 
	public void rentVehicleTest1() throws IllegalStateException, UnknownVehicleException {
		assertEquals(100.0, this.agence.rentVehicle(this.c, this.v), 0.01);
	}

	@Test (expected = UnknownVehicleException.class) 
	public void rentVehicleTest2() throws IllegalStateException, UnknownVehicleException {
		Vehicle v3= new Vehicle("peugeot", "308", 2023, 100);
		this.agence.rentVehicle(this.c, v);
	}

	@Test (expected = IllegalStateException.class)
	public void rentVehicleTest3() throws IllegalStateException, UnknownVehicleException {
		Client c = new Client("bob", 23);
		this.agence.rentVehicle(this.c, this.v);
		this.agence.rentVehicle(c, this.v);
	}

	@Test (expected = IllegalStateException.class)
	public void rentVehicleTest4() throws IllegalStateException, UnknownVehicleException {
		Vehicle v3= new Vehicle("peugeot", "308", 2023, 100);
		this.agence.rentVehicle(this.c, this.v);
		this.agence.rentVehicle(this.c, v);
	}

	@Test 
	public void returnVehicleTest() throws IllegalStateException, UnknownVehicleException {
		assertFalse(this.agence.hasRentedAVehicle(this.c));
		this.agence.rentVehicle(this.c, this.v);
		assertTrue(this.agence.hasRentedAVehicle(this.c));
		this.agence.returnVehicle(this.c);
		assertFalse(this.agence.hasRentedAVehicle(this.c));
	}

	@Test 
	public void allRentedVehicleTest() throws IllegalStateException, UnknownVehicleException {
		this.agence.rentVehicle(this.c, this.v);
		assertTrue(this.agence.allRentedVehicles().contains(this.v));
	}

}