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
import javax.servlet.http.HttpSession;

@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String ticketid = request.getParameter("ticketid");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String message = request.getParameter("message");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourism", "root", "root");
			PreparedStatement pst = con.prepareStatement("insert into Contact values(?,?,?,?,?)");

			pst.setString(1, ticketid);
			pst.setString(2, firstname);
			pst.setString(3, lastname);
			pst.setString(4, email);
			pst.setString(5, message);

			int i = pst.executeUpdate();
			if (i > 0) {

				HttpSession sn = request.getSession();
				sn.setAttribute("tticketid", ticketid);

				RequestDispatcher rd = request.getRequestDispatcher("Contact.jsp");
				request.setAttribute("msg", "Massage is send. Your Ticket Number:");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("Contact.jsp");
				request.setAttribute("msg", "Massage is  not send try agen");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
