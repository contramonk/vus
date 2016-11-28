package entities;

import javax.persistence.*;
import java.util.Date; 

@Entity
public class Vu {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne
	@JoinColumn(name="username")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="location_id")
	private Location location; 
	
	private String title; 
	private String post; 
	
	@Column(name="start_date")
	@Temporal(TemporalType.DATE) 
	private Date startDate; 
	
	@Column(name="end_date")
	@Temporal(TemporalType.DATE) 
	private Date endDate;

	public User getUser() {
		return user;
	}

	public void setUsername(User user) {
		this.user = user;
	}

	public Location getLocation() {
		return location;
	}

	public void setLocationId(Location location) {
		this.location = location;
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

	public Vu(){
		
	}





}
