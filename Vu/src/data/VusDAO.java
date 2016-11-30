package data;

import java.util.Date;
import java.util.List;

import entities.Location;
import entities.User;
import entities.Vu;

public interface VusDAO {


	public Vu addVu(String username, String Title, Date startDate);
	
//	public List<String> getVus(User user);
//	public void removeVu(Vu vu);
//
//	public Vu editVu(int id, int userId, String title, String post, Date startDate, Date endDate, Vu vu);

	List<Vu> getVus(String username);

	User getUserByUsername(String username);

	List<Vu> getVusByYear(List<Vu> vus);

}
