package entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Location {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String address;
	private String city;
	private String state;
	private String zip;
	private String place;
	
	@OneToMany(mappedBy="location")
	private List <Vu> vus;


	public Location() {
	}

	@Override
	public String toString() {
		return "Location [id=" + id + ", address=" + address + ", city=" + city + ", state=" + state + ", zip=" + zip
				+ ", place=" + place + "]";
	}

	public List<Vu> getVus() {
		return vus;
	}

	public void setVus(List<Vu> vus) {
		this.vus = vus;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public int getId() {
		return id;
	}
}
