<%@page import="dto.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>

<link rel="stylesheet" href="./CSS/home.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
#nav{

background-color:white;
display: block;
color: white;
padding: 20px;
word-spacing: 15px;
a{
text-decoration:none;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

li {
  display: inline;
  color: white;
}

</style>
</head>
<body>
	<%Account accountdetails=(Account)request.getAttribute("dbData") ;%>
	<div id="heading">
	
			<h1>STATE BANK OF INDIA</h1>
	</div>
	<div id="body">
<div id="nav">
	<ul>
  <li><a href="home?id=<%=accountdetails.getId()%>">Home</a></li>
 
  <li><a href="#about">logout</a></li>
</ul>
		
	
	
	</div>
	<h1>Profile</h1>
	<div>
	<table>
	<tr>
		<th>ACCOUNT NUMBER</th>
		<td><%=accountdetails.getAccountNumber()%></td>
	</tr>
	<tr>
		<th>ACCOUNT HOLDER NAME</th>
		<td><%=accountdetails.getAccountHolderName() %></td>
	</tr>
	<tr>
		<th>ACCOUNT HOLDER AGE</th>
		<td><%=accountdetails.getAge() %></td>
	</tr>
	<tr>
		<th>ACCOUNT VILLAGE</th>
		<td><%=accountdetails.getVillage()%></td>
	</tr>
	<tr>
		<th>ACCOUNT HOLDER DISTIC</th>
		<td><%=accountdetails.getDistice()%></td>
	</tr>
	<tr>
		<th>ACCOUNT HOLDER STATE</th>
		<td><%=accountdetails.getState() %></td>
	</tr>
	<tr>
		<th>ACCOUNT HOLDER COUNTRY</th>
		<td><%=accountdetails.getCountry()%></td>
	</tr>
	<tr>
		<th>ACCOUNT HOLDER IFCE-CODE</th>
		<td><%=accountdetails.getIfce_code()%></td>
	</tr>
	<tr>
		<th>ACCOUNT HOLDER EMAIL</th>
		<td><%=accountdetails.getEmail() %></td>
	</tr>
	<tr>
		<th>ACCOUNT HOLDER BALANCE</th>
		<td><%=accountdetails.getBalance()%></td>
	</tr>
	
		</table>
	
	</div>
			
	</div>
	
	<div id="footer">
		<p>Desingned by :Balduri Sai Kumar</p>
		<p>copy-rights 2024</p>
	
	</div>

</body>
</html>