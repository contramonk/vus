package data;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entities.Location;
import entities.Photo;
import entities.User;
import entities.Vu;

//Added @Repository to DAO
//@Repository
@Transactional
public class VuDaoImpl implements VuDAO {
	
	
	public String test() {
		return "TEST WORKED SUCCESSFULLY";
	}
	
	public VuDaoImpl () {
		System.out.println("LOADED DAO");
	}
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Vu getVu(int vuId){
		String vuQ = "SELECT vu from Vu vu where vu.id = ?1";
		Vu vu = em.createQuery(vuQ, Vu.class)
		.setParameter(1, vuId)
		.getSingleResult();
		return vu;
	}

	@Override
	public Vu addTitle(int vuId, String title) {
		Vu managedVu = em.find(Vu.class, vuId);
		managedVu.setTitle(title);  
		
		em.persist(managedVu);
		return managedVu; 
	}
	
	@Override	
	public Vu addStartDate(int vuId, Date startDate){
		Vu managedVu = em.find(Vu.class, vuId);
		managedVu.setStartDate(startDate);
		em.persist(managedVu);
		return managedVu; 
	}
	@Override
	public Vu addEndDate(int vuId, Date endDate){
		Vu managedVu = em.find(Vu.class, vuId);
		managedVu.setEndDate(endDate);;  
		em.persist(managedVu);
		return managedVu; 
	}
	
	
	@Override
	public Vu addPost (int vuId, String post){
		Vu managedVu = em.find(Vu.class, vuId);
		managedVu.setPost(post);
		em.persist(managedVu);
		return managedVu; 
	
	}
	@Override
	public Vu addPhoto(int vuId, Photo photo, String imgUrl, String caption){
		Vu managedVu = em.find(Vu.class, vuId);
		photo.setUrl(imgUrl);
		photo.setCaption(caption);
		em.persist(photo);
		return managedVu;
	}
	@Override
	public Location addAddress(int vuId, String address) {
		Location managedLoc = em.find(Location.class, vuId);
		managedLoc.setAddress(address);;
		em.persist(managedLoc);
		return managedLoc; 
	}
	@Override
	public Location addCity(int vuId, String city) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Location addState(int vuId, String state) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Location addZip(int vuId, int zip) {
		// TODO Auto-generated method stub
		return null;
	}
	

	
	
	
}
