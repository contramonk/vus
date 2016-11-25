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
	
public Vu(){
	
	}

}
