package data;

import entities.Vu;

public class VuDaoImpl implements VuDao {

	@Override
	public String setTitle(Vu vu, String title) {
		vu.setTitle(title);  
		return vu.getTitle();
		
		
	}

}
