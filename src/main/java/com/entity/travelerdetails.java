package com.entity;

public class travelerdetails {
	
	private int tid;
	private String name;
	private String place;
	private String contact;
	private String service;
	private String password;
	
	
	public travelerdetails() {
		super();
		
	}
	
	
	


	public travelerdetails(int tid, String name, String place, String contact, String service, String password) {
		super();
		this.tid = tid;
		this.name = name;
		this.place = place;
		this.contact = contact;
		this.service = service;
		this.password = password;
	}





	public travelerdetails(String name, String place, String contact, String service, String password) {
		super();
		this.name = name;
		this.place = place;
		this.contact = contact;
		this.service = service;
		this.password= password;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getTid() {
		return tid;
	}


	public void setTid(int tid) {
		this.tid = tid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getService() {
		return service;
	}


	public void setService(String service) {
		this.service = service;
	}
	
}
