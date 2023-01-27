package com.cisco.sporty.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class User {
	@Id
	@Column
	private String uid;
	@Column
	private String password;
	@Column
	private int age;
	@Column
	private Long phno;
	@Column
	private String gender;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String uid, String password, int age, Long phno,String gender) {
		super();
		this.uid = uid;
		this.password = password;
		this.age = age;
		this.phno = phno;
		this.gender=gender;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Long getPhno() {
		return phno;
	}
	public void setPhno(Long phno) {
		this.phno = phno;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", password=" + password + ", age=" + age + ", phno=" + phno + ", gender=" + gender
				+ "]";
	}
	
	
}
