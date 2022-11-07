package com.jacaranda;

import java.util.Objects;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
@Entity(name="PRODUCT")
public class Product {
	@Id
	private String dateBuy;
	
	private int number;
	private double price;
	@ManyToMany(mappedBy = "ELEMENT")
	private Set<Element>element;
	
	public Product() {
		super();
	}


	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDateBuy() {
		return dateBuy;
	}

	public void setDateBuy(String dateBuy) {
		this.dateBuy = dateBuy;
	}


	public Set<Element> getElement() {
		return element;
	}


	public void setElement(Set<Element> element) {
		this.element = element;
	}


	@Override
	public int hashCode() {
		return Objects.hash(dateBuy, element, number, price);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(dateBuy, other.dateBuy) && Objects.equals(element, other.element)
				&& number == other.number && Double.doubleToLongBits(price) == Double.doubleToLongBits(other.price);
	}

	
	
	
}
