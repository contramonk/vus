package data;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.transaction.annotation.Transactional;

import entities.Location;
import entities.User;
import entities.Vu;

//@Repository
@Transactional
public class VusDaoImpl implements VusDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Vu> getVus(String username) {
		String vuQ = "SELECT vu from Vu vu where vu.user.username = ?1";
		 List<Vu> vus =em.createQuery(vuQ, Vu.class).setParameter(1, username).getResultList();
		System.out.println("*********" + vus + "*********");
		return vus;
	}
	
	@Override
	public User getUserByUsername(String username){
		return em.find(User.class, username);
	}
	
	@Override
	public Vu addVu(String username, String title, Date startDate) {
		System.out.println("username: " + username);
		String vuQ = "Select u from User u where u.username = ?1";
		System.out.println(em.find(User.class, "guest").getUsername());
		User user = em.createQuery(vuQ, User.class).setParameter(1, username).getSingleResult();
//		username = em.find(String.class, username);
		System.out.println("got user back");
		Vu vu = new Vu();
		
//		vu.getUser().setUsername(username);
		vu.setTitle(title);
		vu.setStartDate(startDate);
		vu.setUser(user);
		user.addVu(vu);
		em.persist(vu);
		em.persist(user);
		System.out.println(vu);
		return vu;
	}

//	@Override
//	public List<String> getVus(User user) {
//		String sql = "SELECT Vu.title from Vu where Vu.getUser.getUsername = 'guest'";
//		List<String> titles = em.createQuery(sql, String.class).getResultList();
//		return titles;
//	}
	// @Override
	// public void removeVu(Vu vu) {
	// vus.remove(vu);
	// }
	//
	// @Override
	// public Vu editVu(int id, int userId, String title, String post, Date
	// startDate, Date endDate, Vu vu) {
	//
	// return vu;
	// }
	//
}
