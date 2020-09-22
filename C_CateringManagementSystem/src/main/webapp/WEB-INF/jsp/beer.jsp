<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
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
</head>

<body>
    
	<div id="background">
	  <div class="page">
	       <div id="header">
		          <ul class="navigation">
				  <li><a href="food">OUR FOOD</a></li>
				  <li><a class="active" href="beer">LOGIN</a></li>
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
				   
				        
				   
				       <ul class="section">
					 	    
								   
							 <h3 align="center">Login Page</h3><br>	   
								       
								       <form action="validate" method="post" >
								          <table align="center" border="1" class="d">
								         
								             <tr>
								                  <td>User Type </td>
								                   <td>
								                   <select name="User">
								                    <option>Customer</option>
								                    <option>Admin</option>
								                    </select>
								                    </td>
								                  
								              </tr>
								              <tr>
								                  <td>Email Id</td>
								                  <td><input type="email" name="cemail" required="required"></td>
								              </tr>
								               
								        <tr>
							                 <td>Password</td>
							                 <td><input type="password" name="cpass" required="required"></td>
							             </tr>
							       
							        <tr>
							         
							          <td align="center" colspan="2"><input type="submit" value="Login" "></td>
							       </tr>
								            
								          
								          
								          
								          
								          
								          
								          </table>
								       
								       
								       
								       
								       </form>
								       
								       <br><br><br>
								       
								       
								   </ul>
							  
							</li>
							
							
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
							<li><a href="beer">Beer</a></li>	
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
				        <span> &copy; copyright 2011 &copy;. All rights reserved.</span> 	
					</li>
				</ul>		       
			   
		   </div>
		
	  </div> 
     </div>	  
	
</body>
</html>