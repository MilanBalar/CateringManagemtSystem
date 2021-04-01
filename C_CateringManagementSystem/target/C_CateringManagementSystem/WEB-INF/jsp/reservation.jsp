<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<title>Registration Page</title>
	<meta  charset=iso-8859-1" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if IE 7]>
        <link href="css/ie7.css" rel="stylesheet" type="text/css" />  
	<![endif]-->
	
	 <style>
	   table.d {
     table-layout: fixed;
     width: 80%;  
    }
   
    
    </style>
    
    <script src= 
    "https://smtpjs.com/v3/smtp.js"> 
  </script> 
  

    
</head>

<body>
    
	<div id="background">
	  <div class="page">
	       <div id="header">
		          <ul class="navigation">
				  <li><a href="food">OUR FOOD</a></li>
				  <li><a href="beer">LOGIN</a></li>
				  </ul>
				  
				  <a id="logo" href="index.jsp"><img src="images/logo2.jpg" width="276" height="203" alt="Steak House" title="Steak House"></a>
				  
				  <ul id="navigation">
				  <li><a class="active" href="reservation">REGISTER</a></li>
				  <li><a href="contact">CONTACT US</a></li>
				  </ul>
		   </div>
		   <div id="body">
		   
		    
				
			   
			    <div class="content">
				   <div class="body">
				   
				        <h2 align="center">Register Your Details</h2><br>
						 <ul class="news">
							<form action="save" method="post">
							    <table border="1" align="center" class="d">
							       <tr>
							          <td>Customer Name</td>
							          <td><input type="text" name="cname" required="required"></td>
							       </tr>
							       <tr>
							          <td>Customer Email</td>
							          <td><input type="email" name="cemail"  required="required">
							           
							           </td>
							       </tr>
							          
               
							    		       
							       
							       <tr>
							          <td>Customer Contact</td>
							          <td><input type="text" name="ccontact" required="required"></td>
							       </tr>
							       <tr>
							          <td>Date of Delivery</td>
							          <td><input type="date" name="cdate" required="required"></td>
							       </tr>
							        <tr>
							          <td>Arrival Time</td>
							          <td><input type="time" name="ctime" required="required"></td>
							       </tr>
							      
							       <tr>
							          <td>Customer Password</td>
							          <td><input type="password" name="cpass" required="required"></td>
							       </tr>
							    <%--  <h1 align="center">  <a href="https://www.fast2sms.com/dev/bulk?authorization=Py6hQsjbJztE3dwaIAR7xTXGUn10KiClqrc85LmYeDZSHN4MkpP3MfuCVULp9SjzJ2dnrycGENwveIT6&sender_id=FSTSMS&language=english&route=qt&numbers=${ccontact }&message=21117&variables={AA}&variables_values=1234">
							         Generate OTP</a></h1> --%>
							        <tr>
							         
							          <td colspan="2" align="center"><input type="submit" value="   Register  " "></td>
							       </tr>
							       
                         				 			
							
							
						  	
							
							
                                </table>	
                                <br> <br> <br> <br> 						
							</form>
							
							
							
						
							
						</ul>
				       
				   
				   </div>
				</div>	
			   
		   </div>
		   
		   
		   
		   
		   <div id="footer">
                <ul>
					<li class="first">
					     <ul>
							<li><a href="index.jsp">Home</a></li>	
							<li><a href="about">About</a></li>	
							<li><a href="menu">Menu</a></li>	
							<li><a href="beer">Login</a></li>	
							<li><a href="blog">Blog</a></li>	
							<li><a href="contact">Contact Us</a></li>
						 </ul>
					</li>
					<li>
					   <span>Follow us:</span> 
					   <a href="http://facebook.com/freewebsitetemplates" class="facebook">&nbsp;</a> 
					   <a href="http://twitter.com/fwtemplates" class="twitter">&nbsp;</a>
					</li>
					<li class="last">
				        <span> &copy; copyright 2020 &copy;. All rights reserved. designed by Milan Balar</span> 	
					</li>
				
				</ul>		       
			   
		   </div>
		
	  </div> 
     </div>	  
	
</body>
</html>