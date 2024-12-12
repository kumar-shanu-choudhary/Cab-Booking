<%@page import="com.app.pojo.Vehicle"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.jar.Attributes.Name"%>
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
<title>This page is User profile view page</title>
</head>
<%@include file="navbar.jsp"%>
<body
	style="background-image: url('image/wallpaperbetter.jpg'); color: #1D63FF; background-size: cover">
	<div class="container"
		style="width: 350px; background-color: #f5f8f5ad; border-radius: 10px; padding: 25px;">
		<center>
			<h1>Welcome User</h1>
		</center>
		<%
		String email = (String) session.getAttribute("email");
		String idnumber = (String) session.getAttribute("idnumber");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourism", "root", "root");
			PreparedStatement pst = con.prepareStatement("select * from  Registeruser where email=? and idnumber=?");
			pst.setString(1, email);
			pst.setString(2, idnumber);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
		%>
		<div>
			<%
			String m = (String) request.getAttribute("msg");
			if (m != null) {
			%>

			<h3 style="color: #ef3e1cf7"><%=m%></h3>

			<%
			}
			%>
			<table>
				<tr>
					<td>NAME</td>
					<%
					String Username = rs.getString("name");
					%>
					<td style="color: #002349;"><%=Username%></td>
				</tr>
				<tr>
					<td>Date</td>
					<td style="color: #002349;"><%=rs.getString("date")%></td>
				</tr>
				<tr>
					<td>Email</td>
					<td style="color: #002349;"><%=rs.getString("email")%></td>
				</tr>
				<tr>
					<td>Mobile Number</td>
					<td style="color: #002349;"><%=rs.getString("mobilenumber")%></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td style="color: #002349;"><%=rs.getString("gender")%></td>
				</tr>
				<tr>
					<td>Home Number</td>
					<td style="color: #002349"><%=rs.getString("homenumber")%></td>
				</tr>
				<tr>
					<td>ID Type</td>
					<td style="color: #002349;"><%=rs.getString("idtype")%></td>
				</tr>
				<tr>
					<td>ID Number</td>
					<td style="color: #002349;"><%=rs.getString("idnumber")%></td>
				</tr>
				<tr>
					<td>Current Address</td>
					<td style="color: #002349;"><%=rs.getString("caddress")%></td>
				</tr>
				<tr>
					<td>Parmeant Address</td>
					<td style="color: #002349;"><%=rs.getString("paddress")%></td>
				</tr>
				<tr>
					<td>State</td>
					<td style="color: #002349;"><%=rs.getString("state")%></td>
				</tr>
				<tr>
					<td>Country</td>
					<td style="color: #002349;"><%=rs.getString("country")%></td>
				</tr>
				<tr>
					<td><b>Update your Profile</b></td>
					<td style="color: blue;"><a href="UserProfileUpdate.jsp">
							<button style="background-color: #1D63FF;">
								<i>Update</i>
							</button>
					</a></td>
				</tr>
				<tr>
					<td><b>Book Vehicle for Trevelling</b></td>
					<td><a href="FORBOOKINGVEHILELIST?IDNO=<%=rs.getString("idnumber")%>">
							<button style="background-color: #1D63FF;">VECHICLE
								BOOKING</button>
					</a></td>
				</tr>
			</table>
		</div>
		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</div>
</body>
</html>