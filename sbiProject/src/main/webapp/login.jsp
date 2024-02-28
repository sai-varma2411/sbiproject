<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn</title>
<link rel="stylesheet" href="./CSS/login.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<%String message=(String)request.getAttribute("message"); %>
	



	<div id="heading">
	
			<h1>STATE BANK OF INDIA</h1>
	</div>
	<div id="body">
			<center>
				<img src="https://bank.sbi/o/SBI-Theme/images/custom/logo.png">
			</center>
		    <h2>online banking</h2>
			<div id="container">
				  	<%if(message!=null){ %>
	<h1 style="color: red;"><%=message %></h1>
	<%} %> 
				   <form action="login" method="post">
				   <table>
		
				<tr> <td>  	<label>Email</label></td><td><input type="text" name="email" required="required"> <br></td></tr>
				<tr> <td>  	<label>Password</label></td><td><input type="password" name="password" required="required"> <br></td></tr>
				<tr> <td>  <input type="submit" value="login"> </td> <br></td></tr>
				   
				   </table>
				   
				   
				   </form>
			</div>
	</div>
	
	
	
	
	
	
	<div id="footer">
		<p>Desingned by :Balduri Sai Kumar</p>
		<p>copy-rights 2024</p>
	
	</div>

</body>
</html>