<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booked</title>
<style>
.booking {
	background-color: rgba(56, 68, 68, 0.498);
	width: 200px;
	height: 20s0px;
	text-align: center;
	margin-top: 200px;
	margin-left: 500px;
}
</style>
</head>
<%@include file="userprofile.jsp"%>
<body>
	<div
		style="display: flex; flex-direction: column; position: absolute; top: 155px; right: 190px; background-color: #f5f8f5ad; border-radius: 10px;">
		<center>
			<form action="BookingSuccess.jsp">
				<br>
				<h4>Enter Detail For Booking Vechile</h4>
				<br> <input type="email" name="email"
					placeholder="Enter User Email" required="required"> <br>
				<br> <input type="tel" name="idnumber"
					placeholder="Enter User ID number" required="required"> <br>
				<br> <input type="text" name="from"
					placeholder="Enter your Bording Place" required="required">
				<br> <br> <input type="text" name="to"
					placeholder="Destionation place" required="required"> <br>
				<br>
				<%
				String reg = request.getParameter("regnumbe");
				%>
				<input type="text" name="Regnumber" value="<%=reg%>"
					readonly="readonly"> <br> <br>
				<button type="reset">Clear</button>
				<button type="submit">Submit</button>
				<br> <br>
			</form>
		</center>
	</div>
</body>
</html>