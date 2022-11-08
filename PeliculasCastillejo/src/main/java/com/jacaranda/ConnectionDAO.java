package com.jacaranda;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class ConnectionDAO {
	private static StandardServiceRegistry sr =new StandardServiceRegistryBuilder().configure().build();;
	private static SessionFactory sf =new MetadataSources(sr).buildMetadata().buildSessionFactory();
	private static Session session = sf.openSession();
	
		
	public static Session getSession() {
		return session;
	}
	
	public static void closeSession() {
		session.close();
	}
	
	//Metodo leer Usuario
	public static boolean validUser(String password) {
		boolean valid = false;
		Users u = (Users) session.get(Users.class,password);
		if(u != null) {
			valid = true;
		}
		return valid;
	}
}
