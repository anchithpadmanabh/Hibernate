package com.niit.HibernateBackEnd;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.DAO.CategoryDAO;
import com.niit.Model.Category;

public class CategoryTest {
	
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext con = new AnnotationConfigApplicationContext();
		con.scan("com.niit.*");
		con.refresh();
		Category category=(Category)con.getBean("category");
		CategoryDAO categorydao=(CategoryDAO)con.getBean("categoryDAOImpl");
	
	    category.setCategory_id(7);
	    category.setCategory_name("Flipflops");
		category.setCategory_desc("ff");
		//categorydao.save(category);	
		//categorydao.get(1);
		//categorydao.update(category);
		categorydao.list();
	}
}