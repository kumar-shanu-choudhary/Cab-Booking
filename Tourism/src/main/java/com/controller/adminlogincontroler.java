package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminlogincontroler")
public class adminlogincontroler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (email.equals("sanu.arc12@gmail.com") && password.equals("12345")) {

			/*
			 * HttpSession session = request.getSession(); session.setAttribute("user",
			 * username);
			 */
			response.sendRedirect("admin.jsp");
		}

		else {
			RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
			request.setAttribute("msg", "Wrong Email Id & Password");
			rd.forward(request, response);
		}

	}

}
