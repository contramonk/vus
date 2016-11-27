package data;

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
	public Vu addVu(Vu vu) {
		
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
