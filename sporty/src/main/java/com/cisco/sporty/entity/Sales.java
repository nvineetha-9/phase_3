package com.cisco.sporty.entity;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
public class Sales {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
	private int id;
	@Column
	private String pid;
	@Column
	private float price;
	@Temporal(TemporalType.DATE)
	@Column
	private String date;
	public Sales() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sales(int id, String pid, float price, String date) {
		super();
		this.id = id;
		this.pid = pid;
		this.price = price;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String string) {
		this.date = string;
	}
	@Override
	public String toString() {
		return "Sales [id=" + id + ", pid=" + pid + ", price=" + price + ", date=" + date + "]";
	}
	
	
}
