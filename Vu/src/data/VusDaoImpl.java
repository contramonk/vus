package data;

import java.util.Date;

import entities.Vu;

public class VusDaoImpl implements VusDao{

	@Override
	public int addYear(int year) {
		
		return year;

	}

	@Override
	public int removeYear(int year) {
		
		return 0;

	}

	@Override
	public int editYear(int year) {
		
		return year;
	}

	@Override
	public Vu addVu(int id, int userId, String title, String post, Date startDate, Date endDate) {
		Vu vu = new Vu();
		vu.setTitle(title);
		vu.setPost(post);
		vu.setStartDate(startDate);
		vu.setEndDate(endDate);
		return vu;
	}

	@Override
	public Vu removeVu(Vu vu) {

		return null;
	}

	@Override
	public Vu editVu(Vu vu) {

		return vu;
	}

}
