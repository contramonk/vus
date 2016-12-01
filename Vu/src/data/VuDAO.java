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
	public Vu addPhoto(int vuId, String imgUrl);
	public Vu deletePhoto(int vuId, int  photoId);
	public Vu addPost (int vuId, String post);
	public Vu addAddress(int vuId, String address, String city, String state, int zip, String place);
	
}
