package data;

import java.util.Date;
import java.util.List;
import java.util.Map;

import entities.Location;
import entities.User;
import entities.Vu;

public interface VusDAO {


	public Vu addVu(String username, String Title, Date startDate);
	
//	public List<String> getVus(User user);
	public User removeVu(int vuId);
//
//	public Vu editVu(int id, int userId, String title, String post, Date startDate, Date endDate, Vu vu);

	List<Vu> getVus(String username);

	User getUserByUsername(String username);

	Map<Integer, List<Vu>> getVusByYear(String username);

}
