package com.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class FoodAdmin
{
	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   private Long f_id;
	   private String f_food;
	   private String f_discription;
	   private Long f_price;
	   
	   
	public Long getF_id() {
		return f_id;
	}
	public void setF_id(Long f_id) {
		this.f_id = f_id;
	}
	public String getF_food() {
		return f_food;
	}
	public void setF_food(String f_food) {
		this.f_food = f_food;
	}
	public String getF_discription() {
		return f_discription;
	}
	public void setF_discription(String f_discription) {
		this.f_discription = f_discription;
	}
	public Long getF_price() {
		return f_price;
	}
	public void setF_price(Long f_price) {
		this.f_price = f_price;
	}
	   
	   
	

}
