package com.jacaranda;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity(name="CATEGORY")
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int code_cat;
	private String name;
	private String description;
	@OneToMany(mappedBy = "categ")
	private Set<Element> element;
	
}
