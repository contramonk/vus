package entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Photo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
<<<<<<< HEAD
	
	@ManyToOne
    @JoinColumn(name = "vu_id")
    private List<Vu> vus;
=======
	@Column(name = "vu_id")
>>>>>>> c2b1f35c4b73dad5250a7742ad67654dda3a307f
	private int vuId; 
	private String url;
	private String caption; 

}
