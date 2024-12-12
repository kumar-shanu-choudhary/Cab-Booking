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
import com.app.pojo.Vehicle;

@WebServlet("/VehicleList")
public class VehicleList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserAdminmodel model = new UserAdminmodel();
		ArrayList<Vehicle> list = model.getAllVehicleListView();

		RequestDispatcher rd = request.getRequestDispatcher("VehicleList.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
