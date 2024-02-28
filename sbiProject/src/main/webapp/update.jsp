<%@page import="dto.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
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
<link rel="stylesheet" href="./CSS/update.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%Account accountdetails=(Account)request.getAttribute("data") ;%>
	<div id="heading">
	
			<h1>STATE BANK OF INDIA</h1>
	</div>
	<div id="body">
	<div id="nav">
	<ul>
  <li><a href="">profile</a></li>
  <li><a href="#news">Blance</a></li>
  <li><a href="update?id=<%accountdetails.getId();%>">Update</a></li>
  <li><a href="#about">logout</a></li>
</ul>
		
	
	
	</div>
	<h1>bdgsfs</h1>
	
	
			
	</div>
	
	
	
	
	
	
	<div id="footer">
		<p>Desingned by :Balduri Sai Kumar</p>
		<p>copy-rights 2024</p>
	
	</div>

</body>
</html>