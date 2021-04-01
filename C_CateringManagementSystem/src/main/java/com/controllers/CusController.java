package com.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	  private JavaMailSender mailSenderObj;

	  @Autowired
	  BookDAO bookDao;
	  static String emailToRecipient, emailSubject, emailMessage;
	  static final String emailFromRecipient = "cateringmanagementteam@gmail.com";
	  
	  private Logger logger = Logger.getLogger(CusController.class);

	  
	// This Method Is Used To Prepare The Email Message And Send It To The Client
		@RequestMapping(value = "/sendEmail", method = RequestMethod.GET)
		public String sendEmailToClient(HttpServletRequest request,HttpSession session) {
 
			final String uEmail = (String) request.getSession().getAttribute("cusEmail");  
			String bill=(String) request.getSession().getAttribute("bill"); 
           
			// Reading Email Form Input Parameters		
			emailSubject = "Reg : Food Order at Royal Catering ";
			emailMessage = "Thank you for Order in Royal Catering. Your order is ariving soon... your total amount  is : "+bill;
			emailToRecipient =uEmail;

			// Logging The Email Form Parameters For Debugging Purpose
			System.out.println("\nReceipient?= " + emailToRecipient + ", Subject?= " + emailSubject + ", Message?= " + emailMessage + "\n");

			mailSenderObj.send(new MimeMessagePreparator() {
				public void prepare(MimeMessage mimeMessage) throws Exception {

					MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");				
					mimeMsgHelperObj.setTo(emailToRecipient);
					mimeMsgHelperObj.setFrom(emailFromRecipient);				
					mimeMsgHelperObj.setText(emailMessage);
					mimeMsgHelperObj.setSubject(emailSubject);

				
				}
			});
			System.out.println("\nMessage Send Successfully.... Hurrey!\n");

		    System.out.println("success Thank You! Your Email Has Been Sent!");
		    return "DoneOrder";
		}

			  
	  
		@RequestMapping(value = "/CustomerbookingSuccess", method = RequestMethod.POST)
		public String saveBooking(@RequestParam("cid") Long cid, @RequestParam("foName") String ffood,
				@RequestParam("fquantity") ArrayList<Integer> fquantity, @RequestParam("fprice") ArrayList<Integer> fprice,
				@RequestParam("oderAddress") String oderAddress,Model m, HttpServletRequest req) {

			ArrayList<Integer> temp = new ArrayList<Integer>();
			ArrayList<Integer> temp1 = new ArrayList<Integer>();
			ArrayList<Long> temp2 = new ArrayList<Long>();

			FoodTable f = new FoodTable();
			f.setFfood(ffood);
			for (int i = 0; i < fquantity.size(); i++) {
				if (fquantity.get(i) != 0) {
					temp.add(fquantity.get(i));
					temp1.add(fprice.get(i));
					temp2.add((long) (fprice.get(i) * fquantity.get(i)));
				}
			}

			// total bill
			Long bill = 0l;
			for (int i = 0; i < temp2.size(); i++) {
				bill = bill + temp2.get(i);

			}
			//session for bill
			req.getSession().setAttribute("bill", bill.toString());
			
			//session address
			req.getSession().setAttribute("orderAddress", oderAddress);
	       
			System.out.println("total bill is " + bill);
			f.setFquantity(temp);
			f.setFprice(temp1);
			f.setFtotal(temp2);
			f.setFbill(bill);
			f.setOrderAddress(oderAddress);
			CusBean c = new CusBean();
			c.setCid(cid);
			f.setCus(c);
            

			dao.saveCustomerBook(f);

			Long id = f.getFid();
			FoodTable ft = dao.getDetailsById(id);

			m.addAttribute("fname", ft.getFfood());
			m.addAttribute("fquantity", ft.getFquantity());
			m.addAttribute("fprice", ft.getFprice());
			m.addAttribute("ftotal", ft.getFtotal());
			m.addAttribute("order_id", ft.getFid());

			logger.info("access order page ");
			// logger.error("error msg for order page");
			// session
			String Uname = (String) req.getSession().getAttribute("cusUser");

			if (Uname == null) {
				return "index";
			} else {

				return "orderSummary";
			}

		}

	  
	 
	  
		@RequestMapping("/reservation")
		public String demo() {
			logger.info("access Register  page ");
			// logger.error("error msg for Register page");
			return "reservation";

		}

		@RequestMapping("/logout")
		public String logout(HttpServletRequest req, HttpSession session) {
			String session_user = (String) session.getAttribute("cusUser");
			req.removeAttribute(session_user);
			req.getSession().invalidate();
			logger.info("access Logout button ");
			// logger.error("error msg for logout page");

			return "index";
		}
		@RequestMapping("/beer")
		public String loginPage() {
			logger.info("access login page ");
			// logger.error("error msg for login page");
			return "beer";

		}

		@RequestMapping("/beer2")
		public String login() {
			logger.info("access login page ");
			// logger.error("error msg for login page");
			return "beer2";

		}

		@RequestMapping(value = "/save", method = RequestMethod.POST)
		public String loginPage(@RequestParam("cname") String cname, @RequestParam("cemail") String cemail,
				@RequestParam("ccontact") Long ccontact,
				@RequestParam("cdate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date cdate,
				@RequestParam("ctime") @DateTimeFormat(pattern = "HH:ss") Date ctime, @RequestParam("ccity") String ccity,
				@RequestParam("cpass") String cpass, HttpServletRequest req, HttpServletResponse res) {
			CusBean c = new CusBean();
			c.setCname(cname);
			c.setCemail(cemail);
			c.setCcontact(ccontact);
			c.setCdate(cdate);
			c.setCtime(ctime);
			c.setCcity(ccity);
			c.setCpass(cpass);


			dao.saveData(c);
			// session

			/*
			 * @CookieValue("User_Name") String Uname HttpSession session =
			 * req.getSession(); session.setAttribute("U.Name", cname);
			 * 
			 * 
			 * // cookies Cookie cook = new Cookie("User_Name", cname); cook.setMaxAge(60 *
			 * 60 * 24); res.addCookie(cook);
			 */

			// req.getSession().setAttribute("uname", cname);
			logger.info("access register button and data is stored ");
			// logger.error("error msg for register page");
			return "beer";

		}

  
    
	@RequestMapping(value = "/DoneOrder", method = RequestMethod.POST)
	public String DoneOrderPage(HttpServletRequest req) {
		// session
		String Uname = (String) req.getSession().getAttribute("cusUser");

		if (Uname == null) {
			return "index";
		} else {
			logger.info("access price summary page ");
			// logger.error("error msg for price summary page");
			  return "redirect:sendEmail";
		}

	}
	
	@RequestMapping("/validate")
	public String validatePage(HttpServletRequest req, Model m) throws Exception {

		String user = req.getParameter("User");
		String cemail = req.getParameter("cemail");
		String cpass = req.getParameter("cpass");

		if (user.equals("Admin")) {
			if (cemail.equals("Admin@gmail.com") && cpass.equals("Admin")) {
				// session
				req.getSession().setAttribute("cusUser", "Admin");
				req.getSession().setAttribute("cusEmail", cemail);
				logger.info("access by admin ");
				String Uname = (String) req.getSession().getAttribute("cusUser");

				if (Uname == null) {
					return "index";
				} else {
					return "adminView";
				}
			} else {

				return "NotValideUser";
			}
		}

		else {

			List c = dao.findUser(cemail, cpass);

			if (c != null && c.size() > 0) {
				CusBean cusDetails = (CusBean) c.get(0);
				String name = cusDetails.getCname();
				CusBean cid = (CusBean) c.get(0);
				List<FoodAdmin> l = bookDao.AllFood();
				m.addAttribute("food", l);
				m.addAttribute("cid", cid);
				// session
				HttpSession session = req.getSession();
				session.setAttribute("cusUser", name);

				// session
				String Uname = (String) req.getSession().getAttribute("cusUser");
				//session
				req.getSession().setAttribute("cusEmail", cemail);

				if (Uname == null) {
					logger.info("access by unauthority ");
					return "index";
				} else {
					logger.info("access customerfood page ");
					return "customerFood";
				}
			} else {
				logger.info("wrong password ");
				return "beer2";
			}

		}

	}

	@RequestMapping("/food")
	public String foodPage(HttpServletRequest req) {
		// session

			logger.info("access food page ");
			return "food";
		
	}

	@RequestMapping("/contact")
	public String contactpage() {
		logger.info("access contact us page ");
		return "contact";
	}

	@RequestMapping("/menu")
	public String menupage() {
		logger.info("access manu page ");
		return "food";
	}

	@RequestMapping("/about")
	public String aboutpage() {
		return "contact";
	}

	@RequestMapping("/index")
	public String Homepage(HttpSession session) {
		session.removeAttribute("Uname");
		session.invalidate();
		return "index";
	}

	@RequestMapping("/blog")
	public String blogpage() {
		logger.info("access blog page ");
		return "blog";
	}

}
	
