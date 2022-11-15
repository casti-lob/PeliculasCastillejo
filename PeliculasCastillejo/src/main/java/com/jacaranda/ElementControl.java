package com.jacaranda;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class ElementControl {
	
	//Obtención de un elemento específico
	public static Element getElement(int id) {
		Element element = (Element) ConnectionDAO.getSession().get(Element.class, id);
		return element;
	}
	//Obtencion lista de elementos
	public static List<Element> getListElement(){
		Query<Element> query= ConnectionDAO.getSession().createQuery("SELECT e FROM com.jacaranda.Element e");
		List<Element> element = (List<Element>) query.getResultList();
		return element;
	}
	
	public static boolean saveElement(Element element) {
		boolean add = false;
		Session session = ConnectionDAO.getSession();
		try {
		session.getTransaction().begin();
		session.save(element);
		session.getTransaction().commit();
		add=true;
		
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return add;
	}
	
	public static void updateElement(Element element) {
		Session session = ConnectionDAO.getSession();
		try {
		session.getTransaction().begin();
		session.update(element);
		session.getTransaction().commit();
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static void deleteElement(Element element) {
		Session session = ConnectionDAO.getSession();
		try {
			session.getTransaction().begin();
			session.delete(element);
			session.getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
