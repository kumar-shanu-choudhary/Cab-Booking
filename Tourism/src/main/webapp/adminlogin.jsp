<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style>
body {
	
}

.container {
	background-image: url('image/output.gif');
	width: 550px;
	height: 550px;
	margin-top: 0px;
	margin-left: 350px;
}

.formcenter {
	position: absolute;
	left: 500px;;
	margin-top: 184px;
	max-width: 227px;
	padding: 16px;
	background-color: transparent;
}
</style>
</head>

<body style="background-image: url('image/669f9e9981a7cb4bfe804c72fb79dbdc.gif'); background-size: cover">
	<div class="container">


		<form action="adminlogincontroler" method="post">
			<div class="formcenter">


				<input type="email" required="required"
					placeholder="Enter your email" name="email"
					style="background-color: rgb(235 0 0/ 0%); font-size: larger; border-radius: 100px; color: white;">

				<br> <br> <input type="password" required="required"
					placeholder="Enter your password" name="password"
					style="background-color: rgb(235 0 0/ 0%); font-size: larger; border-radius: 100px; color: white;">
				<br> <br> 
					<button
						style="background-color: rgb(235 0 0/ 0%); font-size: larger; border-radius: 100px; color: white;">
						<a href="index.jsp" style="color: white; text-decoration: none;">Home</a>
					</button>
					<button type="reset"
						style="background-color: rgb(235 0 0/ 0%); font-size: larger; border-radius: 100px; color: white;">Clear</button>


					<button type="submit"
						style="background-color: rgb(235 0 0/ 0%); font-size: larger; border-radius: 100px; color: white;">
						Submit</button> <%
 String m = (String) request.getAttribute("msg");
 if (m != null) {
 %>

					<center>

						<h3 style="color: red;"><%=m%></h3>
					</center> <%
 }
 %>
				
			</div>


		</form>
	</div>
</body>
<%@include file="footer.jsp"%>
</html>