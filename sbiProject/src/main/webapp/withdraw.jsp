<%@page import="dto.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Width-draw</title>

<link rel="stylesheet" href="./CSS/deposit.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
#nav {
	background-color: white;
	display: block;
	color: white;
	padding: 20px;
	word-spacing: 15px;
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

p {
	margin-bottom: -15px;
}
</style>
</head>
<body>
	<%
	Account accountdetails = (Account) request.getAttribute("dbData");
	%>
	<div id="heading">
	
	
	<%int id=accountdetails.getId(); %>

		<h1>STATE BANK OF INDIA</h1>
	</div>
	<div id="body">
		<div id="nav">
			<ul>
				<li><a href="home?id=<%=accountdetails.getId()%>">Home</a></li>
				<li><a href="">logout</a></li>

				

			</ul>

		</div>

		<section>
			<div id="info-1">
				<p>
					<strong>Account Number :</strong><%=accountdetails.getAccountNumber()%></p>
				<br>
				<p>
					<strong>Name :</strong>
					<%=accountdetails.getAccountHolderName()%>
				</p>
				<br>

			</div>
			<div id="info-2">
				<p>
				<strong>	Balance : </strong><%=accountdetails.getBalance()%></p>
				<br>
				<p>
					<strong>Ifce-Code :</strong><%=accountdetails.getIfce_code()%></p>
				<br>
			</div>
		</section>




		<div>
		
			

		</div>
		<div  id="transation">
		<form action="deleteBalance?id=<%=id%>" method="post">
				
				<input type="number"  placeholder=" Enter balance to width draw" name="front-end-balance"> 
		
			
			<section id="dtn-3"><button>width-draw</button></section>
			
			</form>
			
			
			
			
		
		</div>

	</div>

	<div id="footer">
		<p>Desingned by :Balduri Sai Kumar</p>
		<p>copy-rights 2024</p>

	</div>

</body>
</html>