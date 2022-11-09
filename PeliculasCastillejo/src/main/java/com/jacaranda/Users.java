package com.jacaranda;

import java.sql.Date;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;



@Entity(name="USERS")
public class Users {
	@Id
	private int id;
	private String password;
	private String name;
	private String nick;
	private String dateUser;
	private boolean gender;
	private boolean admin;
	
	
	
	
	public Users() {
		super();
		this.id=0;
		this.password=null;
		this.name=null;
		this.nick=null;
		this.dateUser=null;
		this.gender=true;
		this.admin=false;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getDate() {
		return dateUser;
	}

	public void setDate(String date) {
		this.dateUser = date;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	

	@Override
	public int hashCode() {
		return Objects.hash(nick, password);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Users other = (Users) obj;
		return Objects.equals(nick, other.nick) && Objects.equals(password, other.password);
	}
	
	
	
}
