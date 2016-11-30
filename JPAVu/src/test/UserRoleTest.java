package test;

import static org.junit.Assert.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import entities.User;

public class UserRoleTest {
	private EntityManagerFactory emf;
    private EntityManager em;

	@Before
	public void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("vubase");
        em = emf.createEntityManager();
	}

	@Test
	public void test() {
		User u = em.find(User.class, "admin");
		assertEquals("ROLE_USER", u.getUserRoles().get(1).getRole());
	}
	
	@After
	public void tearDown() throws Exception {
		em.close();
		emf.close();
	}


}
