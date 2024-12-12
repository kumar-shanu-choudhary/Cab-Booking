<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vechile Booking list</title>
</head>
<%@include file="admin.jsp"%>
<body>
	<div class="container" style="color: blue;">
		<%
		String m = (String) request.getAttribute("msg");
		if (m != null) {
		%>
		<center>
			<h3 style="color: #1ecd45ed"><%=m%></h3>
		</center>
		<%
		}
		%>
		<center>
			<%
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourism", "root", "root");
				PreparedStatement ps = con.prepareStatement("Select * From BookingSuccess");

				ResultSet rs = ps.executeQuery();
			%>
			<table border="2" class="table" style="background-color: #2d252cdb;">
				<thead class="thead thead-dark">

					<td>Email</td>
					<td>ID Number</td>
					<td>Starting Point</td>
					<td>Ending Point</td>
					<td>Registation</td>
					<td>Delete</td>
				</thead>
				<%
				while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><a
						href="DeleteVechaleBooking?RegNumber=<%=rs.getString(5)%>">
							<button>delete</button>
					</a></td>

				</tr>
				<%
				}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</table>
		</center>
	</div>

</body>
</html>