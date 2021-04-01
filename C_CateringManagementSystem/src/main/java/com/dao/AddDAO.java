package com.dao;

import java.util.List;

import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.bean.CusBean;
import com.bean.FoodAdmin;
import com.bean.FoodTable;

public class AddDAO {
	
    HibernateTemplate ht;
 
	public HibernateTemplate getHt() {
		return ht;
	}

	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}

	
	  public List<FoodTable> getAllFoods() {
	  
	    
	  return ht.loadAll(FoodTable.class);
	  
	  }

	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  public List<FoodAdmin> AllfoodByDelete()
	    {
			return ht.loadAll(FoodAdmin.class);
		}

	 
	  @Transactional
		public Long deleteFood(Long addid) {
			FoodTable c = new FoodTable();
			c.setFid(addid);
			ht.delete(c);
			return addid;
		}
	  
	  
	  public List<FoodAdmin> Available_food() {
			return ht.loadAll(FoodAdmin.class);
		}
	  
	  public List<FoodTable> AdminViewAllOrder() {
			return ht.loadAll(FoodTable.class);
		}
	 
	  @Transactional
		public void AdminInsertFood(FoodAdmin f) {
			ht.save(f);

		}
	  
	  
	@Transactional
	public void orderConform(FoodTable selectedData) {
		ht.save(selectedData);

	}

	public List<CusBean> AllData() {
		return ht.loadAll(CusBean.class);
	}

	@Transactional
	public Long deleteData(Long addid) {
		CusBean c = new CusBean();
		c.setCid(addid);
		ht.delete(c);
		return addid;
	}

}
