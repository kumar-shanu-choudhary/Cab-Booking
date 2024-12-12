package com.app.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.app.pojo.Massage;
import com.app.pojo.User;
import com.app.pojo.Vehicle;

public class UserAdminmodel {

	public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/";
	public static final String DB_NAME = "Tourism";
	public static final String USER_NAME = "root";
	public static final String PASSWORD = "root";

	public static Connection creatConnection() {
		Connection con = null;
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL + DB_NAME, USER_NAME, PASSWORD);

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		return con;
	}

	public int checkLogin(String email, String idnumber) {
		int i = 0;
		Connection con = creatConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from Registeruser where email = ? and idnumber = ?");
			ps.setString(1, email);
			ps.setString(2, idnumber);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				i = 1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;

	}

	public ArrayList<User> getAllTuristList() {

		ArrayList<User> al = new ArrayList<User>();
		Connection con = creatConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from Registeruser");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User ee = new User(rs.getString("name"), rs.getString("date"), rs.getString("email"),
						rs.getString("mobilenumber"), rs.getString("gender"), rs.getString("homenumber"),
						rs.getString("idtype"), rs.getString("idnumber"), rs.getString("caddress"),
						rs.getString("paddress"), rs.getString("state"), rs.getString("country"));
				al.add(ee);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;

	}

	public ArrayList<Vehicle> getAllVehicleListView() {
		ArrayList<Vehicle> al = new ArrayList<Vehicle>();
		Connection con = creatConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from RegisterVechicle");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Vehicle ee = new Vehicle(rs.getString("vehiclename"), rs.getString("regnumber"),
						rs.getString("drivername"), rs.getString("drivermobilenumber"), rs.getString("setingcapacity"));

				al.add(ee);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;

	}

	public int deleteUserProfile(String name) {
		int i = 0;
		Connection con = creatConnection();
		try {
			PreparedStatement ps = con.prepareStatement("delete from Registeruser where name =?");
			ps.setString(1, name);

			i = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;

	}

	public int VehicleDelete(String regnumber) {
		int i = 0;
		Connection con = creatConnection();
		try {
			PreparedStatement ps = con.prepareStatement("delete from RegisterVechicle where regnumber =?");
			ps.setString(1, regnumber);

			i = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public ArrayList<Massage> getAllMassagelist() {
		ArrayList<Massage> al = new ArrayList<Massage>();
		Connection con = creatConnection();
		try {
			PreparedStatement ps = con.prepareStatement("select * from Contact");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Massage ee = new Massage(rs.getString("ticketid"), rs.getString("firstname"), rs.getString("lastname"),
						rs.getString("email"), rs.getString("message"));

				al.add(ee);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public int deleteMassage(String ticketid) {
		int i = 0;
		Connection con = creatConnection();
		try {
			PreparedStatement ps = con.prepareStatement("delete from Contact where ticketid =?");
			ps.setString(1, ticketid);

			i = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
		
		
	}

}
