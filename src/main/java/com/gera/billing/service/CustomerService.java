package com.gera.billing.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.gera.billing.model.Cart;
import com.gera.billing.model.Customer;
import com.gera.billing.model.Product;

public class CustomerService 
{
	public Customer getCustomer(int id)
	{
		Customer customer;
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		Query q=session.createQuery("from Customer where id="+id);
		
		customer=(Customer)q.uniqueResult();
		
		session.getTransaction().commit();
		
		session.close();
		
		return customer;
	}
	
	public void saveCustomer(String fname, String lname,String number, String mailid, String pass)
	{
		Customer customer=new Customer();
		customer.setFname(fname);
		customer.setLname(lname);
		customer.setNumber(number);
		customer.setMailid(mailid);
		customer.setPass(pass);
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		session.save(customer);
		
		session.getTransaction().commit();
		
		session.close();
		
	}
	
}
