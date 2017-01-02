package com.niit.HibernateBackEnd;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.DAO.ProductDAO;
import com.niit.Model.Product;

public class ProductTest {
	
	public static void main(String[] args) {
	
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		
		Product product = (Product)context.getBean("product");
		ProductDAO productDAO = (ProductDAO)context.getBean("productDAOImpl");
		
		product.setProduct_id(8);
		product.setProduct_name("Aron");
		product.setProduct_desc("Puma running Shoes");
		
		//productDAO.list();
		//productDAO.save(product);
		//productDAO.get(1);
		productDAO.update(product);
	}

}
