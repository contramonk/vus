package data;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entities.Vu;

public class VusDaoImpl implements VusDao{
List<Integer> years = new ArrayList<>();
List<Vu> vus = new ArrayList<>();
	
	
	@Override
	public int addYear(int year) {
		years.add(year);
		return year;

	}

	@Override
	public int removeYear(int year) {
		years.remove(year);
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
		vus.add(vu);
		
		return vu;
	}

	@Override
	public Vu removeVu(Vu vu) {
		vus.remove(vu);
		return null;
	}

	@Override
	public Vu editVu(int id, int userId, String title, String post, Date startDate, Date endDate, Vu vu) {

		return vu;
	}

}
