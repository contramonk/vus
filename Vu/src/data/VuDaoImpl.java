package data;

import java.util.Date;

import entities.Vu;

public class VuDaoImpl implements VuDao {

	@Override
	public void setTitle(Vu vu, String title) {
		vu.setTitle(title);  
		
	}
		
	public Date setStartDate(Vu vu, Date startDate){
		vu.setStartDate(startDate);
		return startDate;
	}
	
	public Date setEndDate(Vu vu, Date endDate){
		vu.setEndDate(endDate);
	return endDate;
	}
	
	public String setPhoto(Vu vu, String imgUrl){
		
		return 
	}
	
	
	
	
	
}
