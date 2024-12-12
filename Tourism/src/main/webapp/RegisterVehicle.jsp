<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Vehicle</title>
<%@include file="admin.jsp"%>
</head>
<body>
	<div>

		<center>
			<form action="RegisterVechicleCont" method="post"
				style="background-color: #2d252cdb; color: #1D63FF; height: 250px; width: 400px;">
				<center>
					<h2 style="color: #1D63FF;">Register Vehicle</h2>

					<%
					String m = (String) request.getAttribute("msg");
					if (m != null) {
					%>
					<center>
						<h3 style="color: #ef3e1cf7"><%=m%></h3>
					</center>
					<%
					}
					%>
					<table>

						<tr>
							<td>VEHICLE NAME :-</td>
							<td><input type="text" placeholder="Vehicle Name "
								required="required" name="vehiclename"></td>
						</tr>
						<tr>
							<td>REG. NUMBER :-</td>
							<td><input type="text"
								placeholder="Vehicle Registation Number " required="required"
								name="regnumber"></td>
						</tr>
						<tr>
							<td>DRIVER NAME :-</td>
							<td><input type="text" placeholder="Name of Driver "
								required="required" name="drivername"></td>
						</tr>
						<tr>
							<td>DRIVER NUMBER :-</td>
							<td><input type="tel" placeholder="Driver's Mobile Number "
								required="required" name="drivermobilenumber"></td>
						</tr>
						<tr>
							<td>SETING CAPACITY</td>
							<td><input type="number" placeholder="Seting Capacity"
								required="required" name="setingcapacity"></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>
								<button type="reset" style="color:#0f0; background-color: #1D63FF">CLEAR</button>
							</td>
							<td><button type="submit"
									style="color:  #0f0; background-color:#1D63FF">SUBMIT</button>
						</tr>
					</table>
				</center>

			</form>
		</center>
	</div>
</body>
</html>