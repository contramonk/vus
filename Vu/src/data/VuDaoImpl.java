package data;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entities.Location;
import entities.Photo;
import entities.Vu;

//Added @Repository to DAO
@Repository
@Transactional
public class VuDaoImpl implements VuDAO {
	@PersistenceContext
	private EntityManager em;

	
	
	
	@Override
	public Vu setTitle(int vuID, String title) {
		Vu managedVu = em.find(Vu.class, vuID);
		managedVu.setTitle(title);  
		
		em.persist(managedVu);
		return managedVu; 
	}
	
	@Override	
	public Vu setStartDate(Vu vu, Date startDate){
		vu.setStartDate(startDate);
		
		return vu; 
	}
	@Override
	public Vu setEndDate(Vu vu, Date endDate){
		vu.setEndDate(endDate);
		
		return vu; 
	}
	
	
	@Override
	public Vu addPost (Vu vu, String post){
		vu.setPost(post);
		return vu; 
	
	}
	@Override
	public Photo addPhoto(Photo photo, String imgUrl, String caption) {
		photo.setUrl(imgUrl);
		photo.setCaption(caption);
		em.persist(photo);
		return null;
	}
	@Override
	public Location addAddress(Location location, String address) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Location addCity(Location location, String city) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Location addState(Location location, String state) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Location addZip(Location location, int zip) {
		// TODO Auto-generated method stub
		return null;
	}
	

	
	
	
}
