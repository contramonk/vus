package data;

import java.util.Date;

import entities.Location;
import entities.Photo;
import entities.Vu;


public interface VuDAO {
	public Vu setTitle(int vuID, String title);
	public Vu setStartDate(Vu vu, Date startDate); 
	public Vu setEndDate(Vu vu, Date endDate); 
	public Photo addPhoto(Photo photo, String imgUrl, String caption);
	public Vu addPost (Vu vu, String post);
	public Location addAddress(Location location, String address);
	public Location addCity(Location location, String city);
	public Location addState(Location location, String state);
	public Location addZip(Location location, int zip);

}
