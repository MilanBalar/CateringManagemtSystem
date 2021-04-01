<!DOCTYPE html >
<!---- Website template by freewebsitetemplates.com ---->
<%@page import="java.io.PrintWriter"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html>

<head>
	<title>Order Page </title>
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
	       <!-- <div id="header">
		          <ul class="navigation">
				  <li><a href="food.html">OUR FOOD</a></li>
				  <li><a href="beer.html">LOGIN</a></li>
				  </ul>
				  
				  <a id="logo" href="index.html"><img src="images/logo2.jpg" width="276" height="203" alt="Steak House" title="Steak House"></a>
				  
				  <ul id="navigation">
				  <li><a href="reservation.html">REGISTER</a></li>
				  <li><a class="active" href="contact.html">CONTACT US</a></li>
				  </ul>
		   </div> -->
		   <div id="body">
		   
		    
				
			   
			    <div class="content">
				   <div class="body">
				   
				   <h2 align="center">Order Details</h2>
				   
				      
					<form action="orderView">
					   <table border="" align="center">
					      <tr>  
					           <th align="center">Customer Id</th>
					           <th align="center">Food Name</th>
					           <th align="center">Cancel Order</th>  
					      
					      </tr>
					      
					      <c:forEach var="e" items="${list }">
					         <tr align="center">
					          <td>${e.fid }</td>
					          <td>${e.selectedData }</td>
					          
					          <td><a href="DeleteOrder/${e.fid }">cancel</a></td>
					          
					          
					              
					      
					        </tr>
					      </c:forEach>
					   
					   </table>
					
					</form>
				  
				              
				
				  
				 
				  
				  
				  <br><br><br>
				  <form action="conform_order">
				  
				       <h1  align="center">  <input type="submit" value="Conform Your Order "></h1>
						
				   </form>	 
						<br><br><br><br><br><br><br><br><br><br>
				   </div>
				</div>	
			   
		   </div>
		   
		   
		   
		   
		   <div id="footer">
                <ul>
					<li class="first">
					     <ul>
							<li><a href="index.html">Home</a></li>	
							<li><a href="about.html">About</a></li>	
							<li><a href="menu.html">Menu</a></li>	
							<li><a href="beer.html">Login</a></li>	
							<li><a href="blog.html">Blog</a></li>	
							<li><a href="contact.html">Contact Us</a></li>
						 </ul>
					</li>
					<li>
					   <span>Follow us:</span> 
					   <a href="http://facebook.com/freewebsitetemplates" class="facebook">&nbsp;</a> 
					   <a href="http://twitter.com/fwtemplates" class="twitter">&nbsp;</a>
					</li>
					<li class="last">
				        <span> &copy; copyright 2011 &copy;. All rights reserved.</span> 	
					</li>
				</ul>		       
			   
		   </div>
		
	  </div> 
     </div>	  
	
</body>
</html>