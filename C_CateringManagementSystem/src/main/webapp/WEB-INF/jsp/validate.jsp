<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
    <form action="order" method="get">
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
				   
				        <h3>MENU</h3>
				   
				        <ul class="section">
						    <li class="odd">
								   <form action="order">
								   <ul>
								       <li>
									      <h2>Chinese Food  </h2> 
										  <p>
										    <table>
										        <input type="hidden"  name="cemail" value=${cemail }></td>
										         
										      <tr>
										    
										         <td>Quntity &emsp;&ensp;
										              
										                 <select>
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Manchurian></td>
										         <td>Manchurian &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;   70RS</td>
										                    
										      </tr>
										      <tr>
										         <td>Quntity &emsp;&ensp;
										              
										                <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Chinese_Bhel></td>
										         <td>Chinese Bhel &emsp;&emsp;&emsp;&emsp;&emsp;70Rs</td> 
										                      
										      </tr>
										       <tr>
										          <td>Quntity &emsp;&ensp;
										              
										                 <select>
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Hakka_Noodles></td>
										         <td>Hakka Noodles &emsp;&emsp;&emsp;&emsp;75Rs</td>              
										      </tr>
										         
										     </table>
										  </p>
									   </li>
									   <li>
									      <h2>Punjabi Food </h2> 
										  <p>
										    <table>
										      <tr>
										          <td>Quntity &emsp;&ensp;
										              
										                 <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Malay_Kofta></td>
										         <td>Malay Kofta &emsp;&emsp;&emsp;&emsp;&ensp;&ensp;;200Rs</td>              
										      </tr>
										      <tr>
										         <td>Quntity &emsp;&ensp;
										              
										                <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Kaju_Kari></td>
										         <td>Kaju Kari &emsp;&emsp;&ensp;&emsp;&emsp;&emsp;&emsp;180Rs</td>              
										      </tr>
										       <tr>
										          <td>Quntity &emsp;&ensp;
										              
										                 <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Kaju_Masala></td>
										         <td>Kaju Masala &emsp;&emsp;&emsp;&emsp;&emsp;190Rs</td>              
										      </tr>
										      
										         
										     </table>
										  </p>
									   </li>
									   <li>
									      <h2>Italian Food </h2> 
										  <p>
										    <table>
										      <tr>
										         <td>Quntity &emsp;&ensp;
										              
										                <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Margherita_Pizza></td>
										         <td>Margherita Pizza &emsp;&emsp;&emsp;&ensp;200Rs</td>              
										      </tr>
										      <tr>
										          <td>Quntity &emsp;&ensp;
										              
										                 <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Mushroom_Risotto></td>
										         <td>Mushroom Risotto &emsp;&emsp;&emsp;180Rs</td>              
										      </tr>
										       <tr>
										         <td>Quntity &emsp;&ensp;
										              
										                 <select>
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Focaccia_Bread></td>
										         <td>Focaccia Bread &emsp;&emsp;&emsp;&emsp;190Rs</td>              
										      </tr>
										      
										         
										     </table>
										  </p>
									   </li>
								   </ul>
							</li>
							<li>
							   
							
							   
								   <ul>
								       <li>
								       
								       <h2>Gujrati Food  </h2> 
										 <li> <p>
										    <table>
										      <tr>
										          <td>Quntity &emsp;&ensp;
										              
										              <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Helf_Dish></td>
										         <td>Helf Dish &emsp;&emsp;&emsp;&emsp;&emsp;70Rs</td>              
										      </tr>
										      <tr>
										         <td>Quntity &emsp;&ensp;
										              
										                <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Full_Dish></td>
										         <td>Full Dish &emsp;&emsp;&emsp;&emsp;&emsp;100Rs</td>              
										      </tr>
										       <tr>
										         <td>Quntity &emsp;&ensp;
										              
										                <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Special_Dish></td>
										         <td>Special Dish &emsp;&emsp;&emsp;&ensp;190Rs</td>              
										      </tr>
										      
										         
										     </table>
										     </p>
										     </li>
										   <li>  
									       <h2>SouthIndean Food  </h2> 
										  <p>
										    <table>
										      <tr>
										          <td>Quntity &emsp;&ensp;
										              
										                 <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Dhosa></td>
										         <td>Dhosa &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;100Rs</td>              
										      </tr>
										      <tr>
										         <td>Quntity &emsp;&ensp;
										              
										                <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Meduvada></td>
										         <td>Meduvada &emsp;&emsp;&emsp;&emsp;&emsp;100Rs</td>              
										      </tr>
										       <tr>
										          <td>Quntity &emsp;&ensp;
										              
										                 <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Uttapam></td>
										         <td>Uttapam &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;190Rs</td>              
										      </tr>
										     
										      
										         
										     </table>
										     </p>
										 </li>
										 <li>
									      <h2>Fast Food  </h2> 
										  <p>
										    <table>
										      <tr>
										         <td>Quntity &emsp;&ensp;
										              
										                <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=VadaPav></td>
										         <td>VadaPav &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;   70RS</td>
										                       
										      </tr>
										      <tr>
										          <td>Quntity &emsp;&ensp;
										              
										                <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Dabeli></td>
										         <td>Dabeli &emsp;&emsp;&emsp;&emsp;&emsp;70Rs</td>              
										      </tr>
										       <tr>
										          <td>Quntity &emsp;&ensp;
										              
										                <select >
										                    <option>1 </option>
										                    <option>2 </option>
										                    <option>3 </option>
										                    <option>4 </option>
										                    <option>5 </option>
										                    <option>6 </option>
										                    <option>7 </option>
										                    <option>8 </option>
										                    <option>more</option>
										                 
										                 </select>
										               
										               </td>
										         <td><input type="checkbox"  name="selectedData" value=Burger></td>
										         <td>Burger &emsp;&emsp;&emsp;&emsp;75Rs</td>              
										      </tr>
										         
										     </table>
										  </p>
									   </li>
										 
										 
										 
										 </ul>      
										     
										   
										     
									   
							  
							</li>
						</ul>
				                           <table align="center">
										      <!-- <tr> 
										          <td>Date of Delivery  : &ensp;<input type="date" name="date" value="Date of Delevery "> </td>
										        
										      
										      </tr> -->
										      <tr>
										          <td><input type="submit" value="Click Here For Order "> </td>
										      </tr>
										         
										     </table>
				   </div>
				</div>	
			   
		   </div>
		   
		                                  
		   </form>
		   
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