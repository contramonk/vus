package entities;

import javax.persistence.*;

@Entity
@Table(name="users")
public class User {
	
@Id
@Column(name = "username")
private String userName;
private String password;
@Column(name = "first_name")
private String firstName;
@Column(name = "last_name")
private String lastName;
private String enabled; 

}
