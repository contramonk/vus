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
	public Location addCity(int vuId, String city);
	public Location addState(int vuId, String state);
	public Location addZip(int vuId, int zip);
	public String test();

}
