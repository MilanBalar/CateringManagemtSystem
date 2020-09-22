package com.bean;

import java.util.ArrayList;
import java.util.Date;

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
@Table(name = "CustomerBookingfood")
public class FoodTable
{
	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	   private Long fid;
	   private String ffood;
	   private ArrayList<Integer> fquantity;
	   private ArrayList<Integer> fprice;
	   private ArrayList<Long> ftotal;
	   
	   
	   @ManyToOne(cascade = CascadeType.PERSIST)
	   @JoinColumn(name = "cid")
	   private CusBean cus; 
	
	   
	   

	public CusBean getCus() {
		return cus;
	}
	public void setCus(CusBean cus) {
		this.cus = cus;
	}
	public Long getFid() {
		return fid;
	}
	public void setFid(Long fid) {
		this.fid = fid;
	}
	public String getFfood() {
		return ffood;
	}
	public void setFfood(String ffood) {
		this.ffood = ffood;
	}
	public ArrayList<Integer> getFquantity() {
		return fquantity;
	}
	public void setFquantity(ArrayList<Integer> fquantity) {
		this.fquantity = fquantity;
	}
	public ArrayList<Integer> getFprice() {
		return fprice;
	}
	public void setFprice(ArrayList<Integer> fprice) {
		this.fprice = fprice;
	}
	public ArrayList<Long> getFtotal() {
		return ftotal;
	}
	public void setFtotal(ArrayList<Long> ftotal) {
		this.ftotal = ftotal;
	}
	
	   
	   
	   
	  
	
	
}
