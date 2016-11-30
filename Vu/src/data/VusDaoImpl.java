package data;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.dialect.identity.SybaseAnywhereIdentityColumnSupport;
import org.springframework.transaction.annotation.Transactional;

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
	public Map<Integer, List<Vu>> getVusByYear(String username) {
		String vus = "Select v from Vu v where v.user.username = ?1 order by v.startDate";
		String years = "Select year(v.startDate) from Vu v where v.user.username = ?1 group by year(v.startDate)";
		String vuQ= "SELECT username, title, year(start_date) from Vu where username=?1";
//		String vuQ = "SELECT YEAR(?1) from Vu group by YEAR(?1)";
		List<Vu> vuList = em.createQuery(vus, Vu.class).setParameter(1, username).getResultList();
		List<Integer> yearList = em.createQuery(years, Integer.class).setParameter(1, username).getResultList();
		Map<Integer, List<Vu>> vuMap = new HashMap<Integer, List<Vu>>();
		List<Vu> list = new ArrayList<Vu>();
		for(int i = 0; i<yearList.size(); i++){
			for(int j=0; j< vuList.size(); j++){
				if(yearList.get(i)==(Integer.parseInt(vuList.get(j).getStartDate().toString().substring(0,4)))){
					list.add(vuList.get(j));
					System.out.println(yearList.get(i) + " " + (Integer.parseInt(vuList.get(j).getStartDate().toString().substring(0,4))));
				}
			}
			System.out.println("list size: " + list.size());
			vuMap.put(yearList.get(i), list);
			list = new ArrayList<Vu>();
		}
		
		System.out.println(vuMap.size());
		for(int i = 0; i< vuMap.size(); i++){
			System.out.println(yearList.get(i));
			for(Vu vu: vuMap.get(yearList.get(i))){
				System.out.println("test");
				System.out.println(vu);
			}
		}
		return vuMap;
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
		System.out.println("got user back");
		Vu vu = new Vu();
		
		vu.setTitle(title);
		vu.setStartDate(startDate);
		vu.setUser(user);
		user.addVu(vu);
		em.persist(vu);
		em.persist(user);
		System.out.println(vu);
		return vu;
	}


	 @Override
	 public User removeVu(int vuId) {
		 String q = "Select vu from Vu vu where vu.id = ?1";
		 Vu droppedVu = em.find(Vu.class, vuId);
		 User u = droppedVu.getUser();
		 u.removeVu(droppedVu);
		 em.remove(droppedVu);
		 em.persist(u);
		 
		 return u;
		 
	 }
	
	// @Override
	// public Vu editVu(int id, int userId, String title, String post, Date
	// startDate, Date endDate, Vu vu) {
	//
	// return vu;
	// }
	//
}
