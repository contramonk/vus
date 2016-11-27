package data;

import java.util.Date;

import entities.Vu;

public interface VusDao {

	public int addYear(int year);

	public int removeYear(int year);

	public int editYear(int year);

	public Vu addVu(int id, int userId, String title, String post, Date startDate, Date endDate);

	public Vu removeVu(Vu vu);

	public Vu editVu(int id, int userId, String title, String post, Date startDate, Date endDate, Vu vu);

}
