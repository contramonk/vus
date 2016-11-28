package test;

import static org.junit.Assert.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import entities.Photo;

public class PhotoTest {
	private EntityManagerFactory emf;
    private EntityManager em;

	 @Before
	    public void setUp() throws Exception {
	        emf = Persistence.createEntityManagerFactory("vubase");
	        em = emf.createEntityManager();
	    }

		@Test
		public void test() {
			Photo photo = em.find(Photo.class, 1);
			assertEquals(1, photo.getId());
			assertEquals("view from apartment", photo.getCaption());
			assertEquals("http://vevesworld.com/data_images/top_cityes/road-town/road-town-01.jpg", photo.getUrl());
			
		}

		@After
		public void tearDown() throws Exception {
			em.close();
			emf.close();
		}

}
