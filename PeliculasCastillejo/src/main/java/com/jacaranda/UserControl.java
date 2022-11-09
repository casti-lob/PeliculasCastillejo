package com.jacaranda;


import org.hibernate.query.Query;
import org.hibernate.Session;

public class UserControl {
	
	public UserControl() {
		
	}
	
	public static boolean validUser(int id) {
		boolean valid = false;
		Session session= ConnectionDAO.getSession();
		Users u =(Users) session.get(Users.class,id);
		if(u != null) {
			valid = true;
			}
		return valid;
		
	}
	
	public static Users getUser (String nick, String password) {
		Users user= null;
		Session session = ConnectionDAO.getSession();
		Query<Users> query=session.createQuery("SELECT u FROM com.jacaranda.Users u WHERE u.nick LIKE'"+nick+"' AND u.password LIKE'"+password+"'");
		try {
		user = query.getSingleResult();
		}catch (Exception e) {
			user= null;
		}
		return user;
	}
	
	public static boolean addUser(Users user) {
		boolean add = false;
		try {
			ConnectionDAO.getSession().getTransaction().begin();
			ConnectionDAO.getSession().save(user);
			ConnectionDAO.getSession().getTransaction().commit();
			add=true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return add;
	}
}
