package data;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entities.Vu;

public class VusDaoImpl implements VusDao{
private List<Integer> years = new ArrayList<>();
private List<Vu> vus = new ArrayList<>();
	
	
	@Override
	public int addYear(int year) {
		years.add(year);
		return year;

	}

	@Override
	public void removeYear(int year) {
		years.remove(year);

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
	public void removeVu(Vu vu) {
		vus.remove(vu);
	}

	@Override
	public Vu editVu(int id, int userId, String title, String post, Date startDate, Date endDate, Vu vu) {

		return vu;
	}

}
