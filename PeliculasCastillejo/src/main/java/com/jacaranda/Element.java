package com.jacaranda;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Element {
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int code_ele;
	private String name_ele;
	private String description_ele;
	private double price;
	@ManyToOne
	@JoinColumn(name = "code_cat")
	private Category categ;
	
	public Element() {
		super();
	}

	public int getCode_ele() {
		return code_ele;
	}

	public void setCode_ele(int code_ele) {
		this.code_ele = code_ele;
	}

	public String getName_ele() {
		return name_ele;
	}

	public void setName_ele(String name_ele) {
		this.name_ele = name_ele;
	}

	public String getDescription_ele() {
		return description_ele;
	}

	public void setDescription_ele(String description_ele) {
		this.description_ele = description_ele;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Category getCateg() {
		return categ;
	}

	public void setCateg(Category categ) {
		this.categ = categ;
	}
	
	
}
