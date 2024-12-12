<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-color: #b9acc7;
}

div.gallery {
	margin: 10px;
	border: 5px solid #ccc;
	float: left;
	width: 250px;
}

div.gallery:hover {
	border: 1px solid #777;
}

div.gallery img {
	width: 100%;
	height: auto;
}

div.desc {
	padding: 35px;
	text-align: center;
}
</style>
<%@include file="navbar.jsp"%>
</head>
<body>
	<div class="container">
		<div class="gallery">
			<a target="_blank" href="login.jsp"> <img src="image/a.jpg"
				alt="Cinque Terre" width="600" height="400">
			</a>
			<div class="desc">we provide good memory</div>
		</div>

			<div class="gallery">
			<a target="_blank" href="login.jsp"> <img src="image/a.jpg"
				alt="Cinque Terre" width="600" height="400">
			</a>
			<div class="desc">we provide good memory</div>
		</div>	<div class="gallery">
			<a target="_blank" href="login.jsp"> <img src="image/a.jpg"
				alt="Cinque Terre" width="600" height="400">
			</a>
			<div class="desc">we provide good memory</div>
		</div>	<div class="gallery">
			<a target="_blank" href="login.jsp"> <img src="image/a.jpg"
				alt="Cinque Terre" width="600" height="400">
			</a>
			<div class="desc">we provide good memory</div>
		</div>


	</div>
</body>
</html>