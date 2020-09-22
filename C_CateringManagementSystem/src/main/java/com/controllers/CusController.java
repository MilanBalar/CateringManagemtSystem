package com.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bean.BookingTable;
import com.bean.CusBean;

import com.bean.FoodAdmin;
import com.bean.FoodTable;
import com.dao.AddDAO;
import com.dao.BookDAO;
import com.dao.cusDAO;

@Controller
public class CusController
 {  
	@Autowired
	cusDAO dao;
	
	  @Autowired
	  AddDAO addDao;

	  @Autowired
	  BookDAO bookDao;
	  
	  @RequestMapping(value="/CustomerbookingSuccess",method = RequestMethod.POST)
	    public String saveBooking(@RequestParam("cid") Long cid,@RequestParam("foName") String ffood,
				@RequestParam("fquantity") ArrayList<Integer> fquantity,@RequestParam("fprice") ArrayList<Integer> fprice, Model m)
	   {
		  
		  ArrayList<Integer> temp=new ArrayList<Integer>();
		  ArrayList<Integer> temp1=new ArrayList<Integer>();
		  ArrayList<Long> temp2=new ArrayList<Long>();
		  
		  FoodTable f=new FoodTable();
              f.setFfood(ffood);
              for(int i=0;i<fquantity.size();i++)
    		  {
    		      if(fquantity.get(i)!=0)
    		      {
    		    	 temp.add(fquantity.get(i));
    		    	 temp1.add(fprice.get(i));
    		         temp2.add((long) (fprice.get(i)*fquantity.get(i)));
    		      }
    		  }
              
              f.setFquantity(temp);
              f.setFprice(temp1);
              f.setFtotal(temp2);
              CusBean c=new CusBean();
              c.setCid(cid);
              f.setCus(c);
              
              dao.saveCustomerBook(f);
              
              Long id=f.getFid();
              FoodTable ft=dao.getDetailsById(id);
              
              m.addAttribute("fname",ft.getFfood());
              m.addAttribute("fquantity",ft.getFquantity());
              m.addAttribute("fprice",ft.getFprice());
              m.addAttribute("ftotal",ft.getFtotal());
              m.addAttribute("order_id",ft.getFid());

		  return "orderSummary";   
	       
	    	 
	    }
		
	  
	 
	  
 @RequestMapping("/reservation")
	public String demo()
	{
	  return "reservation";	
		 
		
	}
 
 @RequestMapping("/beer")
	public String login()
	{ 
	  return "beer";	
		
		
	}
	
    @RequestMapping(value="/save",method = RequestMethod.POST)
    public String loginPage(@RequestParam("cname") String cname,
    		@RequestParam("cemail") String cemail,
			@RequestParam("ccontact") Long ccontact,
			@RequestParam("cdate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date cdate,
			@RequestParam("ctime") @DateTimeFormat(pattern = "HH:ss") Date ctime,
			@RequestParam("ccity") String ccity,
			@RequestParam("cpass") String cpass)
    {
       CusBean c=new CusBean();
       c.setCname(cname);
       c.setCemail(cemail);
       c.setCcontact(ccontact);
       c.setCdate(cdate);
       c.setCtime(ctime);
       c.setCcity(ccity);
       c.setCpass(cpass);	
    	
    	
    	dao.saveData(c);
        return "beer";
    	 
    }
    @RequestMapping(value="/DoneOrder",method = RequestMethod.POST)
    public String DoneOrderPage()
    {
        
        return "DoneOrder";
    	 
    }
    
 
	
	  @RequestMapping("/validate")
	  public String validatePage(HttpServletRequest req,Model m) throws Exception 
		{  
		  String user=req.getParameter("User");
		  String cemail=req.getParameter("cemail");
		  String cpass=req.getParameter("cpass");
		   if (user.equals("Admin"))
	      {		
			if(cemail.equals("milanbalar2000@gmail.com") && cpass.equals("123"))
				{
				
		         return "adminView";
				}
			else{
				
				 return "notvalide";
		     	}
	       }
		
		  
		  
		   else {
		
			  /*Boolean flag=dao.findUser(cemail,cpass);*/
			 /* if(flag)*/
			 /* {  List<FoodAdmin> l= bookDao.AllFood();
		        
		        
		        m.addAttribute("food", l);
		        
				  m.addAttribute("cemail", cemail);
				  return "customerFood";
			  }*/
				  List c = dao.findUser(cemail, cpass);
				if (c != null && c.size() > 0) {
					CusBean cid = (CusBean) c.get(0);
					List<FoodAdmin> l= bookDao.AllFood();
					m.addAttribute("food", l);
                    m.addAttribute("cid", cid);
                    return "customerFood";
				}
			  else
			  {
				  
				  return "notvalide";
			  }
			  
		   }
			 
        }
	 @RequestMapping("/food") 
	 public String foodPage()
	 {
		 return "food";
	 }
	 @RequestMapping("/contact") 
	 public String contactpage()
	 {
		 return "contact";
	 }
	 @RequestMapping("/menu") 
	 public String menupage()
	 {
		 return "food";
	 }
	 
	 @RequestMapping("/about") 
	 public String aboutpage()
	 {
		 return "contact";
	 }
	
	 
	 @RequestMapping("/index") 
	 public String Homepage()
	 {
		 return "index";
	 }
	 @RequestMapping("/blog") 
	 public String blogpage()
	 {
		 return "blog";
	 }
	 
	
	
}
