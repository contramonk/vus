package data;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
	public Vu addVu(String username, String title, Date startDate) {
		String vuQ = "Select vu from Vu vu where vu.user.username = ?1";
		List<Vu> vus = em.createQuery(vuQ, Vu.class).setParameter(1, username).getResultList();
		
		Vu vu = new Vu();
		vu.setTitle(title);
		vu.setStartDate(startDate);
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
