package data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entities.User;

@Repository
@Transactional
public class IndexDaoImpl implements IndexDao {

	@PersistenceContext
	private EntityManager em;

	
	@Override
	public User addUser(String username, String password, String firstName, String lastName) {
		
		
		System.out.println("Update User*******************************************");
		User u = new User();
		u.setUsername(username);
		u.setPassword(password);
		u.setFirstName(firstName);
		u.setLastName(lastName);
		u.setEnabled("true");
		
		em.persist(u);
		
		
		

		
		
		
		
		
		return u;
	}

}
