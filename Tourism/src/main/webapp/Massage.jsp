<%@page import="com.app.pojo.Massage"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="admin.jsp"%>
</head>
<body>

	<center>
		<div class="container">
			<%
			ArrayList<Massage> al = (ArrayList<Massage>) request.getAttribute("LIST");
			%>
			<div class="container">
				<h1>Massage List</h1>
				<table border="2" class="table" style="background-color: #2d252cdb;">
					<thead class="thead thead-dark">
						<th>Ticket No</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Massage</th>
						<th>Delete</th>
					</thead>
					<%
					for (Massage emp : al) {
					%>
					<tr>
						<td><%=emp.getTicketid()%></td>
						<td><%=emp.getFirstname()%></td>
						<td><%=emp.getLastname()%></td>
						<td><%=emp.getEmail()%></td>
						<td><%=emp.getMessage()%></td>
						<td><a
							href="MassageDeleteByAdmin?ticketid=<%=emp.getTicketid()%>"
							class="btn btn-primary"> Delete</a></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
		</div>
	</center>
</body>
</html>