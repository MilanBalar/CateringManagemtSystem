<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Our Food - Website Template</title>
	<meta  charset=iso-8859-1" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if IE 7]>
        <link href="css/ie7.css" rel="stylesheet" type="text/css" />  
	<![endif]-->
	<h1 align="right">
	                 <form action="index">
				        <input type="submit" value="Log Out">
				       </form>
			<style>  
				 table.d {
                    table-layout: fixed;
                     width: 60%;  
                      }
				
            </style>
</head>

<body>
    
	<div id="background">
	  <div class="page">
	       <div id="header">
		          <ul class="navigation">
				  <li><a class="active" href="adminCustomerDetail">Customer</a></li>
				  <li><a href="AdminAddFood">Add Food</a></li>
				  </ul>
				  
				  <a id="logo" href="index.jsp"><img src="images/logo2.jpg" width="276" height="203" alt="Steak House" title="Steak House"></a>
				  
				  <ul id="navigation">
				  <li><a href="AdminViewAllOrder">View All Order</a></li>
				  <li><a href="AdminBookingHistory">Booking History</a></li>
				  </ul>
		   </div>
		   <div id="body">
		   
		    
				
			   
			    <div class="content">
				   <div class="body">
				     <h2 align="center">Insert Food</h2><br><br>
				        <form action="saveInsertFood" method="post">
				           <table border="1" align="center" class="d">
				              <tr>
				                 <td>Food Item</td>
				                 <td><input type="text" name="f_food">   </td>
				                
				              </tr>
				              <tr>
				                 <td>Food Discription</td>
				                 <td><input type="text" name="f_discription">   </td>
				                
				              </tr>
				              <tr>
				                 <td>Food Price(Rs)</td>
				                 <td><input type="text" name="f_price">   </td>
				                
				              </tr>
				               <tr>
				                 
				                 <td colspan="2" align="center"><input type="submit" value="Insert Food ">   </td>
				                
				              </tr>
				           
				           
				           </table>
				        
				        
				        </form>
				        
				        
				        <br><br><br><br><br><br><br>
									
				   
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
							<li><a href="beer">login</a></li>	
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