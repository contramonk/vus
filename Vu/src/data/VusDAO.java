package data;

import java.util.Date;
import java.util.List;

import entities.User;
import entities.Vu;

public interface VusDAO {


	public List<Vu> addVu(int id, int userId, String title, String post, Date startDate, Date endDate);
	
	public List<String> getVus(User user);
//	public void removeVu(Vu vu);
//
//	public Vu editVu(int id, int userId, String title, String post, Date startDate, Date endDate, Vu vu);

}
