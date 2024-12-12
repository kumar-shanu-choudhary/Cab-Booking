<%@page import="com.app.pojo.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TuristList</title>
</head>
<%@include file="admin.jsp"%>
<body>
	<div class="container">
		<%
		ArrayList<User> al = (ArrayList<User>) request.getAttribute("LIST");
		%>
		<div class="container">

			<Center>

				<h1>Turist Details</h1>
			</Center>

			<table border="2" class="table" style="background-color: #2d252cdb;">
				<thead class="thead thead-dark">
					<th>NAME</th>
					<th>Date</th>
					<th>Email</th>
					<th>Mobile Number</th>
					<th>Gender</th>
					<th>Home Number</th>
					<th>Id Type</th>
					<th>Id Number</th>
					<th>Current Adderss</th>
					<th>Parment Adderss</th>
					<th>State</th>
					<th>Country</th>
					<th>DELETE</th>
				</thead>

				<%
				for (User emp : al) {
				%>
				<tr>
					<td style="color: white;"><%=emp.getName()%></td>
					<td style="color: white;"><%=emp.getDate()%></td>
					<td style="color: white;"><%=emp.getEmail()%></td>
					<td style="color: white;"><%=emp.getMobilenumber()%></td>
					<td style="color: white;"><%=emp.getGender()%></td>
					<td style="color: white;"><%=emp.getHomenumber()%></td>
					<td style="color: white;"><%=emp.getIdtype()%></td>
					<td style="color: white;"><%=emp.getIdnumber()%></td>
					<td style="color: white;"><%=emp.getCaddress()%></td>
					<td style="color: white;"><%=emp.getPaddress()%></td>
					<td style="color: white;"><%=emp.getState()%></td>
					<td style="color: white;"><%=emp.getCountry()%></td>

					<td><a href="UserprofileDeletebyAdmin?name=<%=emp.getName()%>"
						class="btn btn-primary">Delete</a></td>
				</tr>
				<%
				}
				%>
			</table>
		</div>
	</div>

</body>
</html>