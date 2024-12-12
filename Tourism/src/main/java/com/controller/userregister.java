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

@WebServlet("/userregister")
public class userregister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String date = request.getParameter("date");
		String email = request.getParameter("email");
		String mobilenumber = request.getParameter("mobilenumber");
		String gender = request.getParameter("gender");
		String homenumber = request.getParameter("homenumber");
		String idtype = request.getParameter("idtype");
		String idnumber = request.getParameter("idnumber");
		String caddress = request.getParameter("caddress");
		String paddress = request.getParameter("paddress");
		String state = request.getParameter("state");
		String country = request.getParameter("country");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Tourism", "root", "root");
			PreparedStatement pst = con.prepareStatement("insert into Registeruser values(?,?,?,?,?,?,?,?,?,?,?,?)");

			pst.setString(1, name);
			pst.setString(2, date);
			pst.setString(3, email);
			pst.setString(4, mobilenumber);
			pst.setString(5, gender);
			pst.setString(6, homenumber);
			pst.setString(7, idtype);
			pst.setString(8, idnumber);
			pst.setString(9, caddress);
			pst.setString(10, paddress);
			pst.setString(11, state);
			pst.setString(12, country);

			int i = pst.executeUpdate();
			if (i > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("registation.jsp");
				request.setAttribute("msg", "Record inserted successfully");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("registation.jsp");
				request.setAttribute("msg", "Record not inserted try agen");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
