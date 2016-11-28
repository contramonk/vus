package test;

import static org.junit.Assert.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import entities.Location;

public class LocationTest {
	private EntityManagerFactory emf;
    private EntityManager em;

    @Before
    public void setUp() throws Exception {
        emf = Persistence.createEntityManagerFactory("vubase");
        em = emf.createEntityManager();
    }

	@Test
	public void test() {
		Location l = em.find(Location.class, 1);
//		assertEquals(1, vu.getLocationId());
		assertEquals("2240 E Barry Dr", l.getAddress());
		assertEquals("VI", l.getState());
		assertEquals("K City", l.getCity());
		assertEquals("55543", l.getZip());
		assertEquals("Burger King", l.getPlace());
		assertEquals(1, l.getId());
	}

	@After
	public void tearDown() throws Exception {
		em.close();
		emf.close();

	}

}
