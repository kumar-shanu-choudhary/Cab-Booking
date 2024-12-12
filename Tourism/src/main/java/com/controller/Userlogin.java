package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.model.UserAdminmodel;

@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String idnumber = request.getParameter("idnumber");

		UserAdminmodel model = new UserAdminmodel();

		int i = model.checkLogin(email, idnumber);

		if (i != 0) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			session.setAttribute("idnumber", idnumber);
			response.sendRedirect("userprofile.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("msg", "Invalid Username or Password");
			rd.forward(request, response);
		}

	}
}
