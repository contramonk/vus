package data;

import java.util.Date;

import org.springframework.stereotype.Repository;

import entities.Location;
import entities.Photo;
import entities.Vu;

//Added @Repository to DAO
@Repository
public class VuDaoImpl implements VuDAO {

	@Override
	public Vu setTitle(Vu vu, String title) {
		vu.setTitle(title);  
		
		return vu; 
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
	public Vu vu setPhoto(Vu vu, String imgUrl){

		return vu; 
	}
	@Override
	public Vu addPost (Vu vu, String post){
		vu.setPost(post);
		return vu; 
	}
	@Override
	public Address addAddress(Address add, String address){
		Address.setAddress; 
		
		return Address; 
	}
	@Override
	public Address addCity(Address address, String city){
		Address.setCity; 
		
		return address; 
	}
	@Override
	public Address addState(Address address, String state){
		Address.setState; 
		
		return address; 
	}
	@Override
	public Address addZip(Address address, int zip){
		Address.setZip; 
		
		return address; 
	}
	@Override
	public Photo setPhoto(Photo photo, String imgUrl) {
		// TODO Auto-generated method stub
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
