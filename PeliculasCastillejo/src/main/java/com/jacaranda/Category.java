package com.jacaranda;

import java.util.Objects;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity(name="CATEGORY")
public class Category {
	@Id
	private int code_cat;
	private String name;
	private String description;
	@OneToMany(mappedBy = "CATEGORY")
	private Set<Category> category;
	
	public Category() {
		super();
	}

	public int getCode_cat() {
		return code_cat;
	}

	public void setCode_cat(int code_cat) {
		this.code_cat = code_cat;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Category> getCategory() {
		return category;
	}

	public void setCategory(Set<Category> category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public int hashCode() {
		return Objects.hash(code_cat);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category other = (Category) obj;
		return code_cat == other.code_cat;
	}
	
	
}
