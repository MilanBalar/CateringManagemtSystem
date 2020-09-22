<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.dao.AddDAO"%>
<%@page import="com.bean.CusBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
	<title>View All Data </title>
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
				    
				 </h1>
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
				   
				        <h3 align="center">View All Available Food List</h3>
				   
				        

					
					
					
					
					<form action="milan">
					   <table border="" align="center">
					      <tr>  
					           <th>Food Id</th>
					           <th>Food Name</th>
					           <th>Food Discription</th>
					           <th>Price</th>
					        <!--    <th>Customer id</th> -->
					           <th>Delete</th>
					          
					      </tr>
					      
					      <c:forEach var="c" items="${list }">
					         <tr align="center">
					          <td>${c.f_id }</td> 
					          <td>${c.f_food }</td>
					          <td>${c.f_discription }</td>
					          <td>${c.f_price }</td>
					         <%--  <td>${c.cid }</td> --%>
					          
					          <td><a href="Delete/${c.f_id }">Delete</a></td>
					          
					          
					              
					      
					        </tr>
					      </c:forEach>
					   
					   </table>
					
					</form>
					<br><br><br><br><br><br>
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