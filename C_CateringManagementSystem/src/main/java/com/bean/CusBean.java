package com.bean;


import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;



@Entity
@Table(name = "customer")
public class CusBean 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Long cid;
   private String cname;
   private String cemail;
   private Long ccontact;
   @Temporal(TemporalType.DATE)
	private Date cdate;
	@Temporal(TemporalType.TIME)
	private java.util.Date ctime;
  
   private String ccity;
   private String cpass;
   
   

	@OneToMany(mappedBy ="cus")
	/* @JoinColumn(name="cid") */
	private List<FoodTable> foodTable;
	
   
	/*
	 * public Long getCid() { return cid; }
	 */
	
	
public List<FoodTable> getFoodTable() {
	return foodTable;
}

public Date getCdate() {
	return cdate;
}

public void setCdate(Date cdate) {
	this.cdate = cdate;
}

public Date getCtime() {
	return ctime;
}

public void setCtime(Date ctime) {
	this.ctime = ctime;
}

public Long getCid() {
	return cid;
}
public void setCid(Long cid) {
	this.cid = cid;
}
public void setFoodTable(List<FoodTable> foodTable) {
	this.foodTable = foodTable;
}

/*
 * public void setCid(Long cid) { this.cid = cid; } public void setCid(long id)
 * { this.cid = id; }
 */
public String getCcity() {
	return ccity;
}
public void setCcity(String ccity) {
	this.ccity = ccity;
}

public Long getCcontact() {
	return ccontact;
}
public void setCcontact(Long ccontact) {
	this.ccontact = ccontact;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getCemail() {
	return cemail;
}
public void setCemail(String cemail) {
	this.cemail = cemail;
}

public String getCpass() {
	return cpass;
}
public void setCpass(String cpass) {
	this.cpass = cpass;
}
   
   
   
   
   
   

}
