package com.gera.billing.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.gera.billing.model.Customer;
import com.gera.billing.model.Product;

public class AdminService 
{
	public boolean isAdmninValid(String dname, String dpass, String pname, String ppass)
	{
		return dname.equals(pname) && dpass.equals(ppass);
	}
	
	
	public void addCustomer(String fname, String lname, String pass , String number, String mailid)
	{
		Customer customer=new Customer();
		customer.setFname(fname);
		customer.setLname(lname);
		customer.setPass(pass);
		customer.setNumber(number);
		customer.setMailid(mailid);
		
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		session.save(customer);
		
		session.getTransaction().commit();
		
		session.close();
		
	}
	
	public void deleteCustomer(int id)
	{
		Customer customer=new Customer();
		
		customer.setId(id);
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		session.delete(customer);
		
		session.getTransaction().commit();
		
		session.close();
		
	}
	
	public void updateCustomer(int id,String fname, String lname, String pass , String number, String mailid)
	{
		Customer customer=new Customer();
		
		customer.setId(id);
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		session.update(customer);
		
		session.getTransaction().commit();
		
		session.close();
	}
	
}
