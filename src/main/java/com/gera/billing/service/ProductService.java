package com.gera.billing.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.gera.billing.model.Product;

public class ProductService 
{
	public void addProduct(String name, int quant, int price, String image)
	{
		Product product = new Product();
		product.setImage(image);
		product.setName(name);
		product.setPrice(price);
		product.setQuant(quant);
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Product.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		session.save(product);
		
		session.getTransaction().commit();
		
		session.close();
	}
	
	public Product getProduct(int id)
	{
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Product.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		Query q=session.createQuery("from Product where id="+id);
		
		Product product=(Product)q.uniqueResult();
		
		session.getTransaction().commit();
		session.close();
		
		return product;
	}
	
	public void updateProduct(int id, String name, int quant, int price, String image)
	{
		Product product = new Product();
		
		product.setId(id);
		product.setImage(image);
		product.setName(name);
		product.setPrice(price);
		product.setQuant(quant);
		
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Product.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		session.update(product);
		
		session.getTransaction().commit();
		
		session.close();
		
		
	}
	
	public void deleteProduct(int id)
	{
		Product product = new Product();
		
		product.setId(id);
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Product.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		session.delete(product);
		
		session.getTransaction().commit();
		
		session.close();
		
	}
	
	
	public List<Product> getProductList()
	{
		Configuration con=new Configuration().configure().addAnnotatedClass(Product.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		Query q=session.createQuery("from Product");
		List<Product> product=q.list();
		
		session.getTransaction().commit();
		session.close();
		
		return product;
	}
	
}
