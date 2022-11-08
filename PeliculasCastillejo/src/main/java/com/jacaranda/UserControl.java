package com.jacaranda;

import org.hibernate.Session;

public class UserControl {
	
	public UserControl() {
		
	}
	
	public static boolean validUser(int id) {
		boolean valid = false;
		Session session= ConnectionDAO.getSession();
		Users u = session.get(Users.class,id);
		if(u != null) {
			valid = true;
			}
		return valid;
		
	}
}
