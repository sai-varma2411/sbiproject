<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registaion</title>
<link rel="stylesheet" href="./CSS/register.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div id="heading">
	
			<h1>STATE BANK OF INDIA</h1>
	</div>
	<div id="body">
			<center>
				<img src="https://bank.sbi/o/SBI-Theme/images/custom/logo.png">
			</center>
		    <h2>online banking</h2>
			<div id="container">
				   
				   <form action="SigUp" method="post">
				   <table>
				   <tr><td>	<label>AccountNo</label></td><td><input type="text" name="acno" required="required"> <br></td></tr>
				   <tr><td>	<label>Full Name</label></td><td><input type="text" name="name" required="required"> <br></td></tr>
				 <tr>  <td>	<label>Age</label></td><td><input type="text" name="age" required="required"> <br></td></tr>
				 <tr><td>  	<label>phoneNumber</label></td><td><input type="text" name="phno" required="required"> <br></td></tr>
				<tr> <td>  	<label>Addhar number</label></td><td><input type="text" name="addharNo" required="required"> <br></td></tr>
				<tr> <td>  	<label>Village</label></td><td><input type="text" name="village" required="required"> <br></td></tr>
				<tr> <td>  	<label>Distic</label></td><td><input type="text" name="Distic" required="required"> <br></td></tr>
				<tr> <td>  	<label>State</label></td><td><input type="text" name="state" required="required"> <br></td></tr>
				<tr> <td>  	<label>Country</label></td><td><input type="text" name="country" required="required"> <br></td></tr>
				<tr> <td>  	<label>Pincode</label></td><td><input type="text" name="pincode" required="required"> <br></td></tr>
				<tr> <td>  	<label>Email</label></td><td><input type="text" name="email" required="required"> <br></td></tr>
				<tr> <td>  	<label>Password</label></td><td><input type="text" name="pasw" required="required"> <br></td></tr>
				<tr> <td>  <input type="submit" value="register"> </td><td><input type="reset" required="required"> <br></td></tr>
				   
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