package data;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entities.User;
import entities.Vu;

@Repository
@Transactional
public class VusDaoImpl implements VusDAO {
	private List<Integer> years = new ArrayList<>();
	private List<Vu> vus = new ArrayList<>();
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Vu> getVus(String username) {
		String vuQ = "SELECT vu from Vu vu where Vu.username = ?1";
		vus.add(em.createQuery(vuQ, Vu.class).setParameter(1, username).getSingleResult());
		System.out.println("*********" + vus + "*********");
		return vus;
	}

	@Override
	public List<Vu> addVu(int id, int userId, String title, String post, Date startDate, Date endDate) {
		Vu vu = new Vu();
		vu.setTitle(title);
		vu.setPost(post);
		vu.setStartDate(startDate);
		vu.setEndDate(endDate);
		vus.add(vu);
		System.out.println(vu);
		System.out.println(vus);
		return vus;
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
