package com.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.BookingOrder;
import com.bean.BookingTable;
import com.bean.FoodAdmin;
import com.dao.BookDAO;

@Controller
public class BookingController 
{
	
	@Autowired
	BookDAO bookDao;
	
	

	@RequestMapping("/DeleteBooking/{fid}")
	public String deletepageBooking(@PathVariable Long fid, Model m) {
		Long a = bookDao.deletBooking(fid);
		return "redirect:/AdminBookingHistory";
	}
	
	
	@RequestMapping("/AdminBookingHistory")
	public String AdminBookingHistory(Model m) {
		
		List<BookingTable> list =bookDao.AdminBookingHistory();
		
		m.addAttribute("list",list);

			return "/AdminBookingHistory";
		
	}
	

	
	@RequestMapping("/bookingSuccess") 
	 public String bookingSuccess(@RequestParam("b_id") Long b_id,
			 @RequestParam("foName") String foName,
			 @RequestParam("qauntity") ArrayList<Integer> qauntity,
			 Model m)
	 {  
		BookingTable bt=new BookingTable();
		bt.setBid(b_id);
		BookingOrder b=new BookingOrder();
		 b.setFoName(foName);
		 b.setQauntity(qauntity);
		 b.setBt(bt);
		 
		 
		 bookDao.saveBookingOrder(b); 
		
		
		 m.addAttribute("b_id", b_id);
		 
		 return "bookingSuccess";
	 }
	
	
	@RequestMapping("/menuBooking") 
	 public String menuBooking()
	 {
		 return "menuBooking";
	 }
	
	@RequestMapping(value="/saveBooking",method = RequestMethod.POST)
    public String saveBooking(@RequestParam("bname") String bname, @RequestParam("bemail") String bemail,
			@RequestParam("bcontact") Long bcontact,
			@RequestParam("bdate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date bdate,
			@RequestParam("btime") @DateTimeFormat(pattern = "HH:ss") Date btime,
			@RequestParam("bnumber_of_person") Long bnumber_of_person, @RequestParam("session") String session, Model m)
	{

		BookingTable booking = new BookingTable();
		booking.setBname(bname);
		booking.setBemail(bemail);
        booking.setBcontact(bcontact);
		booking.setBdate(bdate);
        booking.setBtime(btime);
        booking.setBnumber_of_person(bnumber_of_person);		
		booking.setSession(session);
		
        bookDao.saveBooking(booking);
       List<FoodAdmin> l= bookDao.AllFood();
        
        m.addAttribute("b_id",booking.getBid());
        m.addAttribute("food", l);
        
        
        return "menuBooking";
    	 
    }
	
	
	 @RequestMapping("/book") 
	 public String bookTable()
	 {
		 return "book";
	 }
	
	

}
