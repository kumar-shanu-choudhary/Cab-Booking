<%@page import="com.app.pojo.Vehicle"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vechical List</title>
<%@include file="admin.jsp"%>
</head>
<body>
	<center>
		<div class="container" style="color: #1D63FF">
			<%
			ArrayList<Vehicle> al = (ArrayList<Vehicle>) request.getAttribute("LIST");
			%>
			<div class="container">
				<h1>Vehicle Details</h1>
				<table border="2" class="table" style="background-color: #2d252cdb;">
					<thead class="thead thead-dark">
						<th>Vehicle Name</th>
						<th>Registration Number</th>
						<th>Driver Name</th>
						<th>Driver's Mobile Number</th>
						<th>Seting Capacity</th>
						<th>Delete</th>
					</thead>
					<%
					for (Vehicle emp : al) {
					%>
					<tr>
						<td><%=emp.getVehiclename()%></td>
						<td><%=emp.getRegnumber()%></td>
						<td><%=emp.getDrivername()%></td>
						<td><%=emp.getDrivermobilenumber()%></td>
						<td><%=emp.getSetingcapacity()%></td>
						<td><a
							href="VehicleDeleteByAdmin?regnumber=<%=emp.getRegnumber()%>"
							class="btn btn-primary">
								<button style="background-color: #1D63FF;">
									<b> Delete</b>
								</button>
						</a></td>
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