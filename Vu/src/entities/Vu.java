package entities;

import javax.persistence.*;
import java.util.Date; 


@Entity
public class Vu {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "user_id")
	private int userId;
	
	
	@ManyToOne
	@Column(name = "location_id")
	private int locationId; 
	private String title; 
	private String post; 
	@Column(name = "start_date")
	@Temporal(TemporalType.DATE) 
	private Date startDate; 
	@Column(name = "end_date")
	@Temporal(TemporalType.DATE) 
	private Date endDate;
	@ManyToOne
	@Column(name = "username")
	private User userName;
	


	public User getUserName() {
		return userName;
	}

	public void setUserName(User userName) {
		this.userName = userName;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}

public Vu(){
	
	}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getPost() {
	return post;
}

public void setPost(String post) {
	this.post = post;
}

public Date getStartDate() {
	return startDate;
}

public void setStartDate(Date startDate) {
	this.startDate = startDate;
}

public Date getEndDate() {
	return endDate;
}

public void setEndDate(Date endDate) {
	this.endDate = endDate;
}

public int getId() {
	return id;
}

public int getUserId() {
	return userId;
}

public int getLocationId() {
	return locationId;
}

}
