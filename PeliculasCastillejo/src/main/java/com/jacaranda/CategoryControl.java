package com.jacaranda;

import java.util.Set;

import org.hibernate.query.Query;

public class CategoryControl {
	
	public static Category getCategory(int id) {
		Category category = (Category) ConnectionDAO.getSession().get(Category.class,id);
		
		return category;
	}
	
	public static Set<Category> getCategoryC(){
		Query<Category> query = ConnectionDAO.getSession().createQuery("SELECT p FROM com.jacaranda.Category p");
		Set<Category> category = (Set<Category>) query.getResultList();
		return category;
	}
}
