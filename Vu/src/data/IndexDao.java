package data;

import entities.User;

public interface IndexDao {

	public User addUser(String username, String password, String firstName, String lastName);
	
}
