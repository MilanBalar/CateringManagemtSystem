package com.bean;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "booking_information")
public class BookingTable 
{

	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	   private Long bid;
	   private String bname;
	   private String bemail;
	   private Long bcontact; 
	   @Temporal(TemporalType.DATE)
		private Date bdate;
		@Temporal(TemporalType.TIME)
		private Date btime;
	   
	   private Long bnumber_of_person;
	   
	   private String session;
		/*
		 * @OneToMany(mappedBy = "bt") private BookingOrder bo;
		 */
	   
	   
	
	
	public Long getBid() {
		return bid;
	}
	public void setBid(Long bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBemail() {
		return bemail;
	}
	public void setBemail(String bemail) {
		this.bemail = bemail;
	}
	public Long getBcontact() {
		return bcontact;
	}
	public void setBcontact(Long bcontact) {
		this.bcontact = bcontact;
	}
	
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public Date getBtime() {
		return btime;
	}
	public void setBtime(Date btime) {
		this.btime = btime;
	}
	public String getSession() {
		return session;
	}
	public void setSession(String session) {
		this.session = session;
	}
	public Long getBnumber_of_person() {
		return bnumber_of_person;
	}
	public void setBnumber_of_person(Long bnumber_of_person) {
		this.bnumber_of_person = bnumber_of_person;
	}
	/*
	 * public Date getBdate() { return bdate; } public void setBdate(Date bdate) {
	 * this.bdate = bdate; }
	 */
	
	 
	   
	   

}
