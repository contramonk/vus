package entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {

	@Id
	private String username;
	private String password;
	@Column(name = "first_name")
	private String firstName;
	@Column(name = "last_name")
	private String lastName;
	private String enabled;
	@OneToMany(mappedBy = "user")
	private List<Vu> vus;
	@OneToMany(mappedBy = "user")
	private List<UserRole> userRoles;

	
	public void addUserRole(UserRole userRole) {
		if (userRoles == null) {
			userRoles = new ArrayList<>();
		}
		if (!userRoles.contains(userRole)) {
			userRoles.add(userRole);
		}
	}
	public void removeUserRole(UserRole userRole) {
		if (userRoles != null) {
			userRoles.remove(userRole);
		}
	}
	
	
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", firstName=" + firstName + ", lastName="
				+ lastName + ", enabled=" + enabled + "]";
	}

	public List<UserRole> getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(List<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

	public List<Vu> getVus() {
		return vus;
	}

	public void setVus(List<Vu> vus) {
		this.vus = vus;
	}
	public void addVu(Vu vu){
		vus.add(vu);
	}

	public void removeVu(Vu vu){
		vus.remove(vu);
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

}
