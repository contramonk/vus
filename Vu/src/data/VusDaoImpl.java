package data;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import entities.Vu;

@Repository
public class VusDaoImpl implements VusDAO{
private List<Integer> years = new ArrayList<>();
private List<Vu> vus = new ArrayList<>();
	
	@Override
	public List<Vu> addVu(int id, int userId, String title, String post, Date startDate, Date endDate) {
		Vu vu = new Vu();
		vu.setTitle(title);
		vu.setPost(post);
		vu.setStartDate(startDate);
		vu.setEndDate(endDate);
		vus.add(vu);
		System.out.println(vu);
		System.out.println(vus);
		return vus;
	}

//	@Override
//	public void removeVu(Vu vu) {
//		vus.remove(vu);
//	}
//
//	@Override
//	public Vu editVu(int id, int userId, String title, String post, Date startDate, Date endDate, Vu vu) {
//
//		return vu;
//	}
//
}
