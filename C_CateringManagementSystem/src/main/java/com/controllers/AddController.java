package com.controllers;

import java.awt.print.Book;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.CusBean;
import com.bean.FoodAdmin;
import com.bean.FoodTable;
import com.dao.AddDAO;

@Controller
public class AddController {
	private static final String String = null;
	@Autowired
	AddDAO addDao;

	@RequestMapping("/Delete/{addid}")
	public String deletepage(@PathVariable Long addid, Model m) {
		Long a = addDao.deleteData(addid);
		if (a > 0) {
			List<CusBean> list = addDao.AllData();
			m.addAttribute("list", list);

			return "adminCustomerDetail2";
		} else {
			return "notvalide";
		}
	}
	
	
	@RequestMapping("/AdminViewAllOrder")
	public String AdminViewAllOrder(Model m) {
		
		List<FoodTable> list =addDao.AdminViewAllOrder();
		
		
		m.addAttribute("list",list);

			return "/AdminViewAllOrder";
		
	}
	

	
	@RequestMapping("/Delete/{fid}")
	public String deletepageOf_food(@PathVariable Long fid, Model m) {
		Long a = addDao.deleteFood(fid);
		if (a > 0) {
			List<FoodAdmin> list =addDao.AllfoodByDelete();
		
			m.addAttribute("list",list);

			return "adminViewFood";
		} else {
			return "notvalide";
		}
	}
	
	
	
	@RequestMapping("/saveInsertFood")
	public String saveInsertFood_page(@RequestParam("f_food") String f_food,@RequestParam("f_discription") String f_discription,@RequestParam("f_price") Long f_price,Model m)
	{   
		FoodAdmin f=new FoodAdmin();
		f.setF_food(f_food);
		f.setF_discription(f_discription);
		f.setF_price(f_price);
		
		addDao.AdminInsertFood(f);
		
		List<FoodAdmin> list=addDao.Available_food();
		m.addAttribute("list",list);
		return "adminViewFood";
	}
	
	
	
	//insert food page
	@RequestMapping("/AdminAddFood")
	public String AdminAddFood_page()
	{
		
		return "AdminAddFood";
	}
	
	
	
	
	
	
	//admin side customer details
	
	@RequestMapping("/adminCustomerDetail")
	public String adminCustomerDetail_page(Model m)
	{  
		  List<CusBean> list= addDao.AllData(); 
		  m.addAttribute("list",list);
		
		return "adminCustomerDetail";
	}
	
	
	
	
	
	
	
	
	

	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String saveFoods(@ModelAttribute("selectedData") FoodTable selectedData,Model m,HttpServletRequest req) {

		addDao.orderConform(selectedData);
		
         String cemail=req.getParameter("cemail");
			/* System.out.println("emai si-------------"+cemail); */
			  List list = addDao.getAllFoods();
			 
		  m.addAttribute("list", list);
		 
		return "order";

	}


	@RequestMapping("/conform_order")
	public String conform_order_page()
	{

		return "conform_order";
	}

	@RequestMapping("/Add_new_food")
	public String Add_new_food() {

		return "validate";
	}

	@RequestMapping("/logout")
	public String logout() {

		return "index";
	}

}
