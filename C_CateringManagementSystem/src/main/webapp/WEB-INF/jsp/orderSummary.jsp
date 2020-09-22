<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<style>
			    table.d
			     {
                    table-layout: fixed;
                     width: 100%;  
                 }
				</style>
	   
	
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
				  <li><a href="reservation">REGISTER</a></li>
				  <li><a href="contact">CONTACT US</a></li>
				  </ul>
		   </div>
		   <div id="body">
		   
		   
			    <div class="content">
				   <div class="body">
				   
				      <form action="DoneOrder" method="post">
				      <h2 align="center">Order Summary</h2>
				        <table class="d" border="1" align="center">
				           <tr>
				             <th>
				                 Order Id
				             </th>
				             <th>
				                 Ordered Food Name
				             </th>
				             <th>
				                  Food Quentity
				             </th>
				             <th>
				                  Food Price
				             </th>
				             <th>
				                  Total Price
				             </th>
				           </tr> 
				           
				           
				             
				           <tr>
				              <td>${order_id }</td>
				             <%--  <td>${fname }</td>
				              <td>${fquantity }</td>   --%>
				              <td> <c:forEach var="m" items="${fname }">
					               ${m }<br>
					         
					              </c:forEach>
					         </td>
					         <td> <c:forEach var="n" items="${fquantity }">
					               ${n }<br>
					         
					              </c:forEach>
					         </td>
					         
					         <td> <c:forEach var="k" items="${fprice }">
					               ${k }<br>
					               
					              </c:forEach>
					         </td>
					          <td> 
					          <c:set var="total" value="${0}"/>
					          <c:forEach var="j" items="${ftotal }">
					              ${j }<br>
					       <c:set var="total" value="${total + j }" />
					              </c:forEach>
					            
					         </td>
					         
					     
					     
					        
				           </tr>   
				           
				           <tr>
				             <td colspan="5" align="center"> total Amount is :${total } </td>
				           </tr>
				           
				           <tr>
				              <td colspan="5" align="center"><input type="submit" value="Conform Order"> </td>
				           
				           
				           </tr>
				    
				       </table>
				     </form>
				   
				   
				       			
				   
							<br><br><br><br><br>
					   
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