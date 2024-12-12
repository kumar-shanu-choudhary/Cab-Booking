<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>

</head>
<body
	style="background-image: url('image/beautiful-outdoor-nature-landscape-with-bed-deck-chair-around-swimming-pool-hotel-resort.jpg'); background-size: cover; background-repeat: no-repeat;">
	<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String sdfd = sdf.format(date);
	
	/* LocalDateTime currentDateTime = LocalDateTime.now();

	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
	String formattedDateTime = currentDateTime.format(formatter);

	System.out.println("Date Time   " + formattedDateTime); */
	
	%>
	<%
	response.setHeader("cache-control", "no-store");
	response.setHeader("pragma", "no-chache");
	response.setHeader("expire", "0");
	%>
	<header style="background-color:;">
		<nav style="color: #4fb81f;">
			<p>
			<h1 style="color: red;">
				<a href="index.jsp"> <img alt=""
					src="image/green-check-mark-icon-on-transparent-background-free-png.png"
					width="50px">
				</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome To Tourism Admin
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The
				current time is:<%=sdfd%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="MassageList">
					<button style="background-color: #1D63FF;">Massage</button>
				</a>&nbsp;&nbsp; <a href="AdminlogOut">
					<button style="background-color: #1D63FF;">Log--Out</button>
				</a>
				</p>
			</h1>
			<a href="TuristListview">
				<button style="background-color: #1D63FF;">Tourist List</button>
			</a> <br> <br> <br> <a href="RegisterVehicle.jsp">
				<button style="background-color: #1D63FF;">Register Vehicle</button>

			</a> <br> <br> <br> <a href="VehicleList">
				<button style="background-color: #1D63FF;">Vehicle List</button>


			</a> <br> <br> <br> <a href="VechileBookingList.jsp">
				<button style="background-color: #1D63FF;">Booked List</button>
			</a>
		</nav>
	</header>
	<%@include file="footer.jsp"%>
</body>


</html>
