package data;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import entities.Photo;
import entities.Vu;

//Added @Repository to DAO
//@Repository
@Transactional
public class VuDaoImpl implements VuDAO {

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
		managedVu.setEndDate(endDate);  
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
	public Vu addPhoto(int vuId, String imgUrl){
		Vu managedVu=em.find(Vu.class, vuId);
		Photo photo=new Photo(); 
		photo.setUrl(imgUrl);
		managedVu.addPhoto(photo);
		em.persist(photo);
		em.persist(managedVu);
		return managedVu;
	}
	
	@Override
	public Vu deletePhoto(int vuId, int photoId){
		String photoQ = "SELECT p from Photo p where p.id = ?1";
		Photo photo= em.createQuery(photoQ, Photo.class) 
				.setParameter(1, photoId)
				.getSingleResult();		
		Vu managedVu=em.find(Vu.class, vuId);
		managedVu.removePhoto(photo);
		em.remove(photo);
		em.persist(managedVu);
		return managedVu;
	}
	@Override
	public Vu addAddress(int vuId, String address) {
		Vu managedVu = em.find(Vu.class, vuId);
		managedVu.getLocation().setAddress(address);
		em.persist(managedVu);
		return managedVu; 
	}
	@Override
	public  Vu addCity(int vuId, String city) {
		Vu managedVu = em.find(Vu.class, vuId);
		managedVu.getLocation().setCity(city);
		em.persist(managedVu);
		return managedVu; 
	}
	@Override
	public Vu addState(int vuId, String state) {
		Vu managedVu = em.find(Vu.class, vuId);
		managedVu.getLocation().setState(state);
		em.persist(managedVu);
		return managedVu; 
	}
	@Override
	public Vu addZip(int vuId, int zip) {
		Vu managedVu = em.find(Vu.class, vuId);
		managedVu.getLocation().setZip(zip);
		em.persist(managedVu);
		return managedVu; 
	}
	
	@Override
	public Vu addPlace(int vuId, String place) {
		Vu managedVu = em.find(Vu.class, vuId);
		managedVu.getLocation().setPlace(place);
		em.persist(managedVu);
		return managedVu; 
	}
	

	
	
	
}
