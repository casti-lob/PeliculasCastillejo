package com.jacaranda;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class ConnectionDAO {
	private static StandardServiceRegistry sr =new StandardServiceRegistryBuilder().configure().build();;
	private static SessionFactory sf =new MetadataSources(sr).buildMetadata().buildSessionFactory();
	private static Session session;
	
		
	public static Session getSession() throws HibernateException {
		session = sf.openSession();
		return session;
	}
	
	public static void closeSession() {
		session.close();
	}
	
	

}
