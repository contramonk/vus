package data;

import entities.Vu;

public interface VusDao {

	public int addYear(int year);

	public int removeYear(int year);

	public int editYear(int year);

	public Vu addVu(Vu vu);

	public Vu removeVu(Vu vu);

	public Vu editVu(Vu vu);

}
