package data;

import java.util.Date;

import entities.Vu;


public interface VuDAO {
	public Vu setTitle(Vu vu, String title);
	public Vu setStartDate(Vu vu, Date startDate); 
	public Vu setEndDate(Vu vu, Date endDate); 
	public Photo setPhoto(Photo photo, String imgUrl);
	public Vu addPost (Vu vu, String post);
	public Address addAddress(Address Address, String address);
	public Address addCity(Address address, String city);
	public Address addState(Address address, String state);
	public Address addZip(Address address, int zip);

}
