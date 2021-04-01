<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<title>Booking Page</title>
	<meta  charset=iso-8859-1" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if IE 7]>
        <link href="css/ie7.css" rel="stylesheet" type="text/css" />  
	<![endif]-->
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
				   
				        <h2 align="center"> Table Booking Form</h2>
						
						
						<br><br>
						
				       
					    <ul class="news">
							<form action="saveBooking" method="post">
							    <table align="center">
							       <tr>
							          <td>Customer Name</td>
							          <td><input type="text" name="bname" required="required"></td>
							       </tr>
							       <tr>
							          <td>Email</td>
							          <td><input type="email" name="bemail" required="required"></td>
							       </tr>
							       <tr>
							          <td>Contact No</td>
							          <td><input type="text" name="bcontact" required="required"></td>
							       </tr>
							       <tr>
							          <td>Date</td>
							          <td><input type="date" name="bdate" required="required"></td>
							       </tr>
							       <tr>
							          <td>Arrival Time</td>
							          <td><input type="time" name="btime" required="required"></td>
							       </tr>
							        <tr>
							          <td>Number Of Person</td>
							          <td><input type="text" name="bnumber_of_person" required="required"></td>
							       </tr>
							       <tr>
								<td><input type="radio" name="session" value="Morning">Morning</td>
								<td><input type="radio" name="session" value="Evening">Evening</td>
							    </tr>
							     
							       
							        <tr>
							         
							          <td colspan="5" align="center"><input type="submit" value="Book Table" ></td>
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