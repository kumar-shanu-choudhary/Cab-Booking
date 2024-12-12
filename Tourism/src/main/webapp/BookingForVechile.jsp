<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking page</title>
<%@include file="userprofile.jsp"%>
</head>
<body>
	<!-- VechaileList -->
	<div
		style="display: flex; flex-direction: column; position: absolute; top: 80px; right: 10px; background-color: #f5f8f5ad; border-radius: 10px;">
		<center>
		<%String idno=request.getParameter("IDNO"); %>
			<h1>Vehicle Details</h1>
		</center>
		<center>
			<span style="color: green; font-size: 23px"></span>
		</center>
		<div>
			<%
			ArrayList<Vehicle> al = (ArrayList<Vehicle>) request.getAttribute("LIST");
			%>
			<table border="2" class="table" style="background-color: #f5f8f5ad;">
				<div>
					<thead class="thead thead-dark">
						<th>Vehicle Name</th>
						<th>Reg. Number</th>
						<th>Driver Name</th>
						<th>Driver's M.No</th>
						<th>Seting <br>Capacity
						</th>
						<th>Booking</th>
				<tbody>
					<%
					for (Vehicle emp : al) {
					%>
					<tr>
						<td><%=emp.getVehiclename()%></td>
						<td><%=emp.getRegnumber()%></td>
						<td><%=emp.getDrivername()%></td>
						<td><%=emp.getDrivermobilenumber()%></td>
						<td><%=emp.getSetingcapacity()%></td>
						<td> <a href="Booked.jsp?regnumbe=<%=emp.getRegnumber()%>"> <button>Booking </button> </a> </td>
					</tr>


					<%
					}
					%>
				</tbody>
				</thead>
			</table>

			<br> <br>
		</div>
	</div>
</body>
</html>