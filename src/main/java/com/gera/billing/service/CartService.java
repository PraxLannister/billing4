package com.gera.billing.service;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.gera.billing.model.Cart;
import com.gera.billing.model.Product;

public class CartService 
{
	public Cart checkDupProduct(int pid, int cid)
	{
		Cart cart=new Cart();
		Configuration con=new Configuration().configure().addAnnotatedClass(Cart.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		Query q=session.createQuery("from Cart where pid="+pid+"and cid="+cid);
		
		cart=(Cart)q.uniqueResult();
		
		session.getTransaction().commit();
		
		session.close();
		
		return cart;
	}
	
	public Cart addToCart(int pid, int cid)
	{
		Product product = new Product();
		ProductService ps=new ProductService();
		product=ps.getProduct(pid);
		
		CartService cs=new CartService();
		Cart cart;
		cart=cs.checkDupProduct(pid, cid);
		
		Configuration con=new Configuration().configure().addAnnotatedClass(Cart.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		if(cart==null) 
		{
			cart=new Cart();
			cart.setCid(cid);
			cart.setPid(pid);
			cart.setName(product.getName());
			cart.setPrice(product.getPrice());
			cart.setQuant(1);
			session.save(cart);
			session.getTransaction().commit();
		}
		else
		{
			System.out.println(cart.getCartid());
			int price=product.getPrice();
			cart.setPrice(cart.getPrice()+price);
			cart.setQuant(cart.getQuant()+1);
			session.update(cart);
			session.getTransaction().commit();
		}
		session.close();
		return cart;
	}
	
	public void deleteFromCart(int cartid)
	{
		Cart cart=new Cart();
		cart.setCartid(cartid);
		Configuration con=new Configuration().configure().addAnnotatedClass(Cart.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		session.delete(cart);
		
		session.getTransaction().commit();
		
		session.close();
	}

	public List<Cart> getCartList(int cid)
	{
		Configuration con=new Configuration().configure().addAnnotatedClass(Cart.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		Query q=session.createQuery("from Cart where cid="+cid);
		
		List<Cart> cart=q.list();
		
		session.getTransaction().commit();
		
		session.close();
		
		return cart;
	}
	
	public void checkoutCart(int cid)
	{
		Configuration con=new Configuration().configure().addAnnotatedClass(Cart.class);
		
		SessionFactory sf=con.buildSessionFactory();
		
		Session session=sf.openSession();
		
		session.beginTransaction();
		
		Query q=session.createQuery("delete from Cart where cid="+cid);
		
		q.executeUpdate();
		
		session.getTransaction().commit();
		
		session.close();
		
	}
	
}
