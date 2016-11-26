package data;

import java.util.Date;

import entities.Vu;

public interface VuDao {
	public void setTitle(Vu vu, String title);
	public void setStartDate(Vu vu, Date startDate); 
	public void setEndDate(Vu vu, Date endDate); 
	public void setPhoto(Vu vu, String imgUrl);

}
