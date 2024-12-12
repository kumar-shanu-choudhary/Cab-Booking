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

@WebServlet("/DeleteVechaleBooking")
public class DeleteVechaleBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String regnumber = request.getParameter("RegNumber");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourism", "root", "root");
			PreparedStatement pst = con.prepareStatement("delete from BookingSuccess where Regnumber=?");

			pst.setString(1, regnumber);

			int i = pst.executeUpdate();
			if (i > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("VechileBookingList.jsp");
				request.setAttribute("msg", "Record Deleted successfully");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("VechileBookingList.jsp");
				request.setAttribute("msg", "Record not Deleted, try agen.....");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
