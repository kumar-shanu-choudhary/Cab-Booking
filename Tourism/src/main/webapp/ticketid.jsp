<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%
		String ticketid = "";
		for (int i = 0; i <= 3; i++) {
			int o = (int) (Math.random() * 10);
			ticketid += o;

		}
		%>


	</div>

</body>
</html>