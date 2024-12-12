package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.model.UserAdminmodel;
import com.app.pojo.User;


@WebServlet("/UserprofileDeletebyAdmin")
public class UserprofileDeletebyAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = request.getParameter("name");
		
		UserAdminmodel model = new UserAdminmodel();
		int i = model.deleteUserProfile(name);
		ArrayList<User> list = model.getAllTuristList();

		RequestDispatcher rd = request.getRequestDispatcher("TouristList.jsp");
		if (i != 0) {
			request.setAttribute("msg", "Record Successfully Deleted");
			request.setAttribute("LIST", list);
		} else {
			request.setAttribute("msg", "Record Not Deleted");
			request.setAttribute("LIST", list);
		}
		rd.forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
