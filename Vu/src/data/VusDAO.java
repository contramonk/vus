package data;

import java.util.Date;

import entities.Vu;

public interface VusDAO {

	public int addYear(int year);

	public void removeYear(int year);

	public int editYear(int year);

	public Vu addVu(int id, int userId, String title, String post, Date startDate, Date endDate);

	public void removeVu(Vu vu);

	public Vu editVu(int id, int userId, String title, String post, Date startDate, Date endDate, Vu vu);

}
