//package entities;
//
//import javax.persistence.*;
//import java.util.Date; 
//
//@Entity
//public class Vu {
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private int id;
//
//	@ManyToOne
//	@JoinColumn(name="username")
//	private User username;
//	
//	@ManyToOne
//	@JoinColumn(name="location_id")
//	private int locationId; 
//	
//	private String title; 
//	private String post; 
//	
//	@Column(name="start_date")
//	@Temporal(TemporalType.DATE) 
//	private Date startDate; 
//	
//	@Column(name="end_date")
//	@Temporal(TemporalType.DATE) 
//	private Date endDate;
//
//	public User getUsername() {
//		return username;
//	}
//
//	public void setUsername(User username) {
//		this.username = username;
//	}
//
//	public int getLocationId() {
//		return locationId;
//	}
//
//	public void setLocationId(int locationId) {
//		this.locationId = locationId;
//	}
//
//	public String getTitle() {
//		return title;
//	}
//
//	public void setTitle(String title) {
//		this.title = title;
//	}
//
//	public String getPost() {
//		return post;
//	}
//
//	public void setPost(String post) {
//		this.post = post;
//	}
//
//	public Date getStartDate() {
//		return startDate;
//	}
//
//	public void setStartDate(Date startDate) {
//		this.startDate = startDate;
//	}
//
//	public Date getEndDate() {
//		return endDate;
//	}
//
//	public void setEndDate(Date endDate) {
//		this.endDate = endDate;
//	}
//
//	public int getId() {
//		return id;
//	}
//
//	public Vu(){
//		
//	}
//
//
//
//
//
//}
