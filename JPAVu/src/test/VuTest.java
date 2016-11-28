package test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import entities.Vu;

import static org.junit.Assert.assertEquals;

public class VuTest {
	private EntityManagerFactory emf;
    private EntityManager em;

    @Before
    public void setUp() throws Exception {
        emf = Persistence.createEntityManagerFactory("vubase");
        em = emf.createEntityManager();
    }

	@Test
	public void test() {
		Vu vu = em.find(Vu.class, 1);
//		assertEquals(1, vu.getLocationId());
		assertEquals("Chris", vu.getUser().getFirstName());
		assertEquals(1, vu.getLocation().getId());
		assertEquals("Virgin Islands", vu.getTitle());
		assertEquals("it was the best!!", vu.getPost());
		
	}

	@After
	public void tearDown() throws Exception {
		em.close();
		emf.close();
	}

}
