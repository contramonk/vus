package test;

import static org.junit.Assert.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import entities.User;

public class VusTest {

	private EntityManagerFactory emf;
    private EntityManager em;

    @Before
    public void setUp() throws Exception {
        emf = Persistence.createEntityManagerFactory("vubase");
        em = emf.createEntityManager();
    }

	@Test
	public void test() {
		User u = em.find(User.class, "guest");
//		assertEquals(1, vu.getLocationId());
		assertEquals("guest", u.getUsername());
		assertEquals("Jeff", u.getFirstName());
		assertEquals("Smitherson", u.getLastName());
		assertEquals("true", u.getEnabled());
	}

	@After
	public void tearDown() throws Exception {
		em.close();
		emf.close();

	}

}
