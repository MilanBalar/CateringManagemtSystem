package com.dao;

import java.util.List;

import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.bean.CusBean;
import com.bean.FoodTable;

public class cusDAO {
  HibernateTemplate ht;

	public HibernateTemplate getHt() {
		return ht;
	}

	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}

	@Transactional
	public void saveData(CusBean cb) {
		ht.save(cb);

	}

	public FoodTable getDetailsById(Long id)
	  {
		  
		 return ht.get(FoodTable.class,id);
	  }
	

	@Transactional
	public void saveCustomerBook(FoodTable bo) {
		ht.save(bo);

	}

	
	public List findUser(String email,String pass)
	{
		Boolean flag=false;
		String sql="from CusBean where cemail=? and cpass=?";
		List c=ht.find(sql, email, pass);
		return c;
		
		//Email is and pass based data  store list 
		///list is empty user not vailabel
		//list emo=pty 
		/*
		 * if(c!=null && c.size()>0 ) { flag=true; } else { flag=false; } return flag;
		 */
	}
	
	
	 

		/*
		 * 
		 * public List<CusBean> getAllData() {
		 * 
		 * List<CusBean> l=ht.loadAll(CusBean.class); return l; }
		 */

}
