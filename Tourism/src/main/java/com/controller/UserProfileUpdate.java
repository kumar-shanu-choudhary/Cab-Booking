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

@WebServlet("/UserProfileUpdate")
public class UserProfileUpdate extends HttpServlet {
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
			PreparedStatement pst = con.prepareStatement("update Registeruser set date=?, mobilenumber=?, gender=?, homenumber=?, idtype=?, idnumber =?, caddress=?,paddress=?,state=?,country=? where name= ?");

			 
			pst.setString(1, date);
			pst.setString(2, mobilenumber);
			pst.setString(3, gender);
			pst.setString(4, homenumber);
			pst.setString(5, idtype);
			pst.setString(6, idnumber);
			pst.setString(7, caddress);
			pst.setString(8, paddress);
			pst.setString(9, state);
			pst.setString(10, country);
			pst.setString(11, name);
			
			
			
			int i = pst.executeUpdate();
			if (i > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("userprofile.jsp");
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("idnumber", idnumber);
				request.setAttribute("msg", "Record Updated successfully");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("UserProfileUpdate.jsp");
				request.setAttribute("msg", "Record not Updated try agen");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
