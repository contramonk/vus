package data;

import java.util.Date;

import entities.Location;
import entities.Photo;
import entities.Vu;


public interface VuDAO {
	public Vu getVu(int vuId);
	public Vu addTitle(int vuId, String title);
	public Vu addStartDate(int vuId, Date startDate); 
	public Vu addEndDate(int vuId, Date endDate); 
	public Vu addPhoto(int vuId, Photo photo, String imgUrl, String caption);
	public Vu addPost (int vuId, String post);
	public Vu addAddress(int vuId, String address);
	public Vu addCity(int vuId, String city);
	public Vu addState(int vuId, String state);
	public Vu addZip(int vuId, int zip);
	public Vu addPlace(int vuId, String Place);
	
}
