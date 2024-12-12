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
<title>This page is Update User Page</title>
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
			<form action="UserProfileUpdate" method="post">

				<table>
					<tr>
						<td>NAME</td>
						<td><input type="text" value="<%=rs.getString("name")%>"
							readonly="readonly" name="name"></td>
					</tr>
					<tr>
						<td>Date</td>
						<td><input type="date" value="<%=rs.getString("date")%>"
							name="date"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="email" value="<%=rs.getString("email")%>"
							name="email"></td>
					</tr>
					<tr>
						<td>Mobile Number</td>
						<td><input type="tel"
							value="<%=rs.getString("mobilenumber")%>" name="mobilenumber"></td>
					</tr>
					<tr>
						<td>Gender</td>
						<td><input type="text" value="<%=rs.getString("gender")%>"
							name="gender"></td>
					</tr>
					<tr>
						<td>Home Number</td>
						<td><input type="tel" value="<%=rs.getString("homenumber")%>"
							name="homenumber"></td>
					</tr>
					<tr>
						<td>ID Type</td>
						<td><input type="text" value="<%=rs.getString("idtype")%>"
							name="idtype"></td>
					</tr>
					<tr>
						<td>ID Number</td>
						<td><input type="tel" value="<%=rs.getString("idnumber")%>"
							name="idnumber"></td>
					</tr>
					<tr>
						<td>Current Address</td>
						<td><input type="text" value="<%=rs.getString("caddress")%>"
							name="caddress"></td>
					</tr>
					<tr>
						<td>Parmeant Address</td>
						<td><input type="text" value="<%=rs.getString("paddress")%>"
							name="paddress"></td>
					</tr>
					<tr>
						<td>State</td>
						<td><input type="text" value="<%=rs.getString("state")%>"
							name="state"></td>
					</tr>
					<tr>
						<td>Country</td>
						<td><input type="text" value="<%=rs.getString("country")%>"
							name="country"></td>
					</tr>
					<tr>
						<td><b>Update your Profile </b></td>
						<td><a href="userprofile.jsp"><button
									style="background-color: #1D63FF;">
									<i>RESET</i>
								</button></a>
							<button type="submit" style="background-color: #1D63FF;">
								<b>Submit</b>
							</button></td>
					</tr>
				</table>
		</div>
		</form>

		<%
		}

		} catch (Exception e) {
		e.printStackTrace();

		}
		%>
	</div>
</body>
</html>