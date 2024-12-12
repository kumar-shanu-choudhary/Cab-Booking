package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterVechicleCont")
public class RegisterVechicleCont extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String vehiclename = request.getParameter("vehiclename");
		String regnumber = request.getParameter("regnumber");
		String drivername = request.getParameter("drivername");
		String drivermobilenumber = request.getParameter("drivermobilenumber");
		String setingcapacity = request.getParameter("setingcapacity");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourism", "root", "root");
			PreparedStatement pst = con.prepareStatement("insert into RegisterVechicle values(?,?,?,?,?)");

			pst.setString(1, vehiclename);
			pst.setString(2, regnumber);
			pst.setString(3, drivername);
			pst.setString(4, drivermobilenumber);
			pst.setString(5, setingcapacity);

			int i = pst.executeUpdate();
			if (i > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("RegisterVehicle.jsp");
				request.setAttribute("msg", "Record inserted successfully");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("RegisterVehicle.jsp");
				request.setAttribute("msg", "Record not inserted try agen");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
