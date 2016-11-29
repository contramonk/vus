package entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType; 

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
	
	@Override
	public String toString() {
		return "Vu [id=" + id + ", user=" + user + ", location=" + location + ", title=" + title + ", post=" + post
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", photos=" + photos + "]";
	}

	private String title; 
	private String post; 
	
	@Column(name="start_date")
	@Temporal(TemporalType.DATE) 
	private Date startDate; 
	
	@Column(name="end_date")
	@Temporal(TemporalType.DATE) 
	private Date endDate;
	
	@OneToMany(mappedBy="vu")
	private List<Photo> photos;


	public Vu(){
		
	}


	public Location getLocation() {
		return location;
	}
	
	public void setLocation(Location location) {
		this.location = location;
	}
	
	public List<Photo> getPhotos() {
		return photos;
	}
	
	public void setPhotos(List<Photo> photos) {
		this.photos = photos;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUsername(User user) {
		this.user = user;
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
			
}
