package com.niit.HibernateBackEnd;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.DAO.SupplierDAO;
import com.niit.Model.Supplier;

public class SupplierTest {
	
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();
		
		Supplier supplier = (Supplier)context.getBean("supplier");
		SupplierDAO supplierDAO = (SupplierDAO)context.getBean("supplierDAOImpl");
		
		supplier.setSupplier_id(7);
		supplier.setSupplier_name("Sketchers");
		supplier.setSupplier_desc("ske");
		
		//supplierDAO.get(1);
		//supplierDAO.list();
		//supplierDAO.save(supplier);
		supplierDAO.update(supplier);
	}

}
