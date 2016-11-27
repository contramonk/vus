package entities;

import javax.persistence.*;


@Entity
public class Photo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "vu_id")
	private int vuId; 
	private String url;
	private String caption; 

}
