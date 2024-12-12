package com.app.pojo;

public class User {
	private String name;
	private String date;
	private String email;
	private String mobilenumber;
	private String gender;
	private String homenumber;
	private String idtype;
	private String idnumber;
	private String caddress;
	private String paddress;
	private String state;
	private String country;

	public User() {
	}

	public User(String name, String date, String email, String mobilenumber, String gender, String homenumber,
			String idtype, String idnumber, String caddress, String paddress, String state, String country) {
		this.name = name;
		this.date = date;
		this.email = email;
		this.mobilenumber = mobilenumber;
		this.gender = gender;
		this.homenumber = homenumber;
		this.idtype = idtype;
		this.idnumber = idnumber;
		this.caddress = caddress;
		this.paddress = paddress;
		this.state = state;
		this.country = country;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHomenumber() {
		return homenumber;
	}

	public void setHomenumber(String homenumber) {
		this.homenumber = homenumber;
	}

	public String getIdtype() {
		return idtype;
	}

	public void setIdtype(String idtype) {
		this.idtype = idtype;
	}

	public String getIdnumber() {
		return idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public String getPaddress() {
		return paddress;
	}

	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

}
