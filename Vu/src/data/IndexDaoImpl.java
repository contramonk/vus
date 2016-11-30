package data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entities.User;
import entities.UserRole;

@Repository
@Transactional
public class IndexDaoImpl implements IndexDao {

	@PersistenceContext
	private EntityManager em;

	
	@Override
	public User addUser(String username, String password, String firstName, String lastName) {
		
		
		System.out.println("Update User*******************************************");
		User u = new User();
		UserRole role = new UserRole();
		
		u.setUsername(username);
		u.setPassword(password);
		u.setFirstName(firstName);
		u.setLastName(lastName);
		u.setEnabled("true");
		role.setRole("ROLE_ADMIN");
		role.setUser(u);
		
		em.persist(u);
		em.persist(role);
		
		
		

		
		
		
		
		
		return u;
	}

}
