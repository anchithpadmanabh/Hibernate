package com.niit.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.CategoryDAO;
import com.niit.Model.Category;

@Repository("categoryDAOImpl")
public class CategoryDaoImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	//At the time of creation of instance, you have to pass sessionFactory
	
	public CategoryDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
		System.out.println(sessionFactory);
	}
	
	@Transactional
	public List<Category> list() {
		
		String hql = "from Category";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Transactional
	public Category get(int id) {
		return (Category)sessionFactory.getCurrentSession().get(Category.class, id);
	}

	@Transactional
	public boolean save(Category category) {
		try{
			sessionFactory.getCurrentSession().save(category);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;

	}

	@Transactional
	public boolean update(Category category) {
		try{
			sessionFactory.getCurrentSession().update(category);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;

	}
}