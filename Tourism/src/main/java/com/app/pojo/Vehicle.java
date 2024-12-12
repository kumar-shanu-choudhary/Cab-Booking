package com.app.pojo;

public class Vehicle {
	private String vehiclename;
	private String regnumber;
	private String drivername;
	private String drivermobilenumber;
	private String setingcapacity;

	public Vehicle(String vehiclename, String regnumber, String drivername, String drivermobilenumber,
			String setingcapacity) {
		this.vehiclename = vehiclename;
		this.regnumber = regnumber;
		this.drivername = drivername;
		this.drivermobilenumber = drivermobilenumber;
		this.setingcapacity = setingcapacity;
	}

	public Vehicle() {
	}

	public String getVehiclename() {
		return vehiclename;
	}

	public void setVehiclename(String vehiclename) {
		this.vehiclename = vehiclename;
	}

	public String getRegnumber() {
		return regnumber;
	}

	public void setRegnumber(String regnumber) {
		this.regnumber = regnumber;
	}

	public String getDrivername() {
		return drivername;
	}

	public void setDrivername(String drivername) {
		this.drivername = drivername;
	}

	public String getDrivermobilenumber() {
		return drivermobilenumber;
	}

	public void setDrivermobilenumber(String drivermobilenumber) {
		this.drivermobilenumber = drivermobilenumber;
	}

	public String getSetingcapacity() {
		return setingcapacity;
	}

	public void setSetingcapacity(String setingcapacity) {
		this.setingcapacity = setingcapacity;
	}

}
