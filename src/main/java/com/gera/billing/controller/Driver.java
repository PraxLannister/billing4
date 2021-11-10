package com.gera.billing.controller;





import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.gera.billing.model.Cart;
import com.gera.billing.model.Customer;
import com.gera.billing.model.Product;
import com.gera.billing.service.CartService;
import com.gera.billing.service.ProductService;

public class Driver {

	public static void main(String[] args) 
	{
		int cid=110;
		Configuration con=new Configuration().configure().addAnnotatedClass(Cart.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		Query q=session.createQuery("delete from Cart where cid="+cid);
		
		q.executeUpdate();
		
		session.getTransaction().commit();
		
		session.close();
		
//		int pid=1010;
//		int cid=101;
//		CartService cs=new CartService();
//		Cart cart=new Cart();
//		cart.setCartid(1);
//		Configuration con=new Configuration().configure().addAnnotatedClass(Cart.class);
//		
//		SessionFactory sf=con.buildSessionFactory();
//		
//		Session session=sf.openSession();
//		
//		session.beginTransaction();
//		
//		session.delete(cart);
//		
//		session.getTransaction().commit();
//		
//		session.close();
		
		
////		cs.addToCart(pid, cid);
//		
//		List<Cart> cart=cs.getCartList(cid);
//		
//		for(Cart c: cart)
//		{
//			System.out.print(c.getName()+" ");
//			System.out.print(c.getQuant()+" ");
//			System.out.println(c.getPrice());
//		}
//		Customer customer= new Customer();
//		customer.setId("103");
//		customer.setNumber("7204");
//		customer.setColor("Green");
//		
//		Customer customer=new Customer();
//		customer.setFname("Deepa");
//		customer.setLname("Gera@123");
//		customer.setNumber("720479006");
//		customer.setPass("billing2");
//		
//		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
//		
//		SessionFactory sf=con.buildSessionFactory();
//		
//		Session session=sf.openSession();
//		
//		Transaction tx=session.beginTransaction();
//		
//		session.save(customer);
//		
//		tx.commit();
	
		
		//Retreive Data From DATABASE 
		
//		Customer customer;
//		
//		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
//		
//		SessionFactory sf=con.buildSessionFactory();
//		
//		Session session=sf.openSession();
//		
//		Transaction tx=session.beginTransaction();
//		
//		tx.commit();
//		
//		customer=(Customer)session.get(Customer.class, "101");
//		
//		System.out.println(customer);
		
		
		//Retrieve all data from a table using HQL
		
//		Customer customer;
		
//		Configuration con=new Configuration().configure().addAnnotatedClass(Customer.class);
//		
//		SessionFactory sf=con.buildSessionFactory();
//		
//		Session session=sf.openSession();
//		
//		session.beginTransaction();
//		
////		String number="7388422221"; 
////		//for specific id sent from user
////			Query q=session.createQuery("from Customer where id="+id);
////		//Method 2
////			Query q=session.createQuery("from Customer where id= :id");
////			q.setParameter("id", id);
//		//
//		Query q=session.createQuery("from Customer");
//		List<Customer> customer=q.list();
//	
//		//Customer customer=(Customer)q.uniqueResult();
//		//for a single row use method q.uniqueResult() return only one object
//		//
//		
//		for(Customer cs : customer)
//		{
//			System.out.print(cs.getId()+" ");
//			System.out.print(cs.getFname()+" ");
//			System.out.print(cs.getLname()+" ");
//			System.out.print(cs.getNumber()+" ");
//			System.out.println(cs.getMailid()+" ");
//		}
//		
//		
//		session.getTransaction().commit();
//		session.close();
		
	}

}
