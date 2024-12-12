<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Success.....</title>
<style type="text/css">
body {
	background-color: #3c3d29a8;
}

.div1 {
	width: 35%;
	margin-bottom: 80%;
	text-align: center;
	text-align: justify;
	display: flex;
	flex-direction: column;
	position: absolute;
	top: 80px;
	left: 100px;
	background-color: #f5f8f5ad;
	border-radius: 10px;
}

.div2 {
	width: 25%;
	margin-bottom: 80%;
	text-align: center;
	text-align: justify;
	display: flex;
	flex-direction: column;
	position: absolute;
	top: 80px;
	right: 100px;
	background-color: #f5f8f5ad;
	border-radius: 10px;
}
}
</style>
</head>
<%@include file="navbar.jsp"%>
<body>
	<div class="div1">
		<center>
			<%
			String email = request.getParameter("email");

			String idnumber = request.getParameter("idnumber");

			String Startingpoint = request.getParameter("from");

			String Endingpoint = request.getParameter("to");

			String Regnumber = request.getParameter("Regnumber");

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourism", "root", "root");
				PreparedStatement pst = con.prepareStatement("insert into BookingSuccess values(?,?,?,?,?)");
				pst.setString(1, email);
				pst.setString(2, idnumber);
				pst.setString(3, Startingpoint);
				pst.setString(4, Endingpoint);
				pst.setString(5, Regnumber);

				int i = pst.executeUpdate();
				if (i > 0) {
			%>
			<h1>
				Booking Success Full..........<br> Turist Profile
			</h1>
			<%
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourism", "root", "root");
				PreparedStatement pstt = conn.prepareStatement("Select * From registeruser where email=? and idnumber=? ");

				PreparedStatement psvech = conn.prepareStatement("Select * From registervechicle where Regnumber=?");
				pstt.setString(1, email);
				pstt.setString(2, idnumber);
				psvech.setString(1, Regnumber);

				ResultSet rs = pstt.executeQuery();

				while (rs.next()) {
			%>
			<table>
				<tr>
					<td>NAME</td>
					<td><%=rs.getString(1)%></td>
				</tr>
				<tr>
					<td>Date</td>
					<td><%=rs.getString(2)%></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><%=rs.getString("email")%></td>
				</tr>
				<tr>
					<td>Mobile Number</td>
					<td><%=rs.getString("mobilenumber")%></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><%=rs.getString("gender")%></td>
				</tr>
				<tr>
					<td>Home Number</td>
					<td><%=rs.getString("homenumber")%></td>
				</tr>
				<tr>
					<td>ID Type</td>
					<td><%=rs.getString("idtype")%></td>
				</tr>
				<tr>
					<td>ID Number</td>
					<td><%=rs.getString("idnumber")%></td>
				</tr>
				<tr>
					<td>Current Address</td>
					<td><%=rs.getString("caddress")%></td>
				</tr>
				<tr>
					<td>Parmeant Address</td>
					<td><%=rs.getString("paddress")%></td>
				</tr>
				<tr>
					<td>State</td>
					<td><%=rs.getString("state")%></td>
				</tr>
				<tr>
					<td>Country</td>
					<td><%=rs.getString("country")%></td>
				</tr>
			</table>
		</center>
	</div>
	<%
	}
	ResultSet rsv = psvech.executeQuery();

	while (rsv.next()) {
	%>
	<div class="div2">
		<center>
			<br>
			<h1>Selected Vechile</h1>
			<br>
			<table>
				<tr>
					<td>Name of vechile</td>
					<td><%=rsv.getString(1)%></td>
				</tr>


				<tr>
					<td>Registation number</td>
					<td><%=rsv.getString(2)%></td>
				</tr>



				<tr>
					<td>Driver Name</td>
					<td><%=rsv.getString(3)%></td>
				</tr>

				<tr>
					<td>Driver Mobile Number</td>
					<td><%=rsv.getString(4)%></td>
				</tr>

				<tr>
					<td>Seting Capacity</td>
					<td><%=rsv.getString(5)%></td>
				</tr>


			</table>


		</center>
	</div>

	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>



	<%
	} else {
	%>
	<h1>Booking Fail..........</h1>
	<%
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>

<%@include file="marqueapage.jsp"%>
	<%@include file="footer.jsp"%>
</body>
</html>