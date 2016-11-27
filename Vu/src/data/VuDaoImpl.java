package data;

import java.util.Date;

import entities.Vu;

public class VuDaoImpl implements VuDao {

	@Override
	public Vu setTitle(Vu vu, String title) {
		vu.setTitle(title);  
		
		return vu; 
	}
		
	public Vu setStartDate(Vu vu, Date startDate){
		vu.setStartDate(startDate);
		
		return vu; 
	}
	
	public Vu setEndDate(Vu vu, Date endDate){
		vu.setEndDate(endDate);
		
		return vu; 
	}
	
	public Photo setPhoto(Vu vu, String imgUrl){
	
		//not sure how to access multiple photos from the data base
		
		return vu; 
	}
	
	public Vu addPost (Vu vu, String post){
		vu.setPost(post);
		return vu; 
	}
	
	public Address addAddress(Address Address, String address){
		Address.setAddress; 
		
		return Address; 
	}
	
	public Address addCity(Address address, String city){
		Address.setCity; 
		
		return address; 
	}
	
	public Address addState(Address address, String state){
		Address.setState; 
		
		return address; 
	}
	
	public Address addZip(Address address, int zip){
		Address.setZip; 
		
		return address; 
	}
	
	
}
