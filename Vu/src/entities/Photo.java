package entities;

import javax.persistence.*;


@Entity
public class Photo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	@ManyToOne
    @JoinColumn(name = "vu_id")
    private List<Vu> roles;
	private int vuId; 
	private String url;
	private String caption; 

}
