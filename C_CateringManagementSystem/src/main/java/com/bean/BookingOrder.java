package com.bean;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "booking_order")
public class BookingOrder
{   
	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	   private Long b_id;
	   private String foName; 
	   private ArrayList<Integer> qauntity;
	   
	    @ManyToOne(cascade = CascadeType.REMOVE)
		@JoinColumn(name = "bid")
		private BookingTable bt;
		
		  
	public BookingTable getBt() {
		return bt;
	}
	public void setBt(BookingTable bt) {
		this.bt = bt;
	}
	public Long getB_id() {
		return b_id;
	}
	public void setB_id(Long b_id) {
		this.b_id = b_id;
	}
	public String getFoName() {
		return foName;
	}
	public void setFoName(String foName) {
		this.foName = foName;
	}
	public ArrayList<Integer> getQauntity() {
		return qauntity;
	}
	public void setQauntity(ArrayList<Integer> qauntity) {
		this.qauntity = qauntity;
	}
	
	
	
	   
	   

}
