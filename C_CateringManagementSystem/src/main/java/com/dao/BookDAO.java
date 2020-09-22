package com.dao;

import java.util.List;

import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.bean.BookingOrder;
import com.bean.BookingTable;
import com.bean.CusBean;
import com.bean.FoodAdmin;
import com.bean.FoodTable;

public class BookDAO
{
	HibernateTemplate ht;

	public HibernateTemplate getHt() {
		return ht;
	}

	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}
	
	
	
	
	  
	  public List<BookingTable> AdminBookingHistory(){
			return ht.loadAll(BookingTable.class);
		}

	
	public List<FoodTable> AllOrderData() {
		return ht.loadAll(FoodTable.class);
	}

	
	@Transactional
	public void saveBookingOrder(BookingOrder bo) {
		ht.save(bo);

	}
	

	public List<FoodAdmin> AllFood() {
		return ht.loadAll(FoodAdmin.class);
	}

	 @Transactional 
	public Long deleteOrder(Long fid) {
		FoodTable c = new FoodTable();
		c.setFid(fid);
		ht.delete(c);
		return fid;
	}

	@Transactional
	public void saveBooking(BookingTable bd) {
		ht.save(bd);

	}


}
