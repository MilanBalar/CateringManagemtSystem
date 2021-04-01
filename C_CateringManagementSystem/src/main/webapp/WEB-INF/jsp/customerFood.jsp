<%@page import="com.bean.CusBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
	<title>Our Food </title>
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
				  <li><a class="active" href="food">OUR FOOD</a></li>
				  <li><a href="beer">LOGIN</a></li>
				  </ul>
				  
				  <a id="logo" href="index.jsp"><img src="images/logo2.jpg" width="276" height="203" alt="Steak House" title="Steak House"></a>
				  
				  <ul id="navigation">
				  <li><a href="logout">LOG OUT</a></li>
				  <li><a href="contact">CONTACT US</a></li>
				  </ul>
		   </div>
		   <div id="body">
		   
		    
				
			   
			    <div class="content">
				   <div class="body">
				   
<form action="CustomerbookingSuccess" method="post">
<input type="hidden" name="b_id" value="${cus_id }">
	<h2 align="center">Welcome in Catering System </h2>			        
	<h3 align="center">Choose Your Food</h3>			     
		
		    <%
				CusBean cid = (CusBean) request.getAttribute("cid");
			
			Long id = cid.getCid();
			%>	         
    <table border="1" align="center">
    <tr>
        
					<th >Customer Id</th>
					<th colspan="4" align="center"><input type="text" name="cid" value="<%=id %> "></th>
				
    </tr>
    
     <tr align="center">
        
         <th>Select</th>
         <th>Quantity</th>
         <th>Food Item</th>
         <th>Food Description</th>
         <th>Price</th>
        
     </tr>
    
     <c:forEach var="f" items="${food}">
     
     <tr>
         
         <td align="center"><input type="checkbox" name="foName"
							value="${f.f_food}">
							
	</td>
						<td><select name="fquantity">
								<option value="0">Select</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
						</select></td>
		  <td>${f.f_food }</td>
		  <td>${f.f_discription }</td>
		  <td><input type="hidden" name="fprice" value="${f.f_price }">${f.f_price }</td>
		  
	</tr>	  
 
         	
     
   
  
    </c:forEach>
    
       <br><br>
		 <tr align="center">
         	
	       
	       <td colspan="5"><input type="text" name="oderAddress" placeholder="Enter you Current Address...." required="required"></td>

		</tr><br><br>
  
        <tr align="center">
         	
					<td colspan="5"><input type="submit" value="Place Order"></td>

		</tr><br><br>
		 

 </table></form>
 <br><br><br><br><br><br><br><br>
				       
				   
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