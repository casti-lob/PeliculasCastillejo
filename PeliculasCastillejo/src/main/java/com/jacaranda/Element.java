package com.jacaranda;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity(name="ELEMENT")
public class Element {
	@Id
	private int code_ele;
	private String name_ele;
	private String description_ele;
	private double price;
	@ManyToOne
	@JoinColumn(name="code_cat")
	private Category category;

	
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public int hashCode() {
		return Objects.hash(code_ele);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Element other = (Element) obj;
		return code_ele == other.code_ele;
	}

	
	
	
}
