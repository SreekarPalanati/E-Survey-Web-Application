package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="blogger_table")
public class Blogger 
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name=" Blooger_id")
	private int id;
	@Column(name=" Blooger_name",nullable=false,length = 50)
	private String username;

	@Column(name=" Blooger_email",nullable=false,unique = true,length = 30)
	private String email;
	@Column(name=" Blooger_password",nullable=false,length = 30)
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Blogger [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password + "]";
	}

}