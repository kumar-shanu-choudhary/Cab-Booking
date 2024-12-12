<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<style type="text/css">
.header {
	background-color: #10000;
	color: #fff;
	border-color: #080808;
	min-height: 30px;
	border: 1px solid transparent;
	position: fixed;
	top: 0px;
	width: 100%;
}

.button {
	color: #fff;
	background-color: #c9302c;
	border-color: #ac2925;
	box-shadow: inset 0 3px 5pxrgba(0, 0, 0, .125);
	padding: 10px 16px;
	font-size: 18px;
	border-radius: 6px;
	margin: 0% 40%
}
</style>
</head>
<body>

	<div class="header">
		<div class="inner-header">
			<div class="logo">
				<a href="index.jsp" style="color: red"> <img alt=""
					src="image/green-check-mark-icon-on-transparent-background-free-png.png"
					width="40px" height="25px"> Welcome To Tourism
				</a>
			</div>
			<div class="header-link">
				<a href="adminlogin.jsp" ><button style="background-color: #1D63FF;"> <b>Admin </b></button></a>
			</div>
			<div class="header-link">
				<a href="login.jsp"><button style="background-color: #1D63FF;"> <b>Login </b></button></a>
			</div>

			<div class="header-link">
				<a href="Contact.jsp"><button style="background-color: #1D63FF;"> <b>Contact</b></button></a>
			</div>
			<div class="header-link">
				<a href="about.jsp"><button style="background-color: #1D63FF;"> <b>About</b></button></a>
			</div>
			<div class="header-link">
				<a href="registation.jsp"><button style="background-color: #1D63FF;"> <b>Register</b></button></a>
			</div>
			<div class="header-link">
				<a href="gallery.jsp"><button style="background-color: #1D63FF;"> <b>Gallery</b></button></a>
			</div>
		</div>
	</div>

</body>
</html>