package com.app.pojo;

public class Massage {
	private String ticketid;
	private String firstname;
	private String lastname;
	private String email;
	private String message;

	public Massage(String ticketid, String firstname, String lastname, String email, String message) {
		this.ticketid = ticketid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.message = message;
	}

	public Massage() {
	}

	public String getTicketid() {
		return ticketid;
	}

	public void setTicketid(String ticketid) {
		this.ticketid = ticketid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
