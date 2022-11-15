package com.jacaranda;

import org.hibernate.Session;

public class CategoryControl {
	
	public static Category getCategory(int id) {
		Session session = ConnectionDAO.getSession();
		Category category= (Category) session.get(Category.class,id);
		return category;
	}
	
	
}
