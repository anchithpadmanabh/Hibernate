package com.niit.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.UserDetailsDAO;
import com.niit.Model.UserDetails;
import com.niit.Model.UserRole;
import com.niit.Model.Users;

@Repository
public class UserDetailsDAOImpl implements UserDetailsDAO {
	
	@Autowired
    private SessionFactory sessionFactory;

	public UserDetailsDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
		System.out.println(sessionFactory);
	}

	@Transactional
	public void addUser(UserDetails userDetails) {
		Session session = sessionFactory.openSession();
        
        session.saveOrUpdate(userDetails);
       
        Users newUser = new Users();
        newUser.setUsername(userDetails.getUsername());
        newUser.setPassword(userDetails.getPassword());
        newUser.setEnabled(true);
        newUser.setUsersId(userDetails.getUserId());

        UserRole newUserRole = new UserRole();
        newUserRole.setUsername(userDetails.getUsername());
        newUserRole.setRole("ROLE_ADMIN");
        

        session.saveOrUpdate(userDetails);
        session.save(newUser);
        session.saveOrUpdate(newUserRole);

        session.flush();
	}

	@Transactional
	public UserDetails getUserById(int userId) {
		Session session = sessionFactory.openSession();
        return (UserDetails) session.get(UserDetails.class, userId);
    }

	@Transactional
	public List<UserDetails> getAllUsers() {
		Session session = sessionFactory.openSession();
        Query query = session.createQuery("from UserDetails");
        List<UserDetails> userDetails = query.list();

        return userDetails;
	}

	@Transactional
	public UserDetails getUserByUsername(String username) {
		Session session = sessionFactory.openSession();
        Query query = session.createQuery("from UserDetails where username = ?");
        query.setString(0, username);
        return (UserDetails) query.uniqueResult();
    }

	@Transactional
	public boolean isValidUser(String name) {
		String hql="from UserDetails where username='"+name+"'";
    	Query query=sessionFactory.openSession().createQuery(hql);
    	
    	List<UserDetails> list = query.list();//list of users detail
    	
    	if(list!=null){
        	return false;//invalid user    		
    	}
    	else{
    		return true;//valid user
    	}
    }
}
